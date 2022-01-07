
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hif_scatter_req {int dummy; } ;
struct ath6kl {TYPE_1__* hif_ops; } ;
struct TYPE_2__ {struct hif_scatter_req* (* scatter_req_get ) (struct ath6kl*) ;} ;


 struct hif_scatter_req* stub1 (struct ath6kl*) ;

__attribute__((used)) static inline struct hif_scatter_req *hif_scatter_req_get(struct ath6kl *ar)
{
 return ar->hif_ops->scatter_req_get(ar);
}
