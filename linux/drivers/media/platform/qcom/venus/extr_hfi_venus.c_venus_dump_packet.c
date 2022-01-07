
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct venus_hfi_device {int dummy; } ;


 int DUMP_PREFIX_OFFSET ;
 int KERN_DEBUG ;
 int print_hex_dump (int ,char*,int ,int,int,void const*,size_t,int) ;
 int venus_pkt_debug ;

__attribute__((used)) static void venus_dump_packet(struct venus_hfi_device *hdev, const void *packet)
{
 size_t pkt_size = *(u32 *)packet;

 if (!venus_pkt_debug)
  return;

 print_hex_dump(KERN_DEBUG, "", DUMP_PREFIX_OFFSET, 16, 1, packet,
         pkt_size, 1);
}
