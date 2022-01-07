
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radio_isa_card {int dummy; } ;
struct aztech {struct radio_isa_card isa; } ;


 int GFP_KERNEL ;
 struct aztech* kzalloc (int,int ) ;

__attribute__((used)) static struct radio_isa_card *aztech_alloc(void)
{
 struct aztech *az = kzalloc(sizeof(*az), GFP_KERNEL);

 return az ? &az->isa : ((void*)0);
}
