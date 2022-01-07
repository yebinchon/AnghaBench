
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int be16 (int const*) ;
 int le24 (int const*) ;

__attribute__((used)) static int phy_aq1202_version(const u8 *phy_fw_data,
         size_t phy_fw_size)
{
 int offset;
 offset = (((phy_fw_data + 0x8)[0] | ((phy_fw_data + 0x8)[1] << 8)) | ((phy_fw_data + 0x8)[2] << 16)) << 12;
 offset = (((phy_fw_data + offset + 0xa)[0] | ((phy_fw_data + offset + 0xa)[1] << 8)) | ((phy_fw_data + offset + 0xa)[2] << 16));
 return (((phy_fw_data + offset + 0x27e)[0] << 8) | (phy_fw_data + offset + 0x27e)[1]);




}
