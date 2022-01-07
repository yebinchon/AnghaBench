; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_virtchnl_pf.c_i40e_vc_isvalid_vsi_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_virtchnl_pf.c_i40e_vc_isvalid_vsi_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_vf = type { i64, %struct.i40e_pf* }
%struct.i40e_pf = type { i32 }
%struct.i40e_vsi = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40e_vf*, i32)* @i40e_vc_isvalid_vsi_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_vc_isvalid_vsi_id(%struct.i40e_vf* %0, i32 %1) #0 {
  %3 = alloca %struct.i40e_vf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.i40e_pf*, align 8
  %6 = alloca %struct.i40e_vsi*, align 8
  store %struct.i40e_vf* %0, %struct.i40e_vf** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.i40e_vf*, %struct.i40e_vf** %3, align 8
  %8 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %7, i32 0, i32 1
  %9 = load %struct.i40e_pf*, %struct.i40e_pf** %8, align 8
  store %struct.i40e_pf* %9, %struct.i40e_pf** %5, align 8
  %10 = load %struct.i40e_pf*, %struct.i40e_pf** %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call %struct.i40e_vsi* @i40e_find_vsi_from_id(%struct.i40e_pf* %10, i32 %11)
  store %struct.i40e_vsi* %12, %struct.i40e_vsi** %6, align 8
  %13 = load %struct.i40e_vsi*, %struct.i40e_vsi** %6, align 8
  %14 = icmp ne %struct.i40e_vsi* %13, null
  br i1 %14, label %15, label %23

15:                                               ; preds = %2
  %16 = load %struct.i40e_vsi*, %struct.i40e_vsi** %6, align 8
  %17 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.i40e_vf*, %struct.i40e_vf** %3, align 8
  %20 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %18, %21
  br label %23

23:                                               ; preds = %15, %2
  %24 = phi i1 [ false, %2 ], [ %22, %15 ]
  %25 = zext i1 %24 to i32
  ret i32 %25
}

declare dso_local %struct.i40e_vsi* @i40e_find_vsi_from_id(%struct.i40e_pf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
