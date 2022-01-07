; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_t7l66xb.c_t7l66xb_mmc_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_t7l66xb.c_t7l66xb_mmc_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.t7l66xb = type { i32, i32, i64 }

@SCR_DEV_CTL = common dso_local global i64 0, align 8
@SCR_DEV_CTL_MMC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @t7l66xb_mmc_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @t7l66xb_mmc_disable(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.t7l66xb*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.t7l66xb* @dev_get_drvdata(i32 %9)
  store %struct.t7l66xb* %10, %struct.t7l66xb** %3, align 8
  %11 = load %struct.t7l66xb*, %struct.t7l66xb** %3, align 8
  %12 = getelementptr inbounds %struct.t7l66xb, %struct.t7l66xb* %11, i32 0, i32 1
  %13 = load i64, i64* %4, align 8
  %14 = call i32 @raw_spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.t7l66xb*, %struct.t7l66xb** %3, align 8
  %16 = getelementptr inbounds %struct.t7l66xb, %struct.t7l66xb* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @SCR_DEV_CTL, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @tmio_ioread8(i64 %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* @SCR_DEV_CTL_MMC, align 4
  %22 = xor i32 %21, -1
  %23 = load i32, i32* %5, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.t7l66xb*, %struct.t7l66xb** %3, align 8
  %27 = getelementptr inbounds %struct.t7l66xb, %struct.t7l66xb* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @SCR_DEV_CTL, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @tmio_iowrite8(i32 %25, i64 %30)
  %32 = load %struct.t7l66xb*, %struct.t7l66xb** %3, align 8
  %33 = getelementptr inbounds %struct.t7l66xb, %struct.t7l66xb* %32, i32 0, i32 1
  %34 = load i64, i64* %4, align 8
  %35 = call i32 @raw_spin_unlock_irqrestore(i32* %33, i64 %34)
  %36 = load %struct.t7l66xb*, %struct.t7l66xb** %3, align 8
  %37 = getelementptr inbounds %struct.t7l66xb, %struct.t7l66xb* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @clk_disable_unprepare(i32 %38)
  ret i32 0
}

declare dso_local %struct.t7l66xb* @dev_get_drvdata(i32) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @tmio_ioread8(i64) #1

declare dso_local i32 @tmio_iowrite8(i32, i64) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
