
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radio_isa_card {int dummy; } ;
struct typhoon {struct radio_isa_card isa; } ;


 int GFP_KERNEL ;
 struct typhoon* kzalloc (int,int ) ;

__attribute__((used)) static struct radio_isa_card *typhoon_alloc(void)
{
 struct typhoon *ty = kzalloc(sizeof(*ty), GFP_KERNEL);

 return ty ? &ty->isa : ((void*)0);
}
