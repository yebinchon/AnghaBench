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
struct pvr2_hdw {int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,unsigned int,char*) ; 
 unsigned int FUNC1 (struct pvr2_hdw*,char*,int) ; 
 unsigned int FUNC2 (struct pvr2_hdw*,unsigned int,char*,int) ; 

__attribute__((used)) static void FUNC3(struct pvr2_hdw *hdw)
{
	char buf[256];
	unsigned int idx, ccnt;
	unsigned int lcnt, ucnt;

	for (idx = 0; ; idx++) {
		ccnt = FUNC2(hdw,idx,buf,sizeof(buf));
		if (!ccnt) break;
		FUNC0("%s %.*s\n", hdw->name, ccnt, buf);
	}
	ccnt = FUNC1(hdw, buf, sizeof(buf));
	if (ccnt >= sizeof(buf))
		ccnt = sizeof(buf);

	ucnt = 0;
	while (ucnt < ccnt) {
		lcnt = 0;
		while ((lcnt + ucnt < ccnt) && (buf[lcnt + ucnt] != '\n')) {
			lcnt++;
		}
		FUNC0("%s %.*s\n", hdw->name, lcnt, buf + ucnt);
		ucnt += lcnt + 1;
	}
}