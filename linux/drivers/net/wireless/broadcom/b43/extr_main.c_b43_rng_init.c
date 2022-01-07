
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {unsigned long priv; int data_read; int name; } ;
struct b43_wl {int rng_initialized; TYPE_2__ rng; int rng_name; TYPE_1__* hw; } ;
struct TYPE_3__ {int wiphy; } ;


 int ARRAY_SIZE (int ) ;
 char* KBUILD_MODNAME ;
 int b43_rng_read ;
 int b43err (struct b43_wl*,char*,int) ;
 int hwrng_register (TYPE_2__*) ;
 int snprintf (int ,int ,char*,char*,char*) ;
 char* wiphy_name (int ) ;

__attribute__((used)) static int b43_rng_init(struct b43_wl *wl)
{
 int err = 0;
 return err;
}
