
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
typedef int port_t ;
struct TYPE_2__ {int tx_ring_buffers; int rx_ring_buffers; } ;


 TYPE_1__* port_to_card (int *) ;

__attribute__((used)) static inline u16 next_desc(port_t *port, u16 desc, int transmit)
{
 return (desc + 1) % (transmit ? port_to_card(port)->tx_ring_buffers
        : port_to_card(port)->rx_ring_buffers);
}
