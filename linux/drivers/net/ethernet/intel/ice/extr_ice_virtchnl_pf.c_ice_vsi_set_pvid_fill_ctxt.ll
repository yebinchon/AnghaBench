; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_virtchnl_pf.c_ice_vsi_set_pvid_fill_ctxt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_virtchnl_pf.c_ice_vsi_set_pvid_fill_ctxt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_vsi_ctx = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i8*, i32, i8* }

@ICE_AQ_VSI_VLAN_MODE_UNTAGGED = common dso_local global i32 0, align 4
@ICE_AQ_VSI_PVLAN_INSERT_PVID = common dso_local global i32 0, align 4
@ICE_AQ_VSI_VLAN_EMOD_STR = common dso_local global i32 0, align 4
@ICE_AQ_VSI_SW_FLAG_RX_VLAN_PRUNE_ENA = common dso_local global i32 0, align 4
@ICE_AQ_VSI_PROP_VLAN_VALID = common dso_local global i32 0, align 4
@ICE_AQ_VSI_PROP_SW_VALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ice_vsi_ctx*, i32)* @ice_vsi_set_pvid_fill_ctxt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ice_vsi_set_pvid_fill_ctxt(%struct.ice_vsi_ctx* %0, i32 %1) #0 {
  %3 = alloca %struct.ice_vsi_ctx*, align 8
  %4 = alloca i32, align 4
  store %struct.ice_vsi_ctx* %0, %struct.ice_vsi_ctx** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @ICE_AQ_VSI_VLAN_MODE_UNTAGGED, align 4
  %6 = load i32, i32* @ICE_AQ_VSI_PVLAN_INSERT_PVID, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @ICE_AQ_VSI_VLAN_EMOD_STR, align 4
  %9 = or i32 %7, %8
  %10 = load %struct.ice_vsi_ctx*, %struct.ice_vsi_ctx** %3, align 8
  %11 = getelementptr inbounds %struct.ice_vsi_ctx, %struct.ice_vsi_ctx* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store i32 %9, i32* %12, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call i8* @cpu_to_le16(i32 %13)
  %15 = load %struct.ice_vsi_ctx*, %struct.ice_vsi_ctx** %3, align 8
  %16 = getelementptr inbounds %struct.ice_vsi_ctx, %struct.ice_vsi_ctx* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 3
  store i8* %14, i8** %17, align 8
  %18 = load i32, i32* @ICE_AQ_VSI_SW_FLAG_RX_VLAN_PRUNE_ENA, align 4
  %19 = load %struct.ice_vsi_ctx*, %struct.ice_vsi_ctx** %3, align 8
  %20 = getelementptr inbounds %struct.ice_vsi_ctx, %struct.ice_vsi_ctx* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = or i32 %22, %18
  store i32 %23, i32* %21, align 8
  %24 = load i32, i32* @ICE_AQ_VSI_PROP_VLAN_VALID, align 4
  %25 = load i32, i32* @ICE_AQ_VSI_PROP_SW_VALID, align 4
  %26 = or i32 %24, %25
  %27 = call i8* @cpu_to_le16(i32 %26)
  %28 = load %struct.ice_vsi_ctx*, %struct.ice_vsi_ctx** %3, align 8
  %29 = getelementptr inbounds %struct.ice_vsi_ctx, %struct.ice_vsi_ctx* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  store i8* %27, i8** %30, align 8
  ret void
}

declare dso_local i8* @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
