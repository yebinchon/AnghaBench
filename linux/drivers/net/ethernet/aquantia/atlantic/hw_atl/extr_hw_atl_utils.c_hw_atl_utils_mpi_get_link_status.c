
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct aq_hw_link_status_s {unsigned int mbps; } ;
struct aq_hw_s {struct aq_hw_link_status_s aq_link_status; } ;


 int EBUSY ;






 int HW_ATL_MPI_SPEED_SHIFT ;
 int hw_atl_utils_mpi_get_state (struct aq_hw_s*) ;

int hw_atl_utils_mpi_get_link_status(struct aq_hw_s *self)
{
 u32 cp0x036C = hw_atl_utils_mpi_get_state(self);
 u32 link_speed_mask = cp0x036C >> HW_ATL_MPI_SPEED_SHIFT;
 struct aq_hw_link_status_s *link_status = &self->aq_link_status;

 if (!link_speed_mask) {
  link_status->mbps = 0U;
 } else {
  switch (link_speed_mask) {
  case 132:
   link_status->mbps = 10000U;
   break;

  case 129:
  case 128:
   link_status->mbps = 5000U;
   break;

  case 130:
   link_status->mbps = 2500U;
   break;

  case 131:
   link_status->mbps = 1000U;
   break;

  case 133:
   link_status->mbps = 100U;
   break;

  default:
   return -EBUSY;
  }
 }

 return 0;
}
