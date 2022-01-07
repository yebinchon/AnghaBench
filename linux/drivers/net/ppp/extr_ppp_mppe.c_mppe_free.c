
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ppp_mppe_state {struct ppp_mppe_state* sha1; int tfm; int sha1_digest; } ;


 int crypto_free_shash (int ) ;
 int kfree (int ) ;
 int kzfree (struct ppp_mppe_state*) ;

__attribute__((used)) static void mppe_free(void *arg)
{
 struct ppp_mppe_state *state = (struct ppp_mppe_state *) arg;
 if (state) {
  kfree(state->sha1_digest);
  crypto_free_shash(state->sha1->tfm);
  kzfree(state->sha1);
  kzfree(state);
 }
}
