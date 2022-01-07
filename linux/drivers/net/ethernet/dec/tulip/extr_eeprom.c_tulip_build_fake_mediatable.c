
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tulip_private {int flags; int csr12_shadow; TYPE_2__* mtable; } ;
struct mediatable {int dummy; } ;
struct medialeaf {int dummy; } ;
struct TYPE_4__ {int defaultmedia; int leafcount; int csr12dir; int has_mii; TYPE_1__* mleaf; scalar_t__ csr15val; scalar_t__ csr15dir; scalar_t__ has_reset; scalar_t__ has_nonmii; } ;
struct TYPE_3__ {int type; int media; unsigned char* leafdata; } ;


 int GFP_KERNEL ;
 int HAS_PHY_IRQ ;
 int NEEDS_FAKE_MEDIA_TABLE ;
 TYPE_2__* kmalloc (int,int ) ;

__attribute__((used)) static void tulip_build_fake_mediatable(struct tulip_private *tp)
{
}
