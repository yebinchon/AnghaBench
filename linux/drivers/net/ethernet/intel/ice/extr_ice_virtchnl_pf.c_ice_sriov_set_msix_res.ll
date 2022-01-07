; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_virtchnl_pf.c_ice_sriov_set_msix_res.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_virtchnl_pf.c_ice_sriov_set_msix_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_pf = type { i32, i32, %struct.ice_res_tracker*, %struct.TYPE_6__ }
%struct.ice_res_tracker = type { i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ice_pf*, i64)* @ice_sriov_set_msix_res to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ice_sriov_set_msix_res(%struct.ice_pf* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ice_pf*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.ice_res_tracker*, align 8
  %9 = alloca i32, align 4
  store %struct.ice_pf* %0, %struct.ice_pf** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load %struct.ice_pf*, %struct.ice_pf** %4, align 8
  %11 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %10, i32 0, i32 2
  %12 = load %struct.ice_res_tracker*, %struct.ice_res_tracker** %11, align 8
  %13 = call i32 @ice_get_max_valid_res_idx(%struct.ice_res_tracker* %12)
  store i32 %13, i32* %6, align 4
  %14 = load %struct.ice_pf*, %struct.ice_pf** %4, align 8
  %15 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %7, align 8
  %20 = load %struct.ice_pf*, %struct.ice_pf** %4, align 8
  %21 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %20, i32 0, i32 2
  %22 = load %struct.ice_res_tracker*, %struct.ice_res_tracker** %21, align 8
  store %struct.ice_res_tracker* %22, %struct.ice_res_tracker** %8, align 8
  %23 = load i32, i32* %6, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = load i32, i32* %6, align 4
  store i32 %26, i32* %3, align 4
  br label %68

27:                                               ; preds = %2
  %28 = load i64, i64* %7, align 8
  %29 = load i64, i64* %5, align 8
  %30 = sub nsw i64 %28, %29
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp sle i32 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %27
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %68

38:                                               ; preds = %27
  %39 = load i32, i32* %9, align 4
  %40 = load %struct.ice_pf*, %struct.ice_pf** %4, align 8
  %41 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load i64, i64* %5, align 8
  %43 = load i64, i64* %7, align 8
  %44 = load %struct.ice_res_tracker*, %struct.ice_res_tracker** %8, align 8
  %45 = getelementptr inbounds %struct.ice_res_tracker, %struct.ice_res_tracker* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = sext i32 %46 to i64
  %48 = sub nsw i64 %43, %47
  %49 = icmp sgt i64 %42, %48
  br i1 %49, label %50, label %67

50:                                               ; preds = %38
  %51 = load %struct.ice_res_tracker*, %struct.ice_res_tracker** %8, align 8
  %52 = getelementptr inbounds %struct.ice_res_tracker, %struct.ice_res_tracker* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.ice_pf*, %struct.ice_pf** %4, align 8
  %55 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = sub nsw i32 %53, %56
  %58 = load %struct.ice_pf*, %struct.ice_pf** %4, align 8
  %59 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = sub nsw i32 %60, %57
  store i32 %61, i32* %59, align 4
  %62 = load %struct.ice_pf*, %struct.ice_pf** %4, align 8
  %63 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.ice_res_tracker*, %struct.ice_res_tracker** %8, align 8
  %66 = getelementptr inbounds %struct.ice_res_tracker, %struct.ice_res_tracker* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  br label %67

67:                                               ; preds = %50, %38
  store i32 0, i32* %3, align 4
  br label %68

68:                                               ; preds = %67, %35, %25
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @ice_get_max_valid_res_idx(%struct.ice_res_tracker*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
