
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct afu_config_record {int dummy; } ;


 int kfree (struct afu_config_record*) ;
 struct afu_config_record* to_cr (struct kobject*) ;

__attribute__((used)) static void release_afu_config_record(struct kobject *kobj)
{
 struct afu_config_record *cr = to_cr(kobj);

 kfree(cr);
}
