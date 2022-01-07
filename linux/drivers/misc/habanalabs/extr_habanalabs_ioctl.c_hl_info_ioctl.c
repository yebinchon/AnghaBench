
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hl_fpriv {TYPE_1__* hdev; } ;
struct TYPE_2__ {int dev; } ;


 int _hl_info_ioctl (struct hl_fpriv*,void*,int ) ;

__attribute__((used)) static int hl_info_ioctl(struct hl_fpriv *hpriv, void *data)
{
 return _hl_info_ioctl(hpriv, data, hpriv->hdev->dev);
}
