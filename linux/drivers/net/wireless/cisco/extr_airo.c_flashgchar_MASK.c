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
struct airo_info {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int FUNC0 (struct airo_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct airo_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SWS1 ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(struct airo_info *ai,int matchbyte,int dwelltime){
	int           rchar;
	unsigned char rbyte=0;

	do {
		rchar = FUNC0(ai,SWS1);

		if(dwelltime && !(0x8000 & rchar)){
			dwelltime -= 10;
			FUNC2(10);
			continue;
		}
		rbyte = 0xff & rchar;

		if( (rbyte == matchbyte) && (0x8000 & rchar) ){
			FUNC1(ai,SWS1,0);
			return 0;
		}
		if( rbyte == 0x81 || rbyte == 0x82 || rbyte == 0x83 || rbyte == 0x1a || 0xffff == rchar)
			break;
		FUNC1(ai,SWS1,0);

	}while(dwelltime > 0);
	return -EIO;
}