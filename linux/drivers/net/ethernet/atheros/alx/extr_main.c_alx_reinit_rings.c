
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct alx_priv {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int alx_free_buffers (struct alx_priv*) ;
 int alx_init_ring_ptrs (struct alx_priv*) ;
 int alx_refill_rx_ring (struct alx_priv*,int ) ;

__attribute__((used)) static int alx_reinit_rings(struct alx_priv *alx)
{
 alx_free_buffers(alx);

 alx_init_ring_ptrs(alx);

 if (!alx_refill_rx_ring(alx, GFP_KERNEL))
  return -ENOMEM;

 return 0;
}
