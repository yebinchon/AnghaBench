; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_sriov.c_qed_iov_get_vf_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_sriov.c_qed_iov_get_vf_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_vf_info = type { i32 }
%struct.qed_hwfn = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { %struct.qed_vf_info* }

@.str = private unnamed_addr constant [13 x i8] c"No iov info\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"qed_iov_get_vf_info: VF[%d] is not enabled\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.qed_vf_info* (%struct.qed_hwfn*, i64, i32)* @qed_iov_get_vf_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.qed_vf_info* @qed_iov_get_vf_info(%struct.qed_hwfn* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.qed_vf_info*, align 8
  %5 = alloca %struct.qed_hwfn*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.qed_vf_info*, align 8
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.qed_vf_info* null, %struct.qed_vf_info** %8, align 8
  %9 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %10 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = icmp ne %struct.TYPE_2__* %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %3
  %14 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %15 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @DP_NOTICE(i32 %16, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store %struct.qed_vf_info* null, %struct.qed_vf_info** %4, align 8
  br label %38

18:                                               ; preds = %3
  %19 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %20 = load i64, i64* %6, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call i64 @qed_iov_is_valid_vfid(%struct.qed_hwfn* %19, i64 %20, i32 %21, i32 0)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %18
  %25 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %26 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load %struct.qed_vf_info*, %struct.qed_vf_info** %28, align 8
  %30 = load i64, i64* %6, align 8
  %31 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %29, i64 %30
  store %struct.qed_vf_info* %31, %struct.qed_vf_info** %8, align 8
  br label %36

32:                                               ; preds = %18
  %33 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %34 = load i64, i64* %6, align 8
  %35 = call i32 @DP_ERR(%struct.qed_hwfn* %33, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i64 %34)
  br label %36

36:                                               ; preds = %32, %24
  %37 = load %struct.qed_vf_info*, %struct.qed_vf_info** %8, align 8
  store %struct.qed_vf_info* %37, %struct.qed_vf_info** %4, align 8
  br label %38

38:                                               ; preds = %36, %13
  %39 = load %struct.qed_vf_info*, %struct.qed_vf_info** %4, align 8
  ret %struct.qed_vf_info* %39
}

declare dso_local i32 @DP_NOTICE(i32, i8*) #1

declare dso_local i64 @qed_iov_is_valid_vfid(%struct.qed_hwfn*, i64, i32, i32) #1

declare dso_local i32 @DP_ERR(%struct.qed_hwfn*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
