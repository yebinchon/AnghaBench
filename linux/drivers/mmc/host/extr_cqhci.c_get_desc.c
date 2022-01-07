
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cqhci_host {int* desc_base; int slot_sz; } ;



__attribute__((used)) static inline u8 *get_desc(struct cqhci_host *cq_host, u8 tag)
{
 return cq_host->desc_base + (tag * cq_host->slot_sz);
}
