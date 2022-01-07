
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8350 {int dummy; } ;


 int EIO ;
 int WM8350_GPIO_PULL_DOWN ;
 int WM8350_GPIO_PULL_NONE ;
 int WM8350_GPIO_PULL_UP ;
 scalar_t__ gpio_set_dir (struct wm8350*,int,int) ;
 int gpio_set_func (struct wm8350*,int,int) ;
 scalar_t__ gpio_set_invert (struct wm8350*,int,int) ;
 scalar_t__ gpio_set_polarity (struct wm8350*,int,int) ;
 scalar_t__ gpio_set_pull_down (struct wm8350*,int,int) ;
 scalar_t__ gpio_set_pull_up (struct wm8350*,int,int) ;
 scalar_t__ wm8350_gpio_set_debounce (struct wm8350*,int,int) ;

int wm8350_gpio_config(struct wm8350 *wm8350, int gpio, int dir, int func,
         int pol, int pull, int invert, int debounce)
{

 if (pull == WM8350_GPIO_PULL_NONE) {
  if (gpio_set_pull_up(wm8350, gpio, 0))
   goto err;
  if (gpio_set_pull_down(wm8350, gpio, 0))
   goto err;
 } else if (pull == WM8350_GPIO_PULL_UP) {
  if (gpio_set_pull_down(wm8350, gpio, 0))
   goto err;
  if (gpio_set_pull_up(wm8350, gpio, 1))
   goto err;
 } else if (pull == WM8350_GPIO_PULL_DOWN) {
  if (gpio_set_pull_up(wm8350, gpio, 0))
   goto err;
  if (gpio_set_pull_down(wm8350, gpio, 1))
   goto err;
 }

 if (gpio_set_invert(wm8350, gpio, invert))
  goto err;
 if (gpio_set_polarity(wm8350, gpio, pol))
  goto err;
 if (wm8350_gpio_set_debounce(wm8350, gpio, debounce))
  goto err;
 if (gpio_set_dir(wm8350, gpio, dir))
  goto err;
 return gpio_set_func(wm8350, gpio, func);

err:
 return -EIO;
}
