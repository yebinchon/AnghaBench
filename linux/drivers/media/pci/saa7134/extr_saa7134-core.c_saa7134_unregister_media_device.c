
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct saa7134_dev {int * media_dev; } ;


 int kfree (int *) ;
 int media_device_cleanup (int *) ;
 int media_device_unregister (int *) ;

__attribute__((used)) static void saa7134_unregister_media_device(struct saa7134_dev *dev)
{
}
