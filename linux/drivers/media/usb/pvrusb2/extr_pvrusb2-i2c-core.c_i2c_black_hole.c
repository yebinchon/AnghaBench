
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct pvr2_hdw {int dummy; } ;


 int EIO ;

__attribute__((used)) static int i2c_black_hole(struct pvr2_hdw *hdw,
      u8 i2c_addr,u8 *wdata,u16 wlen,u8 *rdata,u16 rlen)
{
 return -EIO;
}
