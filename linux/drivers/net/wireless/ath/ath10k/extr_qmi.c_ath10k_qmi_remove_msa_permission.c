
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath10k_qmi {int nr_mem_region; int * mem_region; } ;


 int ath10k_qmi_unmap_msa_permission (struct ath10k_qmi*,int *) ;

__attribute__((used)) static void ath10k_qmi_remove_msa_permission(struct ath10k_qmi *qmi)
{
 int i;

 for (i = 0; i < qmi->nr_mem_region; i++)
  ath10k_qmi_unmap_msa_permission(qmi, &qmi->mem_region[i]);
}
