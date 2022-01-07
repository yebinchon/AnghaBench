
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radio_isa_card {int dummy; } ;
struct rtrack {int curvol; struct radio_isa_card isa; } ;


 int GFP_KERNEL ;
 struct rtrack* kzalloc (int,int ) ;

__attribute__((used)) static struct radio_isa_card *rtrack_alloc(void)
{
 struct rtrack *rt = kzalloc(sizeof(struct rtrack), GFP_KERNEL);

 if (rt)
  rt->curvol = 0xff;
 return rt ? &rt->isa : ((void*)0);
}
