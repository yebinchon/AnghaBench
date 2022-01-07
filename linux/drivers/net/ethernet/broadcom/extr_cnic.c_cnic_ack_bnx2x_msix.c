
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cnic_local {int bnx2x_igu_sb_id; } ;
struct cnic_dev {struct cnic_local* cnic_priv; } ;


 int CSTORM_ID ;
 int IGU_INT_DISABLE ;
 int cnic_ack_bnx2x_int (struct cnic_dev*,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void cnic_ack_bnx2x_msix(struct cnic_dev *dev)
{
 struct cnic_local *cp = dev->cnic_priv;

 cnic_ack_bnx2x_int(dev, cp->bnx2x_igu_sb_id, CSTORM_ID, 0,
      IGU_INT_DISABLE, 0);
}
