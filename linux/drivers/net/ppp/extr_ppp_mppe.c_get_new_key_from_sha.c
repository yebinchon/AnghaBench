
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ppp_mppe_state {int keylen; int sha1_digest; int sha1; int session_key; int master_key; } ;
struct TYPE_2__ {int sha_pad2; int sha_pad1; } ;


 int crypto_shash_final (int ,int ) ;
 int crypto_shash_init (int ) ;
 int crypto_shash_update (int ,int ,int) ;
 TYPE_1__* sha_pad ;

__attribute__((used)) static void get_new_key_from_sha(struct ppp_mppe_state * state)
{
 crypto_shash_init(state->sha1);
 crypto_shash_update(state->sha1, state->master_key,
       state->keylen);
 crypto_shash_update(state->sha1, sha_pad->sha_pad1,
       sizeof(sha_pad->sha_pad1));
 crypto_shash_update(state->sha1, state->session_key,
       state->keylen);
 crypto_shash_update(state->sha1, sha_pad->sha_pad2,
       sizeof(sha_pad->sha_pad2));
 crypto_shash_final(state->sha1, state->sha1_digest);
}
