
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct brcmf_mp_device {int dummy; } ;


 int kfree (struct brcmf_mp_device*) ;

void brcmf_release_module_param(struct brcmf_mp_device *module_param)
{
 kfree(module_param);
}
