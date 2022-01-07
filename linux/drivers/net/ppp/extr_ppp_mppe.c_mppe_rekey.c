
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ppp_mppe_state {int* sha1_digest; int keylen; int* session_key; int arc4; } ;


 int arc4_crypt (int *,int*,int*,int) ;
 int arc4_setkey (int *,int*,int) ;
 int get_new_key_from_sha (struct ppp_mppe_state*) ;
 int memcpy (int*,int*,int) ;

__attribute__((used)) static void mppe_rekey(struct ppp_mppe_state * state, int initial_key)
{
 get_new_key_from_sha(state);
 if (!initial_key) {
  arc4_setkey(&state->arc4, state->sha1_digest, state->keylen);
  arc4_crypt(&state->arc4, state->session_key, state->sha1_digest,
      state->keylen);
 } else {
  memcpy(state->session_key, state->sha1_digest, state->keylen);
 }
 if (state->keylen == 8) {

  state->session_key[0] = 0xd1;
  state->session_key[1] = 0x26;
  state->session_key[2] = 0x9e;
 }
 arc4_setkey(&state->arc4, state->session_key, state->keylen);
}
