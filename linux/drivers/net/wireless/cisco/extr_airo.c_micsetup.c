
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct airo_info {TYPE_2__* mod; int * tfm; TYPE_1__* dev; } ;
typedef int miccntx ;
struct TYPE_4__ {int uCtx; int mCtx; } ;
struct TYPE_3__ {int name; } ;


 int ERROR ;
 scalar_t__ IS_ERR (int *) ;
 int NUM_MODULES ;
 int SUCCESS ;
 int airo_print_err (int ,char*) ;
 int * crypto_alloc_sync_skcipher (char*,int ,int ) ;
 int memset (int *,int ,int) ;

__attribute__((used)) static int micsetup(struct airo_info *ai) {
 int i;

 if (ai->tfm == ((void*)0))
  ai->tfm = crypto_alloc_sync_skcipher("ctr(aes)", 0, 0);

        if (IS_ERR(ai->tfm)) {
                airo_print_err(ai->dev->name, "failed to load transform for AES");
                ai->tfm = ((void*)0);
                return ERROR;
        }

 for (i=0; i < NUM_MODULES; i++) {
  memset(&ai->mod[i].mCtx,0,sizeof(miccntx));
  memset(&ai->mod[i].uCtx,0,sizeof(miccntx));
 }
 return SUCCESS;
}
