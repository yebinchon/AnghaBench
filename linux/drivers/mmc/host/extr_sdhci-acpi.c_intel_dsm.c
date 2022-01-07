
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_host {int dsm_fns; } ;
struct device {int dummy; } ;


 int EOPNOTSUPP ;
 int __intel_dsm (struct intel_host*,struct device*,unsigned int,int *) ;

__attribute__((used)) static int intel_dsm(struct intel_host *intel_host, struct device *dev,
       unsigned int fn, u32 *result)
{
 if (fn > 31 || !(intel_host->dsm_fns & (1 << fn)))
  return -EOPNOTSUPP;

 return __intel_dsm(intel_host, dev, fn, result);
}
