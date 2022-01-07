
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mib_counters {int rx_overrun; int rx_discard; int late_collision; int collision; int bad_crc_event; int mac_receive_error; int jabber_received; int oversize_received; int fragments_received; int undersize_received; int bad_fc_received; int good_fc_received; int fc_sent; int unrec_mac_control_received; int broadcast_frames_sent; int multicast_frames_sent; int excessive_collision; int good_frames_sent; int good_octets_sent; int frames_1024_to_max_octets; int frames_512_to_1023_octets; int frames_256_to_511_octets; int frames_128_to_255_octets; int frames_65_to_127_octets; int frames_64_octets; int multicast_frames_received; int broadcast_frames_received; int bad_frames_received; int good_frames_received; int internal_mac_transmit_err; int bad_octets_received; int good_octets_received; } ;
struct mv643xx_eth_private {int mib_counters_lock; struct mib_counters mib_counters; } ;


 int RX_DISCARD_FRAME_CNT ;
 int RX_OVERRUN_FRAME_CNT ;
 scalar_t__ mib_read (struct mv643xx_eth_private*,int) ;
 scalar_t__ rdlp (struct mv643xx_eth_private*,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void mib_counters_update(struct mv643xx_eth_private *mp)
{
 struct mib_counters *p = &mp->mib_counters;

 spin_lock_bh(&mp->mib_counters_lock);
 p->good_octets_received += mib_read(mp, 0x00);
 p->bad_octets_received += mib_read(mp, 0x08);
 p->internal_mac_transmit_err += mib_read(mp, 0x0c);
 p->good_frames_received += mib_read(mp, 0x10);
 p->bad_frames_received += mib_read(mp, 0x14);
 p->broadcast_frames_received += mib_read(mp, 0x18);
 p->multicast_frames_received += mib_read(mp, 0x1c);
 p->frames_64_octets += mib_read(mp, 0x20);
 p->frames_65_to_127_octets += mib_read(mp, 0x24);
 p->frames_128_to_255_octets += mib_read(mp, 0x28);
 p->frames_256_to_511_octets += mib_read(mp, 0x2c);
 p->frames_512_to_1023_octets += mib_read(mp, 0x30);
 p->frames_1024_to_max_octets += mib_read(mp, 0x34);
 p->good_octets_sent += mib_read(mp, 0x38);
 p->good_frames_sent += mib_read(mp, 0x40);
 p->excessive_collision += mib_read(mp, 0x44);
 p->multicast_frames_sent += mib_read(mp, 0x48);
 p->broadcast_frames_sent += mib_read(mp, 0x4c);
 p->unrec_mac_control_received += mib_read(mp, 0x50);
 p->fc_sent += mib_read(mp, 0x54);
 p->good_fc_received += mib_read(mp, 0x58);
 p->bad_fc_received += mib_read(mp, 0x5c);
 p->undersize_received += mib_read(mp, 0x60);
 p->fragments_received += mib_read(mp, 0x64);
 p->oversize_received += mib_read(mp, 0x68);
 p->jabber_received += mib_read(mp, 0x6c);
 p->mac_receive_error += mib_read(mp, 0x70);
 p->bad_crc_event += mib_read(mp, 0x74);
 p->collision += mib_read(mp, 0x78);
 p->late_collision += mib_read(mp, 0x7c);

 p->rx_discard += rdlp(mp, RX_DISCARD_FRAME_CNT);
 p->rx_overrun += rdlp(mp, RX_OVERRUN_FRAME_CNT);
 spin_unlock_bh(&mp->mib_counters_lock);
}
