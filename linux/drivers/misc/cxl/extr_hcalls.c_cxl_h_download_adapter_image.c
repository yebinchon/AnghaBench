
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int H_DOWNLOAD_CA_FACILITY_DOWNLOAD ;
 long cxl_h_download_facility (int ,int ,int ,int ,int *) ;

long cxl_h_download_adapter_image(u64 unit_address,
      u64 list_address, u64 num,
      u64 *out)
{
 return cxl_h_download_facility(unit_address,
           H_DOWNLOAD_CA_FACILITY_DOWNLOAD,
           list_address, num, out);
}
