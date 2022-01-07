; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sh_mmcif.c_sh_mmcif_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sh_mmcif.c_sh_mmcif_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.sh_mmcif_host = type { i32, i32, i32, i32, i32 }

@MMCIF_CE_INT_MASK = common dso_local global i32 0, align 4
@MASK_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sh_mmcif_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_mmcif_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.sh_mmcif_host*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = call %struct.sh_mmcif_host* @platform_get_drvdata(%struct.platform_device* %4)
  store %struct.sh_mmcif_host* %5, %struct.sh_mmcif_host** %3, align 8
  %6 = load %struct.sh_mmcif_host*, %struct.sh_mmcif_host** %3, align 8
  %7 = getelementptr inbounds %struct.sh_mmcif_host, %struct.sh_mmcif_host* %6, i32 0, i32 0
  store i32 1, i32* %7, align 4
  %8 = load %struct.sh_mmcif_host*, %struct.sh_mmcif_host** %3, align 8
  %9 = getelementptr inbounds %struct.sh_mmcif_host, %struct.sh_mmcif_host* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @clk_prepare_enable(i32 %10)
  %12 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = call i32 @pm_runtime_get_sync(i32* %13)
  %15 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = call i32 @dev_pm_qos_hide_latency_limit(i32* %16)
  %18 = load %struct.sh_mmcif_host*, %struct.sh_mmcif_host** %3, align 8
  %19 = getelementptr inbounds %struct.sh_mmcif_host, %struct.sh_mmcif_host* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @mmc_remove_host(i32 %20)
  %22 = load %struct.sh_mmcif_host*, %struct.sh_mmcif_host** %3, align 8
  %23 = getelementptr inbounds %struct.sh_mmcif_host, %struct.sh_mmcif_host* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @MMCIF_CE_INT_MASK, align 4
  %26 = load i32, i32* @MASK_ALL, align 4
  %27 = call i32 @sh_mmcif_writel(i32 %24, i32 %25, i32 %26)
  %28 = load %struct.sh_mmcif_host*, %struct.sh_mmcif_host** %3, align 8
  %29 = getelementptr inbounds %struct.sh_mmcif_host, %struct.sh_mmcif_host* %28, i32 0, i32 3
  %30 = call i32 @cancel_delayed_work_sync(i32* %29)
  %31 = load %struct.sh_mmcif_host*, %struct.sh_mmcif_host** %3, align 8
  %32 = getelementptr inbounds %struct.sh_mmcif_host, %struct.sh_mmcif_host* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @clk_disable_unprepare(i32 %33)
  %35 = load %struct.sh_mmcif_host*, %struct.sh_mmcif_host** %3, align 8
  %36 = getelementptr inbounds %struct.sh_mmcif_host, %struct.sh_mmcif_host* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @mmc_free_host(i32 %37)
  %39 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %40 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %39, i32 0, i32 0
  %41 = call i32 @pm_runtime_put_sync(i32* %40)
  %42 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %43 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %42, i32 0, i32 0
  %44 = call i32 @pm_runtime_disable(i32* %43)
  ret i32 0
}

declare dso_local %struct.sh_mmcif_host* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @pm_runtime_get_sync(i32*) #1

declare dso_local i32 @dev_pm_qos_hide_latency_limit(i32*) #1

declare dso_local i32 @mmc_remove_host(i32) #1

declare dso_local i32 @sh_mmcif_writel(i32, i32, i32) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @mmc_free_host(i32) #1

declare dso_local i32 @pm_runtime_put_sync(i32*) #1

declare dso_local i32 @pm_runtime_disable(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
