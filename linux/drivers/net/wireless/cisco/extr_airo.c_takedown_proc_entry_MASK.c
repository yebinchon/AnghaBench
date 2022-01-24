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
struct net_device {int dummy; } ;
struct airo_info {int /*<<< orphan*/  proc_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  airo_entry ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1( struct net_device *dev,
				struct airo_info *apriv )
{
	FUNC0(apriv->proc_name, airo_entry);
	return 0;
}