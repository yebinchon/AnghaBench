
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vnic_wq {TYPE_1__* to_use; } ;
struct TYPE_2__ {void* desc; } ;



__attribute__((used)) static inline void *vnic_wq_next_desc(struct vnic_wq *wq)
{
 return wq->to_use->desc;
}
