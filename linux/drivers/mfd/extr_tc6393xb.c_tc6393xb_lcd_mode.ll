; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_tc6393xb.c_tc6393xb_lcd_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_tc6393xb.c_tc6393xb_lcd_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.fb_videomode = type { i32 }
%struct.tc6393xb = type { i32, i64 }

@SCR_PLL1CR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tc6393xb_lcd_mode(%struct.platform_device* %0, %struct.fb_videomode* %1) #0 {
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.fb_videomode*, align 8
  %5 = alloca %struct.tc6393xb*, align 8
  %6 = alloca i64, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store %struct.fb_videomode* %1, %struct.fb_videomode** %4, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.tc6393xb* @dev_get_drvdata(i32 %10)
  store %struct.tc6393xb* %11, %struct.tc6393xb** %5, align 8
  %12 = load %struct.tc6393xb*, %struct.tc6393xb** %5, align 8
  %13 = getelementptr inbounds %struct.tc6393xb, %struct.tc6393xb* %12, i32 0, i32 0
  %14 = load i64, i64* %6, align 8
  %15 = call i32 @raw_spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load %struct.fb_videomode*, %struct.fb_videomode** %4, align 8
  %17 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.tc6393xb*, %struct.tc6393xb** %5, align 8
  %20 = getelementptr inbounds %struct.tc6393xb, %struct.tc6393xb* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @SCR_PLL1CR, align 8
  %23 = add nsw i64 %21, %22
  %24 = add nsw i64 %23, 0
  %25 = call i32 @iowrite16(i32 %18, i64 %24)
  %26 = load %struct.fb_videomode*, %struct.fb_videomode** %4, align 8
  %27 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = ashr i32 %28, 16
  %30 = load %struct.tc6393xb*, %struct.tc6393xb** %5, align 8
  %31 = getelementptr inbounds %struct.tc6393xb, %struct.tc6393xb* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @SCR_PLL1CR, align 8
  %34 = add nsw i64 %32, %33
  %35 = add nsw i64 %34, 2
  %36 = call i32 @iowrite16(i32 %29, i64 %35)
  %37 = load %struct.tc6393xb*, %struct.tc6393xb** %5, align 8
  %38 = getelementptr inbounds %struct.tc6393xb, %struct.tc6393xb* %37, i32 0, i32 0
  %39 = load i64, i64* %6, align 8
  %40 = call i32 @raw_spin_unlock_irqrestore(i32* %38, i64 %39)
  ret i32 0
}

declare dso_local %struct.tc6393xb* @dev_get_drvdata(i32) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @iowrite16(i32, i64) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
