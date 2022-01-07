
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct in6_addr {scalar_t__ s6_addr; } ;
struct fw_clip_cmd {int ip_lo; int ip_hi; void* alloc_to_len16; void* op_to_write; } ;
struct adapter {int mbox; } ;
typedef int c ;
typedef int __be64 ;


 int FW_CLIP_CMD ;
 int FW_CLIP_CMD_ALLOC_F ;
 int FW_CMD_OP_V (int ) ;
 int FW_CMD_REQUEST_F ;
 int FW_CMD_WRITE_F ;
 int FW_LEN16 (struct fw_clip_cmd) ;
 void* htonl (int) ;
 int memset (struct fw_clip_cmd*,int ,int) ;
 struct adapter* netdev2adap (struct net_device const*) ;
 int t4_wr_mbox_meat (struct adapter*,int ,struct fw_clip_cmd*,int,struct fw_clip_cmd*,int) ;

__attribute__((used)) static int clip6_get_mbox(const struct net_device *dev,
     const struct in6_addr *lip)
{
 struct adapter *adap = netdev2adap(dev);
 struct fw_clip_cmd c;

 memset(&c, 0, sizeof(c));
 c.op_to_write = htonl(FW_CMD_OP_V(FW_CLIP_CMD) |
         FW_CMD_REQUEST_F | FW_CMD_WRITE_F);
 c.alloc_to_len16 = htonl(FW_CLIP_CMD_ALLOC_F | FW_LEN16(c));
 *(__be64 *)&c.ip_hi = *(__be64 *)(lip->s6_addr);
 *(__be64 *)&c.ip_lo = *(__be64 *)(lip->s6_addr + 8);
 return t4_wr_mbox_meat(adap, adap->mbox, &c, sizeof(c), &c, 0);
}
