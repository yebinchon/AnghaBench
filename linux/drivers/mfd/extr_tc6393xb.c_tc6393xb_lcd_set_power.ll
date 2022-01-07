; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_tc6393xb.c_tc6393xb_lcd_set_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_tc6393xb.c_tc6393xb_lcd_set_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.tc6393xb = type { i32, i64 }

@SCR_FER = common dso_local global i64 0, align 8
@SCR_FER_SLCDEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tc6393xb_lcd_set_power(%struct.platform_device* %0, i32 %1) #0 {
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tc6393xb*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.tc6393xb* @dev_get_drvdata(i32 %11)
  store %struct.tc6393xb* %12, %struct.tc6393xb** %5, align 8
  %13 = load %struct.tc6393xb*, %struct.tc6393xb** %5, align 8
  %14 = getelementptr inbounds %struct.tc6393xb, %struct.tc6393xb* %13, i32 0, i32 0
  %15 = load i64, i64* %7, align 8
  %16 = call i32 @raw_spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.tc6393xb*, %struct.tc6393xb** %5, align 8
  %18 = getelementptr inbounds %struct.tc6393xb, %struct.tc6393xb* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @SCR_FER, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @ioread8(i64 %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %2
  %26 = load i32, i32* @SCR_FER_SLCDEN, align 4
  %27 = load i32, i32* %6, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %6, align 4
  br label %34

29:                                               ; preds = %2
  %30 = load i32, i32* @SCR_FER_SLCDEN, align 4
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %6, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %6, align 4
  br label %34

34:                                               ; preds = %29, %25
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.tc6393xb*, %struct.tc6393xb** %5, align 8
  %37 = getelementptr inbounds %struct.tc6393xb, %struct.tc6393xb* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @SCR_FER, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @iowrite8(i32 %35, i64 %40)
  %42 = load %struct.tc6393xb*, %struct.tc6393xb** %5, align 8
  %43 = getelementptr inbounds %struct.tc6393xb, %struct.tc6393xb* %42, i32 0, i32 0
  %44 = load i64, i64* %7, align 8
  %45 = call i32 @raw_spin_unlock_irqrestore(i32* %43, i64 %44)
  ret i32 0
}

declare dso_local %struct.tc6393xb* @dev_get_drvdata(i32) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ioread8(i64) #1

declare dso_local i32 @iowrite8(i32, i64) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
