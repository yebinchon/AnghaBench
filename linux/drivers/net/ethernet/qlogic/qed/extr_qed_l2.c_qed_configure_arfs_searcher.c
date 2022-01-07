
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qed_hwfn {int p_arfs_ptt; } ;
struct qed_dev {int dummy; } ;
struct qed_arfs_config_params {int tcp; int udp; int ipv4; int ipv6; int mode; } ;
typedef enum qed_filter_config_mode { ____Placeholder_qed_filter_config_mode } qed_filter_config_mode ;
typedef int arfs_config_params ;


 struct qed_hwfn* QED_LEADING_HWFN (struct qed_dev*) ;
 int memset (struct qed_arfs_config_params*,int ,int) ;
 int qed_arfs_mode_configure (struct qed_hwfn*,int ,struct qed_arfs_config_params*) ;

__attribute__((used)) static int qed_configure_arfs_searcher(struct qed_dev *cdev,
           enum qed_filter_config_mode mode)
{
 struct qed_hwfn *p_hwfn = QED_LEADING_HWFN(cdev);
 struct qed_arfs_config_params arfs_config_params;

 memset(&arfs_config_params, 0, sizeof(arfs_config_params));
 arfs_config_params.tcp = 1;
 arfs_config_params.udp = 1;
 arfs_config_params.ipv4 = 1;
 arfs_config_params.ipv6 = 1;
 arfs_config_params.mode = mode;
 qed_arfs_mode_configure(p_hwfn, p_hwfn->p_arfs_ptt,
    &arfs_config_params);
 return 0;
}
