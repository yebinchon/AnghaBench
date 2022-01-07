; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_debug.c_format_feature.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_debug.c_format_feature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 (%struct.qed_hwfn*, i32*, i32, i32*)*, i32 (%struct.qed_hwfn*, i32*, i32, i8*)* }
%struct.qed_hwfn = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, %struct.qed_dbg_feature* }
%struct.qed_dbg_feature = type { i8*, i32, i32 }

@qed_features_lookup = common dso_local global %struct.TYPE_5__* null, align 8
@DBG_STATUS_OK = common dso_local global i32 0, align 4
@QED_RESULTS_BUF_MIN_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"formatted size of feature was too small %d. Aborting\0A\00", align 1
@DBG_STATUS_INVALID_ARGS = common dso_local global i32 0, align 4
@DBG_STATUS_VIRT_MEM_ALLOC_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_hwfn*, i32)* @format_feature to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @format_feature(%struct.qed_hwfn* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qed_hwfn*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.qed_dbg_feature*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %13 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %12, i32 0, i32 0
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load %struct.qed_dbg_feature*, %struct.qed_dbg_feature** %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.qed_dbg_feature, %struct.qed_dbg_feature* %17, i64 %19
  store %struct.qed_dbg_feature* %20, %struct.qed_dbg_feature** %6, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** @qed_features_lookup, align 8
  %22 = load i32, i32* %5, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32 (%struct.qed_hwfn*, i32*, i32, i32*)*, i32 (%struct.qed_hwfn*, i32*, i32, i32*)** %25, align 8
  %27 = icmp ne i32 (%struct.qed_hwfn*, i32*, i32, i32*)* %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %2
  %29 = load i32, i32* @DBG_STATUS_OK, align 4
  store i32 %29, i32* %3, align 4
  br label %140

30:                                               ; preds = %2
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** @qed_features_lookup, align 8
  %32 = load i32, i32* %5, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32 (%struct.qed_hwfn*, i32*, i32, i32*)*, i32 (%struct.qed_hwfn*, i32*, i32, i32*)** %35, align 8
  %37 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %38 = load %struct.qed_dbg_feature*, %struct.qed_dbg_feature** %6, align 8
  %39 = getelementptr inbounds %struct.qed_dbg_feature, %struct.qed_dbg_feature* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = bitcast i8* %40 to i32*
  %42 = load %struct.qed_dbg_feature*, %struct.qed_dbg_feature** %6, align 8
  %43 = getelementptr inbounds %struct.qed_dbg_feature, %struct.qed_dbg_feature* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i32 %36(%struct.qed_hwfn* %37, i32* %41, i32 %44, i32* %7)
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* @DBG_STATUS_OK, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %30
  %50 = load i32, i32* %10, align 4
  store i32 %50, i32* %3, align 4
  br label %140

51:                                               ; preds = %30
  %52 = load i32, i32* %7, align 4
  %53 = sub nsw i32 %52, 1
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %7, align 4
  %55 = add nsw i32 %54, 3
  %56 = and i32 %55, -4
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @QED_RESULTS_BUF_MIN_SIZE, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %67

60:                                               ; preds = %51
  %61 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %62 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %61, i32 0, i32 0
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @DP_NOTICE(%struct.TYPE_6__* %63, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %64)
  %66 = load i32, i32* @DBG_STATUS_INVALID_ARGS, align 4
  store i32 %66, i32* %3, align 4
  br label %140

67:                                               ; preds = %51
  %68 = load i32, i32* %7, align 4
  %69 = call i8* @vzalloc(i32 %68)
  store i8* %69, i8** %11, align 8
  %70 = load i8*, i8** %11, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %74, label %72

72:                                               ; preds = %67
  %73 = load i32, i32* @DBG_STATUS_VIRT_MEM_ALLOC_FAILED, align 4
  store i32 %73, i32* %3, align 4
  br label %140

74:                                               ; preds = %67
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** @qed_features_lookup, align 8
  %76 = load i32, i32* %5, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 1
  %80 = load i32 (%struct.qed_hwfn*, i32*, i32, i8*)*, i32 (%struct.qed_hwfn*, i32*, i32, i8*)** %79, align 8
  %81 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %82 = load %struct.qed_dbg_feature*, %struct.qed_dbg_feature** %6, align 8
  %83 = getelementptr inbounds %struct.qed_dbg_feature, %struct.qed_dbg_feature* %82, i32 0, i32 0
  %84 = load i8*, i8** %83, align 8
  %85 = bitcast i8* %84 to i32*
  %86 = load %struct.qed_dbg_feature*, %struct.qed_dbg_feature** %6, align 8
  %87 = getelementptr inbounds %struct.qed_dbg_feature, %struct.qed_dbg_feature* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = load i8*, i8** %11, align 8
  %90 = call i32 %80(%struct.qed_hwfn* %81, i32* %85, i32 %88, i8* %89)
  store i32 %90, i32* %10, align 4
  %91 = load i32, i32* %10, align 4
  %92 = load i32, i32* @DBG_STATUS_OK, align 4
  %93 = icmp ne i32 %91, %92
  br i1 %93, label %94, label %98

94:                                               ; preds = %74
  %95 = load i8*, i8** %11, align 8
  %96 = call i32 @vfree(i8* %95)
  %97 = load i32, i32* %10, align 4
  store i32 %97, i32* %3, align 4
  br label %140

98:                                               ; preds = %74
  %99 = load i32, i32* %8, align 4
  store i32 %99, i32* %9, align 4
  br label %100

100:                                              ; preds = %109, %98
  %101 = load i32, i32* %9, align 4
  %102 = load i32, i32* %7, align 4
  %103 = icmp slt i32 %101, %102
  br i1 %103, label %104, label %112

104:                                              ; preds = %100
  %105 = load i8*, i8** %11, align 8
  %106 = load i32, i32* %9, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8, i8* %105, i64 %107
  store i8 10, i8* %108, align 1
  br label %109

109:                                              ; preds = %104
  %110 = load i32, i32* %9, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %9, align 4
  br label %100

112:                                              ; preds = %100
  %113 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %114 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %113, i32 0, i32 0
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %112
  %121 = load i8*, i8** %11, align 8
  %122 = load i32, i32* %7, align 4
  %123 = call i32 @qed_dbg_print_feature(i8* %121, i32 %122)
  br label %124

124:                                              ; preds = %120, %112
  %125 = load %struct.qed_dbg_feature*, %struct.qed_dbg_feature** %6, align 8
  %126 = getelementptr inbounds %struct.qed_dbg_feature, %struct.qed_dbg_feature* %125, i32 0, i32 0
  %127 = load i8*, i8** %126, align 8
  %128 = call i32 @vfree(i8* %127)
  %129 = load i8*, i8** %11, align 8
  %130 = load %struct.qed_dbg_feature*, %struct.qed_dbg_feature** %6, align 8
  %131 = getelementptr inbounds %struct.qed_dbg_feature, %struct.qed_dbg_feature* %130, i32 0, i32 0
  store i8* %129, i8** %131, align 8
  %132 = load i32, i32* %7, align 4
  %133 = load %struct.qed_dbg_feature*, %struct.qed_dbg_feature** %6, align 8
  %134 = getelementptr inbounds %struct.qed_dbg_feature, %struct.qed_dbg_feature* %133, i32 0, i32 2
  store i32 %132, i32* %134, align 4
  %135 = load i32, i32* %7, align 4
  %136 = sdiv i32 %135, 4
  %137 = load %struct.qed_dbg_feature*, %struct.qed_dbg_feature** %6, align 8
  %138 = getelementptr inbounds %struct.qed_dbg_feature, %struct.qed_dbg_feature* %137, i32 0, i32 1
  store i32 %136, i32* %138, align 8
  %139 = load i32, i32* %10, align 4
  store i32 %139, i32* %3, align 4
  br label %140

140:                                              ; preds = %124, %94, %72, %60, %49, %28
  %141 = load i32, i32* %3, align 4
  ret i32 %141
}

declare dso_local i32 @DP_NOTICE(%struct.TYPE_6__*, i8*, i32) #1

declare dso_local i8* @vzalloc(i32) #1

declare dso_local i32 @vfree(i8*) #1

declare dso_local i32 @qed_dbg_print_feature(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
