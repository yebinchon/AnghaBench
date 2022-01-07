; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_lib.c_ice_trigger_sw_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_lib.c_ice_trigger_sw_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_hw = type { i32 }
%struct.ice_q_vector = type { i32 }

@ICE_ITR_NONE = common dso_local global i32 0, align 4
@GLINT_DYN_CTL_ITR_INDX_S = common dso_local global i32 0, align 4
@GLINT_DYN_CTL_SWINT_TRIG_M = common dso_local global i32 0, align 4
@GLINT_DYN_CTL_INTENA_M = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ice_trigger_sw_intr(%struct.ice_hw* %0, %struct.ice_q_vector* %1) #0 {
  %3 = alloca %struct.ice_hw*, align 8
  %4 = alloca %struct.ice_q_vector*, align 8
  store %struct.ice_hw* %0, %struct.ice_hw** %3, align 8
  store %struct.ice_q_vector* %1, %struct.ice_q_vector** %4, align 8
  %5 = load %struct.ice_hw*, %struct.ice_hw** %3, align 8
  %6 = load %struct.ice_q_vector*, %struct.ice_q_vector** %4, align 8
  %7 = getelementptr inbounds %struct.ice_q_vector, %struct.ice_q_vector* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @GLINT_DYN_CTL(i32 %8)
  %10 = load i32, i32* @ICE_ITR_NONE, align 4
  %11 = load i32, i32* @GLINT_DYN_CTL_ITR_INDX_S, align 4
  %12 = shl i32 %10, %11
  %13 = load i32, i32* @GLINT_DYN_CTL_SWINT_TRIG_M, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @GLINT_DYN_CTL_INTENA_M, align 4
  %16 = or i32 %14, %15
  %17 = call i32 @wr32(%struct.ice_hw* %5, i32 %9, i32 %16)
  ret void
}

declare dso_local i32 @wr32(%struct.ice_hw*, i32, i32) #1

declare dso_local i32 @GLINT_DYN_CTL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
