
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct ocelot {int num_phys_ports; int num_stats; int dev; scalar_t__ ptp; int stats_work; int stats_queue; int * regfields; int ptp_clock_lock; int ptp_lock; int stats_lock; void* stats; void* lags; } ;
typedef int queue_name ;


 size_t ANA_ADVLEARN_VLAN_CHK ;
 int ANA_AGGR_CFG ;
 int ANA_AGGR_CFG_AC_DMAC_ENA ;
 int ANA_AGGR_CFG_AC_IP4_SIPDIP_ENA ;
 int ANA_AGGR_CFG_AC_IP4_TCPUDP_ENA ;
 int ANA_AGGR_CFG_AC_SMAC_ENA ;
 int ANA_AUTOAGE ;
 int ANA_AUTOAGE_AGE_PERIOD (int) ;
 int ANA_CPUQ_8021_CFG ;
 int ANA_CPUQ_8021_CFG_CPUQ_BPDU_VAL (int) ;
 int ANA_CPUQ_8021_CFG_CPUQ_GARP_VAL (int) ;
 int ANA_CPUQ_CFG ;
 int ANA_CPUQ_CFG_CPUQ_ALLBRIDGE (int) ;
 int ANA_CPUQ_CFG_CPUQ_IGMP (int) ;
 int ANA_CPUQ_CFG_CPUQ_IPMC_CTRL (int) ;
 int ANA_CPUQ_CFG_CPUQ_LOCKED_PORTMOVE (int) ;
 int ANA_CPUQ_CFG_CPUQ_LRN (int) ;
 int ANA_CPUQ_CFG_CPUQ_MAC_COPY (int) ;
 int ANA_CPUQ_CFG_CPUQ_MIRROR (int) ;
 int ANA_CPUQ_CFG_CPUQ_MLD (int) ;
 int ANA_CPUQ_CFG_CPUQ_SRC_COPY (int) ;
 int ANA_FLOODING ;
 int ANA_FLOODING_FLD_BROADCAST (int) ;
 int ANA_FLOODING_FLD_MULTICAST (int) ;
 int ANA_FLOODING_FLD_UNICAST (int ) ;
 int ANA_FLOODING_IPMC ;
 int ANA_FLOODING_IPMC_FLD_MC4_CTRL (int) ;
 int ANA_FLOODING_IPMC_FLD_MC4_DATA (int) ;
 int ANA_FLOODING_IPMC_FLD_MC6_CTRL (int) ;
 int ANA_FLOODING_IPMC_FLD_MC6_DATA (int) ;
 int ANA_PGID_PGID ;
 int ANA_PGID_PGID_PGID (int ) ;
 int ANA_PORT_CPU_FWD_BPDU_CFG ;
 int ANA_PORT_CPU_FWD_BPDU_CFG_BPDU_REDIR_ENA (int) ;
 int ANA_PORT_PORT_CFG ;
 int ANA_PORT_PORT_CFG_PORTID_VAL (int) ;
 int ANA_PORT_PORT_CFG_RECV_ENA ;
 int BIT (int) ;
 int BR_DEFAULT_AGEING_TIME ;
 int ENOMEM ;
 int ETH_P_8021AD ;
 int GENMASK (int,int ) ;
 int GFP_KERNEL ;
 int HZ ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int OCELOT_STATS_CHECK_DELAY ;
 int PGID_CPU ;
 int PGID_MC ;
 int PGID_MCIPV4 ;
 int PGID_MCIPV6 ;
 int PGID_SRC ;
 int PGID_UC ;
 int QSYS_SWITCH_PORT_MODE ;
 int QSYS_SWITCH_PORT_MODE_INGRESS_DROP_MODE ;
 int QSYS_SWITCH_PORT_MODE_PORT_ENA ;
 int QSYS_SWITCH_PORT_MODE_SCH_NEXT_CFG (int) ;
 int QS_INJ_GRP_CFG ;
 int QS_INJ_GRP_CFG_BYTE_SWAP ;
 int QS_INJ_GRP_CFG_MODE (int) ;
 int QS_XTR_GRP_CFG ;
 int QS_XTR_GRP_CFG_BYTE_SWAP ;
 int QS_XTR_GRP_CFG_MODE (int) ;
 int SYS_FRM_AGING ;
 int SYS_FRM_AGING_AGE_TX_ENA ;
 int SYS_FRM_AGING_MAX_AGE (int) ;
 int SYS_PORT_MODE ;
 int SYS_PORT_MODE_INCL_INJ_HDR (int) ;
 int SYS_PORT_MODE_INCL_XTR_HDR (int) ;
 int SYS_STAT_CFG ;
 int SYS_STAT_CFG_STAT_CLEAR_SHOT (int) ;
 int SYS_STAT_CFG_STAT_VIEW (int) ;
 int SYS_VLAN_ETYPE_CFG ;
 int create_singlethread_workqueue (char*) ;
 int dev_err (int ,char*) ;
 char* dev_name (int ) ;
 void* devm_kcalloc (int ,int,int,int ) ;
 int mutex_init (int *) ;
 int ocelot_ace_init (struct ocelot*) ;
 int ocelot_check_stats_work ;
 int ocelot_init_timestamp (struct ocelot*) ;
 int ocelot_mact_init (struct ocelot*) ;
 int ocelot_vlan_init (struct ocelot*) ;
 int ocelot_write (struct ocelot*,int,int ) ;
 int ocelot_write_gix (struct ocelot*,int,int ,int) ;
 int ocelot_write_rix (struct ocelot*,int,int ,int) ;
 int queue_delayed_work (int ,int *,int ) ;
 int regmap_field_write (int ,int) ;
 int snprintf (char*,int,char*,char*) ;
 int spin_lock_init (int *) ;

int ocelot_init(struct ocelot *ocelot)
{
 u32 port;
 int i, ret, cpu = ocelot->num_phys_ports;
 char queue_name[32];

 ocelot->lags = devm_kcalloc(ocelot->dev, ocelot->num_phys_ports,
        sizeof(u32), GFP_KERNEL);
 if (!ocelot->lags)
  return -ENOMEM;

 ocelot->stats = devm_kcalloc(ocelot->dev,
         ocelot->num_phys_ports * ocelot->num_stats,
         sizeof(u64), GFP_KERNEL);
 if (!ocelot->stats)
  return -ENOMEM;

 mutex_init(&ocelot->stats_lock);
 mutex_init(&ocelot->ptp_lock);
 spin_lock_init(&ocelot->ptp_clock_lock);
 snprintf(queue_name, sizeof(queue_name), "%s-stats",
   dev_name(ocelot->dev));
 ocelot->stats_queue = create_singlethread_workqueue(queue_name);
 if (!ocelot->stats_queue)
  return -ENOMEM;

 ocelot_mact_init(ocelot);
 ocelot_vlan_init(ocelot);
 ocelot_ace_init(ocelot);

 for (port = 0; port < ocelot->num_phys_ports; port++) {

  ocelot_write(ocelot, SYS_STAT_CFG_STAT_VIEW(port) |
         SYS_STAT_CFG_STAT_CLEAR_SHOT(0x7f),
        SYS_STAT_CFG);
 }


 ocelot_write(ocelot, ETH_P_8021AD, SYS_VLAN_ETYPE_CFG);


 ocelot_write(ocelot, ANA_AGGR_CFG_AC_SMAC_ENA |
        ANA_AGGR_CFG_AC_DMAC_ENA |
        ANA_AGGR_CFG_AC_IP4_SIPDIP_ENA |
        ANA_AGGR_CFG_AC_IP4_TCPUDP_ENA, ANA_AGGR_CFG);




 ocelot_write(ocelot,
       ANA_AUTOAGE_AGE_PERIOD(BR_DEFAULT_AGEING_TIME / 2 / HZ),
       ANA_AUTOAGE);


 regmap_field_write(ocelot->regfields[ANA_ADVLEARN_VLAN_CHK], 1);


 ocelot_write(ocelot, SYS_FRM_AGING_AGE_TX_ENA |
       SYS_FRM_AGING_MAX_AGE(307692), SYS_FRM_AGING);


 ocelot_write_rix(ocelot, ANA_FLOODING_FLD_MULTICAST(PGID_MC) |
    ANA_FLOODING_FLD_BROADCAST(PGID_MC) |
    ANA_FLOODING_FLD_UNICAST(PGID_UC),
    ANA_FLOODING, 0);
 ocelot_write(ocelot, ANA_FLOODING_IPMC_FLD_MC6_DATA(PGID_MCIPV6) |
       ANA_FLOODING_IPMC_FLD_MC6_CTRL(PGID_MC) |
       ANA_FLOODING_IPMC_FLD_MC4_DATA(PGID_MCIPV4) |
       ANA_FLOODING_IPMC_FLD_MC4_CTRL(PGID_MC),
       ANA_FLOODING_IPMC);

 for (port = 0; port < ocelot->num_phys_ports; port++) {

  ocelot_write_rix(ocelot, BIT(port), ANA_PGID_PGID, port);

  ocelot_write_gix(ocelot,
     ANA_PORT_CPU_FWD_BPDU_CFG_BPDU_REDIR_ENA(0xffff),
     ANA_PORT_CPU_FWD_BPDU_CFG,
     port);

  ocelot_write_rix(ocelot, 0, ANA_PGID_PGID, PGID_SRC + port);
 }


 ocelot_write_rix(ocelot, 0, ANA_PGID_PGID, cpu);
 ocelot_write_rix(ocelot, BIT(cpu), ANA_PGID_PGID, PGID_CPU);
 ocelot_write_gix(ocelot, ANA_PORT_PORT_CFG_RECV_ENA |
    ANA_PORT_PORT_CFG_PORTID_VAL(cpu),
    ANA_PORT_PORT_CFG, cpu);


 for (i = ocelot->num_phys_ports + 1; i < PGID_CPU; i++) {
  u32 val = ANA_PGID_PGID_PGID(GENMASK(ocelot->num_phys_ports - 1, 0));

  ocelot_write_rix(ocelot, val, ANA_PGID_PGID, i);
 }
 ocelot_write_rix(ocelot,
    ANA_PGID_PGID_PGID(GENMASK(ocelot->num_phys_ports, 0)),
    ANA_PGID_PGID, PGID_MC);
 ocelot_write_rix(ocelot, 0, ANA_PGID_PGID, PGID_MCIPV4);
 ocelot_write_rix(ocelot, 0, ANA_PGID_PGID, PGID_MCIPV6);


 ocelot_write_rix(ocelot, QSYS_SWITCH_PORT_MODE_INGRESS_DROP_MODE |
    QSYS_SWITCH_PORT_MODE_SCH_NEXT_CFG(1) |
    QSYS_SWITCH_PORT_MODE_PORT_ENA,
    QSYS_SWITCH_PORT_MODE, cpu);
 ocelot_write_rix(ocelot, SYS_PORT_MODE_INCL_XTR_HDR(1) |
    SYS_PORT_MODE_INCL_INJ_HDR(1), SYS_PORT_MODE, cpu);



 ocelot_write_rix(ocelot, QS_INJ_GRP_CFG_BYTE_SWAP |
    QS_INJ_GRP_CFG_MODE(1), QS_INJ_GRP_CFG, 0);
 ocelot_write_rix(ocelot, QS_XTR_GRP_CFG_BYTE_SWAP |
    QS_XTR_GRP_CFG_MODE(1), QS_XTR_GRP_CFG, 0);
 ocelot_write(ocelot, ANA_CPUQ_CFG_CPUQ_MIRROR(2) |
       ANA_CPUQ_CFG_CPUQ_LRN(2) |
       ANA_CPUQ_CFG_CPUQ_MAC_COPY(2) |
       ANA_CPUQ_CFG_CPUQ_SRC_COPY(2) |
       ANA_CPUQ_CFG_CPUQ_LOCKED_PORTMOVE(2) |
       ANA_CPUQ_CFG_CPUQ_ALLBRIDGE(6) |
       ANA_CPUQ_CFG_CPUQ_IPMC_CTRL(6) |
       ANA_CPUQ_CFG_CPUQ_IGMP(6) |
       ANA_CPUQ_CFG_CPUQ_MLD(6), ANA_CPUQ_CFG);
 for (i = 0; i < 16; i++)
  ocelot_write_rix(ocelot, ANA_CPUQ_8021_CFG_CPUQ_GARP_VAL(6) |
     ANA_CPUQ_8021_CFG_CPUQ_BPDU_VAL(6),
     ANA_CPUQ_8021_CFG, i);

 INIT_DELAYED_WORK(&ocelot->stats_work, ocelot_check_stats_work);
 queue_delayed_work(ocelot->stats_queue, &ocelot->stats_work,
      OCELOT_STATS_CHECK_DELAY);

 if (ocelot->ptp) {
  ret = ocelot_init_timestamp(ocelot);
  if (ret) {
   dev_err(ocelot->dev,
    "Timestamp initialization failed\n");
   return ret;
  }
 }

 return 0;
}
