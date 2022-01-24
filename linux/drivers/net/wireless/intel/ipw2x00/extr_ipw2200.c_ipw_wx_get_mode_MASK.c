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
union iwreq_data {int /*<<< orphan*/  mode; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct ipw_priv {int /*<<< orphan*/  mutex; TYPE_1__* ieee; } ;
struct TYPE_2__ {int /*<<< orphan*/  iw_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 struct ipw_priv* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev,
			   struct iw_request_info *info,
			   union iwreq_data *wrqu, char *extra)
{
	struct ipw_priv *priv = FUNC1(dev);
	FUNC2(&priv->mutex);
	wrqu->mode = priv->ieee->iw_mode;
	FUNC0("Get MODE -> %d\n", wrqu->mode);
	FUNC3(&priv->mutex);
	return 0;
}