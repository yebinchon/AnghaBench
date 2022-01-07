
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct bdisp_ctx* ctx; } ;
struct bdisp_dev {int state; int slock; TYPE_1__ m2m; } ;
struct bdisp_ctx {int dummy; } ;


 int ST_M2M_SUSPENDED ;
 int VB2_BUF_STATE_ERROR ;
 int bdisp_job_finish (struct bdisp_ctx*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;

__attribute__((used)) static int bdisp_m2m_resume(struct bdisp_dev *bdisp)
{
 struct bdisp_ctx *ctx;
 unsigned long flags;

 spin_lock_irqsave(&bdisp->slock, flags);
 ctx = bdisp->m2m.ctx;
 bdisp->m2m.ctx = ((void*)0);
 spin_unlock_irqrestore(&bdisp->slock, flags);

 if (test_and_clear_bit(ST_M2M_SUSPENDED, &bdisp->state))
  bdisp_job_finish(ctx, VB2_BUF_STATE_ERROR);

 return 0;
}
