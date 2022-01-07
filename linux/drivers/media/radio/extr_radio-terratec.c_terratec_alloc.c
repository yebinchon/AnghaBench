
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radio_isa_card {int dummy; } ;


 int GFP_KERNEL ;
 struct radio_isa_card* kzalloc (int,int ) ;

__attribute__((used)) static struct radio_isa_card *terratec_alloc(void)
{
 return kzalloc(sizeof(struct radio_isa_card), GFP_KERNEL);
}
