
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tp_params {unsigned int chan_rx_size; } ;
struct adapter {int dummy; } ;


 int A_ULPRX_TDDP_TAGMASK ;
 int ISCSI ;
 int PBL ;
 int RQ ;
 int STAG ;
 int TDDP ;
 int TPT ;
 int t3_write_reg (struct adapter*,int ,int) ;
 int ulp_region (struct adapter*,int ,unsigned int,int) ;
 int ulptx_region (struct adapter*,int ,unsigned int,int) ;

__attribute__((used)) static void ulp_config(struct adapter *adap, const struct tp_params *p)
{
 unsigned int m = p->chan_rx_size;

 ulp_region(adap, ISCSI, m, p->chan_rx_size / 8);
 ulp_region(adap, TDDP, m, p->chan_rx_size / 8);
 ulptx_region(adap, TPT, m, p->chan_rx_size / 4);
 ulp_region(adap, STAG, m, p->chan_rx_size / 4);
 ulp_region(adap, RQ, m, p->chan_rx_size / 4);
 ulptx_region(adap, PBL, m, p->chan_rx_size / 4);
 ulp_region(adap, PBL, m, p->chan_rx_size / 4);
 t3_write_reg(adap, A_ULPRX_TDDP_TAGMASK, 0xffffffff);
}
