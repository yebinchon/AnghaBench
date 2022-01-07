
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct ath6kl {TYPE_1__* hif_ops; } ;
struct TYPE_2__ {int (* pipe_get_default ) (struct ath6kl*,int *,int *) ;} ;


 int ATH6KL_DBG_HIF ;
 int ath6kl_dbg (int ,char*) ;
 int stub1 (struct ath6kl*,int *,int *) ;

__attribute__((used)) static inline void ath6kl_hif_pipe_get_default(struct ath6kl *ar,
            u8 *ul_pipe, u8 *dl_pipe)
{
 ath6kl_dbg(ATH6KL_DBG_HIF, "hif pipe get default\n");

 ar->hif_ops->pipe_get_default(ar, ul_pipe, dl_pipe);
}
