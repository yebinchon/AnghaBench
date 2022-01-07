
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum fs_flow_table_type { ____Placeholder_fs_flow_table_type } fs_flow_table_type ;


 int FS_FT_NIC_RX ;
 int FS_FT_NIC_TX ;

__attribute__((used)) static enum fs_flow_table_type egress_to_fs_ft(bool egress)
{
 return egress ? FS_FT_NIC_TX : FS_FT_NIC_RX;
}
