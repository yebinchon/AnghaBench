
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dvb_diseqc_master_cmd {int msg_len; int * msg; } ;
struct ddb {int dummy; } ;


 int DDB_LINK_TAG (int) ;
 int LNB_BUF_LEVEL (int) ;
 int LNB_BUF_WRITE (int) ;
 int LNB_CMD_DISEQC ;
 int ddbwritel (struct ddb*,int ,int) ;
 int lnb_command (struct ddb*,int,int,int ) ;

__attribute__((used)) static int lnb_send_diseqc(struct ddb *dev, u32 link, u32 input,
      struct dvb_diseqc_master_cmd *cmd)
{
 u32 tag = DDB_LINK_TAG(link);
 int i;

 ddbwritel(dev, 0, tag | LNB_BUF_LEVEL(input));
 for (i = 0; i < cmd->msg_len; i++)
  ddbwritel(dev, cmd->msg[i], tag | LNB_BUF_WRITE(input));
 lnb_command(dev, link, input, LNB_CMD_DISEQC);
 return 0;
}
