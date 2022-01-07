; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_sriov.c_qed_iov_spoofchk_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_sriov.c_qed_iov_spoofchk_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.qed_vf_info = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"SR-IOV sanity check failed, can't set spoofchk\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_hwfn*, i32, i32)* @qed_iov_spoofchk_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_iov_spoofchk_set(%struct.qed_hwfn* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.qed_hwfn*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.qed_vf_info*, align 8
  %8 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* @EINVAL, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %8, align 4
  %11 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @qed_iov_pf_sanity_check(%struct.qed_hwfn* %11, i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %17 = call i32 @DP_NOTICE(%struct.qed_hwfn* %16, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  br label %39

18:                                               ; preds = %3
  %19 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call %struct.qed_vf_info* @qed_iov_get_vf_info(%struct.qed_hwfn* %19, i32 %20, i32 1)
  store %struct.qed_vf_info* %21, %struct.qed_vf_info** %7, align 8
  %22 = load %struct.qed_vf_info*, %struct.qed_vf_info** %7, align 8
  %23 = icmp ne %struct.qed_vf_info* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %18
  br label %39

25:                                               ; preds = %18
  %26 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @qed_iov_vf_has_vport_instance(%struct.qed_hwfn* %26, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.qed_vf_info*, %struct.qed_vf_info** %7, align 8
  %33 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  store i32 0, i32* %8, align 4
  br label %39

34:                                               ; preds = %25
  %35 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %36 = load %struct.qed_vf_info*, %struct.qed_vf_info** %7, align 8
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @__qed_iov_spoofchk_set(%struct.qed_hwfn* %35, %struct.qed_vf_info* %36, i32 %37)
  store i32 %38, i32* %8, align 4
  br label %39

39:                                               ; preds = %34, %30, %24, %15
  %40 = load i32, i32* %8, align 4
  ret i32 %40
}

declare dso_local i32 @qed_iov_pf_sanity_check(%struct.qed_hwfn*, i32) #1

declare dso_local i32 @DP_NOTICE(%struct.qed_hwfn*, i8*) #1

declare dso_local %struct.qed_vf_info* @qed_iov_get_vf_info(%struct.qed_hwfn*, i32, i32) #1

declare dso_local i32 @qed_iov_vf_has_vport_instance(%struct.qed_hwfn*, i32) #1

declare dso_local i32 @__qed_iov_spoofchk_set(%struct.qed_hwfn*, %struct.qed_vf_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
