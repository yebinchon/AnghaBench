; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_virtchnl_pf.c_ice_calc_vf_reg_idx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_virtchnl_pf.c_ice_calc_vf_reg_idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_vf = type { i32, %struct.ice_pf* }
%struct.ice_pf = type { i32, i32 }
%struct.ice_q_vector = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ice_calc_vf_reg_idx(%struct.ice_vf* %0, %struct.ice_q_vector* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ice_vf*, align 8
  %5 = alloca %struct.ice_q_vector*, align 8
  %6 = alloca %struct.ice_pf*, align 8
  store %struct.ice_vf* %0, %struct.ice_vf** %4, align 8
  store %struct.ice_q_vector* %1, %struct.ice_q_vector** %5, align 8
  %7 = load %struct.ice_vf*, %struct.ice_vf** %4, align 8
  %8 = icmp ne %struct.ice_vf* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load %struct.ice_q_vector*, %struct.ice_q_vector** %5, align 8
  %11 = icmp ne %struct.ice_q_vector* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %9, %2
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %35

15:                                               ; preds = %9
  %16 = load %struct.ice_vf*, %struct.ice_vf** %4, align 8
  %17 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %16, i32 0, i32 1
  %18 = load %struct.ice_pf*, %struct.ice_pf** %17, align 8
  store %struct.ice_pf* %18, %struct.ice_pf** %6, align 8
  %19 = load %struct.ice_pf*, %struct.ice_pf** %6, align 8
  %20 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.ice_pf*, %struct.ice_pf** %6, align 8
  %23 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.ice_vf*, %struct.ice_vf** %4, align 8
  %26 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = mul nsw i32 %24, %27
  %29 = add nsw i32 %21, %28
  %30 = load %struct.ice_q_vector*, %struct.ice_q_vector** %5, align 8
  %31 = getelementptr inbounds %struct.ice_q_vector, %struct.ice_q_vector* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %29, %32
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %15, %12
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
