; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_main.c_ice_up_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_main.c_ice_up_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_vsi = type { i64, %struct.TYPE_6__*, i32, %struct.ice_pf* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ice_pf = type { i32 }

@__ICE_DOWN = common dso_local global i32 0, align 4
@ICE_AQ_LINK_UP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ice_vsi*)* @ice_up_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ice_up_complete(%struct.ice_vsi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ice_vsi*, align 8
  %4 = alloca %struct.ice_pf*, align 8
  %5 = alloca i32, align 4
  store %struct.ice_vsi* %0, %struct.ice_vsi** %3, align 8
  %6 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %7 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %6, i32 0, i32 3
  %8 = load %struct.ice_pf*, %struct.ice_pf** %7, align 8
  store %struct.ice_pf* %8, %struct.ice_pf** %4, align 8
  %9 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %10 = call i32 @ice_vsi_cfg_msix(%struct.ice_vsi* %9)
  %11 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %12 = call i32 @ice_vsi_start_rx_rings(%struct.ice_vsi* %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %5, align 4
  store i32 %16, i32* %2, align 4
  br label %61

17:                                               ; preds = %1
  %18 = load i32, i32* @__ICE_DOWN, align 4
  %19 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %20 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @clear_bit(i32 %18, i32 %21)
  %23 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %24 = call i32 @ice_napi_enable_all(%struct.ice_vsi* %23)
  %25 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %26 = call i32 @ice_vsi_ena_irq(%struct.ice_vsi* %25)
  %27 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %28 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %27, i32 0, i32 1
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = icmp ne %struct.TYPE_6__* %29, null
  br i1 %30, label %31, label %58

31:                                               ; preds = %17
  %32 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %33 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %32, i32 0, i32 1
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @ICE_AQ_LINK_UP, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %58

42:                                               ; preds = %31
  %43 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %44 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %58

47:                                               ; preds = %42
  %48 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %49 = call i32 @ice_print_link_msg(%struct.ice_vsi* %48, i32 1)
  %50 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %51 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @netif_tx_start_all_queues(i64 %52)
  %54 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %55 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @netif_carrier_on(i64 %56)
  br label %58

58:                                               ; preds = %47, %42, %31, %17
  %59 = load %struct.ice_pf*, %struct.ice_pf** %4, align 8
  %60 = call i32 @ice_service_task_schedule(%struct.ice_pf* %59)
  store i32 0, i32* %2, align 4
  br label %61

61:                                               ; preds = %58, %15
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i32 @ice_vsi_cfg_msix(%struct.ice_vsi*) #1

declare dso_local i32 @ice_vsi_start_rx_rings(%struct.ice_vsi*) #1

declare dso_local i32 @clear_bit(i32, i32) #1

declare dso_local i32 @ice_napi_enable_all(%struct.ice_vsi*) #1

declare dso_local i32 @ice_vsi_ena_irq(%struct.ice_vsi*) #1

declare dso_local i32 @ice_print_link_msg(%struct.ice_vsi*, i32) #1

declare dso_local i32 @netif_tx_start_all_queues(i64) #1

declare dso_local i32 @netif_carrier_on(i64) #1

declare dso_local i32 @ice_service_task_schedule(%struct.ice_pf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
