
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct i2c_client {int dummy; } ;


 int mt9t112_reg_mask_set (int,struct i2c_client const*,int,int,int) ;

__attribute__((used)) static int mt9t112_set_pll_dividers(const struct i2c_client *client,
        u8 m, u8 n, u8 p1, u8 p2, u8 p3, u8 p4,
        u8 p5, u8 p6, u8 p7)
{
 int ret;
 u16 val;


 val = (n << 8) | (m << 0);
 mt9t112_reg_mask_set(ret, client, 0x0010, 0x3fff, val);


 val = ((p3 & 0x0F) << 8) | ((p2 & 0x0F) << 4) | ((p1 & 0x0F) << 0);
 mt9t112_reg_mask_set(ret, client, 0x0012, 0x0fff, val);


 val = (0x7 << 12) | ((p6 & 0x0F) << 8) | ((p5 & 0x0F) << 4) |
       ((p4 & 0x0F) << 0);
 mt9t112_reg_mask_set(ret, client, 0x002A, 0x7fff, val);


 val = (0x1 << 12) | ((p7 & 0x0F) << 0);
 mt9t112_reg_mask_set(ret, client, 0x002C, 0x100f, val);

 return ret;
}
