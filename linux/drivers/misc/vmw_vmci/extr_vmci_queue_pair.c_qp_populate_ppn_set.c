
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct ppn_set {int num_produce_pages; int num_consume_pages; scalar_t__* consume_ppns; scalar_t__* produce_ppns; } ;


 int VMCI_SUCCESS ;
 int memcpy (int *,scalar_t__*,int) ;
 scalar_t__ vmci_use_ppn64 () ;

__attribute__((used)) static int qp_populate_ppn_set(u8 *call_buf, const struct ppn_set *ppn_set)
{
 if (vmci_use_ppn64()) {
  memcpy(call_buf, ppn_set->produce_ppns,
         ppn_set->num_produce_pages *
         sizeof(*ppn_set->produce_ppns));
  memcpy(call_buf +
         ppn_set->num_produce_pages *
         sizeof(*ppn_set->produce_ppns),
         ppn_set->consume_ppns,
         ppn_set->num_consume_pages *
         sizeof(*ppn_set->consume_ppns));
 } else {
  int i;
  u32 *ppns = (u32 *) call_buf;

  for (i = 0; i < ppn_set->num_produce_pages; i++)
   ppns[i] = (u32) ppn_set->produce_ppns[i];

  ppns = &ppns[ppn_set->num_produce_pages];

  for (i = 0; i < ppn_set->num_consume_pages; i++)
   ppns[i] = (u32) ppn_set->consume_ppns[i];
 }

 return VMCI_SUCCESS;
}
