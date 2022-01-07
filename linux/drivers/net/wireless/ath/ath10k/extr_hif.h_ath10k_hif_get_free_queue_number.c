
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
struct TYPE_3__ {int (* get_free_queue_number ) (struct ath10k*,int ) ;} ;


 int stub1 (struct ath10k*,int ) ;

__attribute__((used)) static inline u16 ath10k_hif_get_free_queue_number(struct ath10k *ar,
         u8 pipe_id)
{
 return ar->hif.ops->get_free_queue_number(ar, pipe_id);
}
