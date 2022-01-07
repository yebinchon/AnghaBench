
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct pci_dev {int dev; } ;
struct TYPE_7__ {struct hns3_enet_ring* ring; } ;
struct TYPE_6__ {struct hns3_enet_ring* ring; } ;
struct hns3_enet_tqp_vector {TYPE_3__ rx_group; TYPE_2__ tx_group; TYPE_1__* handle; } ;
struct hns3_enet_ring {struct hns3_enet_ring* next; TYPE_4__* tqp; } ;
struct hnae3_ring_chain_node {struct hnae3_ring_chain_node* next; int int_gl_idx; int flag; int tqp_index; } ;
struct TYPE_8__ {int tqp_index; } ;
struct TYPE_5__ {struct pci_dev* pdev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int HNAE3_RING_GL_IDX_M ;
 int HNAE3_RING_GL_IDX_S ;
 int HNAE3_RING_GL_RX ;
 int HNAE3_RING_GL_TX ;
 int HNAE3_RING_TYPE_B ;
 int HNAE3_RING_TYPE_RX ;
 int HNAE3_RING_TYPE_TX ;
 int devm_kfree (int *,struct hnae3_ring_chain_node*) ;
 struct hnae3_ring_chain_node* devm_kzalloc (int *,int,int ) ;
 int hnae3_set_bit (int ,int ,int ) ;
 int hnae3_set_field (int ,int ,int ,int ) ;

__attribute__((used)) static int hns3_get_vector_ring_chain(struct hns3_enet_tqp_vector *tqp_vector,
          struct hnae3_ring_chain_node *head)
{
 struct pci_dev *pdev = tqp_vector->handle->pdev;
 struct hnae3_ring_chain_node *cur_chain = head;
 struct hnae3_ring_chain_node *chain;
 struct hns3_enet_ring *tx_ring;
 struct hns3_enet_ring *rx_ring;

 tx_ring = tqp_vector->tx_group.ring;
 if (tx_ring) {
  cur_chain->tqp_index = tx_ring->tqp->tqp_index;
  hnae3_set_bit(cur_chain->flag, HNAE3_RING_TYPE_B,
         HNAE3_RING_TYPE_TX);
  hnae3_set_field(cur_chain->int_gl_idx, HNAE3_RING_GL_IDX_M,
    HNAE3_RING_GL_IDX_S, HNAE3_RING_GL_TX);

  cur_chain->next = ((void*)0);

  while (tx_ring->next) {
   tx_ring = tx_ring->next;

   chain = devm_kzalloc(&pdev->dev, sizeof(*chain),
          GFP_KERNEL);
   if (!chain)
    goto err_free_chain;

   cur_chain->next = chain;
   chain->tqp_index = tx_ring->tqp->tqp_index;
   hnae3_set_bit(chain->flag, HNAE3_RING_TYPE_B,
          HNAE3_RING_TYPE_TX);
   hnae3_set_field(chain->int_gl_idx,
     HNAE3_RING_GL_IDX_M,
     HNAE3_RING_GL_IDX_S,
     HNAE3_RING_GL_TX);

   cur_chain = chain;
  }
 }

 rx_ring = tqp_vector->rx_group.ring;
 if (!tx_ring && rx_ring) {
  cur_chain->next = ((void*)0);
  cur_chain->tqp_index = rx_ring->tqp->tqp_index;
  hnae3_set_bit(cur_chain->flag, HNAE3_RING_TYPE_B,
         HNAE3_RING_TYPE_RX);
  hnae3_set_field(cur_chain->int_gl_idx, HNAE3_RING_GL_IDX_M,
    HNAE3_RING_GL_IDX_S, HNAE3_RING_GL_RX);

  rx_ring = rx_ring->next;
 }

 while (rx_ring) {
  chain = devm_kzalloc(&pdev->dev, sizeof(*chain), GFP_KERNEL);
  if (!chain)
   goto err_free_chain;

  cur_chain->next = chain;
  chain->tqp_index = rx_ring->tqp->tqp_index;
  hnae3_set_bit(chain->flag, HNAE3_RING_TYPE_B,
         HNAE3_RING_TYPE_RX);
  hnae3_set_field(chain->int_gl_idx, HNAE3_RING_GL_IDX_M,
    HNAE3_RING_GL_IDX_S, HNAE3_RING_GL_RX);

  cur_chain = chain;

  rx_ring = rx_ring->next;
 }

 return 0;

err_free_chain:
 cur_chain = head->next;
 while (cur_chain) {
  chain = cur_chain->next;
  devm_kfree(&pdev->dev, cur_chain);
  cur_chain = chain;
 }
 head->next = ((void*)0);

 return -ENOMEM;
}
