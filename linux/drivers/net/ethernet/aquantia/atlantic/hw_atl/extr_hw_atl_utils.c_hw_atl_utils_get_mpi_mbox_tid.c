
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hw_atl_utils_mbox_header {int transaction_id; } ;
struct aq_hw_s {int dummy; } ;


 int hw_atl_utils_mpi_read_mbox (struct aq_hw_s*,struct hw_atl_utils_mbox_header*) ;

__attribute__((used)) static u32 hw_atl_utils_get_mpi_mbox_tid(struct aq_hw_s *self)
{
 struct hw_atl_utils_mbox_header mbox;

 hw_atl_utils_mpi_read_mbox(self, &mbox);

 return mbox.transaction_id;
}
