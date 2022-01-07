; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_debug.c_qed_dbg_grc_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_debug.c_qed_dbg_grc_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i64, i64, i32, i32 }
%struct.qed_hwfn = type { i32 }
%struct.qed_ptt = type { i32 }

@QED_MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"dbg_grc_config: paramId = %d, val = %d\0A\00", align 1
@DBG_STATUS_OK = common dso_local global i32 0, align 4
@MAX_DBG_GRC_PARAMS = common dso_local global i32 0, align 4
@DBG_STATUS_INVALID_ARGS = common dso_local global i32 0, align 4
@s_grc_param_defs = common dso_local global %struct.TYPE_2__* null, align 8
@DBG_GRC_PARAM_EXCLUDE_ALL = common dso_local global i32 0, align 4
@DBG_GRC_PARAM_CRASH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qed_dbg_grc_config(%struct.qed_hwfn* %0, %struct.qed_ptt* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.qed_hwfn*, align 8
  %7 = alloca %struct.qed_ptt*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %6, align 8
  store %struct.qed_ptt* %1, %struct.qed_ptt** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %14 = load i32, i32* @QED_MSG_DEBUG, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* %9, align 4
  %17 = call i32 @DP_VERBOSE(%struct.qed_hwfn* %13, i32 %14, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %16)
  %18 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %19 = load %struct.qed_ptt*, %struct.qed_ptt** %7, align 8
  %20 = call i32 @qed_dbg_dev_init(%struct.qed_hwfn* %18, %struct.qed_ptt* %19)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* @DBG_STATUS_OK, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %4
  %25 = load i32, i32* %10, align 4
  store i32 %25, i32* %5, align 4
  br label %122

26:                                               ; preds = %4
  %27 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %28 = call i32 @qed_dbg_grc_init_params(%struct.qed_hwfn* %27)
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @MAX_DBG_GRC_PARAMS, align 4
  %31 = icmp uge i32 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i32, i32* @DBG_STATUS_INVALID_ARGS, align 4
  store i32 %33, i32* %5, align 4
  br label %122

34:                                               ; preds = %26
  %35 = load i32, i32* %9, align 4
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s_grc_param_defs, align 8
  %37 = load i32, i32* %8, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 4
  %42 = icmp slt i32 %35, %41
  br i1 %42, label %52, label %43

43:                                               ; preds = %34
  %44 = load i32, i32* %9, align 4
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s_grc_param_defs, align 8
  %46 = load i32, i32* %8, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  %51 = icmp sgt i32 %44, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %43, %34
  %53 = load i32, i32* @DBG_STATUS_INVALID_ARGS, align 4
  store i32 %53, i32* %5, align 4
  br label %122

54:                                               ; preds = %43
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s_grc_param_defs, align 8
  %56 = load i32, i32* %8, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %115

62:                                               ; preds = %54
  %63 = load i32, i32* %9, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %62
  %66 = load i32, i32* @DBG_STATUS_INVALID_ARGS, align 4
  store i32 %66, i32* %5, align 4
  br label %122

67:                                               ; preds = %62
  store i32 0, i32* %11, align 4
  br label %68

68:                                               ; preds = %111, %67
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* @MAX_DBG_GRC_PARAMS, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %114

72:                                               ; preds = %68
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s_grc_param_defs, align 8
  %74 = load i32, i32* %11, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %72
  br label %111

81:                                               ; preds = %72
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* @DBG_GRC_PARAM_EXCLUDE_ALL, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %92

85:                                               ; preds = %81
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s_grc_param_defs, align 8
  %87 = load i32, i32* %11, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  store i32 %91, i32* %12, align 4
  br label %106

92:                                               ; preds = %81
  %93 = load i32, i32* %8, align 4
  %94 = load i32, i32* @DBG_GRC_PARAM_CRASH, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %103

96:                                               ; preds = %92
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s_grc_param_defs, align 8
  %98 = load i32, i32* %11, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  store i32 %102, i32* %12, align 4
  br label %105

103:                                              ; preds = %92
  %104 = load i32, i32* @DBG_STATUS_INVALID_ARGS, align 4
  store i32 %104, i32* %5, align 4
  br label %122

105:                                              ; preds = %96
  br label %106

106:                                              ; preds = %105, %85
  %107 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %108 = load i32, i32* %11, align 4
  %109 = load i32, i32* %12, align 4
  %110 = call i32 @qed_grc_set_param(%struct.qed_hwfn* %107, i32 %108, i32 %109)
  br label %111

111:                                              ; preds = %106, %80
  %112 = load i32, i32* %11, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %11, align 4
  br label %68

114:                                              ; preds = %68
  br label %120

115:                                              ; preds = %54
  %116 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %117 = load i32, i32* %8, align 4
  %118 = load i32, i32* %9, align 4
  %119 = call i32 @qed_grc_set_param(%struct.qed_hwfn* %116, i32 %117, i32 %118)
  br label %120

120:                                              ; preds = %115, %114
  %121 = load i32, i32* @DBG_STATUS_OK, align 4
  store i32 %121, i32* %5, align 4
  br label %122

122:                                              ; preds = %120, %103, %65, %52, %32, %24
  %123 = load i32, i32* %5, align 4
  ret i32 %123
}

declare dso_local i32 @DP_VERBOSE(%struct.qed_hwfn*, i32, i8*, i32, i32) #1

declare dso_local i32 @qed_dbg_dev_init(%struct.qed_hwfn*, %struct.qed_ptt*) #1

declare dso_local i32 @qed_dbg_grc_init_params(%struct.qed_hwfn*) #1

declare dso_local i32 @qed_grc_set_param(%struct.qed_hwfn*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
