; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_dw_mmc-rockchip.c_dw_mci_rockchip_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_dw_mmc-rockchip.c_dw_mci_rockchip_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.dw_mci_drv_data = type { i32 }
%struct.of_device_id = type { %struct.dw_mci_drv_data* }

@ENODEV = common dso_local global i32 0, align 4
@dw_mci_rockchip_match = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @dw_mci_rockchip_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dw_mci_rockchip_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.dw_mci_drv_data*, align 8
  %5 = alloca %struct.of_device_id*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENODEV, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %60

15:                                               ; preds = %1
  %16 = load i32, i32* @dw_mci_rockchip_match, align 4
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.of_device_id* @of_match_node(i32 %16, i32 %20)
  store %struct.of_device_id* %21, %struct.of_device_id** %5, align 8
  %22 = load %struct.of_device_id*, %struct.of_device_id** %5, align 8
  %23 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %22, i32 0, i32 0
  %24 = load %struct.dw_mci_drv_data*, %struct.dw_mci_drv_data** %23, align 8
  store %struct.dw_mci_drv_data* %24, %struct.dw_mci_drv_data** %4, align 8
  %25 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %26 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %25, i32 0, i32 0
  %27 = call i32 @pm_runtime_get_noresume(%struct.TYPE_10__* %26)
  %28 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %29 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %28, i32 0, i32 0
  %30 = call i32 @pm_runtime_set_active(%struct.TYPE_10__* %29)
  %31 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %32 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %31, i32 0, i32 0
  %33 = call i32 @pm_runtime_enable(%struct.TYPE_10__* %32)
  %34 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %35 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %34, i32 0, i32 0
  %36 = call i32 @pm_runtime_set_autosuspend_delay(%struct.TYPE_10__* %35, i32 50)
  %37 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %38 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %37, i32 0, i32 0
  %39 = call i32 @pm_runtime_use_autosuspend(%struct.TYPE_10__* %38)
  %40 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %41 = load %struct.dw_mci_drv_data*, %struct.dw_mci_drv_data** %4, align 8
  %42 = call i32 @dw_mci_pltfm_register(%struct.platform_device* %40, %struct.dw_mci_drv_data* %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %56

45:                                               ; preds = %15
  %46 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %47 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %46, i32 0, i32 0
  %48 = call i32 @pm_runtime_disable(%struct.TYPE_10__* %47)
  %49 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %50 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %49, i32 0, i32 0
  %51 = call i32 @pm_runtime_set_suspended(%struct.TYPE_10__* %50)
  %52 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %53 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %52, i32 0, i32 0
  %54 = call i32 @pm_runtime_put_noidle(%struct.TYPE_10__* %53)
  %55 = load i32, i32* %6, align 4
  store i32 %55, i32* %2, align 4
  br label %60

56:                                               ; preds = %15
  %57 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %58 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %57, i32 0, i32 0
  %59 = call i32 @pm_runtime_put_autosuspend(%struct.TYPE_10__* %58)
  store i32 0, i32* %2, align 4
  br label %60

60:                                               ; preds = %56, %45, %12
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local %struct.of_device_id* @of_match_node(i32, i32) #1

declare dso_local i32 @pm_runtime_get_noresume(%struct.TYPE_10__*) #1

declare dso_local i32 @pm_runtime_set_active(%struct.TYPE_10__*) #1

declare dso_local i32 @pm_runtime_enable(%struct.TYPE_10__*) #1

declare dso_local i32 @pm_runtime_set_autosuspend_delay(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @pm_runtime_use_autosuspend(%struct.TYPE_10__*) #1

declare dso_local i32 @dw_mci_pltfm_register(%struct.platform_device*, %struct.dw_mci_drv_data*) #1

declare dso_local i32 @pm_runtime_disable(%struct.TYPE_10__*) #1

declare dso_local i32 @pm_runtime_set_suspended(%struct.TYPE_10__*) #1

declare dso_local i32 @pm_runtime_put_noidle(%struct.TYPE_10__*) #1

declare dso_local i32 @pm_runtime_put_autosuspend(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
