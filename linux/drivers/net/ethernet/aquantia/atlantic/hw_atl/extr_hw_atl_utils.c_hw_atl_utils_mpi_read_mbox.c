
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hw_atl_utils_mbox_header {int dummy; } ;
struct aq_hw_s {int mbox_addr; } ;


 int hw_atl_utils_fw_downld_dwords (struct aq_hw_s*,int ,int *,int) ;

int hw_atl_utils_mpi_read_mbox(struct aq_hw_s *self,
          struct hw_atl_utils_mbox_header *pmbox)
{
 return hw_atl_utils_fw_downld_dwords(self,
          self->mbox_addr,
          (u32 *)(void *)pmbox,
          sizeof(*pmbox) / sizeof(u32));
}
