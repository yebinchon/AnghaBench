
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fm10k_intfc {int dummy; } ;


 int fm10k_free_q_vectors (struct fm10k_intfc*) ;
 int fm10k_reset_msix_capability (struct fm10k_intfc*) ;

void fm10k_clear_queueing_scheme(struct fm10k_intfc *interface)
{
 fm10k_free_q_vectors(interface);
 fm10k_reset_msix_capability(interface);
}
