
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scif_hw_dev {int dummy; } ;
struct mic_device {int dummy; } ;


 int mic_next_db (struct mic_device*) ;
 struct mic_device* scdev_to_mdev (struct scif_hw_dev*) ;

__attribute__((used)) static int ___mic_next_db(struct scif_hw_dev *scdev)
{
 struct mic_device *mdev = scdev_to_mdev(scdev);

 return mic_next_db(mdev);
}
