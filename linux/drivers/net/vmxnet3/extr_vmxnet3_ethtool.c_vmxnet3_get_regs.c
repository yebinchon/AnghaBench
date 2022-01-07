
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_9__ {int size; int next2proc; int gen; int basePA; } ;
struct TYPE_8__ {int size; int basePA; } ;
struct TYPE_14__ {int size; int next2fill; int next2comp; int gen; int basePA; } ;
struct vmxnet3_tx_queue {int txdata_desc_size; int stopped; TYPE_2__ comp_ring; TYPE_1__ data_ring; TYPE_7__ tx_ring; } ;
struct TYPE_12__ {int size; int next2proc; int gen; int basePA; } ;
struct TYPE_11__ {int desc_size; int basePA; } ;
struct vmxnet3_rx_queue {TYPE_5__ comp_ring; TYPE_4__ data_ring; TYPE_3__* rx_ring; } ;
struct TYPE_13__ {int num_intrs; } ;
struct vmxnet3_adapter {int num_tx_queues; int num_rx_queues; struct vmxnet3_rx_queue* rx_queue; struct vmxnet3_tx_queue* tx_queue; TYPE_6__ intr; } ;
struct net_device {int dummy; } ;
struct ethtool_regs {int version; } ;
struct TYPE_10__ {int size; int next2fill; int next2comp; int gen; int basePA; } ;


 int VMXNET3_GET_ADDR_HI (int ) ;
 int VMXNET3_GET_ADDR_LO (int ) ;
 int VMXNET3_READ_BAR0_REG (struct vmxnet3_adapter*,scalar_t__) ;
 int VMXNET3_READ_BAR1_REG (struct vmxnet3_adapter*,int ) ;
 int VMXNET3_REG_ALIGN ;
 int VMXNET3_REG_CMD ;
 int VMXNET3_REG_DSAH ;
 int VMXNET3_REG_DSAL ;
 int VMXNET3_REG_ECR ;
 int VMXNET3_REG_ICR ;
 scalar_t__ VMXNET3_REG_IMR ;
 int VMXNET3_REG_MACH ;
 int VMXNET3_REG_MACL ;
 scalar_t__ VMXNET3_REG_RXPROD ;
 scalar_t__ VMXNET3_REG_RXPROD2 ;
 scalar_t__ VMXNET3_REG_TXPROD ;
 int VMXNET3_REG_UVRS ;
 int VMXNET3_REG_VRRS ;
 int memset (void*,int ,int ) ;
 struct vmxnet3_adapter* netdev_priv (struct net_device*) ;
 int vmxnet3_get_regs_len (struct net_device*) ;

__attribute__((used)) static void
vmxnet3_get_regs(struct net_device *netdev, struct ethtool_regs *regs, void *p)
{
 struct vmxnet3_adapter *adapter = netdev_priv(netdev);
 u32 *buf = p;
 int i = 0, j = 0;

 memset(p, 0, vmxnet3_get_regs_len(netdev));

 regs->version = 2;



 buf[j++] = VMXNET3_READ_BAR1_REG(adapter, VMXNET3_REG_VRRS);
 buf[j++] = VMXNET3_READ_BAR1_REG(adapter, VMXNET3_REG_UVRS);
 buf[j++] = VMXNET3_READ_BAR1_REG(adapter, VMXNET3_REG_DSAL);
 buf[j++] = VMXNET3_READ_BAR1_REG(adapter, VMXNET3_REG_DSAH);
 buf[j++] = VMXNET3_READ_BAR1_REG(adapter, VMXNET3_REG_CMD);
 buf[j++] = VMXNET3_READ_BAR1_REG(adapter, VMXNET3_REG_MACL);
 buf[j++] = VMXNET3_READ_BAR1_REG(adapter, VMXNET3_REG_MACH);
 buf[j++] = VMXNET3_READ_BAR1_REG(adapter, VMXNET3_REG_ICR);
 buf[j++] = VMXNET3_READ_BAR1_REG(adapter, VMXNET3_REG_ECR);

 buf[j++] = adapter->intr.num_intrs;
 for (i = 0; i < adapter->intr.num_intrs; i++) {
  buf[j++] = VMXNET3_READ_BAR0_REG(adapter, VMXNET3_REG_IMR
       + i * VMXNET3_REG_ALIGN);
 }

 buf[j++] = adapter->num_tx_queues;
 for (i = 0; i < adapter->num_tx_queues; i++) {
  struct vmxnet3_tx_queue *tq = &adapter->tx_queue[i];

  buf[j++] = VMXNET3_READ_BAR0_REG(adapter, VMXNET3_REG_TXPROD +
       i * VMXNET3_REG_ALIGN);

  buf[j++] = VMXNET3_GET_ADDR_LO(tq->tx_ring.basePA);
  buf[j++] = VMXNET3_GET_ADDR_HI(tq->tx_ring.basePA);
  buf[j++] = tq->tx_ring.size;
  buf[j++] = tq->tx_ring.next2fill;
  buf[j++] = tq->tx_ring.next2comp;
  buf[j++] = tq->tx_ring.gen;

  buf[j++] = VMXNET3_GET_ADDR_LO(tq->data_ring.basePA);
  buf[j++] = VMXNET3_GET_ADDR_HI(tq->data_ring.basePA);
  buf[j++] = tq->data_ring.size;
  buf[j++] = tq->txdata_desc_size;

  buf[j++] = VMXNET3_GET_ADDR_LO(tq->comp_ring.basePA);
  buf[j++] = VMXNET3_GET_ADDR_HI(tq->comp_ring.basePA);
  buf[j++] = tq->comp_ring.size;
  buf[j++] = tq->comp_ring.next2proc;
  buf[j++] = tq->comp_ring.gen;

  buf[j++] = tq->stopped;
 }

 buf[j++] = adapter->num_rx_queues;
 for (i = 0; i < adapter->num_rx_queues; i++) {
  struct vmxnet3_rx_queue *rq = &adapter->rx_queue[i];

  buf[j++] = VMXNET3_READ_BAR0_REG(adapter, VMXNET3_REG_RXPROD +
        i * VMXNET3_REG_ALIGN);
  buf[j++] = VMXNET3_READ_BAR0_REG(adapter, VMXNET3_REG_RXPROD2 +
        i * VMXNET3_REG_ALIGN);

  buf[j++] = VMXNET3_GET_ADDR_LO(rq->rx_ring[0].basePA);
  buf[j++] = VMXNET3_GET_ADDR_HI(rq->rx_ring[0].basePA);
  buf[j++] = rq->rx_ring[0].size;
  buf[j++] = rq->rx_ring[0].next2fill;
  buf[j++] = rq->rx_ring[0].next2comp;
  buf[j++] = rq->rx_ring[0].gen;

  buf[j++] = VMXNET3_GET_ADDR_LO(rq->rx_ring[1].basePA);
  buf[j++] = VMXNET3_GET_ADDR_HI(rq->rx_ring[1].basePA);
  buf[j++] = rq->rx_ring[1].size;
  buf[j++] = rq->rx_ring[1].next2fill;
  buf[j++] = rq->rx_ring[1].next2comp;
  buf[j++] = rq->rx_ring[1].gen;

  buf[j++] = VMXNET3_GET_ADDR_LO(rq->data_ring.basePA);
  buf[j++] = VMXNET3_GET_ADDR_HI(rq->data_ring.basePA);
  buf[j++] = rq->rx_ring[0].size;
  buf[j++] = rq->data_ring.desc_size;

  buf[j++] = VMXNET3_GET_ADDR_LO(rq->comp_ring.basePA);
  buf[j++] = VMXNET3_GET_ADDR_HI(rq->comp_ring.basePA);
  buf[j++] = rq->comp_ring.size;
  buf[j++] = rq->comp_ring.next2proc;
  buf[j++] = rq->comp_ring.gen;
 }
}
