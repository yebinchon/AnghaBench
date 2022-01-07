
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wbsd_host {TYPE_1__* mrq; } ;
struct mmc_data {int dummy; } ;
struct TYPE_4__ {struct mmc_data* data; } ;
struct TYPE_3__ {TYPE_2__* cmd; } ;


 int WARN_ON (int) ;

__attribute__((used)) static inline struct mmc_data *wbsd_get_data(struct wbsd_host *host)
{
 WARN_ON(!host->mrq);
 if (!host->mrq)
  return ((void*)0);

 WARN_ON(!host->mrq->cmd);
 if (!host->mrq->cmd)
  return ((void*)0);

 WARN_ON(!host->mrq->cmd->data);
 if (!host->mrq->cmd->data)
  return ((void*)0);

 return host->mrq->cmd->data;
}
