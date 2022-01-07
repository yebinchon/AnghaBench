
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s5p_mfc_dev {int fw_get_done; int fw_buf; } ;


 int s5p_mfc_release_priv_buf (struct s5p_mfc_dev*,int *) ;

int s5p_mfc_release_firmware(struct s5p_mfc_dev *dev)
{


 s5p_mfc_release_priv_buf(dev, &dev->fw_buf);
 dev->fw_get_done = 0;
 return 0;
}
