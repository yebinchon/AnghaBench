
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptp_clock_request {int type; } ;
struct ptp_clock_info {int dummy; } ;


 int EOPNOTSUPP ;



 int mlx5_extts_configure (struct ptp_clock_info*,struct ptp_clock_request*,int) ;
 int mlx5_perout_configure (struct ptp_clock_info*,struct ptp_clock_request*,int) ;
 int mlx5_pps_configure (struct ptp_clock_info*,struct ptp_clock_request*,int) ;

__attribute__((used)) static int mlx5_ptp_enable(struct ptp_clock_info *ptp,
      struct ptp_clock_request *rq,
      int on)
{
 switch (rq->type) {
 case 130:
  return mlx5_extts_configure(ptp, rq, on);
 case 129:
  return mlx5_perout_configure(ptp, rq, on);
 case 128:
  return mlx5_pps_configure(ptp, rq, on);
 default:
  return -EOPNOTSUPP;
 }
 return 0;
}
