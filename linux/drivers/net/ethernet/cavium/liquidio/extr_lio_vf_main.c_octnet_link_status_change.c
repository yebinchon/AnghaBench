
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct work_struct {int dummy; } ;
struct TYPE_4__ {int mtu; } ;
struct TYPE_5__ {TYPE_1__ s; } ;
struct TYPE_6__ {TYPE_2__ link; } ;
struct lio {TYPE_3__ linfo; int netdev; } ;
struct cavium_wk {scalar_t__ ctxptr; } ;


 int dev_set_mtu (int ,int ) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;

__attribute__((used)) static void octnet_link_status_change(struct work_struct *work)
{
 struct cavium_wk *wk = (struct cavium_wk *)work;
 struct lio *lio = (struct lio *)wk->ctxptr;





 rtnl_lock();
 dev_set_mtu(lio->netdev, lio->linfo.link.s.mtu);
 rtnl_unlock();
}
