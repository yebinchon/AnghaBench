
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cnic_local {int bnx2x_igu_sb_id; } ;
struct cnic_dev {struct cnic_local* cnic_priv; } ;


 int IGU_INT_DISABLE ;
 int IGU_SEG_ACCESS_DEF ;
 int cnic_ack_igu_sb (struct cnic_dev*,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void cnic_ack_bnx2x_e2_msix(struct cnic_dev *dev)
{
 struct cnic_local *cp = dev->cnic_priv;

 cnic_ack_igu_sb(dev, cp->bnx2x_igu_sb_id, IGU_SEG_ACCESS_DEF, 0,
   IGU_INT_DISABLE, 0);
}
