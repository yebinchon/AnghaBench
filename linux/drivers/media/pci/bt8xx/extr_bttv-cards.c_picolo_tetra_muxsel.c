
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nr; } ;
struct bttv {TYPE_1__ c; } ;


 int BT848_GPIO_DATA ;
 int btwrite (unsigned int,int ) ;
 int dprintk (char*,int ,unsigned int) ;

__attribute__((used)) static void picolo_tetra_muxsel (struct bttv* btv, unsigned int input)
{

 dprintk("%d : picolo_tetra_muxsel =>  input = %d\n", btv->c.nr, input);


 btwrite (input<<20,BT848_GPIO_DATA);

}
