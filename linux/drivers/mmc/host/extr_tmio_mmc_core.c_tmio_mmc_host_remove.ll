; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_tmio_mmc_core.c_tmio_mmc_host_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_tmio_mmc_core.c_tmio_mmc_host_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tmio_mmc_host = type { i64, i32, i32, %struct.TYPE_2__*, %struct.mmc_host*, %struct.platform_device* }
%struct.TYPE_2__ = type { i32 }
%struct.mmc_host = type { i32 }
%struct.platform_device = type { i32 }

@TMIO_MMC_SDIO_IRQ = common dso_local global i32 0, align 4
@CTL_TRANSACTION_CTL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tmio_mmc_host_remove(%struct.tmio_mmc_host* %0) #0 {
  %2 = alloca %struct.tmio_mmc_host*, align 8
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.mmc_host*, align 8
  store %struct.tmio_mmc_host* %0, %struct.tmio_mmc_host** %2, align 8
  %5 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %2, align 8
  %6 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %5, i32 0, i32 5
  %7 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  store %struct.platform_device* %7, %struct.platform_device** %3, align 8
  %8 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %2, align 8
  %9 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %8, i32 0, i32 4
  %10 = load %struct.mmc_host*, %struct.mmc_host** %9, align 8
  store %struct.mmc_host* %10, %struct.mmc_host** %4, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = call i32 @pm_runtime_get_sync(i32* %12)
  %14 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %2, align 8
  %15 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %14, i32 0, i32 3
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @TMIO_MMC_SDIO_IRQ, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %1
  %23 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %2, align 8
  %24 = load i32, i32* @CTL_TRANSACTION_CTL, align 4
  %25 = call i32 @sd_ctrl_write16(%struct.tmio_mmc_host* %23, i32 %24, i32 0)
  br label %26

26:                                               ; preds = %22, %1
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %27, i32 0, i32 0
  %29 = call i32 @dev_pm_qos_hide_latency_limit(i32* %28)
  %30 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %31 = call i32 @mmc_remove_host(%struct.mmc_host* %30)
  %32 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %2, align 8
  %33 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %32, i32 0, i32 2
  %34 = call i32 @cancel_work_sync(i32* %33)
  %35 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %2, align 8
  %36 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %35, i32 0, i32 1
  %37 = call i32 @cancel_delayed_work_sync(i32* %36)
  %38 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %2, align 8
  %39 = call i32 @tmio_mmc_release_dma(%struct.tmio_mmc_host* %38)
  %40 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %41 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %40, i32 0, i32 0
  %42 = call i32 @pm_runtime_dont_use_autosuspend(i32* %41)
  %43 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %2, align 8
  %44 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %26
  %48 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %49 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %48, i32 0, i32 0
  %50 = call i32 @pm_runtime_put_noidle(i32* %49)
  br label %51

51:                                               ; preds = %47, %26
  %52 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %53 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %52, i32 0, i32 0
  %54 = call i32 @pm_runtime_put_sync(i32* %53)
  %55 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %56 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %55, i32 0, i32 0
  %57 = call i32 @pm_runtime_disable(i32* %56)
  ret void
}

declare dso_local i32 @pm_runtime_get_sync(i32*) #1

declare dso_local i32 @sd_ctrl_write16(%struct.tmio_mmc_host*, i32, i32) #1

declare dso_local i32 @dev_pm_qos_hide_latency_limit(i32*) #1

declare dso_local i32 @mmc_remove_host(%struct.mmc_host*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @tmio_mmc_release_dma(%struct.tmio_mmc_host*) #1

declare dso_local i32 @pm_runtime_dont_use_autosuspend(i32*) #1

declare dso_local i32 @pm_runtime_put_noidle(i32*) #1

declare dso_local i32 @pm_runtime_put_sync(i32*) #1

declare dso_local i32 @pm_runtime_disable(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
