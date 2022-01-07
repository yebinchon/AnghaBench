
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mvpp2_port {int priv; } ;


 int MVPP2_RXQ_CONFIG_REG (int) ;
 int MVPP2_RXQ_PACKET_OFFSET_MASK ;
 int MVPP2_RXQ_PACKET_OFFSET_OFFS ;
 int mvpp2_read (int ,int ) ;
 int mvpp2_write (int ,int ,int) ;

__attribute__((used)) static void mvpp2_rxq_offset_set(struct mvpp2_port *port,
     int prxq, int offset)
{
 u32 val;


 offset = offset >> 5;

 val = mvpp2_read(port->priv, MVPP2_RXQ_CONFIG_REG(prxq));
 val &= ~MVPP2_RXQ_PACKET_OFFSET_MASK;


 val |= ((offset << MVPP2_RXQ_PACKET_OFFSET_OFFS) &
      MVPP2_RXQ_PACKET_OFFSET_MASK);

 mvpp2_write(port->priv, MVPP2_RXQ_CONFIG_REG(prxq), val);
}
