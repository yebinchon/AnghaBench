
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wil6210_priv {scalar_t__ use_enhanced_dma_hw; } ;



__attribute__((used)) static inline int wil_get_min_tx_ring_id(struct wil6210_priv *wil)
{

 return wil->use_enhanced_dma_hw ? 1 : 0;
}
