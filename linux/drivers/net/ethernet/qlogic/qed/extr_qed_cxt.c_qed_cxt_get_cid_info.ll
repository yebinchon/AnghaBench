; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_cxt.c_qed_cxt_get_cid_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_cxt.c_qed_cxt_get_cid_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.qed_cxt_mngr* }
%struct.qed_cxt_mngr = type { %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.qed_cxt_info = type { i64, i32, i64 }
%struct.qed_cid_acquired_map = type { i32 }

@QED_CXT_PF_CID = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ILT_CLI_CDUC = common dso_local global i64 0, align 8
@QED_MSG_ILT = common dso_local global i32 0, align 4
@QED_MSG_CXT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"Accessing ILT shadow[%d]: CXT pointer is at %p (for iid %d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qed_cxt_get_cid_info(%struct.qed_hwfn* %0, %struct.qed_cxt_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qed_hwfn*, align 8
  %5 = alloca %struct.qed_cxt_info*, align 8
  %6 = alloca %struct.qed_cxt_mngr*, align 8
  %7 = alloca %struct.qed_cid_acquired_map*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %4, align 8
  store %struct.qed_cxt_info* %1, %struct.qed_cxt_info** %5, align 8
  %14 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %15 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %14, i32 0, i32 0
  %16 = load %struct.qed_cxt_mngr*, %struct.qed_cxt_mngr** %15, align 8
  store %struct.qed_cxt_mngr* %16, %struct.qed_cxt_mngr** %6, align 8
  store %struct.qed_cid_acquired_map* null, %struct.qed_cid_acquired_map** %7, align 8
  %17 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %18 = load %struct.qed_cxt_info*, %struct.qed_cxt_info** %5, align 8
  %19 = getelementptr inbounds %struct.qed_cxt_info, %struct.qed_cxt_info* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i32, i32* @QED_CXT_PF_CID, align 4
  %22 = call i32 @qed_cxt_test_cid_acquired(%struct.qed_hwfn* %17, i64 %20, i32 %21, i32* %12, %struct.qed_cid_acquired_map** %7)
  store i32 %22, i32* %13, align 4
  %23 = load i32, i32* %13, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %2
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %98

28:                                               ; preds = %2
  %29 = load i32, i32* %12, align 4
  %30 = load %struct.qed_cxt_info*, %struct.qed_cxt_info** %5, align 8
  %31 = getelementptr inbounds %struct.qed_cxt_info, %struct.qed_cxt_info* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 8
  %32 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %33 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %32, i32 0, i32 0
  %34 = load %struct.qed_cxt_mngr*, %struct.qed_cxt_mngr** %33, align 8
  %35 = getelementptr inbounds %struct.qed_cxt_mngr, %struct.qed_cxt_mngr* %34, i32 0, i32 1
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = load i64, i64* @ILT_CLI_CDUC, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %9, align 8
  %42 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %43 = call i64 @CONN_CXT_SIZE(%struct.qed_hwfn* %42)
  store i64 %43, i64* %8, align 8
  %44 = load i64, i64* %9, align 8
  %45 = call i64 @ILT_PAGE_IN_BYTES(i64 %44)
  %46 = load i64, i64* %8, align 8
  %47 = udiv i64 %45, %46
  store i64 %47, i64* %10, align 8
  %48 = load %struct.qed_cxt_info*, %struct.qed_cxt_info** %5, align 8
  %49 = getelementptr inbounds %struct.qed_cxt_info, %struct.qed_cxt_info* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* %10, align 8
  %52 = udiv i64 %50, %51
  store i64 %52, i64* %11, align 8
  %53 = load %struct.qed_cxt_mngr*, %struct.qed_cxt_mngr** %6, align 8
  %54 = getelementptr inbounds %struct.qed_cxt_mngr, %struct.qed_cxt_mngr* %53, i32 0, i32 0
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = load i64, i64* %11, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %28
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %3, align 4
  br label %98

64:                                               ; preds = %28
  %65 = load %struct.qed_cxt_mngr*, %struct.qed_cxt_mngr** %6, align 8
  %66 = getelementptr inbounds %struct.qed_cxt_mngr, %struct.qed_cxt_mngr* %65, i32 0, i32 0
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = load i64, i64* %11, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.qed_cxt_info*, %struct.qed_cxt_info** %5, align 8
  %73 = getelementptr inbounds %struct.qed_cxt_info, %struct.qed_cxt_info* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* %10, align 8
  %76 = urem i64 %74, %75
  %77 = load i64, i64* %8, align 8
  %78 = mul i64 %76, %77
  %79 = add i64 %71, %78
  %80 = load %struct.qed_cxt_info*, %struct.qed_cxt_info** %5, align 8
  %81 = getelementptr inbounds %struct.qed_cxt_info, %struct.qed_cxt_info* %80, i32 0, i32 2
  store i64 %79, i64* %81, align 8
  %82 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %83 = load i32, i32* @QED_MSG_ILT, align 4
  %84 = load i32, i32* @QED_MSG_CXT, align 4
  %85 = or i32 %83, %84
  %86 = load %struct.qed_cxt_info*, %struct.qed_cxt_info** %5, align 8
  %87 = getelementptr inbounds %struct.qed_cxt_info, %struct.qed_cxt_info* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* %10, align 8
  %90 = udiv i64 %88, %89
  %91 = load %struct.qed_cxt_info*, %struct.qed_cxt_info** %5, align 8
  %92 = getelementptr inbounds %struct.qed_cxt_info, %struct.qed_cxt_info* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.qed_cxt_info*, %struct.qed_cxt_info** %5, align 8
  %95 = getelementptr inbounds %struct.qed_cxt_info, %struct.qed_cxt_info* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = call i32 @DP_VERBOSE(%struct.qed_hwfn* %82, i32 %85, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i64 %90, i64 %93, i64 %96)
  store i32 0, i32* %3, align 4
  br label %98

98:                                               ; preds = %64, %61, %25
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local i32 @qed_cxt_test_cid_acquired(%struct.qed_hwfn*, i64, i32, i32*, %struct.qed_cid_acquired_map**) #1

declare dso_local i64 @CONN_CXT_SIZE(%struct.qed_hwfn*) #1

declare dso_local i64 @ILT_PAGE_IN_BYTES(i64) #1

declare dso_local i32 @DP_VERBOSE(%struct.qed_hwfn*, i32, i8*, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
