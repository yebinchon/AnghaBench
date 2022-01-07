
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radio_isa_card {int dummy; } ;
struct zoltrix {struct radio_isa_card isa; } ;


 int GFP_KERNEL ;
 struct zoltrix* kzalloc (int,int ) ;

__attribute__((used)) static struct radio_isa_card *zoltrix_alloc(void)
{
 struct zoltrix *zol = kzalloc(sizeof(*zol), GFP_KERNEL);

 return zol ? &zol->isa : ((void*)0);
}
