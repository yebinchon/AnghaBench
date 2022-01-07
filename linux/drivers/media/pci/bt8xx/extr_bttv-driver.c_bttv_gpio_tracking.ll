; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-driver.c_bttv_gpio_tracking.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-driver.c_bttv_gpio_tracking.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bttv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@BT848_GPIO_OUT_EN = common dso_local global i32 0, align 4
@BT848_GPIO_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"%d: gpio: en=%08x, out=%08x in=%08x [%s]\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bttv_gpio_tracking(%struct.bttv* %0, i8* %1) #0 {
  %3 = alloca %struct.bttv*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bttv* %0, %struct.bttv** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i32, i32* @BT848_GPIO_OUT_EN, align 4
  %8 = call i32 @btread(i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* @BT848_GPIO_DATA, align 4
  %10 = call i32 @btread(i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = load %struct.bttv*, %struct.bttv** %3, align 8
  %12 = getelementptr inbounds %struct.bttv, %struct.bttv* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %5, align 4
  %18 = and i32 %16, %17
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %5, align 4
  %21 = xor i32 %20, -1
  %22 = and i32 %19, %21
  %23 = load i8*, i8** %4, align 8
  %24 = call i32 @pr_debug(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %15, i32 %18, i32 %22, i8* %23)
  ret void
}

declare dso_local i32 @btread(i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
