
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int buf_dma_addr_key_hash; } ;
struct TYPE_5__ {int buf_dma_addr; } ;
struct mvpp2_rx_desc {TYPE_3__ pp22; TYPE_2__ pp21; } ;
struct mvpp2_port {TYPE_1__* priv; } ;
typedef int dma_addr_t ;
struct TYPE_4__ {scalar_t__ hw_version; } ;


 scalar_t__ MVPP21 ;
 int MVPP2_DESC_DMA_MASK ;
 int le32_to_cpu (int ) ;
 int le64_to_cpu (int ) ;

__attribute__((used)) static dma_addr_t mvpp2_rxdesc_dma_addr_get(struct mvpp2_port *port,
         struct mvpp2_rx_desc *rx_desc)
{
 if (port->priv->hw_version == MVPP21)
  return le32_to_cpu(rx_desc->pp21.buf_dma_addr);
 else
  return le64_to_cpu(rx_desc->pp22.buf_dma_addr_key_hash) &
         MVPP2_DESC_DMA_MASK;
}
