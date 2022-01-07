
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hwsim_phy {int dummy; } ;
struct hwsim_edge_info {int lqi; } ;
struct hwsim_edge {struct hwsim_phy* endpoint; int info; } ;


 int GFP_KERNEL ;
 int kfree (struct hwsim_edge*) ;
 void* kzalloc (int,int ) ;
 int rcu_assign_pointer (int ,struct hwsim_edge_info*) ;

__attribute__((used)) static struct hwsim_edge *hwsim_alloc_edge(struct hwsim_phy *endpoint, u8 lqi)
{
 struct hwsim_edge_info *einfo;
 struct hwsim_edge *e;

 e = kzalloc(sizeof(*e), GFP_KERNEL);
 if (!e)
  return ((void*)0);

 einfo = kzalloc(sizeof(*einfo), GFP_KERNEL);
 if (!einfo) {
  kfree(e);
  return ((void*)0);
 }

 einfo->lqi = 0xff;
 rcu_assign_pointer(e->info, einfo);
 e->endpoint = endpoint;

 return e;
}
