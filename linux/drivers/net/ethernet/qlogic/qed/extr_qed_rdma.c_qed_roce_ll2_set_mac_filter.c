
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct qed_dev {int dummy; } ;


 int DP_ERR (struct qed_dev*,char*) ;
 int qed_llh_add_mac_filter (struct qed_dev*,int ,int *) ;
 int qed_llh_remove_mac_filter (struct qed_dev*,int ,int *) ;

__attribute__((used)) static int qed_roce_ll2_set_mac_filter(struct qed_dev *cdev,
           u8 *old_mac_address,
           u8 *new_mac_address)
{
 int rc = 0;

 if (old_mac_address)
  qed_llh_remove_mac_filter(cdev, 0, old_mac_address);
 if (new_mac_address)
  rc = qed_llh_add_mac_filter(cdev, 0, new_mac_address);

 if (rc)
  DP_ERR(cdev,
         "qed roce ll2 mac filter set: failed to add MAC filter\n");

 return rc;
}
