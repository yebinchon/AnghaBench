
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_reprs {unsigned int num_reprs; } ;
struct net_device {int dummy; } ;


 int GFP_KERNEL ;
 struct nfp_reprs* kzalloc (int,int ) ;

struct nfp_reprs *nfp_reprs_alloc(unsigned int num_reprs)
{
 struct nfp_reprs *reprs;

 reprs = kzalloc(sizeof(*reprs) +
   num_reprs * sizeof(struct net_device *), GFP_KERNEL);
 if (!reprs)
  return ((void*)0);
 reprs->num_reprs = num_reprs;

 return reprs;
}
