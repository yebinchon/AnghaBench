
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ifreq {int dummy; } ;
struct hnae3_handle {int dummy; } ;
struct hclge_vport {struct hclge_dev* back; } ;
struct TYPE_3__ {int phydev; } ;
struct TYPE_4__ {TYPE_1__ mac; } ;
struct hclge_dev {TYPE_2__ hw; } ;


 int EOPNOTSUPP ;
 struct hclge_vport* hclge_get_vport (struct hnae3_handle*) ;
 int phy_mii_ioctl (int ,struct ifreq*,int) ;

__attribute__((used)) static int hclge_do_ioctl(struct hnae3_handle *handle, struct ifreq *ifr,
     int cmd)
{
 struct hclge_vport *vport = hclge_get_vport(handle);
 struct hclge_dev *hdev = vport->back;

 if (!hdev->hw.mac.phydev)
  return -EOPNOTSUPP;

 return phy_mii_ioctl(hdev->hw.mac.phydev, ifr, cmd);
}
