
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mwifiex_adapter {int fw_release_number; } ;
typedef int __le32 ;


 int MSG ;
 int cpu_to_le32 (int ) ;
 char* driver_version ;
 int mwifiex_dbg (struct mwifiex_adapter*,int ,char*,char*) ;
 int snprintf (char*,int,char*,char*) ;
 int sprintf (char*,char*,int,int,int,int) ;

int
mwifiex_drv_get_driver_version(struct mwifiex_adapter *adapter, char *version,
          int max_len)
{
 union {
  __le32 l;
  u8 c[4];
 } ver;
 char fw_ver[32];

 ver.l = cpu_to_le32(adapter->fw_release_number);
 sprintf(fw_ver, "%u.%u.%u.p%u", ver.c[2], ver.c[1], ver.c[0], ver.c[3]);

 snprintf(version, max_len, driver_version, fw_ver);

 mwifiex_dbg(adapter, MSG, "info: MWIFIEX VERSION: %s\n", version);

 return 0;
}
