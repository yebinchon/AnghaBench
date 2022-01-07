
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct wmi_start_scan_common {void* scan_ctrl_flags; void* probe_delay; void* max_scan_time; void* idle_time; void* probe_spacing_time; void* repeat_probe_time; void* max_rest_time; void* min_rest_time; void* dwell_time_passive; void* dwell_time_active; void* notify_scan_events; void* scan_priority; void* vdev_id; void* scan_req_id; void* scan_id; } ;
struct wmi_start_scan_arg {int scan_ctrl_flags; int probe_delay; int max_scan_time; int idle_time; int probe_spacing_time; int repeat_probe_time; int max_rest_time; int min_rest_time; int dwell_time_passive; int dwell_time_active; int notify_scan_events; int scan_priority; int vdev_id; int scan_req_id; int scan_id; } ;


 int WMI_HOST_SCAN_REQUESTOR_ID_PREFIX ;
 int WMI_HOST_SCAN_REQ_ID_PREFIX ;
 void* __cpu_to_le32 (int ) ;

void ath10k_wmi_put_start_scan_common(struct wmi_start_scan_common *cmn,
          const struct wmi_start_scan_arg *arg)
{
 u32 scan_id;
 u32 scan_req_id;

 scan_id = WMI_HOST_SCAN_REQ_ID_PREFIX;
 scan_id |= arg->scan_id;

 scan_req_id = WMI_HOST_SCAN_REQUESTOR_ID_PREFIX;
 scan_req_id |= arg->scan_req_id;

 cmn->scan_id = __cpu_to_le32(scan_id);
 cmn->scan_req_id = __cpu_to_le32(scan_req_id);
 cmn->vdev_id = __cpu_to_le32(arg->vdev_id);
 cmn->scan_priority = __cpu_to_le32(arg->scan_priority);
 cmn->notify_scan_events = __cpu_to_le32(arg->notify_scan_events);
 cmn->dwell_time_active = __cpu_to_le32(arg->dwell_time_active);
 cmn->dwell_time_passive = __cpu_to_le32(arg->dwell_time_passive);
 cmn->min_rest_time = __cpu_to_le32(arg->min_rest_time);
 cmn->max_rest_time = __cpu_to_le32(arg->max_rest_time);
 cmn->repeat_probe_time = __cpu_to_le32(arg->repeat_probe_time);
 cmn->probe_spacing_time = __cpu_to_le32(arg->probe_spacing_time);
 cmn->idle_time = __cpu_to_le32(arg->idle_time);
 cmn->max_scan_time = __cpu_to_le32(arg->max_scan_time);
 cmn->probe_delay = __cpu_to_le32(arg->probe_delay);
 cmn->scan_ctrl_flags = __cpu_to_le32(arg->scan_ctrl_flags);
}
