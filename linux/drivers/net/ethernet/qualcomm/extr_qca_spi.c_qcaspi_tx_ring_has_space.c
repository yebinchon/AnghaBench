
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tx_ring {size_t tail; scalar_t__ size; scalar_t__* skb; } ;


 scalar_t__ QCAFRM_MAX_LEN ;
 scalar_t__ QCASPI_HW_BUF_LEN ;

__attribute__((used)) static int
qcaspi_tx_ring_has_space(struct tx_ring *txr)
{
 if (txr->skb[txr->tail])
  return 0;

 return (txr->size + QCAFRM_MAX_LEN < QCASPI_HW_BUF_LEN) ? 1 : 0;
}
