
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_blktrans_dev {int ref; } ;


 int blktrans_dev_release ;
 int blktrans_ref_mutex ;
 int kref_put (int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void blktrans_dev_put(struct mtd_blktrans_dev *dev)
{
 mutex_lock(&blktrans_ref_mutex);
 kref_put(&dev->ref, blktrans_dev_release);
 mutex_unlock(&blktrans_ref_mutex);
}
