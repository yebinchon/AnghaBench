
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int tally ;
struct tally_counter {int tx_underrun; int tx_aborted; int rx_multicast; int rx_broadcast; int rx_unicast; int tx_multi_collision; int tx_one_collision; int align_errors; int rx_missed; int rx_errors; int tx_errors; int rx_packets; int tx_packets; } ;
struct r8152 {int intf; } ;
struct net_device {int dummy; } ;
struct ethtool_stats {int dummy; } ;


 int MCU_TYPE_PLA ;
 int PLA_TALLYCNT ;
 int generic_ocp_read (struct r8152*,int ,int,struct tally_counter*,int ) ;
 int le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;
 int le64_to_cpu (int ) ;
 struct r8152* netdev_priv (struct net_device*) ;
 scalar_t__ usb_autopm_get_interface (int ) ;
 int usb_autopm_put_interface (int ) ;

__attribute__((used)) static void rtl8152_get_ethtool_stats(struct net_device *dev,
          struct ethtool_stats *stats, u64 *data)
{
 struct r8152 *tp = netdev_priv(dev);
 struct tally_counter tally;

 if (usb_autopm_get_interface(tp->intf) < 0)
  return;

 generic_ocp_read(tp, PLA_TALLYCNT, sizeof(tally), &tally, MCU_TYPE_PLA);

 usb_autopm_put_interface(tp->intf);

 data[0] = le64_to_cpu(tally.tx_packets);
 data[1] = le64_to_cpu(tally.rx_packets);
 data[2] = le64_to_cpu(tally.tx_errors);
 data[3] = le32_to_cpu(tally.rx_errors);
 data[4] = le16_to_cpu(tally.rx_missed);
 data[5] = le16_to_cpu(tally.align_errors);
 data[6] = le32_to_cpu(tally.tx_one_collision);
 data[7] = le32_to_cpu(tally.tx_multi_collision);
 data[8] = le64_to_cpu(tally.rx_unicast);
 data[9] = le64_to_cpu(tally.rx_broadcast);
 data[10] = le32_to_cpu(tally.rx_multicast);
 data[11] = le16_to_cpu(tally.tx_aborted);
 data[12] = le16_to_cpu(tally.tx_underrun);
}
