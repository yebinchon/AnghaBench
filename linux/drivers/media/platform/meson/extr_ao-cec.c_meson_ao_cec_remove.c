
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct meson_ao_cec_device {int adap; int notify; int core; } ;


 int cec_notifier_cec_adap_unregister (int ) ;
 int cec_unregister_adapter (int ) ;
 int clk_disable_unprepare (int ) ;
 struct meson_ao_cec_device* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int meson_ao_cec_remove(struct platform_device *pdev)
{
 struct meson_ao_cec_device *ao_cec = platform_get_drvdata(pdev);

 clk_disable_unprepare(ao_cec->core);

 cec_notifier_cec_adap_unregister(ao_cec->notify);
 cec_unregister_adapter(ao_cec->adap);

 return 0;
}
