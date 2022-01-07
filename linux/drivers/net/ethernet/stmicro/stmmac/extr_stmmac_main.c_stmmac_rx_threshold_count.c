
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stmmac_rx_queue {scalar_t__ rx_zeroc_thresh; } ;


 scalar_t__ STMMAC_RX_THRESH ;

__attribute__((used)) static inline int stmmac_rx_threshold_count(struct stmmac_rx_queue *rx_q)
{
 if (rx_q->rx_zeroc_thresh < STMMAC_RX_THRESH)
  return 0;

 return 1;
}
