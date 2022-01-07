
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct kobj_attribute {int dummy; } ;
struct afu_config_record {int vendor; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int scnprintf (char*,int ,char*,int ) ;
 struct afu_config_record* to_cr (struct kobject*) ;

__attribute__((used)) static ssize_t vendor_show(struct kobject *kobj,
      struct kobj_attribute *attr, char *buf)
{
 struct afu_config_record *cr = to_cr(kobj);

 return scnprintf(buf, PAGE_SIZE, "0x%.4x\n", cr->vendor);
}
