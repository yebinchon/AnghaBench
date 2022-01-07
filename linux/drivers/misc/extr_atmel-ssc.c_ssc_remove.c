
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssc_device {int list; } ;
struct platform_device {int dummy; } ;


 int list_del (int *) ;
 struct ssc_device* platform_get_drvdata (struct platform_device*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int ssc_sound_dai_remove (struct ssc_device*) ;
 int user_lock ;

__attribute__((used)) static int ssc_remove(struct platform_device *pdev)
{
 struct ssc_device *ssc = platform_get_drvdata(pdev);

 ssc_sound_dai_remove(ssc);

 spin_lock(&user_lock);
 list_del(&ssc->list);
 spin_unlock(&user_lock);

 return 0;
}
