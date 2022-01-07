; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_tm.c_hclge_tm_pri_vnet_base_shaper_pri_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_tm.c_hclge_tm_pri_vnet_base_shaper_pri_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_vport = type { i32, i32, %struct.hclge_dev* }
%struct.hclge_dev = type { i32 }

@HCLGE_SHAPER_LVL_VF = common dso_local global i32 0, align 4
@HCLGE_SHAPER_BS_U_DEF = common dso_local global i32 0, align 4
@HCLGE_SHAPER_BS_S_DEF = common dso_local global i32 0, align 4
@HCLGE_TM_SHAP_C_BUCKET = common dso_local global i32 0, align 4
@HCLGE_TM_SHAP_P_BUCKET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hclge_vport*)* @hclge_tm_pri_vnet_base_shaper_pri_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclge_tm_pri_vnet_base_shaper_pri_cfg(%struct.hclge_vport* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hclge_vport*, align 8
  %4 = alloca %struct.hclge_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.hclge_vport* %0, %struct.hclge_vport** %3, align 8
  %10 = load %struct.hclge_vport*, %struct.hclge_vport** %3, align 8
  %11 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %10, i32 0, i32 2
  %12 = load %struct.hclge_dev*, %struct.hclge_dev** %11, align 8
  store %struct.hclge_dev* %12, %struct.hclge_dev** %4, align 8
  %13 = load %struct.hclge_vport*, %struct.hclge_vport** %3, align 8
  %14 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @HCLGE_SHAPER_LVL_VF, align 4
  %17 = call i32 @hclge_shaper_para_calc(i32 %15, i32 %16, i32* %6, i32* %5, i32* %7)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* %9, align 4
  store i32 %21, i32* %2, align 4
  br label %56

22:                                               ; preds = %1
  %23 = load i32, i32* @HCLGE_SHAPER_BS_U_DEF, align 4
  %24 = load i32, i32* @HCLGE_SHAPER_BS_S_DEF, align 4
  %25 = call i32 @hclge_tm_get_shapping_para(i32 0, i32 0, i32 0, i32 %23, i32 %24)
  store i32 %25, i32* %8, align 4
  %26 = load %struct.hclge_dev*, %struct.hclge_dev** %4, align 8
  %27 = load i32, i32* @HCLGE_TM_SHAP_C_BUCKET, align 4
  %28 = load %struct.hclge_vport*, %struct.hclge_vport** %3, align 8
  %29 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @hclge_tm_pri_shapping_cfg(%struct.hclge_dev* %26, i32 %27, i32 %30, i32 %31)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %22
  %36 = load i32, i32* %9, align 4
  store i32 %36, i32* %2, align 4
  br label %56

37:                                               ; preds = %22
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @HCLGE_SHAPER_BS_U_DEF, align 4
  %42 = load i32, i32* @HCLGE_SHAPER_BS_S_DEF, align 4
  %43 = call i32 @hclge_tm_get_shapping_para(i32 %38, i32 %39, i32 %40, i32 %41, i32 %42)
  store i32 %43, i32* %8, align 4
  %44 = load %struct.hclge_dev*, %struct.hclge_dev** %4, align 8
  %45 = load i32, i32* @HCLGE_TM_SHAP_P_BUCKET, align 4
  %46 = load %struct.hclge_vport*, %struct.hclge_vport** %3, align 8
  %47 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @hclge_tm_pri_shapping_cfg(%struct.hclge_dev* %44, i32 %45, i32 %48, i32 %49)
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %9, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %37
  %54 = load i32, i32* %9, align 4
  store i32 %54, i32* %2, align 4
  br label %56

55:                                               ; preds = %37
  store i32 0, i32* %2, align 4
  br label %56

56:                                               ; preds = %55, %53, %35, %20
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @hclge_shaper_para_calc(i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @hclge_tm_get_shapping_para(i32, i32, i32, i32, i32) #1

declare dso_local i32 @hclge_tm_pri_shapping_cfg(%struct.hclge_dev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
