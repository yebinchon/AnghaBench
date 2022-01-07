
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct mmc_request {TYPE_1__* cmd; } ;
struct cvm_mmc_host {scalar_t__ base; } ;
struct TYPE_2__ {int* resp; } ;


 int FIELD_GET (int ,int) ;
 scalar_t__ MIO_EMM_RSP_HI (struct cvm_mmc_host*) ;
 scalar_t__ MIO_EMM_RSP_LO (struct cvm_mmc_host*) ;
 int MIO_EMM_RSP_STS_RSP_TYPE ;
 int MIO_EMM_RSP_STS_RSP_VAL ;
 int readq (scalar_t__) ;

__attribute__((used)) static void set_cmd_response(struct cvm_mmc_host *host, struct mmc_request *req,
        u64 rsp_sts)
{
 u64 rsp_hi, rsp_lo;

 if (!(rsp_sts & MIO_EMM_RSP_STS_RSP_VAL))
  return;

 rsp_lo = readq(host->base + MIO_EMM_RSP_LO(host));

 switch (FIELD_GET(MIO_EMM_RSP_STS_RSP_TYPE, rsp_sts)) {
 case 1:
 case 3:
  req->cmd->resp[0] = (rsp_lo >> 8) & 0xffffffff;
  req->cmd->resp[1] = 0;
  req->cmd->resp[2] = 0;
  req->cmd->resp[3] = 0;
  break;
 case 2:
  req->cmd->resp[3] = rsp_lo & 0xffffffff;
  req->cmd->resp[2] = (rsp_lo >> 32) & 0xffffffff;
  rsp_hi = readq(host->base + MIO_EMM_RSP_HI(host));
  req->cmd->resp[1] = rsp_hi & 0xffffffff;
  req->cmd->resp[0] = (rsp_hi >> 32) & 0xffffffff;
  break;
 }
}
