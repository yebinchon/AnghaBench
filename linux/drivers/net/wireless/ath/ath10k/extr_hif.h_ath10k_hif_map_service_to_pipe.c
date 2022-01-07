
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct ath10k {TYPE_2__ hif; } ;
struct TYPE_3__ {int (* map_service_to_pipe ) (struct ath10k*,int ,int *,int *) ;} ;


 int stub1 (struct ath10k*,int ,int *,int *) ;

__attribute__((used)) static inline int ath10k_hif_map_service_to_pipe(struct ath10k *ar,
       u16 service_id,
       u8 *ul_pipe, u8 *dl_pipe)
{
 return ar->hif.ops->map_service_to_pipe(ar, service_id,
      ul_pipe, dl_pipe);
}
