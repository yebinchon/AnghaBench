
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vop_device {int dummy; } ;


 int mic_next_card_db () ;

__attribute__((used)) static int __mic_next_db(struct vop_device *vpdev)
{
 return mic_next_card_db();
}
