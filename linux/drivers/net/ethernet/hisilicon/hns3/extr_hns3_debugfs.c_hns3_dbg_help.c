
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hnae3_handle {TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int HNS3_DBG_BUF_LEN ;
 int dev_info (int *,char*,...) ;
 int hns3_is_phys_func (TYPE_1__*) ;
 int memset (char*,int ,int) ;
 int strlen (char*) ;
 int strncat (char*,char*,int) ;

__attribute__((used)) static void hns3_dbg_help(struct hnae3_handle *h)
{


 char printf_buf[256];

 dev_info(&h->pdev->dev, "available commands\n");
 dev_info(&h->pdev->dev, "queue info <number>\n");
 dev_info(&h->pdev->dev, "queue map\n");
 dev_info(&h->pdev->dev, "bd info <q_num> <bd index>\n");

 if (!hns3_is_phys_func(h->pdev))
  return;

 dev_info(&h->pdev->dev, "dump fd tcam\n");
 dev_info(&h->pdev->dev, "dump tc\n");
 dev_info(&h->pdev->dev, "dump tm map <q_num>\n");
 dev_info(&h->pdev->dev, "dump tm\n");
 dev_info(&h->pdev->dev, "dump qos pause cfg\n");
 dev_info(&h->pdev->dev, "dump qos pri map\n");
 dev_info(&h->pdev->dev, "dump qos buf cfg\n");
 dev_info(&h->pdev->dev, "dump mng tbl\n");
 dev_info(&h->pdev->dev, "dump reset info\n");
 dev_info(&h->pdev->dev, "dump m7 info\n");
 dev_info(&h->pdev->dev, "dump ncl_config <offset> <length>(in hex)\n");
 dev_info(&h->pdev->dev, "dump mac tnl status\n");

 memset(printf_buf, 0, 256);
 strncat(printf_buf, "dump reg [[bios common] [ssu <port_id>]",
  256 - 1);
 strncat(printf_buf + strlen(printf_buf),
  " [igu egu <port_id>] [rpu <tc_queue_num>]",
  256 - strlen(printf_buf) - 1);
 strncat(printf_buf + strlen(printf_buf),
  " [rtc] [ppp] [rcb] [tqp <queue_num>]]\n",
  256 - strlen(printf_buf) - 1);
 dev_info(&h->pdev->dev, "%s", printf_buf);

 memset(printf_buf, 0, 256);
 strncat(printf_buf, "dump reg dcb <port_id> <pri_id> <pg_id>",
  256 - 1);
 strncat(printf_buf + strlen(printf_buf), " <rq_id> <nq_id> <qset_id>\n",
  256 - strlen(printf_buf) - 1);
 dev_info(&h->pdev->dev, "%s", printf_buf);
}
