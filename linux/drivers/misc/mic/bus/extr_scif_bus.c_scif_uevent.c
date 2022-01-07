
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int vendor; int device; } ;
struct scif_hw_dev {TYPE_1__ id; } ;
struct kobj_uevent_env {int dummy; } ;
struct device {int dummy; } ;


 int add_uevent_var (struct kobj_uevent_env*,char*,int ,int ) ;
 struct scif_hw_dev* dev_to_scif (struct device*) ;

__attribute__((used)) static int scif_uevent(struct device *dv, struct kobj_uevent_env *env)
{
 struct scif_hw_dev *dev = dev_to_scif(dv);

 return add_uevent_var(env, "MODALIAS=scif:d%08Xv%08X",
         dev->id.device, dev->id.vendor);
}
