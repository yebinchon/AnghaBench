
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vpdma_cfd {int ctl_payload_len; } ;


 int CFD_DEST_MASK ;
 int CFD_DEST_SHFT ;

__attribute__((used)) static inline int cfd_get_dest(struct vpdma_cfd *cfd)
{
 return (cfd->ctl_payload_len >> CFD_DEST_SHFT) & CFD_DEST_MASK;
}
