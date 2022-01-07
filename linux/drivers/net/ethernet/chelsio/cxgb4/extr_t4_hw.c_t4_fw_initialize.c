
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_initialize_cmd {int dummy; } ;
struct adapter {int dummy; } ;
typedef int c ;


 int INITIALIZE ;
 int INIT_CMD (struct fw_initialize_cmd,int ,int ) ;
 int WRITE ;
 int memset (struct fw_initialize_cmd*,int ,int) ;
 int t4_wr_mbox (struct adapter*,unsigned int,struct fw_initialize_cmd*,int,int *) ;

int t4_fw_initialize(struct adapter *adap, unsigned int mbox)
{
 struct fw_initialize_cmd c;

 memset(&c, 0, sizeof(c));
 INIT_CMD(c, INITIALIZE, WRITE);
 return t4_wr_mbox(adap, mbox, &c, sizeof(c), ((void*)0));
}
