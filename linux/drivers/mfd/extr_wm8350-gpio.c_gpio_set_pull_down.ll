; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_wm8350-gpio.c_gpio_set_pull_down.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_wm8350-gpio.c_gpio_set_pull_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wm8350 = type { i32 }

@WM8350_GPIO_PULL_DOWN_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wm8350*, i32, i32)* @gpio_set_pull_down to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpio_set_pull_down(%struct.wm8350* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wm8350*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.wm8350* %0, %struct.wm8350** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %3
  %11 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %12 = load i32, i32* @WM8350_GPIO_PULL_DOWN_CONTROL, align 4
  %13 = load i32, i32* %6, align 4
  %14 = shl i32 1, %13
  %15 = call i32 @wm8350_set_bits(%struct.wm8350* %11, i32 %12, i32 %14)
  store i32 %15, i32* %4, align 4
  br label %22

16:                                               ; preds = %3
  %17 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %18 = load i32, i32* @WM8350_GPIO_PULL_DOWN_CONTROL, align 4
  %19 = load i32, i32* %6, align 4
  %20 = shl i32 1, %19
  %21 = call i32 @wm8350_clear_bits(%struct.wm8350* %17, i32 %18, i32 %20)
  store i32 %21, i32* %4, align 4
  br label %22

22:                                               ; preds = %16, %10
  %23 = load i32, i32* %4, align 4
  ret i32 %23
}

declare dso_local i32 @wm8350_set_bits(%struct.wm8350*, i32, i32) #1

declare dso_local i32 @wm8350_clear_bits(%struct.wm8350*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
