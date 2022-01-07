
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ag71xx_ring {int * descs_cpu; } ;
struct ag71xx_desc {int dummy; } ;


 int AG71XX_DESC_SIZE ;

__attribute__((used)) static struct ag71xx_desc *ag71xx_ring_desc(struct ag71xx_ring *ring, int idx)
{
 return (struct ag71xx_desc *)&ring->descs_cpu[idx * AG71XX_DESC_SIZE];
}
