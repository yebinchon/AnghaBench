
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct iwl_phy_db_cmd {void* length; void* type; } ;
struct iwl_phy_db {int trans; } ;
struct iwl_host_cmd {int* len; int * dataflags; struct iwl_phy_db_cmd** data; int id; } ;


 int IWL_DEBUG_INFO (int ,char*,int,int) ;
 int IWL_HCMD_DFL_NOCOPY ;
 int PHY_DB_CMD ;
 void* cpu_to_le16 (int) ;
 int iwl_trans_send_cmd (int ,struct iwl_host_cmd*) ;

__attribute__((used)) static int iwl_send_phy_db_cmd(struct iwl_phy_db *phy_db, u16 type,
          u16 length, void *data)
{
 struct iwl_phy_db_cmd phy_db_cmd;
 struct iwl_host_cmd cmd = {
  .id = PHY_DB_CMD,
 };

 IWL_DEBUG_INFO(phy_db->trans,
         "Sending PHY-DB hcmd of type %d, of length %d\n",
         type, length);


 phy_db_cmd.type = cpu_to_le16(type);
 phy_db_cmd.length = cpu_to_le16(length);


 cmd.data[0] = &phy_db_cmd;
 cmd.len[0] = sizeof(struct iwl_phy_db_cmd);
 cmd.data[1] = data;
 cmd.len[1] = length;
 cmd.dataflags[1] = IWL_HCMD_DFL_NOCOPY;

 return iwl_trans_send_cmd(phy_db->trans, &cmd);
}
