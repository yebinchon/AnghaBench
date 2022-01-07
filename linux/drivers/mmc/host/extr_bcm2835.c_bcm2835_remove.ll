; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_bcm2835.c_bcm2835_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_bcm2835.c_bcm2835_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.bcm2835_host = type { i64, i32, i32, i32, i64 }
%struct.mmc_host = type { i32 }

@SDVDD_POWER_OFF = common dso_local global i32 0, align 4
@SDVDD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @bcm2835_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm2835_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.bcm2835_host*, align 8
  %4 = alloca %struct.mmc_host*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.bcm2835_host* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.bcm2835_host* %6, %struct.bcm2835_host** %3, align 8
  %7 = load %struct.bcm2835_host*, %struct.bcm2835_host** %3, align 8
  %8 = call %struct.mmc_host* @mmc_from_priv(%struct.bcm2835_host* %7)
  store %struct.mmc_host* %8, %struct.mmc_host** %4, align 8
  %9 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %10 = call i32 @mmc_remove_host(%struct.mmc_host* %9)
  %11 = load i32, i32* @SDVDD_POWER_OFF, align 4
  %12 = load %struct.bcm2835_host*, %struct.bcm2835_host** %3, align 8
  %13 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %12, i32 0, i32 4
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @SDVDD, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @writel(i32 %11, i64 %16)
  %18 = load %struct.bcm2835_host*, %struct.bcm2835_host** %3, align 8
  %19 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.bcm2835_host*, %struct.bcm2835_host** %3, align 8
  %22 = call i32 @free_irq(i32 %20, %struct.bcm2835_host* %21)
  %23 = load %struct.bcm2835_host*, %struct.bcm2835_host** %3, align 8
  %24 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %23, i32 0, i32 2
  %25 = call i32 @cancel_work_sync(i32* %24)
  %26 = load %struct.bcm2835_host*, %struct.bcm2835_host** %3, align 8
  %27 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %26, i32 0, i32 1
  %28 = call i32 @cancel_delayed_work_sync(i32* %27)
  %29 = load %struct.bcm2835_host*, %struct.bcm2835_host** %3, align 8
  %30 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %1
  %34 = load %struct.bcm2835_host*, %struct.bcm2835_host** %3, align 8
  %35 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @dma_release_channel(i64 %36)
  br label %38

38:                                               ; preds = %33, %1
  %39 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %40 = call i32 @mmc_free_host(%struct.mmc_host* %39)
  ret i32 0
}

declare dso_local %struct.bcm2835_host* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.mmc_host* @mmc_from_priv(%struct.bcm2835_host*) #1

declare dso_local i32 @mmc_remove_host(%struct.mmc_host*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @free_irq(i32, %struct.bcm2835_host*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @dma_release_channel(i64) #1

declare dso_local i32 @mmc_free_host(%struct.mmc_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
