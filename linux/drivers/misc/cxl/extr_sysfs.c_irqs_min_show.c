
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct cxl_afu {int pp_irqs; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int scnprintf (char*,int ,char*,int ) ;
 struct cxl_afu* to_cxl_afu (struct device*) ;

__attribute__((used)) static ssize_t irqs_min_show(struct device *device,
        struct device_attribute *attr,
        char *buf)
{
 struct cxl_afu *afu = to_cxl_afu(device);

 return scnprintf(buf, PAGE_SIZE, "%i\n", afu->pp_irqs);
}
