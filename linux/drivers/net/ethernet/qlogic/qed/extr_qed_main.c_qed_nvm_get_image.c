
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct qed_hwfn {int dummy; } ;
struct qed_dev {int dummy; } ;
typedef enum qed_nvm_images { ____Placeholder_qed_nvm_images } qed_nvm_images ;


 struct qed_hwfn* QED_LEADING_HWFN (struct qed_dev*) ;
 int qed_mcp_get_nvm_image (struct qed_hwfn*,int,int *,int ) ;

__attribute__((used)) static int qed_nvm_get_image(struct qed_dev *cdev, enum qed_nvm_images type,
        u8 *buf, u16 len)
{
 struct qed_hwfn *hwfn = QED_LEADING_HWFN(cdev);

 return qed_mcp_get_nvm_image(hwfn, type, buf, len);
}
