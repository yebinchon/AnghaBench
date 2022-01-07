
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct hwrm_selftest_exec_output {scalar_t__ test_success; } ;
struct hwrm_selftest_exec_input {scalar_t__ flags; int member_0; } ;
struct bnxt {int hwrm_cmd_lock; TYPE_1__* test_info; struct hwrm_selftest_exec_output* hwrm_cmd_resp_addr; } ;
typedef int req ;
struct TYPE_2__ {int timeout; } ;


 int HWRM_SELFTEST_EXEC ;
 int _hwrm_send_message (struct bnxt*,struct hwrm_selftest_exec_input*,int,int ) ;
 int bnxt_hwrm_cmd_hdr_init (struct bnxt*,struct hwrm_selftest_exec_input*,int ,int,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int bnxt_run_fw_tests(struct bnxt *bp, u8 test_mask, u8 *test_results)
{
 struct hwrm_selftest_exec_output *resp = bp->hwrm_cmd_resp_addr;
 struct hwrm_selftest_exec_input req = {0};
 int rc;

 bnxt_hwrm_cmd_hdr_init(bp, &req, HWRM_SELFTEST_EXEC, -1, -1);
 mutex_lock(&bp->hwrm_cmd_lock);
 resp->test_success = 0;
 req.flags = test_mask;
 rc = _hwrm_send_message(bp, &req, sizeof(req), bp->test_info->timeout);
 *test_results = resp->test_success;
 mutex_unlock(&bp->hwrm_cmd_lock);
 return rc;
}
