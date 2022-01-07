
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct fw_vi_cmd {unsigned int nmac; int type_viid; void* alloc_to_len16; int rsssize_pkd; int nmac0; int nmac1; int nmac2; int nmac3; int mac; int portid_pkd; void* op_to_vfn; } ;
struct adapter {int dummy; } ;
typedef int c ;


 int FW_CMD_EXEC_F ;
 int FW_CMD_OP_V (int ) ;
 int FW_CMD_REQUEST_F ;
 int FW_CMD_WRITE_F ;
 int FW_LEN16 (struct fw_vi_cmd) ;
 int FW_VI_CMD ;
 int FW_VI_CMD_ALLOC_F ;
 int FW_VI_CMD_PFN_V (unsigned int) ;
 int FW_VI_CMD_PORTID_V (unsigned int) ;
 unsigned int FW_VI_CMD_RSSSIZE_G (int ) ;
 int FW_VI_CMD_VFN_V (unsigned int) ;
 int FW_VI_CMD_VFVLD_G (int ) ;
 int FW_VI_CMD_VIID_G (int ) ;
 int FW_VI_CMD_VIN_G (int ) ;
 int be16_to_cpu (int ) ;
 int be32_to_cpu (void*) ;
 void* cpu_to_be32 (int) ;
 int memcpy (int *,int ,int) ;
 int memset (struct fw_vi_cmd*,int ,int) ;
 int t4_wr_mbox (struct adapter*,unsigned int,struct fw_vi_cmd*,int,struct fw_vi_cmd*) ;

int t4_alloc_vi(struct adapter *adap, unsigned int mbox, unsigned int port,
  unsigned int pf, unsigned int vf, unsigned int nmac, u8 *mac,
  unsigned int *rss_size, u8 *vivld, u8 *vin)
{
 int ret;
 struct fw_vi_cmd c;

 memset(&c, 0, sizeof(c));
 c.op_to_vfn = cpu_to_be32(FW_CMD_OP_V(FW_VI_CMD) | FW_CMD_REQUEST_F |
      FW_CMD_WRITE_F | FW_CMD_EXEC_F |
      FW_VI_CMD_PFN_V(pf) | FW_VI_CMD_VFN_V(vf));
 c.alloc_to_len16 = cpu_to_be32(FW_VI_CMD_ALLOC_F | FW_LEN16(c));
 c.portid_pkd = FW_VI_CMD_PORTID_V(port);
 c.nmac = nmac - 1;

 ret = t4_wr_mbox(adap, mbox, &c, sizeof(c), &c);
 if (ret)
  return ret;

 if (mac) {
  memcpy(mac, c.mac, sizeof(c.mac));
  switch (nmac) {
  case 5:
   memcpy(mac + 24, c.nmac3, sizeof(c.nmac3));

  case 4:
   memcpy(mac + 18, c.nmac2, sizeof(c.nmac2));

  case 3:
   memcpy(mac + 12, c.nmac1, sizeof(c.nmac1));

  case 2:
   memcpy(mac + 6, c.nmac0, sizeof(c.nmac0));
  }
 }
 if (rss_size)
  *rss_size = FW_VI_CMD_RSSSIZE_G(be16_to_cpu(c.rsssize_pkd));

 if (vivld)
  *vivld = FW_VI_CMD_VFVLD_G(be32_to_cpu(c.alloc_to_len16));

 if (vin)
  *vin = FW_VI_CMD_VIN_G(be32_to_cpu(c.alloc_to_len16));

 return FW_VI_CMD_VIID_G(be16_to_cpu(c.type_viid));
}
