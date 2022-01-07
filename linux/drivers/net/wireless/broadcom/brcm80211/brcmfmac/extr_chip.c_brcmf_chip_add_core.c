
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u32 ;
typedef int u16 ;
struct brcmf_core {void* base; int id; } ;
struct brcmf_core_priv {struct brcmf_core pub; int list; void* wrapbase; struct brcmf_chip_priv* chip; } ;
struct brcmf_chip_priv {int cores; } ;


 int ENOMEM ;
 struct brcmf_core* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 struct brcmf_core_priv* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;

__attribute__((used)) static struct brcmf_core *brcmf_chip_add_core(struct brcmf_chip_priv *ci,
           u16 coreid, u32 base,
           u32 wrapbase)
{
 struct brcmf_core_priv *core;

 core = kzalloc(sizeof(*core), GFP_KERNEL);
 if (!core)
  return ERR_PTR(-ENOMEM);

 core->pub.id = coreid;
 core->pub.base = base;
 core->chip = ci;
 core->wrapbase = wrapbase;

 list_add_tail(&core->list, &ci->cores);
 return &core->pub;
}
