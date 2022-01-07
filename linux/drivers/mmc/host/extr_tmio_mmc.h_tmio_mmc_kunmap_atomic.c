
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int offset; } ;


 int kunmap_atomic (void*) ;
 int local_irq_restore (unsigned long) ;

__attribute__((used)) static inline void tmio_mmc_kunmap_atomic(struct scatterlist *sg,
       unsigned long *flags, void *virt)
{
 kunmap_atomic(virt - sg->offset);
 local_irq_restore(*flags);
}
