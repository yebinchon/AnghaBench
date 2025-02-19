
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_short ;
typedef int u_char ;
struct de4x5_srom {scalar_t__ chksum; int ieee_addr; scalar_t__ num_controllers; scalar_t__ version; scalar_t__ id_block_crc; scalar_t__ sub_system_id; scalar_t__ sub_vendor_id; } ;


 int DEBUG_SROM ;
 int de4x5_debug ;
 int printk (char*,int,...) ;

__attribute__((used)) static void
de4x5_dbg_srom(struct de4x5_srom *p)
{
    int i;

    if (de4x5_debug & DEBUG_SROM) {
 printk("Sub-system Vendor ID: %04x\n", *((u_short *)p->sub_vendor_id));
 printk("Sub-system ID:        %04x\n", *((u_short *)p->sub_system_id));
 printk("ID Block CRC:         %02x\n", (u_char)(p->id_block_crc));
 printk("SROM version:         %02x\n", (u_char)(p->version));
 printk("# controllers:        %02x\n", (u_char)(p->num_controllers));

 printk("Hardware Address:     %pM\n", p->ieee_addr);
 printk("CRC checksum:         %04x\n", (u_short)(p->chksum));
 for (i=0; i<64; i++) {
     printk("%3d %04x\n", i<<1, (u_short)*((u_short *)p+i));
 }
    }
}
