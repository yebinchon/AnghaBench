#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u16 ;
struct proc_data {int readlen; int /*<<< orphan*/ * rbuffer; } ;
struct net_device {struct airo_info* ml_priv; } ;
struct inode {int dummy; } ;
struct file {struct proc_data* private_data; } ;
struct airo_info {TYPE_1__* dev; } ;
typedef  int /*<<< orphan*/  __le32 ;
struct TYPE_5__ {int /*<<< orphan*/  len; int /*<<< orphan*/ * vals; } ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;
typedef  TYPE_2__ StatsRid ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct net_device* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct proc_data*) ; 
 int /*<<< orphan*/ * FUNC3 (int,int /*<<< orphan*/ ) ; 
 struct proc_data* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct airo_info*,TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,char*,char*,int) ; 
 char** statsLabels ; 
 int FUNC9 (char*) ; 

__attribute__((used)) static int FUNC10( struct inode *inode,
				struct file *file,
				u16 rid )
{
	struct proc_data *data;
	struct net_device *dev = FUNC0(inode);
	struct airo_info *apriv = dev->ml_priv;
	StatsRid stats;
	int i, j;
	__le32 *vals = stats.vals;
	int len;

	if ((file->private_data = FUNC4(sizeof(struct proc_data ), GFP_KERNEL)) == NULL)
		return -ENOMEM;
	data = file->private_data;
	if ((data->rbuffer = FUNC3( 4096, GFP_KERNEL )) == NULL) {
		FUNC2 (file->private_data);
		return -ENOMEM;
	}

	FUNC7(apriv, &stats, rid, 1);
	len = FUNC5(stats.len);

        j = 0;
	for(i=0; statsLabels[i]!=(char *)-1 && i*4<len; i++) {
		if (!statsLabels[i]) continue;
		if (j+FUNC9(statsLabels[i])+16>4096) {
			FUNC1(apriv->dev->name,
			       "Potentially disastrous buffer overflow averted!");
			break;
		}
		j+=FUNC8(data->rbuffer+j, "%s: %u\n", statsLabels[i],
				FUNC6(vals[i]));
	}
	if (i*4 >= len) {
		FUNC1(apriv->dev->name, "Got a short rid");
	}
	data->readlen = j;
	return 0;
}