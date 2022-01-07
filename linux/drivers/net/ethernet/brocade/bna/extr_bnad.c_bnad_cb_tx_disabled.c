
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tx_comp; } ;
struct bnad {TYPE_1__ bnad_completions; } ;
struct bna_tx {int dummy; } ;


 int complete (int *) ;

__attribute__((used)) static void
bnad_cb_tx_disabled(void *arg, struct bna_tx *tx)
{
 struct bnad *bnad = (struct bnad *)arg;

 complete(&bnad->bnad_completions.tx_comp);
}
