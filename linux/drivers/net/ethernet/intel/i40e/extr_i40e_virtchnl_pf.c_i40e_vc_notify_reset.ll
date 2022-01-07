; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_virtchnl_pf.c_i40e_vc_notify_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_virtchnl_pf.c_i40e_vc_notify_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_pf = type { i32 }
%struct.virtchnl_pf_event = type { i32, i32 }

@VIRTCHNL_EVENT_RESET_IMPENDING = common dso_local global i32 0, align 4
@PF_EVENT_SEVERITY_CERTAIN_DOOM = common dso_local global i32 0, align 4
@VIRTCHNL_OP_EVENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i40e_vc_notify_reset(%struct.i40e_pf* %0) #0 {
  %2 = alloca %struct.i40e_pf*, align 8
  %3 = alloca %struct.virtchnl_pf_event, align 4
  store %struct.i40e_pf* %0, %struct.i40e_pf** %2, align 8
  %4 = load i32, i32* @VIRTCHNL_EVENT_RESET_IMPENDING, align 4
  %5 = getelementptr inbounds %struct.virtchnl_pf_event, %struct.virtchnl_pf_event* %3, i32 0, i32 1
  store i32 %4, i32* %5, align 4
  %6 = load i32, i32* @PF_EVENT_SEVERITY_CERTAIN_DOOM, align 4
  %7 = getelementptr inbounds %struct.virtchnl_pf_event, %struct.virtchnl_pf_event* %3, i32 0, i32 0
  store i32 %6, i32* %7, align 4
  %8 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %9 = load i32, i32* @VIRTCHNL_OP_EVENT, align 4
  %10 = bitcast %struct.virtchnl_pf_event* %3 to i32*
  %11 = call i32 @i40e_vc_vf_broadcast(%struct.i40e_pf* %8, i32 %9, i32 0, i32* %10, i32 8)
  ret void
}

declare dso_local i32 @i40e_vc_vf_broadcast(%struct.i40e_pf*, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
