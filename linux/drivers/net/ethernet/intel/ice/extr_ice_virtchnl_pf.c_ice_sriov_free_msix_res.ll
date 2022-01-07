; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_virtchnl_pf.c_ice_sriov_free_msix_res.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_virtchnl_pf.c_ice_sriov_free_msix_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_pf = type { i64, i32, %struct.ice_res_tracker* }
%struct.ice_res_tracker = type { i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ice_pf*)* @ice_sriov_free_msix_res to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ice_sriov_free_msix_res(%struct.ice_pf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ice_pf*, align 8
  %4 = alloca %struct.ice_res_tracker*, align 8
  store %struct.ice_pf* %0, %struct.ice_pf** %3, align 8
  %5 = load %struct.ice_pf*, %struct.ice_pf** %3, align 8
  %6 = icmp ne %struct.ice_pf* %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* @EINVAL, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %2, align 4
  br label %49

10:                                               ; preds = %1
  %11 = load %struct.ice_pf*, %struct.ice_pf** %3, align 8
  %12 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %11, i32 0, i32 2
  %13 = load %struct.ice_res_tracker*, %struct.ice_res_tracker** %12, align 8
  store %struct.ice_res_tracker* %13, %struct.ice_res_tracker** %4, align 8
  %14 = load %struct.ice_res_tracker*, %struct.ice_res_tracker** %4, align 8
  %15 = icmp ne %struct.ice_res_tracker* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %10
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %49

19:                                               ; preds = %10
  %20 = load %struct.ice_pf*, %struct.ice_pf** %3, align 8
  %21 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.ice_res_tracker*, %struct.ice_res_tracker** %4, align 8
  %24 = getelementptr inbounds %struct.ice_res_tracker, %struct.ice_res_tracker* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp slt i64 %22, %25
  br i1 %26, label %27, label %46

27:                                               ; preds = %19
  %28 = load %struct.ice_res_tracker*, %struct.ice_res_tracker** %4, align 8
  %29 = getelementptr inbounds %struct.ice_res_tracker, %struct.ice_res_tracker* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.ice_res_tracker*, %struct.ice_res_tracker** %4, align 8
  %32 = getelementptr inbounds %struct.ice_res_tracker, %struct.ice_res_tracker* %31, i32 0, i32 1
  store i64 %30, i64* %32, align 8
  %33 = load %struct.ice_res_tracker*, %struct.ice_res_tracker** %4, align 8
  %34 = getelementptr inbounds %struct.ice_res_tracker, %struct.ice_res_tracker* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.ice_pf*, %struct.ice_pf** %3, align 8
  %37 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = sub nsw i64 %35, %38
  %40 = load %struct.ice_pf*, %struct.ice_pf** %3, align 8
  %41 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = sext i32 %42 to i64
  %44 = add nsw i64 %43, %39
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %41, align 8
  br label %46

46:                                               ; preds = %27, %19
  %47 = load %struct.ice_pf*, %struct.ice_pf** %3, align 8
  %48 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %47, i32 0, i32 0
  store i64 0, i64* %48, align 8
  store i32 0, i32* %2, align 4
  br label %49

49:                                               ; preds = %46, %16, %7
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
