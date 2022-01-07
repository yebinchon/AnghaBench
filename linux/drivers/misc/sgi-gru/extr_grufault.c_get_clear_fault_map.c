
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gru_tlb_fault_map {unsigned long* fault_bits; unsigned long* done_bits; } ;
struct gru_state {int dummy; } ;


 unsigned long BITS_TO_LONGS (int ) ;
 int GRU_NUM_CBE ;
 struct gru_tlb_fault_map* get_tfm_for_cpu (struct gru_state*,int ) ;
 int gru_cpu_fault_map_id () ;
 int gru_flush_cache (struct gru_tlb_fault_map*) ;
 int prefetchw (struct gru_tlb_fault_map*) ;
 unsigned long xchg (unsigned long*,unsigned long) ;

__attribute__((used)) static void get_clear_fault_map(struct gru_state *gru,
    struct gru_tlb_fault_map *imap,
    struct gru_tlb_fault_map *dmap)
{
 unsigned long i, k;
 struct gru_tlb_fault_map *tfm;

 tfm = get_tfm_for_cpu(gru, gru_cpu_fault_map_id());
 prefetchw(tfm);
 for (i = 0; i < BITS_TO_LONGS(GRU_NUM_CBE); i++) {
  k = tfm->fault_bits[i];
  if (k)
   k = xchg(&tfm->fault_bits[i], 0UL);
  imap->fault_bits[i] = k;
  k = tfm->done_bits[i];
  if (k)
   k = xchg(&tfm->done_bits[i], 0UL);
  dmap->fault_bits[i] = k;
 }





 gru_flush_cache(tfm);
}
