
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct em28xx {int * media_dev; } ;


 int kfree (int *) ;
 int media_device_cleanup (int *) ;
 int media_device_unregister (int *) ;

__attribute__((used)) static void em28xx_unregister_media_device(struct em28xx *dev)
{
}
