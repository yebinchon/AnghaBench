#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct hnae3_handle {TYPE_1__* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int HNS3_DBG_BUF_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 

__attribute__((used)) static void FUNC5(struct hnae3_handle *h)
{
#define HNS3_DBG_BUF_LEN 256

	char printf_buf[HNS3_DBG_BUF_LEN];

	FUNC0(&h->pdev->dev, "available commands\n");
	FUNC0(&h->pdev->dev, "queue info <number>\n");
	FUNC0(&h->pdev->dev, "queue map\n");
	FUNC0(&h->pdev->dev, "bd info <q_num> <bd index>\n");

	if (!FUNC1(h->pdev))
		return;

	FUNC0(&h->pdev->dev, "dump fd tcam\n");
	FUNC0(&h->pdev->dev, "dump tc\n");
	FUNC0(&h->pdev->dev, "dump tm map <q_num>\n");
	FUNC0(&h->pdev->dev, "dump tm\n");
	FUNC0(&h->pdev->dev, "dump qos pause cfg\n");
	FUNC0(&h->pdev->dev, "dump qos pri map\n");
	FUNC0(&h->pdev->dev, "dump qos buf cfg\n");
	FUNC0(&h->pdev->dev, "dump mng tbl\n");
	FUNC0(&h->pdev->dev, "dump reset info\n");
	FUNC0(&h->pdev->dev, "dump m7 info\n");
	FUNC0(&h->pdev->dev, "dump ncl_config <offset> <length>(in hex)\n");
	FUNC0(&h->pdev->dev, "dump mac tnl status\n");

	FUNC2(printf_buf, 0, HNS3_DBG_BUF_LEN);
	FUNC4(printf_buf, "dump reg [[bios common] [ssu <port_id>]",
		HNS3_DBG_BUF_LEN - 1);
	FUNC4(printf_buf + FUNC3(printf_buf),
		" [igu egu <port_id>] [rpu <tc_queue_num>]",
		HNS3_DBG_BUF_LEN - FUNC3(printf_buf) - 1);
	FUNC4(printf_buf + FUNC3(printf_buf),
		" [rtc] [ppp] [rcb] [tqp <queue_num>]]\n",
		HNS3_DBG_BUF_LEN - FUNC3(printf_buf) - 1);
	FUNC0(&h->pdev->dev, "%s", printf_buf);

	FUNC2(printf_buf, 0, HNS3_DBG_BUF_LEN);
	FUNC4(printf_buf, "dump reg dcb <port_id> <pri_id> <pg_id>",
		HNS3_DBG_BUF_LEN - 1);
	FUNC4(printf_buf + FUNC3(printf_buf), " <rq_id> <nq_id> <qset_id>\n",
		HNS3_DBG_BUF_LEN - FUNC3(printf_buf) - 1);
	FUNC0(&h->pdev->dev, "%s", printf_buf);
}