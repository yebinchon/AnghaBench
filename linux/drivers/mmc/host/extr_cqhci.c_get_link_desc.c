
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cqhci_host {int task_desc_len; } ;


 int * get_desc (struct cqhci_host*,int ) ;

__attribute__((used)) static inline u8 *get_link_desc(struct cqhci_host *cq_host, u8 tag)
{
 u8 *desc = get_desc(cq_host, tag);

 return desc + cq_host->task_desc_len;
}
