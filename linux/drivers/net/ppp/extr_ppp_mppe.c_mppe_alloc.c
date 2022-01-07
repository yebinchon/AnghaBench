
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ppp_mppe_state {unsigned char* master_key; unsigned char* session_key; TYPE_1__* sha1; struct ppp_mppe_state* sha1_digest; } ;
struct crypto_shash {int dummy; } ;
struct TYPE_2__ {struct crypto_shash* tfm; } ;


 int CILEN_MPPE ;
 unsigned char CI_MPPE ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct crypto_shash*) ;
 unsigned int MPPE_MAX_KEY_LEN ;
 struct crypto_shash* crypto_alloc_shash (char*,int ,int ) ;
 int crypto_free_shash (struct crypto_shash*) ;
 unsigned int crypto_shash_descsize (struct crypto_shash*) ;
 unsigned int crypto_shash_digestsize (struct crypto_shash*) ;
 scalar_t__ fips_enabled ;
 int kfree (struct ppp_mppe_state*) ;
 void* kmalloc (unsigned int,int ) ;
 struct ppp_mppe_state* kzalloc (int,int ) ;
 int kzfree (TYPE_1__*) ;
 int memcpy (unsigned char*,unsigned char*,int) ;

__attribute__((used)) static void *mppe_alloc(unsigned char *options, int optlen)
{
 struct ppp_mppe_state *state;
 struct crypto_shash *shash;
 unsigned int digestsize;

 if (optlen != CILEN_MPPE + sizeof(state->master_key) ||
     options[0] != CI_MPPE || options[1] != CILEN_MPPE ||
     fips_enabled)
  goto out;

 state = kzalloc(sizeof(*state), GFP_KERNEL);
 if (state == ((void*)0))
  goto out;


 shash = crypto_alloc_shash("sha1", 0, 0);
 if (IS_ERR(shash))
  goto out_free;

 state->sha1 = kmalloc(sizeof(*state->sha1) +
         crypto_shash_descsize(shash),
         GFP_KERNEL);
 if (!state->sha1) {
  crypto_free_shash(shash);
  goto out_free;
 }
 state->sha1->tfm = shash;

 digestsize = crypto_shash_digestsize(shash);
 if (digestsize < MPPE_MAX_KEY_LEN)
  goto out_free;

 state->sha1_digest = kmalloc(digestsize, GFP_KERNEL);
 if (!state->sha1_digest)
  goto out_free;


 memcpy(state->master_key, &options[CILEN_MPPE],
        sizeof(state->master_key));
 memcpy(state->session_key, state->master_key,
        sizeof(state->master_key));






 return (void *)state;

out_free:
 kfree(state->sha1_digest);
 if (state->sha1) {
  crypto_free_shash(state->sha1->tfm);
  kzfree(state->sha1);
 }
 kfree(state);
out:
 return ((void*)0);
}
