
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct rx_desc {int opts3; int opts2; } ;
struct r8152 {TYPE_1__* netdev; } ;
struct TYPE_2__ {int features; } ;


 int CHECKSUM_NONE ;
 int CHECKSUM_UNNECESSARY ;
 int IPF ;
 int NETIF_F_RXCSUM ;
 int RD_IPV4_CS ;
 int RD_IPV6_CS ;
 int RD_TCP_CS ;
 int RD_UDP_CS ;
 int TCPF ;
 int UDPF ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static u8 r8152_rx_csum(struct r8152 *tp, struct rx_desc *rx_desc)
{
 u8 checksum = CHECKSUM_NONE;
 u32 opts2, opts3;

 if (!(tp->netdev->features & NETIF_F_RXCSUM))
  goto return_result;

 opts2 = le32_to_cpu(rx_desc->opts2);
 opts3 = le32_to_cpu(rx_desc->opts3);

 if (opts2 & RD_IPV4_CS) {
  if (opts3 & IPF)
   checksum = CHECKSUM_NONE;
  else if ((opts2 & RD_UDP_CS) && !(opts3 & UDPF))
   checksum = CHECKSUM_UNNECESSARY;
  else if ((opts2 & RD_TCP_CS) && !(opts3 & TCPF))
   checksum = CHECKSUM_UNNECESSARY;
 } else if (opts2 & RD_IPV6_CS) {
  if ((opts2 & RD_UDP_CS) && !(opts3 & UDPF))
   checksum = CHECKSUM_UNNECESSARY;
  else if ((opts2 & RD_TCP_CS) && !(opts3 & TCPF))
   checksum = CHECKSUM_UNNECESSARY;
 }

return_result:
 return checksum;
}
