
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gru_control_block_extended {scalar_t__ cbrexecstatus; } ;


 int gru_flush_cache (struct gru_control_block_extended*) ;
 scalar_t__ unlikely (struct gru_control_block_extended*) ;

__attribute__((used)) static void gru_flush_cache_cbe(struct gru_control_block_extended *cbe)
{
 if (unlikely(cbe)) {
  cbe->cbrexecstatus = 0;
  gru_flush_cache(cbe);
 }
}
