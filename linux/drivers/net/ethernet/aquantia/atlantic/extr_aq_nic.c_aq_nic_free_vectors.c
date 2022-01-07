
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aq_nic_s {int ** aq_vec; } ;


 unsigned int ARRAY_SIZE (int **) ;
 int aq_vec_free (int *) ;

void aq_nic_free_vectors(struct aq_nic_s *self)
{
 unsigned int i = 0U;

 if (!self)
  goto err_exit;

 for (i = ARRAY_SIZE(self->aq_vec); i--;) {
  if (self->aq_vec[i]) {
   aq_vec_free(self->aq_vec[i]);
   self->aq_vec[i] = ((void*)0);
  }
 }

err_exit:;
}
