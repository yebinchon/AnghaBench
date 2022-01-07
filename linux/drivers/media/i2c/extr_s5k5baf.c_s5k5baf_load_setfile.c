
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s5k5baf {int fw; int sd; } ;
struct i2c_client {int dev; } ;
struct firmware {int size; scalar_t__ data; } ;
typedef int __le16 ;


 int S5K5BAF_FW_FILENAME ;
 int dev_warn (int *,char*,int ) ;
 int release_firmware (struct firmware const*) ;
 int request_firmware (struct firmware const**,int ,int *) ;
 int s5k5baf_fw_parse (int *,int *,int,int *) ;
 struct i2c_client* v4l2_get_subdevdata (int *) ;

__attribute__((used)) static int s5k5baf_load_setfile(struct s5k5baf *state)
{
 struct i2c_client *c = v4l2_get_subdevdata(&state->sd);
 const struct firmware *fw;
 int ret;

 ret = request_firmware(&fw, S5K5BAF_FW_FILENAME, &c->dev);
 if (ret < 0) {
  dev_warn(&c->dev, "firmware file (%s) not loaded\n",
    S5K5BAF_FW_FILENAME);
  return ret;
 }

 ret = s5k5baf_fw_parse(&c->dev, &state->fw, fw->size / 2,
          (__le16 *)fw->data);

 release_firmware(fw);

 return ret;
}
