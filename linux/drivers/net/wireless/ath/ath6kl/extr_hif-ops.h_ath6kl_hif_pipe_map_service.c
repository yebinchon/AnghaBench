
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct ath6kl {TYPE_1__* hif_ops; } ;
struct TYPE_2__ {int (* pipe_map_service ) (struct ath6kl*,int ,int *,int *) ;} ;


 int ATH6KL_DBG_HIF ;
 int ath6kl_dbg (int ,char*) ;
 int stub1 (struct ath6kl*,int ,int *,int *) ;

__attribute__((used)) static inline int ath6kl_hif_pipe_map_service(struct ath6kl *ar,
           u16 service_id, u8 *ul_pipe,
           u8 *dl_pipe)
{
 ath6kl_dbg(ATH6KL_DBG_HIF, "hif pipe get default\n");

 return ar->hif_ops->pipe_map_service(ar, service_id, ul_pipe, dl_pipe);
}
