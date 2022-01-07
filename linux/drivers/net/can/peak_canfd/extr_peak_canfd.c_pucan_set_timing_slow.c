
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pucan_timing_slow {int ewl; int sjw_t; int tseg2; int tseg1; int brp; } ;
struct TYPE_2__ {int ctrlmode; } ;
struct peak_canfd_priv {int ndev; TYPE_1__ can; } ;
struct can_bittiming {scalar_t__ brp; scalar_t__ phase_seg2; scalar_t__ phase_seg1; scalar_t__ prop_seg; scalar_t__ sjw; } ;


 int CAN_CTRLMODE_3_SAMPLES ;
 int PUCAN_CMD_TIMING_SLOW ;
 int PUCAN_TSLOW_BRP (scalar_t__) ;
 int PUCAN_TSLOW_SJW_T (scalar_t__,int) ;
 int PUCAN_TSLOW_TSEG1 (scalar_t__) ;
 int PUCAN_TSLOW_TSEG2 (scalar_t__) ;
 int cpu_to_le16 (int ) ;
 int le16_to_cpu (int ) ;
 int netdev_dbg (int ,char*,int ,int ,int ,int ) ;
 struct pucan_timing_slow* pucan_add_cmd (int ,int ) ;
 int pucan_init_cmd (struct peak_canfd_priv*) ;
 int pucan_write_cmd (struct peak_canfd_priv*) ;

__attribute__((used)) static int pucan_set_timing_slow(struct peak_canfd_priv *priv,
     const struct can_bittiming *pbt)
{
 struct pucan_timing_slow *cmd;

 cmd = pucan_add_cmd(pucan_init_cmd(priv), PUCAN_CMD_TIMING_SLOW);

 cmd->sjw_t = PUCAN_TSLOW_SJW_T(pbt->sjw - 1,
    priv->can.ctrlmode & CAN_CTRLMODE_3_SAMPLES);
 cmd->tseg1 = PUCAN_TSLOW_TSEG1(pbt->prop_seg + pbt->phase_seg1 - 1);
 cmd->tseg2 = PUCAN_TSLOW_TSEG2(pbt->phase_seg2 - 1);
 cmd->brp = cpu_to_le16(PUCAN_TSLOW_BRP(pbt->brp - 1));

 cmd->ewl = 96;

 netdev_dbg(priv->ndev,
     "nominal: brp=%u tseg1=%u tseg2=%u sjw=%u\n",
     le16_to_cpu(cmd->brp), cmd->tseg1, cmd->tseg2, cmd->sjw_t);

 return pucan_write_cmd(priv);
}
