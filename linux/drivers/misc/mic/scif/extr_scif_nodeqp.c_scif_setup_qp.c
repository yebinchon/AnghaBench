
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scif_qp {int magic; } ;
struct scif_dev {struct scif_qp* qpairs; int qp_dma_addr; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int SCIFEP_MAGIC ;
 int SCIF_NODE_QP_SIZE ;
 int kfree (struct scif_qp*) ;
 struct scif_qp* kzalloc (int,int ) ;
 int scif_setup_qp_connect (struct scif_qp*,int *,int,struct scif_dev*) ;

int scif_setup_qp(struct scif_dev *scifdev)
{
 int err = 0;
 int local_size;
 struct scif_qp *qp;

 local_size = SCIF_NODE_QP_SIZE;

 qp = kzalloc(sizeof(*qp), GFP_KERNEL);
 if (!qp) {
  err = -ENOMEM;
  return err;
 }
 qp->magic = SCIFEP_MAGIC;
 scifdev->qpairs = qp;
 err = scif_setup_qp_connect(qp, &scifdev->qp_dma_addr,
        local_size, scifdev);
 if (err)
  goto free_qp;





 return err;
free_qp:
 kfree(scifdev->qpairs);
 scifdev->qpairs = ((void*)0);
 return err;
}
