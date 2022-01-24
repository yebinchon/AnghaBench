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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (char**,char*) ; 
 int FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*) ; 
 int FUNC8 (char const*,int) ; 
 char* FUNC9 (char**,char*) ; 

__attribute__((used)) static int FUNC10(const char *val)
{
	char buf[64 + 20 + 20], *str = buf;
	char *token[3];
	char *name;
	uint64_t start;
	uint64_t len;
	int i, ret;

	if (FUNC8(val, sizeof(buf)) >= sizeof(buf))
		FUNC2("parameter too long\n");

	FUNC7(str, val);
	FUNC1(str);

	for (i = 0; i < 3; i++)
		token[i] = FUNC9(&str, ",");

	if (str)
		FUNC2("too many arguments\n");

	if (!token[2])
		FUNC2("not enough arguments\n");

	ret = FUNC3(&name, token[0]);
	if (ret)
		return ret;

	ret = FUNC4(&start, token[1]);
	if (ret) {
		FUNC0(name);
		FUNC2("illegal start address\n");
	}

	ret = FUNC4(&len, token[2]);
	if (ret) {
		FUNC0(name);
		FUNC2("illegal device length\n");
	}

	ret = FUNC6(name, start, len);
	if (!ret)
		FUNC5("%s device: %#llx at %#llx\n", name, len, start);
	else
		FUNC0(name);

	return ret;
}