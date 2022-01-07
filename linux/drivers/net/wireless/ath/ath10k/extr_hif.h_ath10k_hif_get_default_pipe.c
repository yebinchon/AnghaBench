
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct ath10k {TYPE_2__ hif; } ;
struct TYPE_3__ {int (* get_default_pipe ) (struct ath10k*,int *,int *) ;} ;


 int stub1 (struct ath10k*,int *,int *) ;

__attribute__((used)) static inline void ath10k_hif_get_default_pipe(struct ath10k *ar,
            u8 *ul_pipe, u8 *dl_pipe)
{
 ar->hif.ops->get_default_pipe(ar, ul_pipe, dl_pipe);
}
