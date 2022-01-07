
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct fw_hdr {int flags; } ;
struct adapter {int flags; } ;


 int CXGB4_FW_OK ;
 int EINVAL ;
 int FW_HDR_FLAGS_RESET_HALT ;
 int be32_to_cpu (int ) ;
 int t4_fw_halt (struct adapter*,unsigned int,int) ;
 int t4_fw_matches_chip (struct adapter*,struct fw_hdr const*) ;
 int t4_fw_restart (struct adapter*,unsigned int,int) ;
 int t4_init_devlog_params (struct adapter*) ;
 int t4_load_cfg (struct adapter*,int *,int ) ;
 int t4_load_fw (struct adapter*,int const*,unsigned int) ;

int t4_fw_upgrade(struct adapter *adap, unsigned int mbox,
    const u8 *fw_data, unsigned int size, int force)
{
 const struct fw_hdr *fw_hdr = (const struct fw_hdr *)fw_data;
 int reset, ret;

 if (!t4_fw_matches_chip(adap, fw_hdr))
  return -EINVAL;




 adap->flags &= ~CXGB4_FW_OK;

 ret = t4_fw_halt(adap, mbox, force);
 if (ret < 0 && !force)
  goto out;

 ret = t4_load_fw(adap, fw_data, size);
 if (ret < 0)
  goto out;
 (void)t4_load_cfg(adap, ((void*)0), 0);
 reset = ((be32_to_cpu(fw_hdr->flags) & FW_HDR_FLAGS_RESET_HALT) == 0);
 ret = t4_fw_restart(adap, mbox, reset);






 (void)t4_init_devlog_params(adap);
out:
 adap->flags |= CXGB4_FW_OK;
 return ret;
}
