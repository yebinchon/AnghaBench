
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vpd ;
typedef int u8 ;
struct vpd_params {int* port_type; int eth_base; int * xauicfg; int sn; int mem_timing; int mdc; int uclk; int mclk; int cclk; } ;
struct t3_vpd {int id_tag; int na_data; int xaui1cfg_len; int xaui1cfg_data; int xaui0cfg_len; int xaui0cfg_data; int * port1_data; int * port0_data; int sn_data; int mt_len; int mt_data; int mdc_len; int mdc_data; int uclk_len; int uclk_data; int mclk_len; int mclk_data; int cclk_len; int cclk_data; } ;
struct TYPE_2__ {scalar_t__ rev; } ;
struct adapter {TYPE_1__ params; } ;
typedef int __le32 ;


 int EINVAL ;
 int SERNUM_LEN ;
 int VPD_BASE ;
 int hex2bin (int ,int ,int) ;
 void* hex_to_bin (int ) ;
 int memcpy (int ,int ,int ) ;
 int t3_seeprom_read (struct adapter*,int,int *) ;
 scalar_t__ uses_xaui (struct adapter*) ;
 int vpdstrtou16 (int ,int ,int,int *) ;
 int vpdstrtouint (int ,int ,int,int *) ;

__attribute__((used)) static int get_vpd_params(struct adapter *adapter, struct vpd_params *p)
{
 int i, addr, ret;
 struct t3_vpd vpd;





 ret = t3_seeprom_read(adapter, VPD_BASE, (__le32 *)&vpd);
 if (ret)
  return ret;
 addr = vpd.id_tag == 0x82 ? VPD_BASE : 0;

 for (i = 0; i < sizeof(vpd); i += 4) {
  ret = t3_seeprom_read(adapter, addr + i,
          (__le32 *)((u8 *)&vpd + i));
  if (ret)
   return ret;
 }

 ret = vpdstrtouint(vpd.cclk_data, vpd.cclk_len, 10, &p->cclk);
 if (ret)
  return ret;
 ret = vpdstrtouint(vpd.mclk_data, vpd.mclk_len, 10, &p->mclk);
 if (ret)
  return ret;
 ret = vpdstrtouint(vpd.uclk_data, vpd.uclk_len, 10, &p->uclk);
 if (ret)
  return ret;
 ret = vpdstrtouint(vpd.mdc_data, vpd.mdc_len, 10, &p->mdc);
 if (ret)
  return ret;
 ret = vpdstrtouint(vpd.mt_data, vpd.mt_len, 10, &p->mem_timing);
 if (ret)
  return ret;
 memcpy(p->sn, vpd.sn_data, SERNUM_LEN);


 if (adapter->params.rev == 0 && !vpd.port0_data[0]) {
  p->port_type[0] = uses_xaui(adapter) ? 1 : 2;
  p->port_type[1] = uses_xaui(adapter) ? 6 : 2;
 } else {
  p->port_type[0] = hex_to_bin(vpd.port0_data[0]);
  p->port_type[1] = hex_to_bin(vpd.port1_data[0]);
  ret = vpdstrtou16(vpd.xaui0cfg_data, vpd.xaui0cfg_len, 16,
      &p->xauicfg[0]);
  if (ret)
   return ret;
  ret = vpdstrtou16(vpd.xaui1cfg_data, vpd.xaui1cfg_len, 16,
      &p->xauicfg[1]);
  if (ret)
   return ret;
 }

 ret = hex2bin(p->eth_base, vpd.na_data, 6);
 if (ret < 0)
  return -EINVAL;
 return 0;
}
