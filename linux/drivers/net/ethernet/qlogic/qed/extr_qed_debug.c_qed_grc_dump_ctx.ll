; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_debug.c_qed_grc_dump_ctx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_debug.c_qed_grc_dump_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.storm_defs = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.qed_hwfn = type { i32 }
%struct.qed_ptt = type { i32 }

@MAX_DBG_STORMS = common dso_local global i64 0, align 8
@s_storm_defs = common dso_local global %struct.storm_defs* null, align 8
@DBG_GRC_PARAM_NUM_LCIDS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"CONN_AG_CTX\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"CONN_ST_CTX\00", align 1
@DBG_GRC_PARAM_NUM_LTIDS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"TASK_AG_CTX\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"TASK_ST_CTX\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_hwfn*, %struct.qed_ptt*, i32*, i32)* @qed_grc_dump_ctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_grc_dump_ctx(%struct.qed_hwfn* %0, %struct.qed_ptt* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.qed_hwfn*, align 8
  %6 = alloca %struct.qed_ptt*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.storm_defs*, align 8
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %5, align 8
  store %struct.qed_ptt* %1, %struct.qed_ptt** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %10, align 4
  store i64 0, i64* %11, align 8
  br label %13

13:                                               ; preds = %112, %4
  %14 = load i64, i64* %11, align 8
  %15 = load i64, i64* @MAX_DBG_STORMS, align 8
  %16 = icmp ult i64 %14, %15
  br i1 %16, label %17, label %115

17:                                               ; preds = %13
  %18 = load %struct.storm_defs*, %struct.storm_defs** @s_storm_defs, align 8
  %19 = load i64, i64* %11, align 8
  %20 = getelementptr inbounds %struct.storm_defs, %struct.storm_defs* %18, i64 %19
  store %struct.storm_defs* %20, %struct.storm_defs** %12, align 8
  %21 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %22 = load i64, i64* %11, align 8
  %23 = trunc i64 %22 to i32
  %24 = call i32 @qed_grc_is_storm_included(%struct.qed_hwfn* %21, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %17
  br label %112

27:                                               ; preds = %17
  %28 = load i32, i32* @DBG_GRC_PARAM_NUM_LCIDS, align 4
  store i32 %28, i32* %9, align 4
  %29 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %30 = load %struct.qed_ptt*, %struct.qed_ptt** %6, align 8
  %31 = load i32*, i32** %7, align 8
  %32 = load i32, i32* %10, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %8, align 4
  %36 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @qed_grc_get_param(%struct.qed_hwfn* %36, i32 %37)
  %39 = load %struct.storm_defs*, %struct.storm_defs** %12, align 8
  %40 = getelementptr inbounds %struct.storm_defs, %struct.storm_defs* %39, i32 0, i32 7
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.storm_defs*, %struct.storm_defs** %12, align 8
  %43 = getelementptr inbounds %struct.storm_defs, %struct.storm_defs* %42, i32 0, i32 6
  %44 = load i32, i32* %43, align 4
  %45 = load i64, i64* %11, align 8
  %46 = call i32 @qed_grc_dump_ctx_data(%struct.qed_hwfn* %29, %struct.qed_ptt* %30, i32* %34, i32 %35, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %38, i32 %41, i32 %44, i64 %45)
  %47 = load i32, i32* %10, align 4
  %48 = add nsw i32 %47, %46
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* @DBG_GRC_PARAM_NUM_LCIDS, align 4
  store i32 %49, i32* %9, align 4
  %50 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %51 = load %struct.qed_ptt*, %struct.qed_ptt** %6, align 8
  %52 = load i32*, i32** %7, align 8
  %53 = load i32, i32* %10, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %8, align 4
  %57 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @qed_grc_get_param(%struct.qed_hwfn* %57, i32 %58)
  %60 = load %struct.storm_defs*, %struct.storm_defs** %12, align 8
  %61 = getelementptr inbounds %struct.storm_defs, %struct.storm_defs* %60, i32 0, i32 5
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.storm_defs*, %struct.storm_defs** %12, align 8
  %64 = getelementptr inbounds %struct.storm_defs, %struct.storm_defs* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 4
  %66 = load i64, i64* %11, align 8
  %67 = call i32 @qed_grc_dump_ctx_data(%struct.qed_hwfn* %50, %struct.qed_ptt* %51, i32* %55, i32 %56, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %59, i32 %62, i32 %65, i64 %66)
  %68 = load i32, i32* %10, align 4
  %69 = add nsw i32 %68, %67
  store i32 %69, i32* %10, align 4
  %70 = load i32, i32* @DBG_GRC_PARAM_NUM_LTIDS, align 4
  store i32 %70, i32* %9, align 4
  %71 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %72 = load %struct.qed_ptt*, %struct.qed_ptt** %6, align 8
  %73 = load i32*, i32** %7, align 8
  %74 = load i32, i32* %10, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %8, align 4
  %78 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %79 = load i32, i32* %9, align 4
  %80 = call i32 @qed_grc_get_param(%struct.qed_hwfn* %78, i32 %79)
  %81 = load %struct.storm_defs*, %struct.storm_defs** %12, align 8
  %82 = getelementptr inbounds %struct.storm_defs, %struct.storm_defs* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.storm_defs*, %struct.storm_defs** %12, align 8
  %85 = getelementptr inbounds %struct.storm_defs, %struct.storm_defs* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = load i64, i64* %11, align 8
  %88 = call i32 @qed_grc_dump_ctx_data(%struct.qed_hwfn* %71, %struct.qed_ptt* %72, i32* %76, i32 %77, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %80, i32 %83, i32 %86, i64 %87)
  %89 = load i32, i32* %10, align 4
  %90 = add nsw i32 %89, %88
  store i32 %90, i32* %10, align 4
  %91 = load i32, i32* @DBG_GRC_PARAM_NUM_LTIDS, align 4
  store i32 %91, i32* %9, align 4
  %92 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %93 = load %struct.qed_ptt*, %struct.qed_ptt** %6, align 8
  %94 = load i32*, i32** %7, align 8
  %95 = load i32, i32* %10, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load i32, i32* %8, align 4
  %99 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %100 = load i32, i32* %9, align 4
  %101 = call i32 @qed_grc_get_param(%struct.qed_hwfn* %99, i32 %100)
  %102 = load %struct.storm_defs*, %struct.storm_defs** %12, align 8
  %103 = getelementptr inbounds %struct.storm_defs, %struct.storm_defs* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.storm_defs*, %struct.storm_defs** %12, align 8
  %106 = getelementptr inbounds %struct.storm_defs, %struct.storm_defs* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i64, i64* %11, align 8
  %109 = call i32 @qed_grc_dump_ctx_data(%struct.qed_hwfn* %92, %struct.qed_ptt* %93, i32* %97, i32 %98, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %101, i32 %104, i32 %107, i64 %108)
  %110 = load i32, i32* %10, align 4
  %111 = add nsw i32 %110, %109
  store i32 %111, i32* %10, align 4
  br label %112

112:                                              ; preds = %27, %26
  %113 = load i64, i64* %11, align 8
  %114 = add i64 %113, 1
  store i64 %114, i64* %11, align 8
  br label %13

115:                                              ; preds = %13
  %116 = load i32, i32* %10, align 4
  ret i32 %116
}

declare dso_local i32 @qed_grc_is_storm_included(%struct.qed_hwfn*, i32) #1

declare dso_local i32 @qed_grc_dump_ctx_data(%struct.qed_hwfn*, %struct.qed_ptt*, i32*, i32, i8*, i32, i32, i32, i64) #1

declare dso_local i32 @qed_grc_get_param(%struct.qed_hwfn*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
