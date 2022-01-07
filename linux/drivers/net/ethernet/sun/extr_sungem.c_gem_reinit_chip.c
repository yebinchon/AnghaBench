
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gem {int dummy; } ;


 int gem_disable_ints (struct gem*) ;
 int gem_init_dma (struct gem*) ;
 int gem_init_mac (struct gem*) ;
 int gem_init_pause_thresholds (struct gem*) ;
 int gem_init_rings (struct gem*) ;
 int gem_reset (struct gem*) ;

__attribute__((used)) static void gem_reinit_chip(struct gem *gp)
{

 gem_reset(gp);


 gem_disable_ints(gp);


 gem_init_rings(gp);


 gem_init_pause_thresholds(gp);


 gem_init_dma(gp);
 gem_init_mac(gp);
}
