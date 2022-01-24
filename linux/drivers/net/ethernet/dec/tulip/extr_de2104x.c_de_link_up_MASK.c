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
struct de_private {size_t media_type; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  link ; 
 int /*<<< orphan*/ * media_name ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct de_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct de_private *de)
{
	if (!FUNC0(de->dev)) {
		FUNC1(de->dev);
		FUNC2(de, link, de->dev, "link up, media %s\n",
			   media_name[de->media_type]);
	}
}