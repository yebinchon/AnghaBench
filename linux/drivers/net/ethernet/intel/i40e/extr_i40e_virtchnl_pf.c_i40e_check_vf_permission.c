
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct virtchnl_ether_addr_list {int num_elements; TYPE_1__* list; } ;
struct TYPE_5__ {int addr; } ;
struct i40e_vf {scalar_t__ num_mac; TYPE_2__ default_lan_addr; scalar_t__ pf_set_mac; int vf_caps; struct i40e_pf* pf; } ;
struct i40e_pf {TYPE_3__* pdev; } ;
struct TYPE_6__ {int dev; } ;
struct TYPE_4__ {int * addr; } ;


 int EPERM ;
 int I40E_ERR_INVALID_MAC_ADDR ;
 scalar_t__ I40E_VC_MAX_MAC_ADDR_PER_VF ;
 int I40E_VIRTCHNL_VF_CAP_PRIVILEGE ;
 int dev_err (int *,char*,...) ;
 int ether_addr_equal (int *,int ) ;
 scalar_t__ is_broadcast_ether_addr (int *) ;
 int is_multicast_ether_addr (int *) ;
 scalar_t__ is_zero_ether_addr (int *) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static inline int i40e_check_vf_permission(struct i40e_vf *vf,
        struct virtchnl_ether_addr_list *al)
{
 struct i40e_pf *pf = vf->pf;
 int i;





 if (!test_bit(I40E_VIRTCHNL_VF_CAP_PRIVILEGE, &vf->vf_caps) &&
     (vf->num_mac + al->num_elements) > I40E_VC_MAX_MAC_ADDR_PER_VF) {
  dev_err(&pf->pdev->dev,
   "Cannot add more MAC addresses, VF is not trusted, switch the VF to trusted to add more functionality\n");
  return -EPERM;
 }

 for (i = 0; i < al->num_elements; i++) {
  u8 *addr = al->list[i].addr;

  if (is_broadcast_ether_addr(addr) ||
      is_zero_ether_addr(addr)) {
   dev_err(&pf->pdev->dev, "invalid VF MAC addr %pM\n",
    addr);
   return I40E_ERR_INVALID_MAC_ADDR;
  }
  if (!test_bit(I40E_VIRTCHNL_VF_CAP_PRIVILEGE, &vf->vf_caps) &&
      !is_multicast_ether_addr(addr) && vf->pf_set_mac &&
      !ether_addr_equal(addr, vf->default_lan_addr.addr)) {
   dev_err(&pf->pdev->dev,
    "VF attempting to override administratively set MAC address, bring down and up the VF interface to resume normal operation\n");
   return -EPERM;
  }
 }

 return 0;
}
