
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct hwrm_selftest_irq_input {int member_0; } ;
struct bnxt {int dummy; } ;
typedef int req ;


 int HWRM_CMD_TIMEOUT ;
 int HWRM_SELFTEST_IRQ ;
 int bnxt_hwrm_cmd_hdr_init (struct bnxt*,struct hwrm_selftest_irq_input*,int ,int ,int) ;
 int hwrm_send_message (struct bnxt*,struct hwrm_selftest_irq_input*,int,int ) ;

__attribute__((used)) static int bnxt_hwrm_selftest_irq(struct bnxt *bp, u16 cmpl_ring)
{
 struct hwrm_selftest_irq_input req = {0};

 bnxt_hwrm_cmd_hdr_init(bp, &req, HWRM_SELFTEST_IRQ, cmpl_ring, -1);
 return hwrm_send_message(bp, &req, sizeof(req), HWRM_CMD_TIMEOUT);
}
