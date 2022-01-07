
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2_napi {struct bnx2* bp; int napi; } ;
struct bnx2 {int irq_nvecs; struct bnx2_napi* bnx2_napi; int dev; } ;


 int bnx2_poll (struct napi_struct*,int) ;
 int bnx2_poll_msix (struct napi_struct*,int) ;
 int netif_napi_add (int ,int *,int (*) (struct napi_struct*,int),int) ;

__attribute__((used)) static void
bnx2_init_napi(struct bnx2 *bp)
{
 int i;

 for (i = 0; i < bp->irq_nvecs; i++) {
  struct bnx2_napi *bnapi = &bp->bnx2_napi[i];
  int (*poll)(struct napi_struct *, int);

  if (i == 0)
   poll = bnx2_poll;
  else
   poll = bnx2_poll_msix;

  netif_napi_add(bp->dev, &bp->bnx2_napi[i].napi, poll, 64);
  bnapi->bp = bp;
 }
}
