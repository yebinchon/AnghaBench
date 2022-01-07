
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct enic {unsigned int rq_count; unsigned int wq_count; } ;



__attribute__((used)) static inline unsigned int enic_msix_err_intr(struct enic *enic)
{
 return enic->rq_count + enic->wq_count;
}
