
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u16 ;
struct pvr2_hdw {int dummy; } ;


 int pvr2_i2c_basic_op (struct pvr2_hdw*,int ,int *,scalar_t__,int *,scalar_t__) ;

__attribute__((used)) static int i2c_hack_wm8775(struct pvr2_hdw *hdw,
      u8 i2c_addr,u8 *wdata,u16 wlen,u8 *rdata,u16 rlen)
{
 if (!(rlen || wlen)) {

  return 0;
 }
 return pvr2_i2c_basic_op(hdw,i2c_addr,wdata,wlen,rdata,rlen);
}
