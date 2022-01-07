
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum iwl_tof_range_request_status { ____Placeholder_iwl_tof_range_request_status } iwl_tof_range_request_status ;


 int EBUSY ;
 int EIO ;


 int WARN_ON_ONCE (int) ;

__attribute__((used)) static int
iwl_ftm_range_request_status_to_err(enum iwl_tof_range_request_status s)
{
 switch (s) {
 case 128:
  return 0;
 case 129:
  return -EBUSY;
 default:
  WARN_ON_ONCE(1);
  return -EIO;
 }
}
