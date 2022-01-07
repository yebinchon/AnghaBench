
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ican3_dev {int dummy; } ;


 int ican3_msg_disconnect (struct ican3_dev*) ;
 int ican3_reset_module (struct ican3_dev*) ;

__attribute__((used)) static void ican3_shutdown_module(struct ican3_dev *mod)
{
 ican3_msg_disconnect(mod);
 ican3_reset_module(mod);
}
