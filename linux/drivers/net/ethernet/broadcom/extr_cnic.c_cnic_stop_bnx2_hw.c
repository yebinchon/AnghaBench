
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cnic_dev {int dummy; } ;


 scalar_t__ BNX2_COM_SCRATCH ;
 scalar_t__ BNX2_CP_SCRATCH ;
 int KCQ_CID ;
 int KWQ_CID ;
 int cnic_disable_bnx2_int_sync (struct cnic_dev*) ;
 int cnic_free_irq (struct cnic_dev*) ;
 int cnic_free_resc (struct cnic_dev*) ;
 int cnic_init_context (struct cnic_dev*,int ) ;
 int cnic_reg_wr_ind (struct cnic_dev*,scalar_t__,int ) ;
 int cnic_setup_5709_context (struct cnic_dev*,int ) ;

__attribute__((used)) static void cnic_stop_bnx2_hw(struct cnic_dev *dev)
{
 cnic_disable_bnx2_int_sync(dev);

 cnic_reg_wr_ind(dev, BNX2_CP_SCRATCH + 0x20, 0);
 cnic_reg_wr_ind(dev, BNX2_COM_SCRATCH + 0x20, 0);

 cnic_init_context(dev, KWQ_CID);
 cnic_init_context(dev, KCQ_CID);

 cnic_setup_5709_context(dev, 0);
 cnic_free_irq(dev);

 cnic_free_resc(dev);
}
