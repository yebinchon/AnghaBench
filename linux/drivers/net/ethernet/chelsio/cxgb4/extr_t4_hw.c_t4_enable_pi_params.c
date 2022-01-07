
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ link_ok; } ;
struct port_info {TYPE_1__ link_cfg; int port_id; int viid; } ;
struct adapter {int dummy; } ;


 int t4_enable_vi_params (struct adapter*,unsigned int,int ,int,int,int) ;
 int t4_os_link_changed (struct adapter*,int ,int) ;

int t4_enable_pi_params(struct adapter *adap, unsigned int mbox,
   struct port_info *pi,
   bool rx_en, bool tx_en, bool dcb_en)
{
 int ret = t4_enable_vi_params(adap, mbox, pi->viid,
          rx_en, tx_en, dcb_en);
 if (ret)
  return ret;
 t4_os_link_changed(adap, pi->port_id,
      rx_en && tx_en && pi->link_cfg.link_ok);
 return 0;
}
