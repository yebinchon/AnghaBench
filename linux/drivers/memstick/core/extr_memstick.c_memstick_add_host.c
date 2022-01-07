
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct memstick_host {int id; int (* set_param ) (struct memstick_host*,int ,int ) ;int dev; } ;


 int GFP_KERNEL ;
 int GFP_NOWAIT ;
 int MEMSTICK_POWER ;
 int MEMSTICK_POWER_OFF ;
 int dev_set_name (int *,char*,int) ;
 int device_add (int *) ;
 int idr_alloc (int *,struct memstick_host*,int ,int ,int ) ;
 int idr_preload (int ) ;
 int idr_preload_end () ;
 int idr_remove (int *,int) ;
 int memstick_detect_change (struct memstick_host*) ;
 int memstick_host_idr ;
 int memstick_host_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct memstick_host*,int ,int ) ;

int memstick_add_host(struct memstick_host *host)
{
 int rc;

 idr_preload(GFP_KERNEL);
 spin_lock(&memstick_host_lock);

 rc = idr_alloc(&memstick_host_idr, host, 0, 0, GFP_NOWAIT);
 if (rc >= 0)
  host->id = rc;

 spin_unlock(&memstick_host_lock);
 idr_preload_end();
 if (rc < 0)
  return rc;

 dev_set_name(&host->dev, "memstick%u", host->id);

 rc = device_add(&host->dev);
 if (rc) {
  spin_lock(&memstick_host_lock);
  idr_remove(&memstick_host_idr, host->id);
  spin_unlock(&memstick_host_lock);
  return rc;
 }

 host->set_param(host, MEMSTICK_POWER, MEMSTICK_POWER_OFF);
 memstick_detect_change(host);
 return 0;
}
