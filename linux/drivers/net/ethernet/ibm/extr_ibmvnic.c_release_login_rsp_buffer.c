
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibmvnic_adapter {int * login_rsp_buf; } ;


 int kfree (int *) ;

__attribute__((used)) static void release_login_rsp_buffer(struct ibmvnic_adapter *adapter)
{
 kfree(adapter->login_rsp_buf);
 adapter->login_rsp_buf = ((void*)0);
}
