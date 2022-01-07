
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radio_isa_card {int dummy; } ;
struct gemtek {int muted; struct radio_isa_card isa; } ;


 int GFP_KERNEL ;
 struct gemtek* kzalloc (int,int ) ;

__attribute__((used)) static struct radio_isa_card *gemtek_alloc(void)
{
 struct gemtek *gt = kzalloc(sizeof(*gt), GFP_KERNEL);

 if (gt)
  gt->muted = 1;
 return gt ? &gt->isa : ((void*)0);
}
