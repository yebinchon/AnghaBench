
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rc_dev {struct ati_remote* priv; } ;
struct ati_remote {int dummy; } ;


 int ati_remote_close (struct ati_remote*) ;

__attribute__((used)) static void ati_remote_rc_close(struct rc_dev *rdev)
{
 struct ati_remote *ati_remote = rdev->priv;
 ati_remote_close(ati_remote);
}
