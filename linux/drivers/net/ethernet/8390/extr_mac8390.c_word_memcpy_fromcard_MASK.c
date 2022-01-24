__attribute__((used)) static void FUNC0(void *tp, unsigned long fp, int count)
{
	unsigned short *to = tp;
	const volatile unsigned short *from = (const void *)fp;

	count++;
	count /= 2;

	while (count--)
		*to++ = *from++;
}