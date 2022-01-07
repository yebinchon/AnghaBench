
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int AVC_DEBUG_CA2HOST ;
 int AVC_DEBUG_DSD ;
 int AVC_DEBUG_DSIT ;
 int AVC_DEBUG_HOST2CA ;
 int AVC_DEBUG_LNB_CONTROL ;
 int AVC_DEBUG_READ_DESCRIPTOR ;
 int AVC_DEBUG_REGISTER_REMOTE_CONTROL ;
 int AVC_DEBUG_TUNE_QPSK ;
 int AVC_DEBUG_TUNE_QPSK2 ;




 int const SFE_VENDOR_DE_COMPANYID_0 ;
 int const SFE_VENDOR_DE_COMPANYID_1 ;
 int const SFE_VENDOR_DE_COMPANYID_2 ;






 int avc_debug ;

__attribute__((used)) static const char *debug_fcp_opcode(unsigned int opcode,
        const u8 *data, int length)
{
 switch (opcode) {
 case 134:
  break;
 case 135:
  return avc_debug & AVC_DEBUG_READ_DESCRIPTOR ?
    "ReadDescriptor" : ((void*)0);
 case 136:
  return avc_debug & AVC_DEBUG_DSIT ?
    "DirectSelectInfo.Type" : ((void*)0);
 case 137:
  return avc_debug & AVC_DEBUG_DSD ? "DirectSelectData" : ((void*)0);
 default:
  return "Unknown";
 }

 if (length < 7 ||
     data[3] != SFE_VENDOR_DE_COMPANYID_0 ||
     data[4] != SFE_VENDOR_DE_COMPANYID_1 ||
     data[5] != SFE_VENDOR_DE_COMPANYID_2)
  return "Vendor/Unknown";

 switch (data[6]) {
 case 130:
  return avc_debug & AVC_DEBUG_REGISTER_REMOTE_CONTROL ?
    "RegisterRC" : ((void*)0);
 case 131:
  return avc_debug & AVC_DEBUG_LNB_CONTROL ? "LNBControl" : ((void*)0);
 case 129:
  return avc_debug & AVC_DEBUG_TUNE_QPSK ? "TuneQPSK" : ((void*)0);
 case 128:
  return avc_debug & AVC_DEBUG_TUNE_QPSK2 ? "TuneQPSK2" : ((void*)0);
 case 132:
  return avc_debug & AVC_DEBUG_HOST2CA ? "Host2CA" : ((void*)0);
 case 133:
  return avc_debug & AVC_DEBUG_CA2HOST ? "CA2Host" : ((void*)0);
 }
 return "Vendor/Unknown";
}
