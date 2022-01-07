
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usdhi6_host {scalar_t__ wait; TYPE_2__* mrq; } ;
struct TYPE_4__ {int stop; TYPE_1__* data; } ;
struct TYPE_3__ {int error; } ;


 scalar_t__ USDHI6_WAIT_FOR_DATA_END ;
 int usdhi6_blk_read (struct usdhi6_host*) ;
 int usdhi6_sg_advance (struct usdhi6_host*) ;

__attribute__((used)) static bool usdhi6_mread_block(struct usdhi6_host *host)
{
 int ret = usdhi6_blk_read(host);

 if (ret < 0)
  return 0;

 usdhi6_sg_advance(host);

 return !host->mrq->data->error &&
  (host->wait != USDHI6_WAIT_FOR_DATA_END || !host->mrq->stop);
}
