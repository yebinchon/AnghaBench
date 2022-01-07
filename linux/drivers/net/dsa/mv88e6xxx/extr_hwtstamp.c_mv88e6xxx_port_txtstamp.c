
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {int dummy; } ;
struct mv88e6xxx_port_hwtstamp {int tx_seq_id; int tx_tstamp_start; struct sk_buff* tx_skb; int state; } ;
struct mv88e6xxx_chip {int ptp_clock; struct mv88e6xxx_port_hwtstamp* port_hwtstamp; } ;
struct dsa_switch {struct mv88e6xxx_chip* priv; } ;
typedef int __be16 ;
struct TYPE_2__ {int tx_flags; } ;


 int MV88E6XXX_HWTSTAMP_TX_IN_PROGRESS ;
 int OFF_PTP_SEQUENCE_ID ;
 int SKBTX_HW_TSTAMP ;
 int be16_to_cpup (int *) ;
 int jiffies ;
 int * mv88e6xxx_should_tstamp (struct mv88e6xxx_chip*,int,struct sk_buff*,unsigned int) ;
 int ptp_schedule_worker (int ,int ) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;
 scalar_t__ test_and_set_bit_lock (int ,int *) ;

bool mv88e6xxx_port_txtstamp(struct dsa_switch *ds, int port,
        struct sk_buff *clone, unsigned int type)
{
 struct mv88e6xxx_chip *chip = ds->priv;
 struct mv88e6xxx_port_hwtstamp *ps = &chip->port_hwtstamp[port];
 __be16 *seq_ptr;
 u8 *hdr;

 if (!(skb_shinfo(clone)->tx_flags & SKBTX_HW_TSTAMP))
  return 0;

 hdr = mv88e6xxx_should_tstamp(chip, port, clone, type);
 if (!hdr)
  return 0;

 seq_ptr = (__be16 *)(hdr + OFF_PTP_SEQUENCE_ID);

 if (test_and_set_bit_lock(MV88E6XXX_HWTSTAMP_TX_IN_PROGRESS,
      &ps->state))
  return 0;

 ps->tx_skb = clone;
 ps->tx_tstamp_start = jiffies;
 ps->tx_seq_id = be16_to_cpup(seq_ptr);

 ptp_schedule_worker(chip->ptp_clock, 0);
 return 1;
}
