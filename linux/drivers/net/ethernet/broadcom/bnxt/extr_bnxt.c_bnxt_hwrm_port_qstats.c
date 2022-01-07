
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hwrm_port_qstats_input {void* rx_stat_host_addr; void* tx_stat_host_addr; int port_id; int member_0; } ;
struct bnxt_pf_info {int port_id; } ;
struct bnxt {int flags; int hw_rx_port_stats_map; int hw_tx_port_stats_map; struct bnxt_pf_info pf; } ;
typedef int req ;


 int BNXT_FLAG_PORT_STATS ;
 int HWRM_CMD_TIMEOUT ;
 int HWRM_PORT_QSTATS ;
 int bnxt_hwrm_cmd_hdr_init (struct bnxt*,struct hwrm_port_qstats_input*,int ,int,int) ;
 int cpu_to_le16 (int ) ;
 void* cpu_to_le64 (int ) ;
 int hwrm_send_message (struct bnxt*,struct hwrm_port_qstats_input*,int,int ) ;

__attribute__((used)) static int bnxt_hwrm_port_qstats(struct bnxt *bp)
{
 int rc;
 struct bnxt_pf_info *pf = &bp->pf;
 struct hwrm_port_qstats_input req = {0};

 if (!(bp->flags & BNXT_FLAG_PORT_STATS))
  return 0;

 bnxt_hwrm_cmd_hdr_init(bp, &req, HWRM_PORT_QSTATS, -1, -1);
 req.port_id = cpu_to_le16(pf->port_id);
 req.tx_stat_host_addr = cpu_to_le64(bp->hw_tx_port_stats_map);
 req.rx_stat_host_addr = cpu_to_le64(bp->hw_rx_port_stats_map);
 rc = hwrm_send_message(bp, &req, sizeof(req), HWRM_CMD_TIMEOUT);
 return rc;
}
