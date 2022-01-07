
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_scan_probe_req_v1 {int buf; int common_data; int * band_data; int mac_header; } ;
struct iwl_scan_probe_req {int buf; int common_data; int * band_data; int mac_header; } ;


 int SCAN_NUM_BAND_PROBE_DATA_V_1 ;
 int memcpy (int ,int ,int) ;

__attribute__((used)) static void
iwl_mvm_scan_set_legacy_probe_req(struct iwl_scan_probe_req_v1 *p_req,
      struct iwl_scan_probe_req *src_p_req)
{
 int i;

 p_req->mac_header = src_p_req->mac_header;
 for (i = 0; i < SCAN_NUM_BAND_PROBE_DATA_V_1; i++)
  p_req->band_data[i] = src_p_req->band_data[i];
 p_req->common_data = src_p_req->common_data;
 memcpy(p_req->buf, src_p_req->buf, sizeof(p_req->buf));
}
