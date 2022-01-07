
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cxgb4_lld_info {int dummy; } ;
struct adapter {int flags; TYPE_1__* uld; int pdev_dev; } ;
struct TYPE_2__ {int (* state_change ) (void*,int ) ;void* handle; int name; void* (* add ) (struct cxgb4_lld_info*) ;} ;


 int CXGB4_FULL_INIT_DONE ;
 int CXGB4_STATE_UP ;
 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 int dev_warn (int ,char*,int ,int) ;
 void* stub1 (struct cxgb4_lld_info*) ;
 int stub2 (void*,int ) ;
 int t4_register_netevent_notifier () ;
 int uld_init (struct adapter*,struct cxgb4_lld_info*) ;
 int uld_queue_init (struct adapter*,unsigned int,struct cxgb4_lld_info*) ;

__attribute__((used)) static int uld_attach(struct adapter *adap, unsigned int uld)
{
 struct cxgb4_lld_info lli;
 void *handle;

 uld_init(adap, &lli);
 uld_queue_init(adap, uld, &lli);

 handle = adap->uld[uld].add(&lli);
 if (IS_ERR(handle)) {
  dev_warn(adap->pdev_dev,
    "could not attach to the %s driver, error %ld\n",
    adap->uld[uld].name, PTR_ERR(handle));
  return PTR_ERR(handle);
 }

 adap->uld[uld].handle = handle;
 t4_register_netevent_notifier();

 if (adap->flags & CXGB4_FULL_INIT_DONE)
  adap->uld[uld].state_change(handle, CXGB4_STATE_UP);

 return 0;
}
