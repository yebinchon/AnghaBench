
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hnae3_handle {TYPE_2__* ae_algo; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int (* client_start ) (struct hnae3_handle*) ;} ;


 int stub1 (struct hnae3_handle*) ;

__attribute__((used)) static int hns3_client_start(struct hnae3_handle *handle)
{
 if (!handle->ae_algo->ops->client_start)
  return 0;

 return handle->ae_algo->ops->client_start(handle);
}
