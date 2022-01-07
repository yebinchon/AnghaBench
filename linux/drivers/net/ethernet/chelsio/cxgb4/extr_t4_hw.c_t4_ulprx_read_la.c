
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u32 ;
struct adapter {int dummy; } ;


 unsigned int ULPRX_LA_SIZE ;
 int ULP_RX_LA_CTL_A ;
 int ULP_RX_LA_RDDATA_A ;
 int ULP_RX_LA_RDPTR_A ;
 int ULP_RX_LA_WRPTR_A ;
 void* t4_read_reg (struct adapter*,int ) ;
 int t4_write_reg (struct adapter*,int ,unsigned int) ;

void t4_ulprx_read_la(struct adapter *adap, u32 *la_buf)
{
 unsigned int i, j;

 for (i = 0; i < 8; i++) {
  u32 *p = la_buf + i;

  t4_write_reg(adap, ULP_RX_LA_CTL_A, i);
  j = t4_read_reg(adap, ULP_RX_LA_WRPTR_A);
  t4_write_reg(adap, ULP_RX_LA_RDPTR_A, j);
  for (j = 0; j < ULPRX_LA_SIZE; j++, p += 8)
   *p = t4_read_reg(adap, ULP_RX_LA_RDDATA_A);
 }
}
