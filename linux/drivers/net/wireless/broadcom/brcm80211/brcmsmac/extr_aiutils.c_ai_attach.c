
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct si_pub {int dummy; } ;
struct si_info {int dummy; } ;
struct bcma_bus {int dummy; } ;


 int GFP_ATOMIC ;
 int * ai_doattach (struct si_info*,struct bcma_bus*) ;
 int kfree (struct si_info*) ;
 struct si_info* kzalloc (int,int ) ;

struct si_pub *
ai_attach(struct bcma_bus *pbus)
{
 struct si_info *sii;


 sii = kzalloc(sizeof(struct si_info), GFP_ATOMIC);
 if (sii == ((void*)0))
  return ((void*)0);

 if (ai_doattach(sii, pbus) == ((void*)0)) {
  kfree(sii);
  return ((void*)0);
 }

 return (struct si_pub *) sii;
}
