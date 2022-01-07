
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct genwqe_dev {scalar_t__ card_state; } ;
struct ddcb_requ {int dummy; } ;


 scalar_t__ GENWQE_CARD_USED ;
 scalar_t__ GENWQE_REQU_FINISHED ;
 scalar_t__ ddcb_requ_get_state (struct ddcb_requ*) ;

__attribute__((used)) static int ddcb_requ_finished(struct genwqe_dev *cd, struct ddcb_requ *req)
{
 return (ddcb_requ_get_state(req) == GENWQE_REQU_FINISHED) ||
  (cd->card_state != GENWQE_CARD_USED);
}
