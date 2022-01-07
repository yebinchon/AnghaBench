
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scif_peer_dev {int dev; } ;
struct scif_dev {int spdev; } ;
struct device {int dummy; } ;


 int ENODEV ;
 struct device* ERR_PTR (int ) ;
 struct device* get_device (int *) ;
 struct scif_peer_dev* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static inline struct device *scif_get_peer_dev(struct scif_dev *scifdev)
{
 struct scif_peer_dev *spdev;
 struct device *spdev_ret;

 rcu_read_lock();
 spdev = rcu_dereference(scifdev->spdev);
 if (spdev)
  spdev_ret = get_device(&spdev->dev);
 else
  spdev_ret = ERR_PTR(-ENODEV);
 rcu_read_unlock();
 return spdev_ret;
}
