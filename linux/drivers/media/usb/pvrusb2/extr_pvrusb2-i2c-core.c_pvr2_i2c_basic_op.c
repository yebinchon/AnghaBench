
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u16 ;
struct pvr2_hdw {int dummy; } ;


 int pvr2_i2c_read (struct pvr2_hdw*,int ,int *,scalar_t__,int *,scalar_t__) ;
 int pvr2_i2c_write (struct pvr2_hdw*,int ,int *,scalar_t__) ;

__attribute__((used)) static int pvr2_i2c_basic_op(struct pvr2_hdw *hdw,
        u8 i2c_addr,
        u8 *wdata,
        u16 wlen,
        u8 *rdata,
        u16 rlen)
{
 if (!rdata) rlen = 0;
 if (!wdata) wlen = 0;
 if (rlen || !wlen) {
  return pvr2_i2c_read(hdw,i2c_addr,wdata,wlen,rdata,rlen);
 } else {
  return pvr2_i2c_write(hdw,i2c_addr,wdata,wlen);
 }
}
