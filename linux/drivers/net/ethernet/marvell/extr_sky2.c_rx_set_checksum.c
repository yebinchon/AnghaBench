
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sky2_rx_le {int opcode; scalar_t__ ctrl; int addr; } ;
struct sky2_port {size_t port; TYPE_1__* netdev; int hw; } ;
struct TYPE_2__ {int features; } ;


 int BMU_DIS_RX_CHKSUM ;
 int BMU_ENA_RX_CHKSUM ;
 int ETH_HLEN ;
 int HW_OWNER ;
 int NETIF_F_RXCSUM ;
 int OP_TCPSTART ;
 int Q_ADDR (int ,int ) ;
 int Q_CSR ;
 int cpu_to_le32 (int) ;
 int * rxqaddr ;
 struct sky2_rx_le* sky2_next_rx (struct sky2_port*) ;
 int sky2_write32 (int ,int ,int ) ;

__attribute__((used)) static void rx_set_checksum(struct sky2_port *sky2)
{
 struct sky2_rx_le *le = sky2_next_rx(sky2);

 le->addr = cpu_to_le32((ETH_HLEN << 16) | ETH_HLEN);
 le->ctrl = 0;
 le->opcode = OP_TCPSTART | HW_OWNER;

 sky2_write32(sky2->hw,
       Q_ADDR(rxqaddr[sky2->port], Q_CSR),
       (sky2->netdev->features & NETIF_F_RXCSUM)
       ? BMU_ENA_RX_CHKSUM : BMU_DIS_RX_CHKSUM);
}
