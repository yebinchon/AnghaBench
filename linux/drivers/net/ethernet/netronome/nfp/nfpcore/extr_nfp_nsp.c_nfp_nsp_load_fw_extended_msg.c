
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nfp_nsp {int cpp; } ;


 unsigned int ARRAY_SIZE (char const* const*) ;
 unsigned int FIELD_GET (int ,int ) ;
 char* KERN_DEBUG ;
 char* KERN_ERR ;
 char* KERN_INFO ;
 int NFP_FW_LOAD_RET_MAJOR ;
 int NFP_FW_LOAD_RET_MINOR ;
 int nfp_nsp_has_stored_fw_load (struct nfp_nsp*) ;
 int nfp_printk (char const*,int ,char*,char const* const,...) ;

__attribute__((used)) static void nfp_nsp_load_fw_extended_msg(struct nfp_nsp *state, u32 ret_val)
{
 static const char * const major_msg[] = {
          "Firmware from driver loaded",
          "Firmware from flash loaded",
          "Firmware loading failure",
 };
 static const char * const minor_msg[] = {
           "",
           "no named partition on flash",
           "error reading from flash",
           "can not deflate",
           "not a trusted file",
           "can not parse FW file",
           "MIP not found in FW file",
           "null firmware name in MIP",
           "FW version none",
           "FW build number none",
           "no FW selection policy HWInfo key found",
           "static FW selection policy",
           "FW version has precedence",
           "different FW application load requested",
           "development build",
 };
 unsigned int major, minor;
 const char *level;

 major = FIELD_GET(NFP_FW_LOAD_RET_MAJOR, ret_val);
 minor = FIELD_GET(NFP_FW_LOAD_RET_MINOR, ret_val);

 if (!nfp_nsp_has_stored_fw_load(state))
  return;


 if (major == 0 && (minor == 0 || minor == 10))
  level = KERN_DEBUG;
 else if (major == 2)
  level = KERN_ERR;
 else
  level = KERN_INFO;

 if (major >= ARRAY_SIZE(major_msg))
  nfp_printk(level, state->cpp, "FW loading status: %x\n",
      ret_val);
 else if (minor >= ARRAY_SIZE(minor_msg))
  nfp_printk(level, state->cpp, "%s, reason code: %d\n",
      major_msg[major], minor);
 else
  nfp_printk(level, state->cpp, "%s%c %s\n",
      major_msg[major], minor ? ',' : '.',
      minor_msg[minor]);
}
