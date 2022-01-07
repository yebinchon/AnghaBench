; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_vf.c_qed_vf_set_sb_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_vf.c_qed_vf_set_sb_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.qed_vf_iov* }
%struct.qed_vf_iov = type { %struct.qed_sb_info** }
%struct.qed_sb_info = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"vf_sriov_info isn't initialized\0A\00", align 1
@PFVF_MAX_SBS_PER_VF = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"Can't configure SB %04x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qed_vf_set_sb_info(%struct.qed_hwfn* %0, i64 %1, %struct.qed_sb_info* %2) #0 {
  %4 = alloca %struct.qed_hwfn*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.qed_sb_info*, align 8
  %7 = alloca %struct.qed_vf_iov*, align 8
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.qed_sb_info* %2, %struct.qed_sb_info** %6, align 8
  %8 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %9 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %8, i32 0, i32 0
  %10 = load %struct.qed_vf_iov*, %struct.qed_vf_iov** %9, align 8
  store %struct.qed_vf_iov* %10, %struct.qed_vf_iov** %7, align 8
  %11 = load %struct.qed_vf_iov*, %struct.qed_vf_iov** %7, align 8
  %12 = icmp ne %struct.qed_vf_iov* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %15 = call i32 (%struct.qed_hwfn*, i8*, ...) @DP_NOTICE(%struct.qed_hwfn* %14, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %31

16:                                               ; preds = %3
  %17 = load i64, i64* %5, align 8
  %18 = load i64, i64* @PFVF_MAX_SBS_PER_VF, align 8
  %19 = icmp uge i64 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %22 = load i64, i64* %5, align 8
  %23 = call i32 (%struct.qed_hwfn*, i8*, ...) @DP_NOTICE(%struct.qed_hwfn* %21, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i64 %22)
  br label %31

24:                                               ; preds = %16
  %25 = load %struct.qed_sb_info*, %struct.qed_sb_info** %6, align 8
  %26 = load %struct.qed_vf_iov*, %struct.qed_vf_iov** %7, align 8
  %27 = getelementptr inbounds %struct.qed_vf_iov, %struct.qed_vf_iov* %26, i32 0, i32 0
  %28 = load %struct.qed_sb_info**, %struct.qed_sb_info*** %27, align 8
  %29 = load i64, i64* %5, align 8
  %30 = getelementptr inbounds %struct.qed_sb_info*, %struct.qed_sb_info** %28, i64 %29
  store %struct.qed_sb_info* %25, %struct.qed_sb_info** %30, align 8
  br label %31

31:                                               ; preds = %24, %20, %13
  ret void
}

declare dso_local i32 @DP_NOTICE(%struct.qed_hwfn*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
