
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct ath6kl {TYPE_1__* hif_ops; } ;
struct TYPE_2__ {int (* pipe_get_free_queue_number ) (struct ath6kl*,int ) ;} ;


 int ATH6KL_DBG_HIF ;
 int ath6kl_dbg (int ,char*) ;
 int stub1 (struct ath6kl*,int ) ;

__attribute__((used)) static inline u16 ath6kl_hif_pipe_get_free_queue_number(struct ath6kl *ar,
       u8 pipe)
{
 ath6kl_dbg(ATH6KL_DBG_HIF, "hif pipe get free queue number\n");

 return ar->hif_ops->pipe_get_free_queue_number(ar, pipe);
}
