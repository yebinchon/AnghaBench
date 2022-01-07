
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radio_isa_card {int dummy; } ;
struct trust {struct radio_isa_card isa; } ;


 int GFP_KERNEL ;
 struct trust* kzalloc (int,int ) ;

__attribute__((used)) static struct radio_isa_card *trust_alloc(void)
{
 struct trust *tr = kzalloc(sizeof(*tr), GFP_KERNEL);

 return tr ? &tr->isa : ((void*)0);
}
