; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_virtchnl_pf.c_i40e_vc_isvalid_queue_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_virtchnl_pf.c_i40e_vc_isvalid_queue_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_vf = type { %struct.i40e_pf* }
%struct.i40e_pf = type { i32 }
%struct.i40e_vsi = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40e_vf*, i64, i64)* @i40e_vc_isvalid_queue_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_vc_isvalid_queue_id(%struct.i40e_vf* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.i40e_vf*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.i40e_pf*, align 8
  %8 = alloca %struct.i40e_vsi*, align 8
  store %struct.i40e_vf* %0, %struct.i40e_vf** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.i40e_vf*, %struct.i40e_vf** %4, align 8
  %10 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %9, i32 0, i32 0
  %11 = load %struct.i40e_pf*, %struct.i40e_pf** %10, align 8
  store %struct.i40e_pf* %11, %struct.i40e_pf** %7, align 8
  %12 = load %struct.i40e_pf*, %struct.i40e_pf** %7, align 8
  %13 = load i64, i64* %5, align 8
  %14 = call %struct.i40e_vsi* @i40e_find_vsi_from_id(%struct.i40e_pf* %12, i64 %13)
  store %struct.i40e_vsi* %14, %struct.i40e_vsi** %8, align 8
  %15 = load %struct.i40e_vsi*, %struct.i40e_vsi** %8, align 8
  %16 = icmp ne %struct.i40e_vsi* %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %3
  %18 = load i64, i64* %6, align 8
  %19 = load %struct.i40e_vsi*, %struct.i40e_vsi** %8, align 8
  %20 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp slt i64 %18, %21
  br label %23

23:                                               ; preds = %17, %3
  %24 = phi i1 [ false, %3 ], [ %22, %17 ]
  %25 = zext i1 %24 to i32
  ret i32 %25
}

declare dso_local %struct.i40e_vsi* @i40e_find_vsi_from_id(%struct.i40e_pf*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
