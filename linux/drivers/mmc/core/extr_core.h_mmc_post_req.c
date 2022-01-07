
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mmc_request {int dummy; } ;
struct mmc_host {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* post_req ) (struct mmc_host*,struct mmc_request*,int) ;} ;


 int stub1 (struct mmc_host*,struct mmc_request*,int) ;

__attribute__((used)) static inline void mmc_post_req(struct mmc_host *host, struct mmc_request *mrq,
    int err)
{
 if (host->ops->post_req)
  host->ops->post_req(host, mrq, err);
}
