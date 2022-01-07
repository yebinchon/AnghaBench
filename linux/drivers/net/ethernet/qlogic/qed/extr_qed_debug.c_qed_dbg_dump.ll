; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_debug.c_qed_dbg_dump.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_debug.c_qed_dbg_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 (%struct.qed_hwfn*, %struct.qed_ptt*, i32*)*, i32 (%struct.qed_hwfn*, %struct.qed_ptt*, i32*, i32, i32*)*, i32 }
%struct.qed_hwfn = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.qed_dbg_feature* }
%struct.qed_dbg_feature = type { i32, i32, i32* }
%struct.qed_ptt = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"Collecting a debug feature [\22%s\22]\0A\00", align 1
@qed_features_lookup = common dso_local global %struct.TYPE_5__* null, align 8
@DBG_STATUS_OK = common dso_local global i32 0, align 4
@DBG_STATUS_NVRAM_GET_IMAGE_FAILED = common dso_local global i32 0, align 4
@DBG_STATUS_VIRT_MEM_ALLOC_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_hwfn*, %struct.qed_ptt*, i32)* @qed_dbg_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_dbg_dump(%struct.qed_hwfn* %0, %struct.qed_ptt* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qed_hwfn*, align 8
  %6 = alloca %struct.qed_ptt*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.qed_dbg_feature*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %5, align 8
  store %struct.qed_ptt* %1, %struct.qed_ptt** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %12 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %11, i32 0, i32 0
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.qed_dbg_feature*, %struct.qed_dbg_feature** %15, align 8
  %17 = load i32, i32* %7, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.qed_dbg_feature, %struct.qed_dbg_feature* %16, i64 %18
  store %struct.qed_dbg_feature* %19, %struct.qed_dbg_feature** %8, align 8
  %20 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %21 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %20, i32 0, i32 0
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** @qed_features_lookup, align 8
  %24 = load i32, i32* %7, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @DP_NOTICE(%struct.TYPE_6__* %22, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load %struct.qed_dbg_feature*, %struct.qed_dbg_feature** %8, align 8
  %31 = getelementptr inbounds %struct.qed_dbg_feature, %struct.qed_dbg_feature* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %41

34:                                               ; preds = %3
  %35 = load %struct.qed_dbg_feature*, %struct.qed_dbg_feature** %8, align 8
  %36 = getelementptr inbounds %struct.qed_dbg_feature, %struct.qed_dbg_feature* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @vfree(i32* %37)
  %39 = load %struct.qed_dbg_feature*, %struct.qed_dbg_feature** %8, align 8
  %40 = getelementptr inbounds %struct.qed_dbg_feature, %struct.qed_dbg_feature* %39, i32 0, i32 2
  store i32* null, i32** %40, align 8
  br label %41

41:                                               ; preds = %34, %3
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** @qed_features_lookup, align 8
  %43 = load i32, i32* %7, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32 (%struct.qed_hwfn*, %struct.qed_ptt*, i32*)*, i32 (%struct.qed_hwfn*, %struct.qed_ptt*, i32*)** %46, align 8
  %48 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %49 = load %struct.qed_ptt*, %struct.qed_ptt** %6, align 8
  %50 = call i32 %47(%struct.qed_hwfn* %48, %struct.qed_ptt* %49, i32* %9)
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* @DBG_STATUS_OK, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %41
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* @DBG_STATUS_NVRAM_GET_IMAGE_FAILED, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = load i32, i32* %10, align 4
  store i32 %59, i32* %4, align 4
  br label %116

60:                                               ; preds = %54, %41
  %61 = load i32, i32* %9, align 4
  %62 = sext i32 %61 to i64
  %63 = mul i64 %62, 4
  %64 = trunc i64 %63 to i32
  %65 = load %struct.qed_dbg_feature*, %struct.qed_dbg_feature** %8, align 8
  %66 = getelementptr inbounds %struct.qed_dbg_feature, %struct.qed_dbg_feature* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  %67 = load %struct.qed_dbg_feature*, %struct.qed_dbg_feature** %8, align 8
  %68 = getelementptr inbounds %struct.qed_dbg_feature, %struct.qed_dbg_feature* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32* @vmalloc(i32 %69)
  %71 = load %struct.qed_dbg_feature*, %struct.qed_dbg_feature** %8, align 8
  %72 = getelementptr inbounds %struct.qed_dbg_feature, %struct.qed_dbg_feature* %71, i32 0, i32 2
  store i32* %70, i32** %72, align 8
  %73 = load %struct.qed_dbg_feature*, %struct.qed_dbg_feature** %8, align 8
  %74 = getelementptr inbounds %struct.qed_dbg_feature, %struct.qed_dbg_feature* %73, i32 0, i32 2
  %75 = load i32*, i32** %74, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %79, label %77

77:                                               ; preds = %60
  %78 = load i32, i32* @DBG_STATUS_VIRT_MEM_ALLOC_FAILED, align 4
  store i32 %78, i32* %4, align 4
  br label %116

79:                                               ; preds = %60
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** @qed_features_lookup, align 8
  %81 = load i32, i32* %7, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 1
  %85 = load i32 (%struct.qed_hwfn*, %struct.qed_ptt*, i32*, i32, i32*)*, i32 (%struct.qed_hwfn*, %struct.qed_ptt*, i32*, i32, i32*)** %84, align 8
  %86 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %87 = load %struct.qed_ptt*, %struct.qed_ptt** %6, align 8
  %88 = load %struct.qed_dbg_feature*, %struct.qed_dbg_feature** %8, align 8
  %89 = getelementptr inbounds %struct.qed_dbg_feature, %struct.qed_dbg_feature* %88, i32 0, i32 2
  %90 = load i32*, i32** %89, align 8
  %91 = load %struct.qed_dbg_feature*, %struct.qed_dbg_feature** %8, align 8
  %92 = getelementptr inbounds %struct.qed_dbg_feature, %struct.qed_dbg_feature* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = sext i32 %93 to i64
  %95 = udiv i64 %94, 4
  %96 = trunc i64 %95 to i32
  %97 = load %struct.qed_dbg_feature*, %struct.qed_dbg_feature** %8, align 8
  %98 = getelementptr inbounds %struct.qed_dbg_feature, %struct.qed_dbg_feature* %97, i32 0, i32 1
  %99 = call i32 %85(%struct.qed_hwfn* %86, %struct.qed_ptt* %87, i32* %90, i32 %96, i32* %98)
  store i32 %99, i32* %10, align 4
  %100 = load i32, i32* %10, align 4
  %101 = load i32, i32* @DBG_STATUS_NVRAM_GET_IMAGE_FAILED, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %105

103:                                              ; preds = %79
  %104 = load i32, i32* @DBG_STATUS_OK, align 4
  store i32 %104, i32* %4, align 4
  br label %116

105:                                              ; preds = %79
  %106 = load i32, i32* %10, align 4
  %107 = load i32, i32* @DBG_STATUS_OK, align 4
  %108 = icmp ne i32 %106, %107
  br i1 %108, label %109, label %111

109:                                              ; preds = %105
  %110 = load i32, i32* %10, align 4
  store i32 %110, i32* %4, align 4
  br label %116

111:                                              ; preds = %105
  %112 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %113 = load i32, i32* %7, align 4
  %114 = call i32 @format_feature(%struct.qed_hwfn* %112, i32 %113)
  store i32 %114, i32* %10, align 4
  %115 = load i32, i32* %10, align 4
  store i32 %115, i32* %4, align 4
  br label %116

116:                                              ; preds = %111, %109, %103, %77, %58
  %117 = load i32, i32* %4, align 4
  ret i32 %117
}

declare dso_local i32 @DP_NOTICE(%struct.TYPE_6__*, i8*, i32) #1

declare dso_local i32 @vfree(i32*) #1

declare dso_local i32* @vmalloc(i32) #1

declare dso_local i32 @format_feature(%struct.qed_hwfn*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
