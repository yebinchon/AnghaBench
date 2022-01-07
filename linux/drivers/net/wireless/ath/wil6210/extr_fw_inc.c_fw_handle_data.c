
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wil_fw_record_data {int addr; } ;
struct wil6210_priv {int dummy; } ;


 int __fw_handle_data (struct wil6210_priv*,void const*,size_t,int ) ;

__attribute__((used)) static int fw_handle_data(struct wil6210_priv *wil, const void *data,
     size_t size)
{
 const struct wil_fw_record_data *d = data;

 return __fw_handle_data(wil, data, size, d->addr);
}
