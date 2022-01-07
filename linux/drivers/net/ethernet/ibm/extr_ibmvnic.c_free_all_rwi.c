
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibmvnic_rwi {int dummy; } ;
struct ibmvnic_adapter {int dummy; } ;


 struct ibmvnic_rwi* get_next_rwi (struct ibmvnic_adapter*) ;
 int kfree (struct ibmvnic_rwi*) ;

__attribute__((used)) static void free_all_rwi(struct ibmvnic_adapter *adapter)
{
 struct ibmvnic_rwi *rwi;

 rwi = get_next_rwi(adapter);
 while (rwi) {
  kfree(rwi);
  rwi = get_next_rwi(adapter);
 }
}
