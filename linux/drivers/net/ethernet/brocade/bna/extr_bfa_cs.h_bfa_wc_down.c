
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_wc {scalar_t__ wc_count; int wc_cbarg; int (* wc_resume ) (int ) ;} ;


 int stub1 (int ) ;

__attribute__((used)) static inline void
bfa_wc_down(struct bfa_wc *wc)
{
 wc->wc_count--;
 if (wc->wc_count == 0)
  wc->wc_resume(wc->wc_cbarg);
}
