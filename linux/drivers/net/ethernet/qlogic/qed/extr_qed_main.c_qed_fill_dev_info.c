
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ tun_cls; scalar_t__ b_mode_enabled; } ;
struct TYPE_10__ {scalar_t__ tun_cls; scalar_t__ b_mode_enabled; } ;
struct TYPE_9__ {scalar_t__ tun_cls; scalar_t__ b_mode_enabled; } ;
struct TYPE_8__ {scalar_t__ tun_cls; scalar_t__ b_mode_enabled; } ;
struct TYPE_7__ {scalar_t__ tun_cls; scalar_t__ b_mode_enabled; } ;
struct qed_tunnel_info {TYPE_5__ ip_geneve; TYPE_4__ l2_geneve; TYPE_3__ ip_gre; TYPE_2__ l2_gre; TYPE_1__ vxlan; } ;
struct qed_ptt {int dummy; } ;
struct qed_hw_info {scalar_t__ b_wol_support; int mtu; int hw_mac_addr; } ;
struct qed_hwfn {int abs_pf_id; struct qed_hw_info hw_info; } ;
struct qed_dev_info {int vxlan_enable; int gre_enable; int geneve_enable; int tx_switching; int wol_support; int mtu; int mfw_rev; int flash_size; int mbi_version; int fw_eng; int fw_rev; int fw_minor; int fw_major; int abs_pf_id; int smart_an; int b_inter_pf_switch; int hw_mac; int dev_type; int rdma_supported; int pci_irq; int pci_mem_end; int pci_mem_start; int num_hwfns; } ;
struct TYPE_12__ {int irq; int mem_end; int mem_start; } ;
struct qed_dev {int * hwfns; int mf_bits; int type; TYPE_6__ pci_params; int num_hwfns; struct qed_tunnel_info tunnel; } ;


 int FW_ENGINEERING_VERSION ;
 int FW_MAJOR_VERSION ;
 int FW_MINOR_VERSION ;
 int FW_REVISION_VERSION ;
 scalar_t__ IS_PF (struct qed_dev*) ;
 int QED_IS_RDMA_PERSONALITY (struct qed_hwfn*) ;
 struct qed_hwfn* QED_LEADING_HWFN (struct qed_dev*) ;
 int QED_MF_INTER_PF_SWITCH ;
 scalar_t__ QED_TUNN_CLSS_MAC_VLAN ;
 scalar_t__ QED_WOL_SUPPORT_PME ;
 int ether_addr_copy (int ,int ) ;
 int memset (struct qed_dev_info*,int ,int) ;
 int qed_mcp_get_flash_size (struct qed_hwfn*,struct qed_ptt*,int *) ;
 int qed_mcp_get_mbi_ver (struct qed_hwfn*,struct qed_ptt*,int *) ;
 int qed_mcp_get_mfw_ver (struct qed_hwfn*,struct qed_ptt*,int *,int *) ;
 int qed_mcp_is_smart_an_supported (struct qed_hwfn*) ;
 struct qed_ptt* qed_ptt_acquire (struct qed_hwfn*) ;
 int qed_ptt_release (struct qed_hwfn*,struct qed_ptt*) ;
 int qed_vf_get_fw_version (int *,int *,int *,int *,int *) ;
 int test_bit (int ,int *) ;

int qed_fill_dev_info(struct qed_dev *cdev,
        struct qed_dev_info *dev_info)
{
 struct qed_hwfn *p_hwfn = QED_LEADING_HWFN(cdev);
 struct qed_hw_info *hw_info = &p_hwfn->hw_info;
 struct qed_tunnel_info *tun = &cdev->tunnel;
 struct qed_ptt *ptt;

 memset(dev_info, 0, sizeof(struct qed_dev_info));

 if (tun->vxlan.tun_cls == QED_TUNN_CLSS_MAC_VLAN &&
     tun->vxlan.b_mode_enabled)
  dev_info->vxlan_enable = 1;

 if (tun->l2_gre.b_mode_enabled && tun->ip_gre.b_mode_enabled &&
     tun->l2_gre.tun_cls == QED_TUNN_CLSS_MAC_VLAN &&
     tun->ip_gre.tun_cls == QED_TUNN_CLSS_MAC_VLAN)
  dev_info->gre_enable = 1;

 if (tun->l2_geneve.b_mode_enabled && tun->ip_geneve.b_mode_enabled &&
     tun->l2_geneve.tun_cls == QED_TUNN_CLSS_MAC_VLAN &&
     tun->ip_geneve.tun_cls == QED_TUNN_CLSS_MAC_VLAN)
  dev_info->geneve_enable = 1;

 dev_info->num_hwfns = cdev->num_hwfns;
 dev_info->pci_mem_start = cdev->pci_params.mem_start;
 dev_info->pci_mem_end = cdev->pci_params.mem_end;
 dev_info->pci_irq = cdev->pci_params.irq;
 dev_info->rdma_supported = QED_IS_RDMA_PERSONALITY(p_hwfn);
 dev_info->dev_type = cdev->type;
 ether_addr_copy(dev_info->hw_mac, hw_info->hw_mac_addr);

 if (IS_PF(cdev)) {
  dev_info->fw_major = FW_MAJOR_VERSION;
  dev_info->fw_minor = FW_MINOR_VERSION;
  dev_info->fw_rev = FW_REVISION_VERSION;
  dev_info->fw_eng = FW_ENGINEERING_VERSION;
  dev_info->b_inter_pf_switch = test_bit(QED_MF_INTER_PF_SWITCH,
             &cdev->mf_bits);
  dev_info->tx_switching = 1;

  if (hw_info->b_wol_support == QED_WOL_SUPPORT_PME)
   dev_info->wol_support = 1;

  dev_info->smart_an = qed_mcp_is_smart_an_supported(p_hwfn);

  dev_info->abs_pf_id = QED_LEADING_HWFN(cdev)->abs_pf_id;
 } else {
  qed_vf_get_fw_version(&cdev->hwfns[0], &dev_info->fw_major,
          &dev_info->fw_minor, &dev_info->fw_rev,
          &dev_info->fw_eng);
 }

 if (IS_PF(cdev)) {
  ptt = qed_ptt_acquire(QED_LEADING_HWFN(cdev));
  if (ptt) {
   qed_mcp_get_mfw_ver(QED_LEADING_HWFN(cdev), ptt,
         &dev_info->mfw_rev, ((void*)0));

   qed_mcp_get_mbi_ver(QED_LEADING_HWFN(cdev), ptt,
         &dev_info->mbi_version);

   qed_mcp_get_flash_size(QED_LEADING_HWFN(cdev), ptt,
            &dev_info->flash_size);

   qed_ptt_release(QED_LEADING_HWFN(cdev), ptt);
  }
 } else {
  qed_mcp_get_mfw_ver(QED_LEADING_HWFN(cdev), ((void*)0),
        &dev_info->mfw_rev, ((void*)0));
 }

 dev_info->mtu = hw_info->mtu;

 return 0;
}
