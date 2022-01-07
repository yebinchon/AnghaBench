
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct hinic_cmdq {int db_base; } ;
typedef enum hinic_cmdq_type { ____Placeholder_hinic_cmdq_type } hinic_cmdq_type ;


 int CMDQ_DB_ADDR (int ,int ) ;
 int cmdq_fill_db (int *,int,int ) ;
 int cpu_to_be32 (int ) ;
 int wmb () ;
 int writel (int ,int ) ;

__attribute__((used)) static void cmdq_set_db(struct hinic_cmdq *cmdq,
   enum hinic_cmdq_type cmdq_type, u16 prod_idx)
{
 u32 db_info;

 cmdq_fill_db(&db_info, cmdq_type, prod_idx);


 db_info = cpu_to_be32(db_info);

 wmb();

 writel(db_info, CMDQ_DB_ADDR(cmdq->db_base, prod_idx));
}
