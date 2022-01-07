; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_dev.c_qed_init_qm_sanity.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_dev.c_qed_init_qm_sanity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@QED_VPORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"requested amount of vports exceeds resource\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@QED_PQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [62 x i8] c"multi-tc roce was disabled to reduce requested amount of pqs\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"requested amount of pqs exceeds resource\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_hwfn*)* @qed_init_qm_sanity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_init_qm_sanity(%struct.qed_hwfn* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qed_hwfn*, align 8
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %3, align 8
  %4 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %5 = call i64 @qed_init_qm_get_num_vports(%struct.qed_hwfn* %4)
  %6 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %7 = load i32, i32* @QED_VPORT, align 4
  %8 = call i64 @RESC_NUM(%struct.qed_hwfn* %6, i32 %7)
  %9 = icmp sgt i64 %5, %8
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %12 = call i32 @DP_ERR(%struct.qed_hwfn* %11, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %46

15:                                               ; preds = %1
  %16 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %17 = call i64 @qed_init_qm_get_num_pqs(%struct.qed_hwfn* %16)
  %18 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %19 = load i32, i32* @QED_PQ, align 4
  %20 = call i64 @RESC_NUM(%struct.qed_hwfn* %18, i32 %19)
  %21 = icmp sle i64 %17, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %46

23:                                               ; preds = %15
  %24 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %25 = call i64 @QED_IS_ROCE_PERSONALITY(%struct.qed_hwfn* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %41

27:                                               ; preds = %23
  %28 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %29 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i64 0, i64* %30, align 8
  %31 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %32 = call i32 @DP_NOTICE(%struct.qed_hwfn* %31, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0))
  %33 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %34 = call i64 @qed_init_qm_get_num_pqs(%struct.qed_hwfn* %33)
  %35 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %36 = load i32, i32* @QED_PQ, align 4
  %37 = call i64 @RESC_NUM(%struct.qed_hwfn* %35, i32 %36)
  %38 = icmp sle i64 %34, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %27
  store i32 0, i32* %2, align 4
  br label %46

40:                                               ; preds = %27
  br label %41

41:                                               ; preds = %40, %23
  %42 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %43 = call i32 @DP_ERR(%struct.qed_hwfn* %42, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %41, %39, %22, %10
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i64 @qed_init_qm_get_num_vports(%struct.qed_hwfn*) #1

declare dso_local i64 @RESC_NUM(%struct.qed_hwfn*, i32) #1

declare dso_local i32 @DP_ERR(%struct.qed_hwfn*, i8*) #1

declare dso_local i64 @qed_init_qm_get_num_pqs(%struct.qed_hwfn*) #1

declare dso_local i64 @QED_IS_ROCE_PERSONALITY(%struct.qed_hwfn*) #1

declare dso_local i32 @DP_NOTICE(%struct.qed_hwfn*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
