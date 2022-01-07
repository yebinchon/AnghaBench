
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_3__ {int hashvec; } ;
struct TYPE_4__ {TYPE_1__ hash; } ;
struct fw_vi_mac_cmd {TYPE_2__ u; void* freemacs_to_len16; void* op_to_viid; } ;
struct adapter {int dummy; } ;
typedef int c ;


 int FW_CMD_LEN16_V (int) ;
 int FW_CMD_OP_V (int ) ;
 int FW_CMD_REQUEST_F ;
 int FW_CMD_WRITE_F ;
 int FW_VI_ENABLE_CMD_VIID_V (unsigned int) ;
 int FW_VI_MAC_CMD ;
 int FW_VI_MAC_CMD_HASHUNIEN_V (int) ;
 int FW_VI_MAC_CMD_HASHVECEN_F ;
 void* cpu_to_be32 (int) ;
 int cpu_to_be64 (int ) ;
 int memset (struct fw_vi_mac_cmd*,int ,int) ;
 int t4_wr_mbox_meat (struct adapter*,unsigned int,struct fw_vi_mac_cmd*,int,int *,int) ;

int t4_set_addr_hash(struct adapter *adap, unsigned int mbox, unsigned int viid,
       bool ucast, u64 vec, bool sleep_ok)
{
 struct fw_vi_mac_cmd c;

 memset(&c, 0, sizeof(c));
 c.op_to_viid = cpu_to_be32(FW_CMD_OP_V(FW_VI_MAC_CMD) |
       FW_CMD_REQUEST_F | FW_CMD_WRITE_F |
       FW_VI_ENABLE_CMD_VIID_V(viid));
 c.freemacs_to_len16 = cpu_to_be32(FW_VI_MAC_CMD_HASHVECEN_F |
       FW_VI_MAC_CMD_HASHUNIEN_V(ucast) |
       FW_CMD_LEN16_V(1));
 c.u.hash.hashvec = cpu_to_be64(vec);
 return t4_wr_mbox_meat(adap, mbox, &c, sizeof(c), ((void*)0), sleep_ok);
}
