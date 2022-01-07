
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fifo {int * va; int da; scalar_t__ memsz; } ;
struct bdx_priv {int pdev; } ;


 int ENTER ;
 scalar_t__ FIFO_EXTRA_SPACE ;
 int RET () ;
 int pci_free_consistent (int ,scalar_t__,int *,int ) ;

__attribute__((used)) static void bdx_fifo_free(struct bdx_priv *priv, struct fifo *f)
{
 ENTER;
 if (f->va) {
  pci_free_consistent(priv->pdev,
        f->memsz + FIFO_EXTRA_SPACE, f->va, f->da);
  f->va = ((void*)0);
 }
 RET();
}
