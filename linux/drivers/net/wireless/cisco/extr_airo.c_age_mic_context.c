
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int valid; int window; int seed; scalar_t__ tx; scalar_t__ rx; struct TYPE_11__* key; } ;
typedef TYPE_1__ u8 ;
struct crypto_sync_skcipher {int dummy; } ;
typedef TYPE_1__ miccntx ;


 int emmh32_setseed (int *,TYPE_1__*,int,struct crypto_sync_skcipher*) ;
 scalar_t__ memcmp (TYPE_1__*,TYPE_1__*,int) ;
 int memcpy (TYPE_1__*,TYPE_1__*,int) ;

__attribute__((used)) static void age_mic_context(miccntx *cur, miccntx *old, u8 *key, int key_len,
       struct crypto_sync_skcipher *tfm)
{



 if (cur->valid && (memcmp(cur->key, key, key_len) == 0))
  return;


 memcpy(old, cur, sizeof(*cur));


 memcpy(cur->key, key, key_len);
 cur->window = 33;
 cur->rx = 0;
 cur->tx = 0;
 cur->valid = 1;


 emmh32_setseed(&cur->seed, key, key_len, tfm);
}
