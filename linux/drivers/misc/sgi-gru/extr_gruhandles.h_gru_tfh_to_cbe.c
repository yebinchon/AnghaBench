
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gru_tlb_fault_handle {int dummy; } ;
struct gru_control_block_extended {int dummy; } ;


 unsigned long GRU_CBE_BASE ;
 unsigned long GRU_TFH_BASE ;

__attribute__((used)) static inline struct gru_control_block_extended *gru_tfh_to_cbe(
     struct gru_tlb_fault_handle *tfh)
{
 unsigned long cbe;

 cbe = (unsigned long)tfh - GRU_TFH_BASE + GRU_CBE_BASE;
 return (struct gru_control_block_extended*)cbe;
}
