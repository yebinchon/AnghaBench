
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct e1000_hw {int dummy; } ;
typedef int s32 ;


 int e1e_wphy (struct e1000_hw*,int,int) ;
 int e_dbg (char*) ;

s32 e1000e_phy_init_script_igp3(struct e1000_hw *hw)
{
 e_dbg("Running IGP 3 PHY init script\n");



 e1e_wphy(hw, 0x2F5B, 0x9018);

 e1e_wphy(hw, 0x2F52, 0x0000);

 e1e_wphy(hw, 0x2FB1, 0x8B24);

 e1e_wphy(hw, 0x2FB2, 0xF8F0);

 e1e_wphy(hw, 0x2010, 0x10B0);

 e1e_wphy(hw, 0x2011, 0x0000);

 e1e_wphy(hw, 0x20DD, 0x249A);

 e1e_wphy(hw, 0x20DE, 0x00D3);

 e1e_wphy(hw, 0x28B4, 0x04CE);

 e1e_wphy(hw, 0x2F70, 0x29E4);

 e1e_wphy(hw, 0x0000, 0x0140);

 e1e_wphy(hw, 0x1F30, 0x1606);

 e1e_wphy(hw, 0x1F31, 0xB814);

 e1e_wphy(hw, 0x1F35, 0x002A);

 e1e_wphy(hw, 0x1F3E, 0x0067);

 e1e_wphy(hw, 0x1F54, 0x0065);

 e1e_wphy(hw, 0x1F55, 0x002A);

 e1e_wphy(hw, 0x1F56, 0x002A);

 e1e_wphy(hw, 0x1F72, 0x3FB0);

 e1e_wphy(hw, 0x1F76, 0xC0FF);

 e1e_wphy(hw, 0x1F77, 0x1DEC);

 e1e_wphy(hw, 0x1F78, 0xF9EF);

 e1e_wphy(hw, 0x1F79, 0x0210);

 e1e_wphy(hw, 0x1895, 0x0003);

 e1e_wphy(hw, 0x1796, 0x0008);

 e1e_wphy(hw, 0x1798, 0xD008);



 e1e_wphy(hw, 0x1898, 0xD918);

 e1e_wphy(hw, 0x187A, 0x0800);



 e1e_wphy(hw, 0x0019, 0x008D);

 e1e_wphy(hw, 0x001B, 0x2080);

 e1e_wphy(hw, 0x0014, 0x0045);

 e1e_wphy(hw, 0x0000, 0x1340);

 return 0;
}
