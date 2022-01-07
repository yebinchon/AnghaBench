; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_sched.c_ice_aq_query_sched_elems.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_sched.c_ice_aq_query_sched_elems.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_hw = type { i32 }
%struct.ice_aqc_get_elem = type { i32 }
%struct.ice_sq_cd = type { i32 }

@ice_aqc_opc_get_sched_elems = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ice_aq_query_sched_elems(%struct.ice_hw* %0, i32 %1, %struct.ice_aqc_get_elem* %2, i32 %3, i32* %4, %struct.ice_sq_cd* %5) #0 {
  %7 = alloca %struct.ice_hw*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ice_aqc_get_elem*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.ice_sq_cd*, align 8
  store %struct.ice_hw* %0, %struct.ice_hw** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.ice_aqc_get_elem* %2, %struct.ice_aqc_get_elem** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store %struct.ice_sq_cd* %5, %struct.ice_sq_cd** %12, align 8
  %13 = load %struct.ice_hw*, %struct.ice_hw** %7, align 8
  %14 = load i32, i32* @ice_aqc_opc_get_sched_elems, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load %struct.ice_aqc_get_elem*, %struct.ice_aqc_get_elem** %9, align 8
  %17 = bitcast %struct.ice_aqc_get_elem* %16 to i8*
  %18 = load i32, i32* %10, align 4
  %19 = load i32*, i32** %11, align 8
  %20 = load %struct.ice_sq_cd*, %struct.ice_sq_cd** %12, align 8
  %21 = call i32 @ice_aqc_send_sched_elem_cmd(%struct.ice_hw* %13, i32 %14, i32 %15, i8* %17, i32 %18, i32* %19, %struct.ice_sq_cd* %20)
  ret i32 %21
}

declare dso_local i32 @ice_aqc_send_sched_elem_cmd(%struct.ice_hw*, i32, i32, i8*, i32, i32*, %struct.ice_sq_cd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
