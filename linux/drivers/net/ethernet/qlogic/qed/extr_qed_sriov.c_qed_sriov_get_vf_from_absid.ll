; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_sriov.c_qed_sriov_get_vf_from_absid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_sriov.c_qed_sriov_get_vf_from_absid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_vf_info = type { i32 }
%struct.qed_hwfn = type { %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { %struct.qed_vf_info* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@QED_MSG_IOV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"Got indication for VF [abs 0x%08x] that cannot be handled by PF\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.qed_vf_info* (%struct.qed_hwfn*, i64)* @qed_sriov_get_vf_from_absid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.qed_vf_info* @qed_sriov_get_vf_from_absid(%struct.qed_hwfn* %0, i64 %1) #0 {
  %3 = alloca %struct.qed_vf_info*, align 8
  %4 = alloca %struct.qed_hwfn*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %8 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %7, i32 0, i32 1
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %6, align 8
  %14 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %15 = load i64, i64* %5, align 8
  %16 = trunc i64 %15 to i32
  %17 = sext i32 %16 to i64
  %18 = load i64, i64* %6, align 8
  %19 = sub i64 %17, %18
  %20 = call i32 @_qed_iov_pf_sanity_check(%struct.qed_hwfn* %14, i64 %19, i32 0)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %2
  %23 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %24 = load i32, i32* @QED_MSG_IOV, align 4
  %25 = load i64, i64* %5, align 8
  %26 = call i32 @DP_VERBOSE(%struct.qed_hwfn* %23, i32 %24, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i64 %25)
  store %struct.qed_vf_info* null, %struct.qed_vf_info** %3, align 8
  br label %37

27:                                               ; preds = %2
  %28 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %29 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %28, i32 0, i32 0
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load %struct.qed_vf_info*, %struct.qed_vf_info** %31, align 8
  %33 = load i64, i64* %5, align 8
  %34 = load i64, i64* %6, align 8
  %35 = sub i64 %33, %34
  %36 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %32, i64 %35
  store %struct.qed_vf_info* %36, %struct.qed_vf_info** %3, align 8
  br label %37

37:                                               ; preds = %27, %22
  %38 = load %struct.qed_vf_info*, %struct.qed_vf_info** %3, align 8
  ret %struct.qed_vf_info* %38
}

declare dso_local i32 @_qed_iov_pf_sanity_check(%struct.qed_hwfn*, i64, i32) #1

declare dso_local i32 @DP_VERBOSE(%struct.qed_hwfn*, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
