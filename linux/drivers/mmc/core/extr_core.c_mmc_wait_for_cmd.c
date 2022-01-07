
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_request {struct mmc_command* cmd; } ;
struct mmc_host {int claimed; } ;
struct mmc_command {int retries; int error; int * data; int resp; } ;


 int WARN_ON (int) ;
 int memset (int ,int ,int) ;
 int mmc_wait_for_req (struct mmc_host*,struct mmc_request*) ;

int mmc_wait_for_cmd(struct mmc_host *host, struct mmc_command *cmd, int retries)
{
 struct mmc_request mrq = {};

 WARN_ON(!host->claimed);

 memset(cmd->resp, 0, sizeof(cmd->resp));
 cmd->retries = retries;

 mrq.cmd = cmd;
 cmd->data = ((void*)0);

 mmc_wait_for_req(host, &mrq);

 return cmd->error;
}
