
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hl_ctx {TYPE_2__* hdev; } ;
struct TYPE_4__ {TYPE_1__* asic_funcs; } ;
struct TYPE_3__ {int (* read_pte ) (TYPE_2__*,int ) ;} ;


 int get_phys_hop0_addr (struct hl_ctx*) ;
 int mb () ;
 int stub1 (TYPE_2__*,int ) ;

__attribute__((used)) static inline void flush(struct hl_ctx *ctx)
{

 mb();
 ctx->hdev->asic_funcs->read_pte(ctx->hdev, get_phys_hop0_addr(ctx));
}
