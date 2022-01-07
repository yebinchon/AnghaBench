; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_main.c_ice_lb_vsi_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_main.c_ice_lb_vsi_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_vsi = type { i32 }
%struct.ice_pf = type { i32 }
%struct.ice_port_info = type { i32 }

@ICE_VSI_LB = common dso_local global i32 0, align 4
@ICE_INVAL_VFID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ice_vsi* @ice_lb_vsi_setup(%struct.ice_pf* %0, %struct.ice_port_info* %1) #0 {
  %3 = alloca %struct.ice_pf*, align 8
  %4 = alloca %struct.ice_port_info*, align 8
  store %struct.ice_pf* %0, %struct.ice_pf** %3, align 8
  store %struct.ice_port_info* %1, %struct.ice_port_info** %4, align 8
  %5 = load %struct.ice_pf*, %struct.ice_pf** %3, align 8
  %6 = load %struct.ice_port_info*, %struct.ice_port_info** %4, align 8
  %7 = load i32, i32* @ICE_VSI_LB, align 4
  %8 = load i32, i32* @ICE_INVAL_VFID, align 4
  %9 = call %struct.ice_vsi* @ice_vsi_setup(%struct.ice_pf* %5, %struct.ice_port_info* %6, i32 %7, i32 %8)
  ret %struct.ice_vsi* %9
}

declare dso_local %struct.ice_vsi* @ice_vsi_setup(%struct.ice_pf*, %struct.ice_port_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
