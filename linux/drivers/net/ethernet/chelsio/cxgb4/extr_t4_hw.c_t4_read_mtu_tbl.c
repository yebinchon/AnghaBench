
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct adapter {int dummy; } ;


 int MTUINDEX_V (int) ;
 int MTUVALUE_G (int ) ;
 int MTUVALUE_V (int) ;
 int MTUWIDTH_G (int ) ;
 int NMTUS ;
 int TP_MTU_TABLE_A ;
 int t4_read_reg (struct adapter*,int ) ;
 int t4_write_reg (struct adapter*,int ,int) ;

void t4_read_mtu_tbl(struct adapter *adap, u16 *mtus, u8 *mtu_log)
{
 u32 v;
 int i;

 for (i = 0; i < NMTUS; ++i) {
  t4_write_reg(adap, TP_MTU_TABLE_A,
        MTUINDEX_V(0xff) | MTUVALUE_V(i));
  v = t4_read_reg(adap, TP_MTU_TABLE_A);
  mtus[i] = MTUVALUE_G(v);
  if (mtu_log)
   mtu_log[i] = MTUWIDTH_G(v);
 }
}
