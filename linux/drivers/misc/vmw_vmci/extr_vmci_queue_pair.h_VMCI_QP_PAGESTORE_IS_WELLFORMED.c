
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmci_qp_page_store {int len; } ;



__attribute__((used)) static inline bool
VMCI_QP_PAGESTORE_IS_WELLFORMED(struct vmci_qp_page_store *page_store)
{
 return page_store->len >= 2;
}
