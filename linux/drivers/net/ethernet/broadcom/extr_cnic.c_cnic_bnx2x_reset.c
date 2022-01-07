
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union l5cm_specific_data {int dummy; } l5cm_specific_data ;
struct l4_kwq_reset_req {int cid; } ;
struct kwqe {int dummy; } ;
struct cnic_dev {int dummy; } ;
typedef int l5_data ;


 int ISCSI_CONNECTION_TYPE ;
 int L5CM_RAMROD_CMD_ID_ABORT ;
 int cnic_submit_kwqe_16 (struct cnic_dev*,int ,int ,int ,union l5cm_specific_data*) ;
 int memset (union l5cm_specific_data*,int ,int) ;

__attribute__((used)) static int cnic_bnx2x_reset(struct cnic_dev *dev, struct kwqe *kwqe)
{
 struct l4_kwq_reset_req *req = (struct l4_kwq_reset_req *) kwqe;
 union l5cm_specific_data l5_data;
 int ret;

 memset(&l5_data, 0, sizeof(l5_data));
 ret = cnic_submit_kwqe_16(dev, L5CM_RAMROD_CMD_ID_ABORT,
   req->cid, ISCSI_CONNECTION_TYPE, &l5_data);
 return ret;
}
