; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_main.c_ice_vsi_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_main.c_ice_vsi_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_vsi = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ice_vsi_cfg(%struct.ice_vsi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ice_vsi*, align 8
  %4 = alloca i32, align 4
  store %struct.ice_vsi* %0, %struct.ice_vsi** %3, align 8
  %5 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %6 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %21

9:                                                ; preds = %1
  %10 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %11 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = call i32 @ice_set_rx_mode(i64 %12)
  %14 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %15 = call i32 @ice_vsi_vlan_setup(%struct.ice_vsi* %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %9
  %19 = load i32, i32* %4, align 4
  store i32 %19, i32* %2, align 4
  br label %33

20:                                               ; preds = %9
  br label %21

21:                                               ; preds = %20, %1
  %22 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %23 = call i32 @ice_vsi_cfg_dcb_rings(%struct.ice_vsi* %22)
  %24 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %25 = call i32 @ice_vsi_cfg_lan_txqs(%struct.ice_vsi* %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %21
  %29 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %30 = call i32 @ice_vsi_cfg_rxqs(%struct.ice_vsi* %29)
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %28, %21
  %32 = load i32, i32* %4, align 4
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %31, %18
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @ice_set_rx_mode(i64) #1

declare dso_local i32 @ice_vsi_vlan_setup(%struct.ice_vsi*) #1

declare dso_local i32 @ice_vsi_cfg_dcb_rings(%struct.ice_vsi*) #1

declare dso_local i32 @ice_vsi_cfg_lan_txqs(%struct.ice_vsi*) #1

declare dso_local i32 @ice_vsi_cfg_rxqs(%struct.ice_vsi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
