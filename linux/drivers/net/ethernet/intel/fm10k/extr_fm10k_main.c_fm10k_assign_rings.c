
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fm10k_intfc {int dummy; } ;


 scalar_t__ fm10k_cache_ring_qos (struct fm10k_intfc*) ;
 int fm10k_cache_ring_rss (struct fm10k_intfc*) ;

__attribute__((used)) static void fm10k_assign_rings(struct fm10k_intfc *interface)
{
 if (fm10k_cache_ring_qos(interface))
  return;

 fm10k_cache_ring_rss(interface);
}
