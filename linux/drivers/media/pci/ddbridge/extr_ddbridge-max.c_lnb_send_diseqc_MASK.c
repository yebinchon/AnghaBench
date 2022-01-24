#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u32 ;
struct dvb_diseqc_master_cmd {int msg_len; int /*<<< orphan*/ * msg; } ;
struct ddb {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  LNB_CMD_DISEQC ; 
 int /*<<< orphan*/  FUNC3 (struct ddb*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ddb*,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct ddb *dev, u32 link, u32 input,
			   struct dvb_diseqc_master_cmd *cmd)
{
	u32 tag = FUNC0(link);
	int i;

	FUNC3(dev, 0, tag | FUNC1(input));
	for (i = 0; i < cmd->msg_len; i++)
		FUNC3(dev, cmd->msg[i], tag | FUNC2(input));
	FUNC4(dev, link, input, LNB_CMD_DISEQC);
	return 0;
}