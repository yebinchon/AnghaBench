; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_virtchnl_pf.c_ice_vsi_kill_pvid_fill_ctxt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_virtchnl_pf.c_ice_vsi_kill_pvid_fill_ctxt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_vsi_ctx = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@ICE_AQ_VSI_VLAN_EMOD_NOTHING = common dso_local global i32 0, align 4
@ICE_AQ_VSI_VLAN_MODE_ALL = common dso_local global i32 0, align 4
@ICE_AQ_VSI_SW_FLAG_RX_VLAN_PRUNE_ENA = common dso_local global i32 0, align 4
@ICE_AQ_VSI_PROP_VLAN_VALID = common dso_local global i32 0, align 4
@ICE_AQ_VSI_PROP_SW_VALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ice_vsi_ctx*)* @ice_vsi_kill_pvid_fill_ctxt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ice_vsi_kill_pvid_fill_ctxt(%struct.ice_vsi_ctx* %0) #0 {
  %2 = alloca %struct.ice_vsi_ctx*, align 8
  store %struct.ice_vsi_ctx* %0, %struct.ice_vsi_ctx** %2, align 8
  %3 = load i32, i32* @ICE_AQ_VSI_VLAN_EMOD_NOTHING, align 4
  %4 = load %struct.ice_vsi_ctx*, %struct.ice_vsi_ctx** %2, align 8
  %5 = getelementptr inbounds %struct.ice_vsi_ctx, %struct.ice_vsi_ctx* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 2
  store i32 %3, i32* %6, align 4
  %7 = load i32, i32* @ICE_AQ_VSI_VLAN_MODE_ALL, align 4
  %8 = load %struct.ice_vsi_ctx*, %struct.ice_vsi_ctx** %2, align 8
  %9 = getelementptr inbounds %struct.ice_vsi_ctx, %struct.ice_vsi_ctx* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = or i32 %11, %7
  store i32 %12, i32* %10, align 4
  %13 = load i32, i32* @ICE_AQ_VSI_SW_FLAG_RX_VLAN_PRUNE_ENA, align 4
  %14 = xor i32 %13, -1
  %15 = load %struct.ice_vsi_ctx*, %struct.ice_vsi_ctx** %2, align 8
  %16 = getelementptr inbounds %struct.ice_vsi_ctx, %struct.ice_vsi_ctx* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = and i32 %18, %14
  store i32 %19, i32* %17, align 4
  %20 = load i32, i32* @ICE_AQ_VSI_PROP_VLAN_VALID, align 4
  %21 = load i32, i32* @ICE_AQ_VSI_PROP_SW_VALID, align 4
  %22 = or i32 %20, %21
  %23 = call i32 @cpu_to_le16(i32 %22)
  %24 = load %struct.ice_vsi_ctx*, %struct.ice_vsi_ctx** %2, align 8
  %25 = getelementptr inbounds %struct.ice_vsi_ctx, %struct.ice_vsi_ctx* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store i32 %23, i32* %26, align 4
  ret void
}

declare dso_local i32 @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
