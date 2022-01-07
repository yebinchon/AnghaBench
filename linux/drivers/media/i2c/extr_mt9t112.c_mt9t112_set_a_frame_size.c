
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct i2c_client {int dummy; } ;


 int MAX_HEIGHT ;
 int MAX_WIDTH ;
 int VAR (int,int) ;
 int VAR8 (int,int ) ;
 int mt9t112_mcu_write (int,struct i2c_client const*,int ,int) ;

__attribute__((used)) static int mt9t112_set_a_frame_size(const struct i2c_client *client,
        u16 width, u16 height)
{
 int ret;
 u16 wstart = (MAX_WIDTH - width) / 2;
 u16 hstart = (MAX_HEIGHT - height) / 2;


 mt9t112_mcu_write(ret, client, VAR(26, 0), width);
 mt9t112_mcu_write(ret, client, VAR(26, 2), height);


 mt9t112_mcu_write(ret, client, VAR(18, 43), 8 + width);
 mt9t112_mcu_write(ret, client, VAR(18, 45), 8 + height);


 mt9t112_mcu_write(ret, client, VAR(18, 2), 4 + hstart);
 mt9t112_mcu_write(ret, client, VAR(18, 4), 4 + wstart);


 mt9t112_mcu_write(ret, client, VAR(18, 6), 11 + height + hstart);
 mt9t112_mcu_write(ret, client, VAR(18, 8), 11 + width + wstart);

 mt9t112_mcu_write(ret, client, VAR8(1, 0), 0x06);

 return ret;
}
