
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mvpp2_port {int priv; } ;


 int MVPP2_RXQ_NUM_NEW_OFFSET ;
 int MVPP2_RXQ_STATUS_UPDATE_REG (int) ;
 int mvpp2_write (int ,int ,int) ;

__attribute__((used)) static inline void
mvpp2_rxq_status_update(struct mvpp2_port *port, int rxq_id,
   int used_count, int free_count)
{



 u32 val = used_count | (free_count << MVPP2_RXQ_NUM_NEW_OFFSET);

 mvpp2_write(port->priv, MVPP2_RXQ_STATUS_UPDATE_REG(rxq_id), val);
}
