
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct media_pad {int dummy; } ;


 int kfree (struct media_pad*) ;

__attribute__((used)) static inline void vimc_pads_cleanup(struct media_pad *pads)
{
 kfree(pads);
}
