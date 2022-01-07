
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lan9303 {int dummy; } ;


 int LAN9303_PMI_ACCESS ;
 int LAN9303_PMI_ACCESS_MII_BUSY ;
 int lan9303_read_wait (struct lan9303*,int ,int ) ;

__attribute__((used)) static int lan9303_indirect_phy_wait_for_completion(struct lan9303 *chip)
{
 return lan9303_read_wait(chip, LAN9303_PMI_ACCESS,
     LAN9303_PMI_ACCESS_MII_BUSY);
}
