
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vnic_login_client_data {int dummy; } ;
struct ibmvnic_adapter {TYPE_1__* netdev; } ;
struct TYPE_4__ {int nodename; } ;
struct TYPE_3__ {int name; } ;


 scalar_t__ strlen (int ) ;
 TYPE_2__* utsname () ;

__attribute__((used)) static int vnic_client_data_len(struct ibmvnic_adapter *adapter)
{
 int len;





 len = 4 * sizeof(struct vnic_login_client_data);
 len += 6;
 len += strlen(utsname()->nodename) + 1;
 len += strlen(adapter->netdev->name) + 1;

 return len;
}
