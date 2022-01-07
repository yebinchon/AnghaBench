
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct de4x5_private {char srom; } ;


 int ACCTON ;
 int ARRAY_SIZE (int *) ;
 int SMC ;
 int * enet_det ;
 int memcmp (char*,int *,int) ;

__attribute__((used)) static int
de4x5_bad_srom(struct de4x5_private *lp)
{
    int i, status = 0;

    for (i = 0; i < ARRAY_SIZE(enet_det); i++) {
 if (!memcmp(&lp->srom, &enet_det[i], 3) &&
     !memcmp((char *)&lp->srom+0x10, &enet_det[i], 3)) {
     if (i == 0) {
  status = SMC;
     } else if (i == 1) {
  status = ACCTON;
     }
     break;
 }
    }

    return status;
}
