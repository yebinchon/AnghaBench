
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ link_ok; } ;
struct port_info {TYPE_1__ link_cfg; int pidx; int viid; } ;
struct adapter {int dummy; } ;


 int t4vf_enable_vi (struct adapter*,int ,int,int) ;
 int t4vf_os_link_changed (struct adapter*,int ,int) ;

int t4vf_enable_pi(struct adapter *adapter, struct port_info *pi,
     bool rx_en, bool tx_en)
{
 int ret = t4vf_enable_vi(adapter, pi->viid, rx_en, tx_en);

 if (ret)
  return ret;
 t4vf_os_link_changed(adapter, pi->pidx,
        rx_en && tx_en && pi->link_cfg.link_ok);
 return 0;
}
