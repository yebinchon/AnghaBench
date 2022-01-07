
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pucan_timing_fast {int sjw; int tseg2; int tseg1; int brp; } ;
struct peak_canfd_priv {int ndev; } ;
struct can_bittiming {scalar_t__ brp; scalar_t__ phase_seg2; scalar_t__ phase_seg1; scalar_t__ prop_seg; scalar_t__ sjw; } ;


 int PUCAN_CMD_TIMING_FAST ;
 int PUCAN_TFAST_BRP (scalar_t__) ;
 int PUCAN_TFAST_SJW (scalar_t__) ;
 int PUCAN_TFAST_TSEG1 (scalar_t__) ;
 int PUCAN_TFAST_TSEG2 (scalar_t__) ;
 int cpu_to_le16 (int ) ;
 int le16_to_cpu (int ) ;
 int netdev_dbg (int ,char*,int ,int ,int ,int ) ;
 struct pucan_timing_fast* pucan_add_cmd (int ,int ) ;
 int pucan_init_cmd (struct peak_canfd_priv*) ;
 int pucan_write_cmd (struct peak_canfd_priv*) ;

__attribute__((used)) static int pucan_set_timing_fast(struct peak_canfd_priv *priv,
     const struct can_bittiming *pbt)
{
 struct pucan_timing_fast *cmd;

 cmd = pucan_add_cmd(pucan_init_cmd(priv), PUCAN_CMD_TIMING_FAST);

 cmd->sjw = PUCAN_TFAST_SJW(pbt->sjw - 1);
 cmd->tseg1 = PUCAN_TFAST_TSEG1(pbt->prop_seg + pbt->phase_seg1 - 1);
 cmd->tseg2 = PUCAN_TFAST_TSEG2(pbt->phase_seg2 - 1);
 cmd->brp = cpu_to_le16(PUCAN_TFAST_BRP(pbt->brp - 1));

 netdev_dbg(priv->ndev,
     "data: brp=%u tseg1=%u tseg2=%u sjw=%u\n",
     le16_to_cpu(cmd->brp), cmd->tseg1, cmd->tseg2, cmd->sjw);

 return pucan_write_cmd(priv);
}
