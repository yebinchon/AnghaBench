
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct mv88e6xxx_chip {TYPE_1__* ports; } ;
struct TYPE_2__ {int vtu_miss_violation; int vtu_member_violation; int atu_full_violation; int atu_miss_violation; int atu_member_violation; } ;



__attribute__((used)) static void mv88e6xxx_atu_vtu_get_stats(struct mv88e6xxx_chip *chip, int port,
     uint64_t *data)
{
 *data++ = chip->ports[port].atu_member_violation;
 *data++ = chip->ports[port].atu_miss_violation;
 *data++ = chip->ports[port].atu_full_violation;
 *data++ = chip->ports[port].vtu_member_violation;
 *data++ = chip->ports[port].vtu_miss_violation;
}
