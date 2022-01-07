
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct oslec_state {struct oslec_state* snapshot; struct oslec_state** fir_taps16; int fir_state_bg; int fir_state; } ;


 int fir16_free (int *) ;
 int kfree (struct oslec_state*) ;

void oslec_free(struct oslec_state *ec)
{
 int i;

 fir16_free(&ec->fir_state);
 fir16_free(&ec->fir_state_bg);
 for (i = 0; i < 2; i++)
  kfree(ec->fir_taps16[i]);
 kfree(ec->snapshot);
 kfree(ec);
}
