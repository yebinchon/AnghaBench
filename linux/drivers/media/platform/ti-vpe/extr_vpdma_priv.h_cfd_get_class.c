
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vpdma_cfd {int ctl_payload_len; } ;


 int CFD_CLASS_MASK ;
 int CFD_CLASS_SHFT ;

__attribute__((used)) static inline bool cfd_get_class(struct vpdma_cfd *cfd)
{
 return (cfd->ctl_payload_len >> CFD_CLASS_SHFT) & CFD_CLASS_MASK;
}
