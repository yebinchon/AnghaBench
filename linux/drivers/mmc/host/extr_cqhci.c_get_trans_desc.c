
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct cqhci_host {int* trans_desc_base; int trans_desc_len; TYPE_1__* mmc; } ;
struct TYPE_2__ {int max_segs; } ;



__attribute__((used)) static inline u8 *get_trans_desc(struct cqhci_host *cq_host, u8 tag)
{
 return cq_host->trans_desc_base +
  (cq_host->trans_desc_len * cq_host->mmc->max_segs * tag);
}
