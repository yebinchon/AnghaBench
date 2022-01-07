
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct at86rf230_state_change {int dummy; } ;
struct at86rf230_local {TYPE_1__* spi; } ;
struct TYPE_2__ {int dev; } ;


 int STATE_FORCE_TRX_OFF ;
 int at86rf230_async_error_recover ;
 int at86rf230_async_state_change (struct at86rf230_local*,struct at86rf230_state_change*,int ,int ) ;
 int dev_err (int *,char*,int) ;

__attribute__((used)) static inline void
at86rf230_async_error(struct at86rf230_local *lp,
        struct at86rf230_state_change *ctx, int rc)
{
 dev_err(&lp->spi->dev, "spi_async error %d\n", rc);

 at86rf230_async_state_change(lp, ctx, STATE_FORCE_TRX_OFF,
         at86rf230_async_error_recover);
}
