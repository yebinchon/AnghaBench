
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
typedef int u16 ;
struct skb_shared_hwtstamps {int hwtstamp; } ;
struct sk_buff {int dummy; } ;
struct mv88e6xxx_ptp_ops {int dep_sts_reg; } ;
struct mv88e6xxx_port_hwtstamp {int tx_seq_id; int state; struct sk_buff* tx_skb; int port_id; scalar_t__ tx_tstamp_start; } ;
struct mv88e6xxx_chip {int dev; int tstamp_tc; TYPE_2__* info; } ;
typedef int shhwtstamps ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {struct mv88e6xxx_ptp_ops* ptp_ops; } ;


 int ARRAY_SIZE (int*) ;
 int MV88E6XXX_HWTSTAMP_TX_IN_PROGRESS ;
 int MV88E6XXX_PTP_TS_STATUS_MASK ;
 int MV88E6XXX_PTP_TS_STATUS_NORMAL ;
 int MV88E6XXX_PTP_TS_VALID ;
 scalar_t__ TX_TSTAMP_TIMEOUT ;
 int clear_bit_unlock (int ,int *) ;
 int dev_dbg (int ,char*,int ,int ,int,int,int) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int dev_warn (int ,char*,int ) ;
 int ktime_to_ns (int ) ;
 int memset (struct skb_shared_hwtstamps*,int ,int) ;
 int mv88e6xxx_port_ptp_read (struct mv88e6xxx_chip*,int ,int ,int*,int ) ;
 int mv88e6xxx_port_ptp_write (struct mv88e6xxx_chip*,int ,int ,int ) ;
 int mv88e6xxx_reg_lock (struct mv88e6xxx_chip*) ;
 int mv88e6xxx_reg_unlock (struct mv88e6xxx_chip*) ;
 int ns_to_ktime (int ) ;
 int skb_complete_tx_timestamp (struct sk_buff*,struct skb_shared_hwtstamps*) ;
 scalar_t__ time_is_before_jiffies (scalar_t__) ;
 int timecounter_cyc2time (int *,int) ;

__attribute__((used)) static int mv88e6xxx_txtstamp_work(struct mv88e6xxx_chip *chip,
       struct mv88e6xxx_port_hwtstamp *ps)
{
 const struct mv88e6xxx_ptp_ops *ptp_ops = chip->info->ops->ptp_ops;
 struct skb_shared_hwtstamps shhwtstamps;
 u16 departure_block[4], status;
 struct sk_buff *tmp_skb;
 u32 time_raw;
 int err;
 u64 ns;

 if (!ps->tx_skb)
  return 0;

 mv88e6xxx_reg_lock(chip);
 err = mv88e6xxx_port_ptp_read(chip, ps->port_id,
          ptp_ops->dep_sts_reg,
          departure_block,
          ARRAY_SIZE(departure_block));
 mv88e6xxx_reg_unlock(chip);

 if (err)
  goto free_and_clear_skb;

 if (!(departure_block[0] & MV88E6XXX_PTP_TS_VALID)) {
  if (time_is_before_jiffies(ps->tx_tstamp_start +
        TX_TSTAMP_TIMEOUT)) {
   dev_warn(chip->dev, "p%d: clearing tx timestamp hang\n",
     ps->port_id);
   goto free_and_clear_skb;
  }




  return 1;
 }


 mv88e6xxx_reg_lock(chip);
 mv88e6xxx_port_ptp_write(chip, ps->port_id, ptp_ops->dep_sts_reg, 0);
 mv88e6xxx_reg_unlock(chip);

 status = departure_block[0] & MV88E6XXX_PTP_TS_STATUS_MASK;
 if (status != MV88E6XXX_PTP_TS_STATUS_NORMAL) {
  dev_warn(chip->dev, "p%d: tx timestamp overrun\n", ps->port_id);
  goto free_and_clear_skb;
 }

 if (departure_block[3] != ps->tx_seq_id) {
  dev_warn(chip->dev, "p%d: unexpected seq. id\n", ps->port_id);
  goto free_and_clear_skb;
 }

 memset(&shhwtstamps, 0, sizeof(shhwtstamps));
 time_raw = ((u32)departure_block[2] << 16) | departure_block[1];
 mv88e6xxx_reg_lock(chip);
 ns = timecounter_cyc2time(&chip->tstamp_tc, time_raw);
 mv88e6xxx_reg_unlock(chip);
 shhwtstamps.hwtstamp = ns_to_ktime(ns);

 dev_dbg(chip->dev,
  "p%d: txtstamp %llx status 0x%04x skb ID 0x%04x hw ID 0x%04x\n",
  ps->port_id, ktime_to_ns(shhwtstamps.hwtstamp),
  departure_block[0], ps->tx_seq_id, departure_block[3]);






 tmp_skb = ps->tx_skb;
 ps->tx_skb = ((void*)0);
 clear_bit_unlock(MV88E6XXX_HWTSTAMP_TX_IN_PROGRESS, &ps->state);
 skb_complete_tx_timestamp(tmp_skb, &shhwtstamps);

 return 0;

free_and_clear_skb:
 dev_kfree_skb_any(ps->tx_skb);
 ps->tx_skb = ((void*)0);
 clear_bit_unlock(MV88E6XXX_HWTSTAMP_TX_IN_PROGRESS, &ps->state);

 return 0;
}
