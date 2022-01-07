
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usdhi6_host {TYPE_1__* mrq; } ;
struct mmc_command {int * resp; } ;
struct TYPE_2__ {struct mmc_command* stop; } ;


 int USDHI6_SD_RSP10 ;
 int usdhi6_read (struct usdhi6_host*,int ) ;

__attribute__((used)) static void usdhi6_resp_cmd12(struct usdhi6_host *host)
{
 struct mmc_command *cmd = host->mrq->stop;
 cmd->resp[0] = usdhi6_read(host, USDHI6_SD_RSP10);
}
