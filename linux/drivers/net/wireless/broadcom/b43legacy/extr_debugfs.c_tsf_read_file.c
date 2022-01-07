
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct b43legacy_wldev {int dummy; } ;
typedef int ssize_t ;


 int b43legacy_tsf_read (struct b43legacy_wldev*,int*) ;
 int fappend (char*,unsigned int,unsigned int) ;

__attribute__((used)) static ssize_t tsf_read_file(struct b43legacy_wldev *dev, char *buf, size_t bufsize)
{
 ssize_t count = 0;
 u64 tsf;

 b43legacy_tsf_read(dev, &tsf);
 fappend("0x%08x%08x\n",
  (unsigned int)((tsf & 0xFFFFFFFF00000000ULL) >> 32),
  (unsigned int)(tsf & 0xFFFFFFFFULL));

 return count;
}
