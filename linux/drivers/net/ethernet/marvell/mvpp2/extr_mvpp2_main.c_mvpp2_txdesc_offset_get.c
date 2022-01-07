
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {unsigned int packet_offset; } ;
struct TYPE_5__ {unsigned int packet_offset; } ;
struct mvpp2_tx_desc {TYPE_3__ pp22; TYPE_2__ pp21; } ;
struct mvpp2_port {TYPE_1__* priv; } ;
struct TYPE_4__ {scalar_t__ hw_version; } ;


 scalar_t__ MVPP21 ;

__attribute__((used)) static unsigned int mvpp2_txdesc_offset_get(struct mvpp2_port *port,
         struct mvpp2_tx_desc *tx_desc)
{
 if (port->priv->hw_version == MVPP21)
  return tx_desc->pp21.packet_offset;
 else
  return tx_desc->pp22.packet_offset;
}
