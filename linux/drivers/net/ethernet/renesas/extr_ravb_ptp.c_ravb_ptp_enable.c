
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptp_clock_request {int type; int perout; int extts; } ;
struct ptp_clock_info {int dummy; } ;


 int EOPNOTSUPP ;


 int ravb_ptp_extts (struct ptp_clock_info*,int *,int) ;
 int ravb_ptp_perout (struct ptp_clock_info*,int *,int) ;

__attribute__((used)) static int ravb_ptp_enable(struct ptp_clock_info *ptp,
      struct ptp_clock_request *req, int on)
{
 switch (req->type) {
 case 129:
  return ravb_ptp_extts(ptp, &req->extts, on);
 case 128:
  return ravb_ptp_perout(ptp, &req->perout, on);
 default:
  return -EOPNOTSUPP;
 }
}
