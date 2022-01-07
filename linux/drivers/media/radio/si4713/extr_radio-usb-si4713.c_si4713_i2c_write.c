
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct si4713_usb_device {int dummy; } ;
struct TYPE_3__ {char command_id; int payload; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int BUFFER_LENGTH ;
 int EINVAL ;
 TYPE_1__* command_table ;
 int send_command (struct si4713_usb_device*,int ,char*,int) ;

__attribute__((used)) static int si4713_i2c_write(struct si4713_usb_device *radio, char *data, int len)
{
 int retval = -EINVAL;
 int i;

 if (len > BUFFER_LENGTH - 5)
  return -EINVAL;

 for (i = 0; i < ARRAY_SIZE(command_table); i++) {
  if (data[0] == command_table[i].command_id)
   retval = send_command(radio, command_table[i].payload,
      data, len);
 }

 return retval < 0 ? retval : 0;
}
