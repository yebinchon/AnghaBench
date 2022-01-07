
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct i2c_client {int dummy; } ;


 int EINVAL ;
 int REG_G_PREV_CFG_ERROR ;
 int debug ;
 int s5k6aa_read (struct i2c_client*,int ,scalar_t__*) ;
 int v4l2_dbg (int,int ,struct i2c_client*,char*,scalar_t__,int) ;

__attribute__((used)) static int s5k6aa_preview_config_status(struct i2c_client *client)
{
 u16 error = 0;
 int ret = s5k6aa_read(client, REG_G_PREV_CFG_ERROR, &error);

 v4l2_dbg(1, debug, client, "error: 0x%x (%d)\n", error, ret);
 return ret ? ret : (error ? -EINVAL : 0);
}
