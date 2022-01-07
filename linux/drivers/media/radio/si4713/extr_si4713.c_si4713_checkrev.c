
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct si4713_device {int sd; } ;
struct i2c_client {int addr; TYPE_1__* adapter; } ;
struct TYPE_2__ {int name; } ;


 int ARRAY_SIZE (scalar_t__*) ;
 int DEFAULT_TIMEOUT ;
 int EINVAL ;
 int SI4713_CMD_GET_REV ;
 int SI4713_GETREV_NRESP ;
 scalar_t__ SI4713_PRODUCT_NUMBER ;
 int si4713_send_command (struct si4713_device*,int ,int *,int ,scalar_t__*,int ,int ) ;
 int v4l2_err (int *,char*,scalar_t__) ;
 struct i2c_client* v4l2_get_subdevdata (int *) ;
 int v4l2_info (int *,char*,int,int ) ;

__attribute__((used)) static int si4713_checkrev(struct si4713_device *sdev)
{
 struct i2c_client *client = v4l2_get_subdevdata(&sdev->sd);
 int rval;
 u8 resp[SI4713_GETREV_NRESP];

 rval = si4713_send_command(sdev, SI4713_CMD_GET_REV,
     ((void*)0), 0,
     resp, ARRAY_SIZE(resp),
     DEFAULT_TIMEOUT);

 if (rval < 0)
  return rval;

 if (resp[1] == SI4713_PRODUCT_NUMBER) {
  v4l2_info(&sdev->sd, "chip found @ 0x%02x (%s)\n",
    client->addr << 1, client->adapter->name);
 } else {
  v4l2_err(&sdev->sd, "Invalid product number 0x%X\n", resp[1]);
  rval = -EINVAL;
 }
 return rval;
}
