
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hnae_handle {int q_num; int * qs; } ;


 int hns_rcb_ring_enable_hw (int ,int) ;

__attribute__((used)) static void hns_ae_ring_enable_all(struct hnae_handle *handle, int val)
{
 int q_num = handle->q_num;
 int i;

 for (i = 0; i < q_num; i++)
  hns_rcb_ring_enable_hw(handle->qs[i], val);
}
