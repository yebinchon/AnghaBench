
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sky2_rx_le {scalar_t__ ctrl; } ;
struct sky2_port {int rx_put; struct sky2_rx_le* rx_le; } ;


 int RING_NEXT (int,int ) ;
 int RX_LE_SIZE ;

__attribute__((used)) static inline struct sky2_rx_le *sky2_next_rx(struct sky2_port *sky2)
{
 struct sky2_rx_le *le = sky2->rx_le + sky2->rx_put;
 sky2->rx_put = RING_NEXT(sky2->rx_put, RX_LE_SIZE);
 le->ctrl = 0;
 return le;
}
