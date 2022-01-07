
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int name; } ;
struct dsaf_device {TYPE_2__* misc_op; TYPE_1__ ae_dev; int dev; } ;
struct TYPE_4__ {int (* dsaf_reset ) (struct dsaf_device*,int) ;} ;


 int dev_dbg (int ,char*,int ) ;
 int hns_dsaf_comm_init (struct dsaf_device*) ;
 int hns_dsaf_inode_init (struct dsaf_device*) ;
 int hns_dsaf_sbm_init (struct dsaf_device*) ;
 int hns_dsaf_tbl_init (struct dsaf_device*) ;
 int hns_dsaf_voq_init (struct dsaf_device*) ;
 int mdelay (int) ;
 int stub1 (struct dsaf_device*,int) ;
 int stub2 (struct dsaf_device*,int) ;

__attribute__((used)) static int hns_dsaf_init_hw(struct dsaf_device *dsaf_dev)
{
 int ret;

 dev_dbg(dsaf_dev->dev,
  "hns_dsaf_init_hw begin %s !\n", dsaf_dev->ae_dev.name);

 dsaf_dev->misc_op->dsaf_reset(dsaf_dev, 0);
 mdelay(10);
 dsaf_dev->misc_op->dsaf_reset(dsaf_dev, 1);

 hns_dsaf_comm_init(dsaf_dev);


 hns_dsaf_inode_init(dsaf_dev);


 ret = hns_dsaf_sbm_init(dsaf_dev);
 if (ret)
  return ret;


 hns_dsaf_tbl_init(dsaf_dev);


 hns_dsaf_voq_init(dsaf_dev);

 return 0;
}
