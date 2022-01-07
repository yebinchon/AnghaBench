; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_alcor.c_alcor_pci_sdmmc_drv_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_alcor.c_alcor_pci_sdmmc_drv_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.alcor_sdmmc_host = type { i32 }
%struct.mmc_host = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @alcor_pci_sdmmc_drv_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alcor_pci_sdmmc_drv_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.alcor_sdmmc_host*, align 8
  %4 = alloca %struct.mmc_host*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %5, i32 0, i32 0
  %7 = call %struct.alcor_sdmmc_host* @dev_get_drvdata(i32* %6)
  store %struct.alcor_sdmmc_host* %7, %struct.alcor_sdmmc_host** %3, align 8
  %8 = load %struct.alcor_sdmmc_host*, %struct.alcor_sdmmc_host** %3, align 8
  %9 = call %struct.mmc_host* @mmc_from_priv(%struct.alcor_sdmmc_host* %8)
  store %struct.mmc_host* %9, %struct.mmc_host** %4, align 8
  %10 = load %struct.alcor_sdmmc_host*, %struct.alcor_sdmmc_host** %3, align 8
  %11 = getelementptr inbounds %struct.alcor_sdmmc_host, %struct.alcor_sdmmc_host* %10, i32 0, i32 0
  %12 = call i64 @cancel_delayed_work_sync(i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load %struct.alcor_sdmmc_host*, %struct.alcor_sdmmc_host** %3, align 8
  %16 = call i32 @alcor_request_complete(%struct.alcor_sdmmc_host* %15, i32 0)
  br label %17

17:                                               ; preds = %14, %1
  %18 = load %struct.alcor_sdmmc_host*, %struct.alcor_sdmmc_host** %3, align 8
  %19 = call i32 @alcor_hw_uninit(%struct.alcor_sdmmc_host* %18)
  %20 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %21 = call i32 @mmc_remove_host(%struct.mmc_host* %20)
  %22 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %23 = call i32 @mmc_free_host(%struct.mmc_host* %22)
  ret i32 0
}

declare dso_local %struct.alcor_sdmmc_host* @dev_get_drvdata(i32*) #1

declare dso_local %struct.mmc_host* @mmc_from_priv(%struct.alcor_sdmmc_host*) #1

declare dso_local i64 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @alcor_request_complete(%struct.alcor_sdmmc_host*, i32) #1

declare dso_local i32 @alcor_hw_uninit(%struct.alcor_sdmmc_host*) #1

declare dso_local i32 @mmc_remove_host(%struct.mmc_host*) #1

declare dso_local i32 @mmc_free_host(%struct.mmc_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
