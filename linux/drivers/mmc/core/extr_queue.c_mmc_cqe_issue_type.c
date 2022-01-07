
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int dummy; } ;
struct mmc_host {int dummy; } ;
typedef enum mmc_issue_type { ____Placeholder_mmc_issue_type } mmc_issue_type ;


 int MMC_ISSUE_ASYNC ;
 int MMC_ISSUE_DCMD ;
 int MMC_ISSUE_SYNC ;





 int mmc_cqe_can_dcmd (struct mmc_host*) ;
 int req_op (struct request*) ;

__attribute__((used)) static enum mmc_issue_type mmc_cqe_issue_type(struct mmc_host *host,
           struct request *req)
{
 switch (req_op(req)) {
 case 131:
 case 130:
 case 132:
 case 128:
  return MMC_ISSUE_SYNC;
 case 129:
  return mmc_cqe_can_dcmd(host) ? MMC_ISSUE_DCMD : MMC_ISSUE_SYNC;
 default:
  return MMC_ISSUE_ASYNC;
 }
}
