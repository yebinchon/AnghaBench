
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vpfe_device {unsigned long field_off; int ccdc; TYPE_2__* next_frm; } ;
struct TYPE_3__ {int vb2_buf; } ;
struct TYPE_4__ {TYPE_1__ vb; } ;


 unsigned long vb2_dma_contig_plane_dma_addr (int *,int ) ;
 int vpfe_set_sdr_addr (int *,unsigned long) ;

__attribute__((used)) static inline void vpfe_schedule_bottom_field(struct vpfe_device *vpfe)
{
 unsigned long addr;

 addr = vb2_dma_contig_plane_dma_addr(&vpfe->next_frm->vb.vb2_buf, 0) +
     vpfe->field_off;

 vpfe_set_sdr_addr(&vpfe->ccdc, addr);
}
