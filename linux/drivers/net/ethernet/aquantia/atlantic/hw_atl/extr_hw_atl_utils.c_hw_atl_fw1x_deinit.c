
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aq_hw_s {int dummy; } ;


 int MPI_DEINIT ;
 int hw_atl_utils_mpi_set_speed (struct aq_hw_s*,int ) ;
 int hw_atl_utils_mpi_set_state (struct aq_hw_s*,int ) ;

__attribute__((used)) static int hw_atl_fw1x_deinit(struct aq_hw_s *self)
{
 hw_atl_utils_mpi_set_speed(self, 0);
 hw_atl_utils_mpi_set_state(self, MPI_DEINIT);
 return 0;
}
