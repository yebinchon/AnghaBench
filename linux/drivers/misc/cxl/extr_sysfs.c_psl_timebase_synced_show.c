
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct cxl {int psl_timebase_synced; TYPE_2__* native; } ;
typedef int ssize_t ;
struct TYPE_4__ {TYPE_1__* sl_ops; } ;
struct TYPE_3__ {scalar_t__ (* timebase_read ) (struct cxl*) ;} ;


 int CPU_FTR_HVMODE ;
 int PAGE_SIZE ;
 scalar_t__ abs (scalar_t__) ;
 scalar_t__ cpu_has_feature (int ) ;
 scalar_t__ mftb () ;
 int pr_devel (char*,char*,int) ;
 int scnprintf (char*,int ,char*,int) ;
 scalar_t__ stub1 (struct cxl*) ;
 int tb_to_ns (scalar_t__) ;
 struct cxl* to_cxl_adapter (struct device*) ;

__attribute__((used)) static ssize_t psl_timebase_synced_show(struct device *device,
     struct device_attribute *attr,
     char *buf)
{
 struct cxl *adapter = to_cxl_adapter(device);
 u64 psl_tb, delta;


 if (cpu_has_feature(CPU_FTR_HVMODE)) {
  psl_tb = adapter->native->sl_ops->timebase_read(adapter);
  delta = abs(mftb() - psl_tb);


  adapter->psl_timebase_synced = (tb_to_ns(delta) < 16000) ? 1 : 0;
  pr_devel("PSL timebase %s - delta: 0x%016llx\n",
    (tb_to_ns(delta) < 16000) ? "synchronized" :
    "not synchronized", tb_to_ns(delta));
 }
 return scnprintf(buf, PAGE_SIZE, "%i\n", adapter->psl_timebase_synced);
}
