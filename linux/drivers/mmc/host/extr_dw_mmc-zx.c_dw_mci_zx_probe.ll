; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_dw_mmc-zx.c_dw_mci_zx_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_dw_mmc-zx.c_dw_mci_zx_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.dw_mci_drv_data = type { i32 }
%struct.of_device_id = type { %struct.dw_mci_drv_data* }

@dw_mci_zx_match = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @dw_mci_zx_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dw_mci_zx_probe(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.dw_mci_drv_data*, align 8
  %4 = alloca %struct.of_device_id*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load i32, i32* @dw_mci_zx_match, align 4
  %6 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.of_device_id* @of_match_node(i32 %5, i32 %9)
  store %struct.of_device_id* %10, %struct.of_device_id** %4, align 8
  %11 = load %struct.of_device_id*, %struct.of_device_id** %4, align 8
  %12 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %11, i32 0, i32 0
  %13 = load %struct.dw_mci_drv_data*, %struct.dw_mci_drv_data** %12, align 8
  store %struct.dw_mci_drv_data* %13, %struct.dw_mci_drv_data** %3, align 8
  %14 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %15 = load %struct.dw_mci_drv_data*, %struct.dw_mci_drv_data** %3, align 8
  %16 = call i32 @dw_mci_pltfm_register(%struct.platform_device* %14, %struct.dw_mci_drv_data* %15)
  ret i32 %16
}

declare dso_local %struct.of_device_id* @of_match_node(i32, i32) #1

declare dso_local i32 @dw_mci_pltfm_register(%struct.platform_device*, %struct.dw_mci_drv_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
