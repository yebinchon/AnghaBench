; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_ethtool.c_ice_lbtest_prepare_rings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_ethtool.c_ice_lbtest_prepare_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_vsi = type { i32 }

@ICE_NO_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ice_vsi*)* @ice_lbtest_prepare_rings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ice_lbtest_prepare_rings(%struct.ice_vsi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ice_vsi*, align 8
  %4 = alloca i32, align 4
  store %struct.ice_vsi* %0, %struct.ice_vsi** %3, align 8
  %5 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %6 = call i32 @ice_vsi_setup_tx_rings(%struct.ice_vsi* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %37

10:                                               ; preds = %1
  %11 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %12 = call i32 @ice_vsi_setup_rx_rings(%struct.ice_vsi* %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  br label %33

16:                                               ; preds = %10
  %17 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %18 = call i32 @ice_vsi_cfg(%struct.ice_vsi* %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  br label %33

22:                                               ; preds = %16
  %23 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %24 = call i32 @ice_vsi_start_rx_rings(%struct.ice_vsi* %23)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %30

28:                                               ; preds = %22
  %29 = load i32, i32* %4, align 4
  store i32 %29, i32* %2, align 4
  br label %41

30:                                               ; preds = %27
  %31 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %32 = call i32 @ice_vsi_free_rx_rings(%struct.ice_vsi* %31)
  br label %33

33:                                               ; preds = %30, %21, %15
  %34 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %35 = load i32, i32* @ICE_NO_RESET, align 4
  %36 = call i32 @ice_vsi_stop_lan_tx_rings(%struct.ice_vsi* %34, i32 %35, i32 0)
  br label %37

37:                                               ; preds = %33, %9
  %38 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %39 = call i32 @ice_vsi_free_tx_rings(%struct.ice_vsi* %38)
  %40 = load i32, i32* %4, align 4
  store i32 %40, i32* %2, align 4
  br label %41

41:                                               ; preds = %37, %28
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @ice_vsi_setup_tx_rings(%struct.ice_vsi*) #1

declare dso_local i32 @ice_vsi_setup_rx_rings(%struct.ice_vsi*) #1

declare dso_local i32 @ice_vsi_cfg(%struct.ice_vsi*) #1

declare dso_local i32 @ice_vsi_start_rx_rings(%struct.ice_vsi*) #1

declare dso_local i32 @ice_vsi_free_rx_rings(%struct.ice_vsi*) #1

declare dso_local i32 @ice_vsi_stop_lan_tx_rings(%struct.ice_vsi*, i32, i32) #1

declare dso_local i32 @ice_vsi_free_tx_rings(%struct.ice_vsi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
