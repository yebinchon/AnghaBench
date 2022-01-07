; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_virtchnl_pf.c_ice_dis_vf_qs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_virtchnl_pf.c_ice_dis_vf_qs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_vf = type { i64, i32, %struct.ice_pf* }
%struct.ice_pf = type { %struct.ice_vsi** }
%struct.ice_vsi = type { i32 }

@ICE_NO_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ice_vf*)* @ice_dis_vf_qs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ice_dis_vf_qs(%struct.ice_vf* %0) #0 {
  %2 = alloca %struct.ice_vf*, align 8
  %3 = alloca %struct.ice_pf*, align 8
  %4 = alloca %struct.ice_vsi*, align 8
  store %struct.ice_vf* %0, %struct.ice_vf** %2, align 8
  %5 = load %struct.ice_vf*, %struct.ice_vf** %2, align 8
  %6 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %5, i32 0, i32 2
  %7 = load %struct.ice_pf*, %struct.ice_pf** %6, align 8
  store %struct.ice_pf* %7, %struct.ice_pf** %3, align 8
  %8 = load %struct.ice_pf*, %struct.ice_pf** %3, align 8
  %9 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %8, i32 0, i32 0
  %10 = load %struct.ice_vsi**, %struct.ice_vsi*** %9, align 8
  %11 = load %struct.ice_vf*, %struct.ice_vf** %2, align 8
  %12 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds %struct.ice_vsi*, %struct.ice_vsi** %10, i64 %13
  %15 = load %struct.ice_vsi*, %struct.ice_vsi** %14, align 8
  store %struct.ice_vsi* %15, %struct.ice_vsi** %4, align 8
  %16 = load %struct.ice_vsi*, %struct.ice_vsi** %4, align 8
  %17 = load i32, i32* @ICE_NO_RESET, align 4
  %18 = load %struct.ice_vf*, %struct.ice_vf** %2, align 8
  %19 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @ice_vsi_stop_lan_tx_rings(%struct.ice_vsi* %16, i32 %17, i32 %20)
  %22 = load %struct.ice_vsi*, %struct.ice_vsi** %4, align 8
  %23 = call i32 @ice_vsi_stop_rx_rings(%struct.ice_vsi* %22)
  %24 = load %struct.ice_vf*, %struct.ice_vf** %2, align 8
  %25 = call i32 @ice_set_vf_state_qs_dis(%struct.ice_vf* %24)
  ret void
}

declare dso_local i32 @ice_vsi_stop_lan_tx_rings(%struct.ice_vsi*, i32, i32) #1

declare dso_local i32 @ice_vsi_stop_rx_rings(%struct.ice_vsi*) #1

declare dso_local i32 @ice_set_vf_state_qs_dis(%struct.ice_vf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
