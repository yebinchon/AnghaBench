
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct htc_target {TYPE_3__* dev; } ;
struct htc_service_connect_resp {int dummy; } ;
struct htc_service_connect_req {int dummy; } ;
struct TYPE_6__ {TYPE_2__* ar; } ;
struct TYPE_5__ {TYPE_1__* htc_ops; } ;
struct TYPE_4__ {int (* conn_service ) (struct htc_target*,struct htc_service_connect_req*,struct htc_service_connect_resp*) ;} ;


 int stub1 (struct htc_target*,struct htc_service_connect_req*,struct htc_service_connect_resp*) ;

__attribute__((used)) static inline int ath6kl_htc_conn_service(struct htc_target *target,
       struct htc_service_connect_req *req,
       struct htc_service_connect_resp *resp)
{
 return target->dev->ar->htc_ops->conn_service(target, req, resp);
}
