
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
typedef int time64_t ;
struct tm {int tm_year; int tm_mon; int tm_mday; int tm_hour; int tm_min; int tm_sec; } ;
struct bnxt_coredump_record {int high_version; scalar_t__ ioctl_high_version; scalar_t__ ioctl_low_version; void* coredump_status; scalar_t__ asic_id2; void* asic_id1; void* end_utc_bias; void* end_second; void* end_minute; void* end_hour; void* end_day; void* end_month; void* end_year; int os_name; void* os_ver_minor; void* os_ver_major; void* total_segments; int commandline; void* utc_bias; void* second; void* minute; void* hour; void* day; void* month; void* year; int system_name; scalar_t__ asic_state; scalar_t__ low_version; scalar_t__ flags; int signature; } ;
struct TYPE_4__ {int chip_rev; int chip_metal; } ;
struct bnxt {int chip_num; TYPE_1__ ver_resp; } ;
typedef int s16 ;
struct TYPE_6__ {int tz_minuteswest; } ;
struct TYPE_5__ {int sysname; int release; int nodename; } ;


 void* cpu_to_le16 (int) ;
 void* cpu_to_le32 (int) ;
 int ktime_get_real_seconds () ;
 int memcpy (int ,char*,int) ;
 int memset (struct bnxt_coredump_record*,int ,int) ;
 int sscanf (int ,char*,int*,int*) ;
 int strcpy (int ,char*) ;
 int strlcpy (int ,int ,int) ;
 TYPE_3__ sys_tz ;
 int time64_to_tm (int ,int ,struct tm*) ;
 TYPE_2__* utsname () ;

__attribute__((used)) static void
bnxt_fill_coredump_record(struct bnxt *bp, struct bnxt_coredump_record *record,
     time64_t start, s16 start_utc, u16 total_segs,
     int status)
{
 time64_t end = ktime_get_real_seconds();
 u32 os_ver_major = 0, os_ver_minor = 0;
 struct tm tm;

 time64_to_tm(start, 0, &tm);
 memset(record, 0, sizeof(*record));
 memcpy(record->signature, "cOrE", 4);
 record->flags = 0;
 record->low_version = 0;
 record->high_version = 1;
 record->asic_state = 0;
 strlcpy(record->system_name, utsname()->nodename,
  sizeof(record->system_name));
 record->year = cpu_to_le16(tm.tm_year + 1900);
 record->month = cpu_to_le16(tm.tm_mon + 1);
 record->day = cpu_to_le16(tm.tm_mday);
 record->hour = cpu_to_le16(tm.tm_hour);
 record->minute = cpu_to_le16(tm.tm_min);
 record->second = cpu_to_le16(tm.tm_sec);
 record->utc_bias = cpu_to_le16(start_utc);
 strcpy(record->commandline, "ethtool -w");
 record->total_segments = cpu_to_le32(total_segs);

 sscanf(utsname()->release, "%u.%u", &os_ver_major, &os_ver_minor);
 record->os_ver_major = cpu_to_le32(os_ver_major);
 record->os_ver_minor = cpu_to_le32(os_ver_minor);

 strlcpy(record->os_name, utsname()->sysname, 32);
 time64_to_tm(end, 0, &tm);
 record->end_year = cpu_to_le16(tm.tm_year + 1900);
 record->end_month = cpu_to_le16(tm.tm_mon + 1);
 record->end_day = cpu_to_le16(tm.tm_mday);
 record->end_hour = cpu_to_le16(tm.tm_hour);
 record->end_minute = cpu_to_le16(tm.tm_min);
 record->end_second = cpu_to_le16(tm.tm_sec);
 record->end_utc_bias = cpu_to_le16(sys_tz.tz_minuteswest * 60);
 record->asic_id1 = cpu_to_le32(bp->chip_num << 16 |
           bp->ver_resp.chip_rev << 8 |
           bp->ver_resp.chip_metal);
 record->asic_id2 = 0;
 record->coredump_status = cpu_to_le32(status);
 record->ioctl_low_version = 0;
 record->ioctl_high_version = 0;
}
