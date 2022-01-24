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
struct tty_struct {char* name; int /*<<< orphan*/  flags; struct ser_device* disc_data; int /*<<< orphan*/  receive_room; TYPE_1__* ops; } ;
struct ser_device {int /*<<< orphan*/  node; struct net_device* dev; int /*<<< orphan*/  tty; } ;
struct net_device {int dummy; } ;
typedef  int /*<<< orphan*/  name ;
struct TYPE_2__ {int /*<<< orphan*/ * write; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 int /*<<< orphan*/  CAP_SYS_TTY_CONFIG ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int EPERM ; 
 int IFNAMSIZ ; 
 int /*<<< orphan*/  NET_NAME_UNKNOWN ; 
 int /*<<< orphan*/  N_TTY_BUF_SIZE ; 
 int /*<<< orphan*/  TTY_DO_WRITE_WAKEUP ; 
 struct net_device* FUNC0 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  caifdev_setup ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ser_device*,struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct ser_device* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  ser_list ; 
 int /*<<< orphan*/  ser_lock ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC12 (char*,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC16 (struct ser_device*) ; 

__attribute__((used)) static int FUNC17(struct tty_struct *tty)
{
	struct ser_device *ser;
	struct net_device *dev;
	char name[64];
	int result;

	/* No write no play */
	if (tty->ops->write == NULL)
		return -EOPNOTSUPP;
	if (!FUNC1(CAP_SYS_ADMIN) && !FUNC1(CAP_SYS_TTY_CONFIG))
		return -EPERM;

	/* release devices to avoid name collision */
	FUNC10(NULL);

	result = FUNC12(name, sizeof(name), "cf%s", tty->name);
	if (result >= IFNAMSIZ)
		return -EINVAL;
	dev = FUNC0(sizeof(*ser), name, NET_NAME_UNKNOWN,
			   caifdev_setup);
	if (!dev)
		return -ENOMEM;

	ser = FUNC5(dev);
	ser->tty = FUNC15(tty);
	ser->dev = dev;
	FUNC2(ser, tty);
	tty->receive_room = N_TTY_BUF_SIZE;
	tty->disc_data = ser;
	FUNC11(TTY_DO_WRITE_WAKEUP, &tty->flags);
	FUNC8();
	result = FUNC7(dev);
	if (result) {
		FUNC9();
		FUNC3(dev);
		return -ENODEV;
	}

	FUNC13(&ser_lock);
	FUNC4(&ser->node, &ser_list);
	FUNC14(&ser_lock);
	FUNC9();
	FUNC6(dev);
	FUNC16(ser);
	return 0;
}