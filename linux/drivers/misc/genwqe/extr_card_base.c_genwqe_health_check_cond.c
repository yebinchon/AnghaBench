
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct genwqe_dev {int dummy; } ;


 int GFIR_ERR_TRIGGER ;
 int IO_SLC_CFGREG_GFIR ;
 int __genwqe_readq (struct genwqe_dev*,int ) ;
 scalar_t__ genwqe_recovery_on_fatal_gfir_required (struct genwqe_dev*) ;

__attribute__((used)) static int genwqe_health_check_cond(struct genwqe_dev *cd, u64 *gfir)
{
 *gfir = __genwqe_readq(cd, IO_SLC_CFGREG_GFIR);
 return (*gfir & GFIR_ERR_TRIGGER) &&
  genwqe_recovery_on_fatal_gfir_required(cd);
}
