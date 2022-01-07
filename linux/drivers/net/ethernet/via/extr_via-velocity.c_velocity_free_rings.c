
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct velocity_info {int dummy; } ;


 int velocity_free_dma_rings (struct velocity_info*) ;
 int velocity_free_rd_ring (struct velocity_info*) ;
 int velocity_free_td_ring (struct velocity_info*) ;

__attribute__((used)) static void velocity_free_rings(struct velocity_info *vptr)
{
 velocity_free_td_ring(vptr);
 velocity_free_rd_ring(vptr);
 velocity_free_dma_rings(vptr);
}
