
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adapter {int dummy; } ;


 int t4_enable_vi_params (struct adapter*,unsigned int,unsigned int,int,int,int ) ;

int t4_enable_vi(struct adapter *adap, unsigned int mbox, unsigned int viid,
   bool rx_en, bool tx_en)
{
 return t4_enable_vi_params(adap, mbox, viid, rx_en, tx_en, 0);
}
