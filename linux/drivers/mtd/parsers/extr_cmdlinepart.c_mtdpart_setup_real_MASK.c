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
struct mtd_partition {int dummy; } ;
struct cmdline_mtd_partition {int num_parts; char* mtd_id; struct cmdline_mtd_partition* next; struct mtd_partition* parts; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned long,int) ; 
 int EINVAL ; 
 scalar_t__ FUNC1 (struct mtd_partition*) ; 
 int FUNC2 (struct mtd_partition*) ; 
 int cmdline_parsed ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 struct mtd_partition* FUNC4 (char*,char**,int*,int /*<<< orphan*/ ,unsigned char**,int) ; 
 struct cmdline_mtd_partition* partitions ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 char* FUNC6 (char*,char) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int) ; 

__attribute__((used)) static int FUNC8(char *s)
{
	cmdline_parsed = 1;

	for( ; s != NULL; )
	{
		struct cmdline_mtd_partition *this_mtd;
		struct mtd_partition *parts;
		int mtd_id_len, num_parts;
		char *p, *mtd_id;

		mtd_id = s;

		/* fetch <mtd-id> */
		p = FUNC6(s, ':');
		if (!p) {
			FUNC5("no mtd-id\n");
			return -EINVAL;
		}
		mtd_id_len = p - mtd_id;

		FUNC3(("parsing <%s>\n", p+1));

		/*
		 * parse one mtd. have it reserve memory for the
		 * struct cmdline_mtd_partition and the mtd-id string.
		 */
		parts = FUNC4(p + 1,		/* cmdline */
				&s,		/* out: updated cmdline ptr */
				&num_parts,	/* out: number of parts */
				0,		/* first partition */
				(unsigned char**)&this_mtd, /* out: extra mem */
				mtd_id_len + 1 + sizeof(*this_mtd) +
				sizeof(void*)-1 /*alignment*/);
		if (FUNC1(parts)) {
			/*
			 * An error occurred. We're either:
			 * a) out of memory, or
			 * b) in the middle of the partition spec
			 * Either way, this mtd is hosed and we're
			 * unlikely to succeed in parsing any more
			 */
			 return FUNC2(parts);
		 }

		/* align this_mtd */
		this_mtd = (struct cmdline_mtd_partition *)
				FUNC0((unsigned long)this_mtd, sizeof(void *));
		/* enter results */
		this_mtd->parts = parts;
		this_mtd->num_parts = num_parts;
		this_mtd->mtd_id = (char*)(this_mtd + 1);
		FUNC7(this_mtd->mtd_id, mtd_id, mtd_id_len + 1);

		/* link into chain */
		this_mtd->next = partitions;
		partitions = this_mtd;

		FUNC3(("mtdid=<%s> num_parts=<%d>\n",
		     this_mtd->mtd_id, this_mtd->num_parts));


		/* EOS - we're done */
		if (*s == 0)
			break;

		/* does another spec follow? */
		if (*s != ';') {
			FUNC5("bad character after partition (%c)\n", *s);
			return -EINVAL;
		}
		s++;
	}

	return 0;
}