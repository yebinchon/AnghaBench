; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_tm.c_hclge_tm_pri_tc_base_shaper_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_tm.c_hclge_tm_pri_tc_base_shaper_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_dev = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@HCLGE_SHAPER_LVL_PRI = common dso_local global i32 0, align 4
@HCLGE_SHAPER_BS_U_DEF = common dso_local global i32 0, align 4
@HCLGE_SHAPER_BS_S_DEF = common dso_local global i32 0, align 4
@HCLGE_TM_SHAP_C_BUCKET = common dso_local global i32 0, align 4
@HCLGE_TM_SHAP_P_BUCKET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hclge_dev*)* @hclge_tm_pri_tc_base_shaper_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclge_tm_pri_tc_base_shaper_cfg(%struct.hclge_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hclge_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.hclge_dev* %0, %struct.hclge_dev** %3, align 8
  store i64 0, i64* %9, align 8
  br label %10

10:                                               ; preds = %62, %1
  %11 = load i64, i64* %9, align 8
  %12 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %13 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ult i64 %11, %15
  br i1 %16, label %17, label %65

17:                                               ; preds = %10
  %18 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %19 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = load i64, i64* %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @HCLGE_SHAPER_LVL_PRI, align 4
  %27 = call i32 @hclge_shaper_para_calc(i32 %25, i32 %26, i32* %5, i32* %4, i32* %6)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %17
  %31 = load i32, i32* %8, align 4
  store i32 %31, i32* %2, align 4
  br label %66

32:                                               ; preds = %17
  %33 = load i32, i32* @HCLGE_SHAPER_BS_U_DEF, align 4
  %34 = load i32, i32* @HCLGE_SHAPER_BS_S_DEF, align 4
  %35 = call i64 @hclge_tm_get_shapping_para(i32 0, i32 0, i32 0, i32 %33, i32 %34)
  store i64 %35, i64* %7, align 8
  %36 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %37 = load i32, i32* @HCLGE_TM_SHAP_C_BUCKET, align 4
  %38 = load i64, i64* %9, align 8
  %39 = load i64, i64* %7, align 8
  %40 = call i32 @hclge_tm_pri_shapping_cfg(%struct.hclge_dev* %36, i32 %37, i64 %38, i64 %39)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %32
  %44 = load i32, i32* %8, align 4
  store i32 %44, i32* %2, align 4
  br label %66

45:                                               ; preds = %32
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @HCLGE_SHAPER_BS_U_DEF, align 4
  %50 = load i32, i32* @HCLGE_SHAPER_BS_S_DEF, align 4
  %51 = call i64 @hclge_tm_get_shapping_para(i32 %46, i32 %47, i32 %48, i32 %49, i32 %50)
  store i64 %51, i64* %7, align 8
  %52 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %53 = load i32, i32* @HCLGE_TM_SHAP_P_BUCKET, align 4
  %54 = load i64, i64* %9, align 8
  %55 = load i64, i64* %7, align 8
  %56 = call i32 @hclge_tm_pri_shapping_cfg(%struct.hclge_dev* %52, i32 %53, i64 %54, i64 %55)
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %45
  %60 = load i32, i32* %8, align 4
  store i32 %60, i32* %2, align 4
  br label %66

61:                                               ; preds = %45
  br label %62

62:                                               ; preds = %61
  %63 = load i64, i64* %9, align 8
  %64 = add i64 %63, 1
  store i64 %64, i64* %9, align 8
  br label %10

65:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %66

66:                                               ; preds = %65, %59, %43, %30
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i32 @hclge_shaper_para_calc(i32, i32, i32*, i32*, i32*) #1

declare dso_local i64 @hclge_tm_get_shapping_para(i32, i32, i32, i32, i32) #1

declare dso_local i32 @hclge_tm_pri_shapping_cfg(%struct.hclge_dev*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
