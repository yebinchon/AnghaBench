; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_tc6393xb.c_tc6393xb_ohci_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_tc6393xb.c_tc6393xb_ohci_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.tc6393xb = type { i32, i64 }

@SCR_CCR = common dso_local global i64 0, align 8
@SCR_CCR_USBCK = common dso_local global i32 0, align 4
@SCR_FER = common dso_local global i64 0, align 8
@SCR_FER_USBEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @tc6393xb_ohci_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tc6393xb_ohci_enable(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.tc6393xb*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.tc6393xb* @dev_get_drvdata(i32 %10)
  store %struct.tc6393xb* %11, %struct.tc6393xb** %3, align 8
  %12 = load %struct.tc6393xb*, %struct.tc6393xb** %3, align 8
  %13 = getelementptr inbounds %struct.tc6393xb, %struct.tc6393xb* %12, i32 0, i32 0
  %14 = load i64, i64* %4, align 8
  %15 = call i32 @raw_spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load %struct.tc6393xb*, %struct.tc6393xb** %3, align 8
  %17 = getelementptr inbounds %struct.tc6393xb, %struct.tc6393xb* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @SCR_CCR, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @tmio_ioread16(i64 %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* @SCR_CCR_USBCK, align 4
  %23 = load i32, i32* %5, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.tc6393xb*, %struct.tc6393xb** %3, align 8
  %27 = getelementptr inbounds %struct.tc6393xb, %struct.tc6393xb* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @SCR_CCR, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @tmio_iowrite16(i32 %25, i64 %30)
  %32 = load %struct.tc6393xb*, %struct.tc6393xb** %3, align 8
  %33 = getelementptr inbounds %struct.tc6393xb, %struct.tc6393xb* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @SCR_FER, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @tmio_ioread8(i64 %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* @SCR_FER_USBEN, align 4
  %39 = load i32, i32* %6, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.tc6393xb*, %struct.tc6393xb** %3, align 8
  %43 = getelementptr inbounds %struct.tc6393xb, %struct.tc6393xb* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @SCR_FER, align 8
  %46 = add nsw i64 %44, %45
  %47 = call i32 @tmio_iowrite8(i32 %41, i64 %46)
  %48 = load %struct.tc6393xb*, %struct.tc6393xb** %3, align 8
  %49 = getelementptr inbounds %struct.tc6393xb, %struct.tc6393xb* %48, i32 0, i32 0
  %50 = load i64, i64* %4, align 8
  %51 = call i32 @raw_spin_unlock_irqrestore(i32* %49, i64 %50)
  ret i32 0
}

declare dso_local %struct.tc6393xb* @dev_get_drvdata(i32) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @tmio_ioread16(i64) #1

declare dso_local i32 @tmio_iowrite16(i32, i64) #1

declare dso_local i32 @tmio_ioread8(i64) #1

declare dso_local i32 @tmio_iowrite8(i32, i64) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
