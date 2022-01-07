
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time64_t ;
struct tm {int tm_sec; int tm_min; int tm_hour; int tm_mday; scalar_t__ tm_mon; scalar_t__ tm_year; } ;
struct hwrm_fw_set_time_input {int second; int minute; int hour; int day; scalar_t__ month; int year; int member_0; } ;
struct bnxt {int hwrm_spec_code; } ;
typedef int req ;


 scalar_t__ BNXT_VF (struct bnxt*) ;
 int EOPNOTSUPP ;
 int HWRM_CMD_TIMEOUT ;
 int HWRM_FW_SET_TIME ;
 int bnxt_hwrm_cmd_hdr_init (struct bnxt*,struct hwrm_fw_set_time_input*,int ,int,int) ;
 int cpu_to_le16 (scalar_t__) ;
 int hwrm_send_message (struct bnxt*,struct hwrm_fw_set_time_input*,int,int ) ;
 int ktime_get_real_seconds () ;
 int time64_to_tm (int ,int ,struct tm*) ;

int bnxt_hwrm_fw_set_time(struct bnxt *bp)
{
 struct hwrm_fw_set_time_input req = {0};
 struct tm tm;
 time64_t now = ktime_get_real_seconds();

 if ((BNXT_VF(bp) && bp->hwrm_spec_code < 0x10901) ||
     bp->hwrm_spec_code < 0x10400)
  return -EOPNOTSUPP;

 time64_to_tm(now, 0, &tm);
 bnxt_hwrm_cmd_hdr_init(bp, &req, HWRM_FW_SET_TIME, -1, -1);
 req.year = cpu_to_le16(1900 + tm.tm_year);
 req.month = 1 + tm.tm_mon;
 req.day = tm.tm_mday;
 req.hour = tm.tm_hour;
 req.minute = tm.tm_min;
 req.second = tm.tm_sec;
 return hwrm_send_message(bp, &req, sizeof(req), HWRM_CMD_TIMEOUT);
}
