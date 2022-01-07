
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct i2c_client {int dummy; } ;
struct firmware {int size; int* data; } ;
struct cx25840_state {int dummy; } ;


 int EINVAL ;
 int FWDEV (struct i2c_client*) ;
 int FWSEND ;
 int check_fw_load (struct i2c_client*,int) ;
 int cx25840_read (struct i2c_client*,int) ;
 int cx25840_write (struct i2c_client*,int,int ) ;
 int end_fw_load (struct i2c_client*) ;
 int fw_write (struct i2c_client*,int*,int) ;
 char* get_fw_name (struct i2c_client*) ;
 int i2c_get_clientdata (struct i2c_client*) ;
 scalar_t__ is_cx231xx (struct cx25840_state*) ;
 scalar_t__ is_cx2388x (struct cx25840_state*) ;
 int memcpy (int*,int const*,int) ;
 int min (int,int) ;
 int release_firmware (struct firmware const*) ;
 scalar_t__ request_firmware (struct firmware const**,char const*,int ) ;
 int start_fw_load (struct i2c_client*) ;
 struct cx25840_state* to_state (int ) ;
 int v4l_err (struct i2c_client*,char*,char const*) ;

int cx25840_loadfw(struct i2c_client *client)
{
 struct cx25840_state *state = to_state(i2c_get_clientdata(client));
 const struct firmware *fw = ((void*)0);
 u8 buffer[FWSEND];
 const u8 *ptr;
 const char *fwname = get_fw_name(client);
 int size, retval;
 int max_buf_size = FWSEND;
 u32 gpio_oe = 0, gpio_da = 0;

 if (is_cx2388x(state)) {

  gpio_oe = cx25840_read(client, 0x160);
  gpio_da = cx25840_read(client, 0x164);
 }


 if (is_cx231xx(state) && max_buf_size > 16)
  max_buf_size = 16;

 if (request_firmware(&fw, fwname, FWDEV(client)) != 0) {
  v4l_err(client, "unable to open firmware %s\n", fwname);
  return -EINVAL;
 }

 start_fw_load(client);

 buffer[0] = 0x08;
 buffer[1] = 0x02;

 size = fw->size;
 ptr = fw->data;
 while (size > 0) {
  int len = min(max_buf_size - 2, size);

  memcpy(buffer + 2, ptr, len);

  retval = fw_write(client, buffer, len + 2);

  if (retval < 0) {
   release_firmware(fw);
   return retval;
  }

  size -= len;
  ptr += len;
 }

 end_fw_load(client);

 size = fw->size;
 release_firmware(fw);

 if (is_cx2388x(state)) {

  cx25840_write(client, 0x160, gpio_oe);
  cx25840_write(client, 0x164, gpio_da);
 }

 return check_fw_load(client, size);
}
