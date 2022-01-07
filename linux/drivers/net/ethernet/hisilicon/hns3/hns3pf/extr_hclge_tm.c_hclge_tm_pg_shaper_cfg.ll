; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_tm.c_hclge_tm_pg_shaper_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_tm.c_hclge_tm_pg_shaper_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_dev = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@HCLGE_FLAG_TC_BASE_SCH_MODE = common dso_local global i64 0, align 8
@HCLGE_SHAPER_LVL_PG = common dso_local global i32 0, align 4
@HCLGE_SHAPER_BS_U_DEF = common dso_local global i32 0, align 4
@HCLGE_SHAPER_BS_S_DEF = common dso_local global i32 0, align 4
@HCLGE_TM_SHAP_C_BUCKET = common dso_local global i32 0, align 4
@HCLGE_TM_SHAP_P_BUCKET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hclge_dev*)* @hclge_tm_pg_shaper_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclge_tm_pg_shaper_cfg(%struct.hclge_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hclge_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.hclge_dev* %0, %struct.hclge_dev** %3, align 8
  %10 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %11 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @HCLGE_FLAG_TC_BASE_SCH_MODE, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %73

16:                                               ; preds = %1
  store i64 0, i64* %9, align 8
  br label %17

17:                                               ; preds = %69, %16
  %18 = load i64, i64* %9, align 8
  %19 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %20 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ult i64 %18, %22
  br i1 %23, label %24, label %72

24:                                               ; preds = %17
  %25 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %26 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = load i64, i64* %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @HCLGE_SHAPER_LVL_PG, align 4
  %34 = call i32 @hclge_shaper_para_calc(i32 %32, i32 %33, i32* %5, i32* %4, i32* %6)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %24
  %38 = load i32, i32* %8, align 4
  store i32 %38, i32* %2, align 4
  br label %73

39:                                               ; preds = %24
  %40 = load i32, i32* @HCLGE_SHAPER_BS_U_DEF, align 4
  %41 = load i32, i32* @HCLGE_SHAPER_BS_S_DEF, align 4
  %42 = call i64 @hclge_tm_get_shapping_para(i32 0, i32 0, i32 0, i32 %40, i32 %41)
  store i64 %42, i64* %7, align 8
  %43 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %44 = load i32, i32* @HCLGE_TM_SHAP_C_BUCKET, align 4
  %45 = load i64, i64* %9, align 8
  %46 = load i64, i64* %7, align 8
  %47 = call i32 @hclge_tm_pg_shapping_cfg(%struct.hclge_dev* %43, i32 %44, i64 %45, i64 %46)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %39
  %51 = load i32, i32* %8, align 4
  store i32 %51, i32* %2, align 4
  br label %73

52:                                               ; preds = %39
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @HCLGE_SHAPER_BS_U_DEF, align 4
  %57 = load i32, i32* @HCLGE_SHAPER_BS_S_DEF, align 4
  %58 = call i64 @hclge_tm_get_shapping_para(i32 %53, i32 %54, i32 %55, i32 %56, i32 %57)
  store i64 %58, i64* %7, align 8
  %59 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %60 = load i32, i32* @HCLGE_TM_SHAP_P_BUCKET, align 4
  %61 = load i64, i64* %9, align 8
  %62 = load i64, i64* %7, align 8
  %63 = call i32 @hclge_tm_pg_shapping_cfg(%struct.hclge_dev* %59, i32 %60, i64 %61, i64 %62)
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %8, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %52
  %67 = load i32, i32* %8, align 4
  store i32 %67, i32* %2, align 4
  br label %73

68:                                               ; preds = %52
  br label %69

69:                                               ; preds = %68
  %70 = load i64, i64* %9, align 8
  %71 = add i64 %70, 1
  store i64 %71, i64* %9, align 8
  br label %17

72:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %73

73:                                               ; preds = %72, %66, %50, %37, %15
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local i32 @hclge_shaper_para_calc(i32, i32, i32*, i32*, i32*) #1

declare dso_local i64 @hclge_tm_get_shapping_para(i32, i32, i32, i32, i32) #1

declare dso_local i32 @hclge_tm_pg_shapping_cfg(%struct.hclge_dev*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
