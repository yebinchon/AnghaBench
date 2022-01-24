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
typedef  char u16 ;
struct proc_data {char* wbuffer; int /*<<< orphan*/  writelen; } ;
struct net_device {struct airo_info* ml_priv; } ;
struct inode {int dummy; } ;
struct file {struct proc_data* private_data; } ;
struct airo_info {TYPE_1__* dev; } ;
typedef  int /*<<< orphan*/  key ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 struct net_device* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 char FUNC2 (char) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct airo_info*,char,char*,int,int,int) ; 
 int FUNC5 (struct airo_info*,char,int,int) ; 

__attribute__((used)) static void FUNC6( struct inode *inode, struct file *file ) {
	struct proc_data *data;
	struct net_device *dev = FUNC0(inode);
	struct airo_info *ai = dev->ml_priv;
	int i, rc;
	char key[16];
	u16 index = 0;
	int j = 0;

	FUNC3(key, 0, sizeof(key));

	data = file->private_data;
	if ( !data->writelen ) return;

	if (data->wbuffer[0] >= '0' && data->wbuffer[0] <= '3' &&
	    (data->wbuffer[1] == ' ' || data->wbuffer[1] == '\n')) {
		index = data->wbuffer[0] - '0';
		if (data->wbuffer[1] == '\n') {
			rc = FUNC5(ai, index, 1, 1);
			if (rc < 0) {
				FUNC1(ai->dev->name, "failed to set "
				               "WEP transmit index to %d: %d.",
				               index, rc);
			}
			return;
		}
		j = 2;
	} else {
		FUNC1(ai->dev->name, "WepKey passed invalid key index");
		return;
	}

	for( i = 0; i < 16*3 && data->wbuffer[i+j]; i++ ) {
		switch(i%3) {
		case 0:
			key[i/3] = FUNC2(data->wbuffer[i+j])<<4;
			break;
		case 1:
			key[i/3] |= FUNC2(data->wbuffer[i+j]);
			break;
		}
	}

	rc = FUNC4(ai, index, key, i/3, 1, 1);
	if (rc < 0) {
		FUNC1(ai->dev->name, "failed to set WEP key at index "
		               "%d: %d.", index, rc);
	}
}