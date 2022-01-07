
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aq_hw_s {int dummy; } ;


 int MPI_DEINIT ;
 int aq_fw2x_set_link_speed (struct aq_hw_s*,int ) ;
 int aq_fw2x_set_state (struct aq_hw_s*,int ) ;

__attribute__((used)) static int aq_fw2x_deinit(struct aq_hw_s *self)
{
 int err = aq_fw2x_set_link_speed(self, 0);

 if (!err)
  err = aq_fw2x_set_state(self, MPI_DEINIT);

 return err;
}
