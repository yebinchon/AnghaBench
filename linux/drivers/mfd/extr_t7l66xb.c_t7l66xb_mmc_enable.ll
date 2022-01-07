; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_t7l66xb.c_t7l66xb_mmc_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_t7l66xb.c_t7l66xb_mmc_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.platform_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.t7l66xb = type { i64, i32, i32 }

@SCR_DEV_CTL = common dso_local global i64 0, align 8
@SCR_DEV_CTL_MMC = common dso_local global i32 0, align 4
@t7l66xb_mmc_resources = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @t7l66xb_mmc_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @t7l66xb_mmc_enable(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.t7l66xb*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.t7l66xb* @dev_get_drvdata(i32 %11)
  store %struct.t7l66xb* %12, %struct.t7l66xb** %4, align 8
  %13 = load %struct.t7l66xb*, %struct.t7l66xb** %4, align 8
  %14 = getelementptr inbounds %struct.t7l66xb, %struct.t7l66xb* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @clk_prepare_enable(i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* %7, align 4
  store i32 %20, i32* %2, align 4
  br label %56

21:                                               ; preds = %1
  %22 = load %struct.t7l66xb*, %struct.t7l66xb** %4, align 8
  %23 = getelementptr inbounds %struct.t7l66xb, %struct.t7l66xb* %22, i32 0, i32 1
  %24 = load i64, i64* %5, align 8
  %25 = call i32 @raw_spin_lock_irqsave(i32* %23, i64 %24)
  %26 = load %struct.t7l66xb*, %struct.t7l66xb** %4, align 8
  %27 = getelementptr inbounds %struct.t7l66xb, %struct.t7l66xb* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @SCR_DEV_CTL, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @tmio_ioread8(i64 %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* @SCR_DEV_CTL_MMC, align 4
  %33 = load i32, i32* %6, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.t7l66xb*, %struct.t7l66xb** %4, align 8
  %37 = getelementptr inbounds %struct.t7l66xb, %struct.t7l66xb* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @SCR_DEV_CTL, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @tmio_iowrite8(i32 %35, i64 %40)
  %42 = load %struct.t7l66xb*, %struct.t7l66xb** %4, align 8
  %43 = getelementptr inbounds %struct.t7l66xb, %struct.t7l66xb* %42, i32 0, i32 1
  %44 = load i64, i64* %5, align 8
  %45 = call i32 @raw_spin_unlock_irqrestore(i32* %43, i64 %44)
  %46 = load %struct.t7l66xb*, %struct.t7l66xb** %4, align 8
  %47 = getelementptr inbounds %struct.t7l66xb, %struct.t7l66xb* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %48, 512
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** @t7l66xb_mmc_resources, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i64 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %53, 65534
  %55 = call i32 @tmio_core_mmc_enable(i64 %49, i32 0, i32 %54)
  store i32 0, i32* %2, align 4
  br label %56

56:                                               ; preds = %21, %19
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local %struct.t7l66xb* @dev_get_drvdata(i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @tmio_ioread8(i64) #1

declare dso_local i32 @tmio_iowrite8(i32, i64) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @tmio_core_mmc_enable(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
