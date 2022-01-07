
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
struct brcms_bss_info {int dummy; } ;
struct brcms_bss_cfg {int * current_bss; } ;


 int GFP_ATOMIC ;
 int brcms_c_bsscfg_mfree (struct brcms_bss_cfg*) ;
 void* kzalloc (int,int ) ;

__attribute__((used)) static struct brcms_bss_cfg *brcms_c_bsscfg_malloc(uint unit)
{
 struct brcms_bss_cfg *cfg;

 cfg = kzalloc(sizeof(struct brcms_bss_cfg), GFP_ATOMIC);
 if (cfg == ((void*)0))
  goto fail;

 cfg->current_bss = kzalloc(sizeof(struct brcms_bss_info), GFP_ATOMIC);
 if (cfg->current_bss == ((void*)0))
  goto fail;

 return cfg;

 fail:
 brcms_c_bsscfg_mfree(cfg);
 return ((void*)0);
}
