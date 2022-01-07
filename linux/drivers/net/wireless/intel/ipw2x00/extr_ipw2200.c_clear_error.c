
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipw_priv {int * error; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 struct ipw_priv* dev_get_drvdata (struct device*) ;
 int kfree (int *) ;

__attribute__((used)) static ssize_t clear_error(struct device *d,
      struct device_attribute *attr,
      const char *buf, size_t count)
{
 struct ipw_priv *priv = dev_get_drvdata(d);

 kfree(priv->error);
 priv->error = ((void*)0);
 return count;
}
