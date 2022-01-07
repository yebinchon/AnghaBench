
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int idr_destroy (int *) ;
 int kmem_cache_destroy (int ) ;
 int scif_destroy_scifdev () ;
 int scif_ports ;
 int unaligned_cache ;

__attribute__((used)) static void _scif_exit(void)
{
 idr_destroy(&scif_ports);
 kmem_cache_destroy(unaligned_cache);
 scif_destroy_scifdev();
}
