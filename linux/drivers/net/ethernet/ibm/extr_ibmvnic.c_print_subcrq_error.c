
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;




 int dev_err_ratelimited (struct device*,char*,char const*,int) ;
 int dev_warn_ratelimited (struct device*,char*,char const*,int) ;

__attribute__((used)) static void print_subcrq_error(struct device *dev, int rc, const char *func)
{
 switch (rc) {
 case 128:
  dev_warn_ratelimited(dev,
         "%s failed: Send request is malformed or adapter failover pending. (rc=%d)\n",
         func, rc);
  break;
 case 129:
  dev_warn_ratelimited(dev,
         "%s failed: Backing queue closed. Adapter is down or failover pending. (rc=%d)\n",
         func, rc);
  break;
 default:
  dev_err_ratelimited(dev, "%s failed: (rc=%d)\n", func, rc);
  break;
 }
}
