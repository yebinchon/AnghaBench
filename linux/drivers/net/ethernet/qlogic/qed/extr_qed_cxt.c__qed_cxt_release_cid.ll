; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_cxt.c__qed_cxt_release_cid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_cxt.c__qed_cxt_release_cid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.qed_cid_acquired_map = type { i32, i64 }

@QED_CXT_PF_CID = common dso_local global i32 0, align 4
@MAX_NUM_VFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"Trying to return incorrect CID belonging to VF %02x\0A\00", align 1
@QED_MSG_CXT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"Released CID 0x%08x [rel. %08x] vfid %02x type %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_qed_cxt_release_cid(%struct.qed_hwfn* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.qed_hwfn*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.qed_cid_acquired_map*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  store %struct.qed_cid_acquired_map* null, %struct.qed_cid_acquired_map** %7, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @QED_CXT_PF_CID, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %22

14:                                               ; preds = %3
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @MAX_NUM_VFS, align 4
  %17 = icmp sgt i32 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @DP_NOTICE(%struct.qed_hwfn* %19, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %20)
  br label %48

22:                                               ; preds = %14, %3
  %23 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %24 = load i64, i64* %5, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @qed_cxt_test_cid_acquired(%struct.qed_hwfn* %23, i64 %24, i32 %25, i32* %8, %struct.qed_cid_acquired_map** %7)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %22
  br label %48

30:                                               ; preds = %22
  %31 = load i64, i64* %5, align 8
  %32 = load %struct.qed_cid_acquired_map*, %struct.qed_cid_acquired_map** %7, align 8
  %33 = getelementptr inbounds %struct.qed_cid_acquired_map, %struct.qed_cid_acquired_map* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = sub nsw i64 %31, %34
  store i64 %35, i64* %10, align 8
  %36 = load i64, i64* %10, align 8
  %37 = load %struct.qed_cid_acquired_map*, %struct.qed_cid_acquired_map** %7, align 8
  %38 = getelementptr inbounds %struct.qed_cid_acquired_map, %struct.qed_cid_acquired_map* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @clear_bit(i64 %36, i32 %39)
  %41 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %42 = load i32, i32* @QED_MSG_CXT, align 4
  %43 = load i64, i64* %5, align 8
  %44 = load i64, i64* %10, align 8
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @DP_VERBOSE(%struct.qed_hwfn* %41, i32 %42, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i64 %43, i64 %44, i32 %45, i32 %46)
  br label %48

48:                                               ; preds = %30, %29, %18
  ret void
}

declare dso_local i32 @DP_NOTICE(%struct.qed_hwfn*, i8*, i32) #1

declare dso_local i32 @qed_cxt_test_cid_acquired(%struct.qed_hwfn*, i64, i32, i32*, %struct.qed_cid_acquired_map**) #1

declare dso_local i32 @clear_bit(i64, i32) #1

declare dso_local i32 @DP_VERBOSE(%struct.qed_hwfn*, i32, i8*, i64, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
