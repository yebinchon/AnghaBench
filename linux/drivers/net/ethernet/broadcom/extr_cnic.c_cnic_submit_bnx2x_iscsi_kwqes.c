
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct kwqe {int kwqe_op_flag; } ;
struct cnic_dev {int netdev; int flags; } ;


 int CNIC_F_CNIC_UP ;
 int EAGAIN ;
 int EIO ;





 int KWQE_OPCODE (int ) ;






 int cnic_bnx2x_close (struct cnic_dev*,struct kwqe*) ;
 int cnic_bnx2x_connect (struct cnic_dev*,struct kwqe**,int,int*) ;
 int cnic_bnx2x_iscsi_destroy (struct cnic_dev*,struct kwqe*) ;
 int cnic_bnx2x_iscsi_init1 (struct cnic_dev*,struct kwqe*) ;
 int cnic_bnx2x_iscsi_init2 (struct cnic_dev*,struct kwqe*) ;
 int cnic_bnx2x_iscsi_ofld1 (struct cnic_dev*,struct kwqe**,int,int*) ;
 int cnic_bnx2x_iscsi_update (struct cnic_dev*,struct kwqe*) ;
 int cnic_bnx2x_kwqe_err (struct cnic_dev*,struct kwqe*) ;
 int cnic_bnx2x_offload_pg (struct cnic_dev*,struct kwqe*) ;
 int cnic_bnx2x_reset (struct cnic_dev*,struct kwqe*) ;
 int cnic_bnx2x_update_pg (struct cnic_dev*,struct kwqe*) ;
 int netdev_err (int ,char*,int) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int cnic_submit_bnx2x_iscsi_kwqes(struct cnic_dev *dev,
      struct kwqe *wqes[], u32 num_wqes)
{
 int i, work, ret;
 u32 opcode;
 struct kwqe *kwqe;

 if (!test_bit(CNIC_F_CNIC_UP, &dev->flags))
  return -EAGAIN;

 for (i = 0; i < num_wqes; ) {
  kwqe = wqes[i];
  opcode = KWQE_OPCODE(kwqe->kwqe_op_flag);
  work = 1;

  switch (opcode) {
  case 137:
   ret = cnic_bnx2x_iscsi_init1(dev, kwqe);
   break;
  case 136:
   ret = cnic_bnx2x_iscsi_init2(dev, kwqe);
   break;
  case 135:
   ret = cnic_bnx2x_iscsi_ofld1(dev, &wqes[i],
           num_wqes - i, &work);
   break;
  case 134:
   ret = cnic_bnx2x_iscsi_update(dev, kwqe);
   break;
  case 138:
   ret = cnic_bnx2x_iscsi_destroy(dev, kwqe);
   break;
  case 132:
   ret = cnic_bnx2x_connect(dev, &wqes[i], num_wqes - i,
       &work);
   break;
  case 133:
   ret = cnic_bnx2x_close(dev, kwqe);
   break;
  case 130:
   ret = cnic_bnx2x_reset(dev, kwqe);
   break;
  case 131:
   ret = cnic_bnx2x_offload_pg(dev, kwqe);
   break;
  case 129:
   ret = cnic_bnx2x_update_pg(dev, kwqe);
   break;
  case 128:
   ret = 0;
   break;
  default:
   ret = 0;
   netdev_err(dev->netdev, "Unknown type of KWQE(0x%x)\n",
       opcode);
   break;
  }
  if (ret < 0) {
   netdev_err(dev->netdev, "KWQE(0x%x) failed\n",
       opcode);





   if (ret == -EIO || ret == -EAGAIN)
    cnic_bnx2x_kwqe_err(dev, kwqe);
  }
  i += work;
 }
 return 0;
}
