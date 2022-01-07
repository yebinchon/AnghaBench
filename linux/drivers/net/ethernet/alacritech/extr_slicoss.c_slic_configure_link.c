
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slic_device {int link_lock; } ;


 int slic_configure_link_locked (struct slic_device*,int,unsigned int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void slic_configure_link(struct slic_device *sdev, int speed,
    unsigned int duplex)
{
 spin_lock_bh(&sdev->link_lock);
 slic_configure_link_locked(sdev, speed, duplex);
 spin_unlock_bh(&sdev->link_lock);
}
