; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_omap_hsmmc.c_omap_hsmmc_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_omap_hsmmc.c_omap_hsmmc_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.omap_hsmmc_host = type { i32, i64, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @omap_hsmmc_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_hsmmc_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.omap_hsmmc_host*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = call %struct.omap_hsmmc_host* @platform_get_drvdata(%struct.platform_device* %4)
  store %struct.omap_hsmmc_host* %5, %struct.omap_hsmmc_host** %3, align 8
  %6 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %7 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @pm_runtime_get_sync(i32 %8)
  %10 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %11 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @mmc_remove_host(i32 %12)
  %14 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %15 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @dma_release_channel(i32 %16)
  %18 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %19 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @dma_release_channel(i32 %20)
  %22 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %23 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @dev_pm_clear_wake_irq(i32 %24)
  %26 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %27 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @pm_runtime_dont_use_autosuspend(i32 %28)
  %30 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %31 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @pm_runtime_put_sync(i32 %32)
  %34 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %35 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @pm_runtime_disable(i32 %36)
  %38 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %39 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %38, i32 0, i32 0
  %40 = call i32 @device_init_wakeup(i32* %39, i32 0)
  %41 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %42 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %1
  %46 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %47 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @clk_disable_unprepare(i64 %48)
  br label %50

50:                                               ; preds = %45, %1
  %51 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %52 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @mmc_free_host(i32 %53)
  ret i32 0
}

declare dso_local %struct.omap_hsmmc_host* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @mmc_remove_host(i32) #1

declare dso_local i32 @dma_release_channel(i32) #1

declare dso_local i32 @dev_pm_clear_wake_irq(i32) #1

declare dso_local i32 @pm_runtime_dont_use_autosuspend(i32) #1

declare dso_local i32 @pm_runtime_put_sync(i32) #1

declare dso_local i32 @pm_runtime_disable(i32) #1

declare dso_local i32 @device_init_wakeup(i32*, i32) #1

declare dso_local i32 @clk_disable_unprepare(i64) #1

declare dso_local i32 @mmc_free_host(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
