
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcie_ctx_hw_stats {int dummy; } ;
struct hwrm_pcie_qstats_input {int pcie_stat_host_addr; int pcie_stat_size; int member_0; } ;
struct bnxt {int flags; int hw_pcie_stats_map; } ;
typedef int req ;


 int BNXT_FLAG_PCIE_STATS ;
 int HWRM_CMD_TIMEOUT ;
 int HWRM_PCIE_QSTATS ;
 int bnxt_hwrm_cmd_hdr_init (struct bnxt*,struct hwrm_pcie_qstats_input*,int ,int,int) ;
 int cpu_to_le16 (int) ;
 int cpu_to_le64 (int ) ;
 int hwrm_send_message (struct bnxt*,struct hwrm_pcie_qstats_input*,int,int ) ;

__attribute__((used)) static int bnxt_hwrm_pcie_qstats(struct bnxt *bp)
{
 struct hwrm_pcie_qstats_input req = {0};

 if (!(bp->flags & BNXT_FLAG_PCIE_STATS))
  return 0;

 bnxt_hwrm_cmd_hdr_init(bp, &req, HWRM_PCIE_QSTATS, -1, -1);
 req.pcie_stat_size = cpu_to_le16(sizeof(struct pcie_ctx_hw_stats));
 req.pcie_stat_host_addr = cpu_to_le64(bp->hw_pcie_stats_map);
 return hwrm_send_message(bp, &req, sizeof(req), HWRM_CMD_TIMEOUT);
}
