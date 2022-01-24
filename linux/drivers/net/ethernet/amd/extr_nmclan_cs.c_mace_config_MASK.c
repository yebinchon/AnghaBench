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
typedef  int u_char ;
struct net_device {int if_port; } ;
struct ifmap {int port; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/ * if_names ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct net_device *dev, struct ifmap *map)
{
  if ((map->port != (u_char)(-1)) && (map->port != dev->if_port)) {
    if (map->port <= 2) {
      dev->if_port = map->port;
      FUNC0(dev, "switched to %s port\n", if_names[dev->if_port]);
    } else
      return -EINVAL;
  }
  return 0;
}