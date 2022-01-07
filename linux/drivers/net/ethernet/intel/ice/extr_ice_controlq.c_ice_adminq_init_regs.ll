; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_controlq.c_ice_adminq_init_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_controlq.c_ice_adminq_init_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_hw = type { %struct.ice_ctl_q_info }
%struct.ice_ctl_q_info = type { i32 }

@PF_FW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ice_hw*)* @ice_adminq_init_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ice_adminq_init_regs(%struct.ice_hw* %0) #0 {
  %2 = alloca %struct.ice_hw*, align 8
  %3 = alloca %struct.ice_ctl_q_info*, align 8
  store %struct.ice_hw* %0, %struct.ice_hw** %2, align 8
  %4 = load %struct.ice_hw*, %struct.ice_hw** %2, align 8
  %5 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %4, i32 0, i32 0
  store %struct.ice_ctl_q_info* %5, %struct.ice_ctl_q_info** %3, align 8
  %6 = load %struct.ice_ctl_q_info*, %struct.ice_ctl_q_info** %3, align 8
  %7 = load i32, i32* @PF_FW, align 4
  %8 = call i32 @ICE_CQ_INIT_REGS(%struct.ice_ctl_q_info* %6, i32 %7)
  ret void
}

declare dso_local i32 @ICE_CQ_INIT_REGS(%struct.ice_ctl_q_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
