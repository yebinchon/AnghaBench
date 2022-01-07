
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct delta_dts {int list; int val; } ;
struct delta_ctx {int dts; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 struct delta_dts* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;

__attribute__((used)) static void delta_push_dts(struct delta_ctx *ctx, u64 val)
{
 struct delta_dts *dts;

 dts = kzalloc(sizeof(*dts), GFP_KERNEL);
 if (!dts)
  return;

 INIT_LIST_HEAD(&dts->list);





 dts->val = val;
 list_add_tail(&dts->list, &ctx->dts);
}
