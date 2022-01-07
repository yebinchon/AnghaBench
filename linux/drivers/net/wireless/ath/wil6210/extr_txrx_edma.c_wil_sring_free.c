
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wil_status_ring {size_t elem_size; size_t size; int * va; int pa; } ;
struct wil6210_priv {int dummy; } ;
struct device {int dummy; } ;


 int dma_free_coherent (struct device*,size_t,void*,int ) ;
 int wil_dbg_misc (struct wil6210_priv*,char*,size_t,int *,int *) ;
 struct device* wil_to_dev (struct wil6210_priv*) ;

__attribute__((used)) static void wil_sring_free(struct wil6210_priv *wil,
      struct wil_status_ring *sring)
{
 struct device *dev = wil_to_dev(wil);
 size_t sz;

 if (!sring || !sring->va)
  return;

 sz = sring->elem_size * sring->size;

 wil_dbg_misc(wil, "status_ring_free, size(bytes)=%zu, 0x%p:%pad\n",
       sz, sring->va, &sring->pa);

 dma_free_coherent(dev, sz, (void *)sring->va, sring->pa);
 sring->pa = 0;
 sring->va = ((void*)0);
}
