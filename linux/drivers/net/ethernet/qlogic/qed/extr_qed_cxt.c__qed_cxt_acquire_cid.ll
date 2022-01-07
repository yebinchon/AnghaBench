; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_cxt.c__qed_cxt_acquire_cid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_cxt.c__qed_cxt_acquire_cid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.qed_cxt_mngr* }
%struct.qed_cxt_mngr = type { %struct.qed_cid_acquired_map**, %struct.qed_cid_acquired_map* }
%struct.qed_cid_acquired_map = type { i64, i64, i32 }

@MAX_CONN_TYPES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Invalid protocol type %d\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MAX_NUM_VFS = common dso_local global i64 0, align 8
@QED_CXT_PF_CID = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"VF [%02x] is out of range\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"no CID available for protocol %d\0A\00", align 1
@QED_MSG_CXT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [51 x i8] c"Acquired cid 0x%08x [rel. %08x] vfid %02x type %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_qed_cxt_acquire_cid(%struct.qed_hwfn* %0, i32 %1, i64* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.qed_hwfn*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.qed_cxt_mngr*, align 8
  %11 = alloca %struct.qed_cid_acquired_map*, align 8
  %12 = alloca i64, align 8
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64* %2, i64** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %14 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %13, i32 0, i32 0
  %15 = load %struct.qed_cxt_mngr*, %struct.qed_cxt_mngr** %14, align 8
  store %struct.qed_cxt_mngr* %15, %struct.qed_cxt_mngr** %10, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @MAX_CONN_TYPES, align 4
  %18 = icmp uge i32 %16, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %4
  %20 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @DP_NOTICE(%struct.qed_hwfn* %20, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %111

25:                                               ; preds = %4
  %26 = load i64, i64* %9, align 8
  %27 = load i64, i64* @MAX_NUM_VFS, align 8
  %28 = icmp uge i64 %26, %27
  br i1 %28, label %29, label %40

29:                                               ; preds = %25
  %30 = load i64, i64* %9, align 8
  %31 = load i64, i64* @QED_CXT_PF_CID, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %29
  %34 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %35 = load i64, i64* %9, align 8
  %36 = trunc i64 %35 to i32
  %37 = call i32 @DP_NOTICE(%struct.qed_hwfn* %34, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %5, align 4
  br label %111

40:                                               ; preds = %29, %25
  %41 = load i64, i64* %9, align 8
  %42 = load i64, i64* @QED_CXT_PF_CID, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %40
  %45 = load %struct.qed_cxt_mngr*, %struct.qed_cxt_mngr** %10, align 8
  %46 = getelementptr inbounds %struct.qed_cxt_mngr, %struct.qed_cxt_mngr* %45, i32 0, i32 1
  %47 = load %struct.qed_cid_acquired_map*, %struct.qed_cid_acquired_map** %46, align 8
  %48 = load i32, i32* %7, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.qed_cid_acquired_map, %struct.qed_cid_acquired_map* %47, i64 %49
  store %struct.qed_cid_acquired_map* %50, %struct.qed_cid_acquired_map** %11, align 8
  br label %61

51:                                               ; preds = %40
  %52 = load %struct.qed_cxt_mngr*, %struct.qed_cxt_mngr** %10, align 8
  %53 = getelementptr inbounds %struct.qed_cxt_mngr, %struct.qed_cxt_mngr* %52, i32 0, i32 0
  %54 = load %struct.qed_cid_acquired_map**, %struct.qed_cid_acquired_map*** %53, align 8
  %55 = load i32, i32* %7, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds %struct.qed_cid_acquired_map*, %struct.qed_cid_acquired_map** %54, i64 %56
  %58 = load %struct.qed_cid_acquired_map*, %struct.qed_cid_acquired_map** %57, align 8
  %59 = load i64, i64* %9, align 8
  %60 = getelementptr inbounds %struct.qed_cid_acquired_map, %struct.qed_cid_acquired_map* %58, i64 %59
  store %struct.qed_cid_acquired_map* %60, %struct.qed_cid_acquired_map** %11, align 8
  br label %61

61:                                               ; preds = %51, %44
  %62 = load %struct.qed_cid_acquired_map*, %struct.qed_cid_acquired_map** %11, align 8
  %63 = getelementptr inbounds %struct.qed_cid_acquired_map, %struct.qed_cid_acquired_map* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %72, label %66

66:                                               ; preds = %61
  %67 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @DP_NOTICE(%struct.qed_hwfn* %67, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %68)
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %5, align 4
  br label %111

72:                                               ; preds = %61
  %73 = load %struct.qed_cid_acquired_map*, %struct.qed_cid_acquired_map** %11, align 8
  %74 = getelementptr inbounds %struct.qed_cid_acquired_map, %struct.qed_cid_acquired_map* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.qed_cid_acquired_map*, %struct.qed_cid_acquired_map** %11, align 8
  %77 = getelementptr inbounds %struct.qed_cid_acquired_map, %struct.qed_cid_acquired_map* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = call i64 @find_first_zero_bit(i32 %75, i64 %78)
  store i64 %79, i64* %12, align 8
  %80 = load i64, i64* %12, align 8
  %81 = load %struct.qed_cid_acquired_map*, %struct.qed_cid_acquired_map** %11, align 8
  %82 = getelementptr inbounds %struct.qed_cid_acquired_map, %struct.qed_cid_acquired_map* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp sge i64 %80, %83
  br i1 %84, label %85, label %91

85:                                               ; preds = %72
  %86 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %87 = load i32, i32* %7, align 4
  %88 = call i32 @DP_NOTICE(%struct.qed_hwfn* %86, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %87)
  %89 = load i32, i32* @EINVAL, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %5, align 4
  br label %111

91:                                               ; preds = %72
  %92 = load i64, i64* %12, align 8
  %93 = load %struct.qed_cid_acquired_map*, %struct.qed_cid_acquired_map** %11, align 8
  %94 = getelementptr inbounds %struct.qed_cid_acquired_map, %struct.qed_cid_acquired_map* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @__set_bit(i64 %92, i32 %95)
  %97 = load i64, i64* %12, align 8
  %98 = load %struct.qed_cid_acquired_map*, %struct.qed_cid_acquired_map** %11, align 8
  %99 = getelementptr inbounds %struct.qed_cid_acquired_map, %struct.qed_cid_acquired_map* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = add nsw i64 %97, %100
  %102 = load i64*, i64** %8, align 8
  store i64 %101, i64* %102, align 8
  %103 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %104 = load i32, i32* @QED_MSG_CXT, align 4
  %105 = load i64*, i64** %8, align 8
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* %12, align 8
  %108 = load i64, i64* %9, align 8
  %109 = load i32, i32* %7, align 4
  %110 = call i32 @DP_VERBOSE(%struct.qed_hwfn* %103, i32 %104, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0), i64 %106, i64 %107, i64 %108, i32 %109)
  store i32 0, i32* %5, align 4
  br label %111

111:                                              ; preds = %91, %85, %66, %33, %19
  %112 = load i32, i32* %5, align 4
  ret i32 %112
}

declare dso_local i32 @DP_NOTICE(%struct.qed_hwfn*, i8*, i32) #1

declare dso_local i64 @find_first_zero_bit(i32, i64) #1

declare dso_local i32 @__set_bit(i64, i32) #1

declare dso_local i32 @DP_VERBOSE(%struct.qed_hwfn*, i32, i8*, i64, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
