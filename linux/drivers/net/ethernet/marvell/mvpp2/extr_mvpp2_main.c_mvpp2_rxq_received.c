
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mvpp2_port {int priv; } ;


 int MVPP2_RXQ_OCCUPIED_MASK ;
 int MVPP2_RXQ_STATUS_REG (int) ;
 int mvpp2_read (int ,int ) ;

__attribute__((used)) static inline int
mvpp2_rxq_received(struct mvpp2_port *port, int rxq_id)
{
 u32 val = mvpp2_read(port->priv, MVPP2_RXQ_STATUS_REG(rxq_id));

 return val & MVPP2_RXQ_OCCUPIED_MASK;
}
