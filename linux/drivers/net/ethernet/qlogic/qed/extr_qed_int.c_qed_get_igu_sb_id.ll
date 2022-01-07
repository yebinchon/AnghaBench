; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_int.c_qed_get_igu_sb_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_int.c_qed_get_igu_sb_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@QED_SP_SB_ID = common dso_local global i64 0, align 8
@NETIF_MSG_INTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Slowpath SB index in IGU is 0x%04x\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"SB [%04x] <--> IGU SB [%04x]\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @qed_get_igu_sb_id(%struct.qed_hwfn* %0, i64 %1) #0 {
  %3 = alloca %struct.qed_hwfn*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* %4, align 8
  %7 = load i64, i64* @QED_SP_SB_ID, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %16

9:                                                ; preds = %2
  %10 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %11 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %5, align 8
  br label %32

16:                                               ; preds = %2
  %17 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %18 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i64 @IS_PF(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %16
  %23 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %24 = load i64, i64* %4, align 8
  %25 = add nsw i64 %24, 1
  %26 = call i64 @qed_get_pf_igu_sb_id(%struct.qed_hwfn* %23, i64 %25)
  store i64 %26, i64* %5, align 8
  br label %31

27:                                               ; preds = %16
  %28 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %29 = load i64, i64* %4, align 8
  %30 = call i64 @qed_vf_get_igu_sb_id(%struct.qed_hwfn* %28, i64 %29)
  store i64 %30, i64* %5, align 8
  br label %31

31:                                               ; preds = %27, %22
  br label %32

32:                                               ; preds = %31, %9
  %33 = load i64, i64* %4, align 8
  %34 = load i64, i64* @QED_SP_SB_ID, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %32
  %37 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %38 = load i32, i32* @NETIF_MSG_INTR, align 4
  %39 = load i64, i64* %5, align 8
  %40 = call i32 (%struct.qed_hwfn*, i32, i8*, i64, ...) @DP_VERBOSE(%struct.qed_hwfn* %37, i32 %38, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %39)
  br label %47

41:                                               ; preds = %32
  %42 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %43 = load i32, i32* @NETIF_MSG_INTR, align 4
  %44 = load i64, i64* %4, align 8
  %45 = load i64, i64* %5, align 8
  %46 = call i32 (%struct.qed_hwfn*, i32, i8*, i64, ...) @DP_VERBOSE(%struct.qed_hwfn* %42, i32 %43, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i64 %44, i64 %45)
  br label %47

47:                                               ; preds = %41, %36
  %48 = load i64, i64* %5, align 8
  ret i64 %48
}

declare dso_local i64 @IS_PF(i32) #1

declare dso_local i64 @qed_get_pf_igu_sb_id(%struct.qed_hwfn*, i64) #1

declare dso_local i64 @qed_vf_get_igu_sb_id(%struct.qed_hwfn*, i64) #1

declare dso_local i32 @DP_VERBOSE(%struct.qed_hwfn*, i32, i8*, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
