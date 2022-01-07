; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_isppreview.c_preview_config_cfa.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_isppreview.c_preview_config_cfa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp_prev_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.prev_params = type { %struct.omap3isp_prev_cfa }
%struct.omap3isp_prev_cfa = type { i32, i32, i32** }
%struct.isp_device = type { i32 }

@preview_config_cfa.cfa_coef_order = internal constant [4 x [4 x i32]] [[4 x i32] [i32 0, i32 1, i32 2, i32 3], [4 x i32] [i32 1, i32 0, i32 3, i32 2], [4 x i32] [i32 2, i32 3, i32 0, i32 1], [4 x i32] [i32 3, i32 2, i32 1, i32 0]], align 16
@ISPPRV_CFA_GRADTH_VER_SHIFT = common dso_local global i32 0, align 4
@ISPPRV_CFA_GRADTH_HOR_SHIFT = common dso_local global i32 0, align 4
@OMAP3_ISP_IOMEM_PREV = common dso_local global i32 0, align 4
@ISPPRV_CFA = common dso_local global i32 0, align 4
@ISPPRV_CFA_TABLE_ADDR = common dso_local global i32 0, align 4
@ISPPRV_SET_TBL_ADDR = common dso_local global i32 0, align 4
@OMAP3ISP_PREV_CFA_BLK_SIZE = common dso_local global i32 0, align 4
@ISPPRV_SET_TBL_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isp_prev_device*, %struct.prev_params*)* @preview_config_cfa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @preview_config_cfa(%struct.isp_prev_device* %0, %struct.prev_params* %1) #0 {
  %3 = alloca %struct.isp_prev_device*, align 8
  %4 = alloca %struct.prev_params*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.omap3isp_prev_cfa*, align 8
  %7 = alloca %struct.isp_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store %struct.isp_prev_device* %0, %struct.isp_prev_device** %3, align 8
  store %struct.prev_params* %1, %struct.prev_params** %4, align 8
  %11 = load %struct.isp_prev_device*, %struct.isp_prev_device** %3, align 8
  %12 = getelementptr inbounds %struct.isp_prev_device, %struct.isp_prev_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* @preview_config_cfa.cfa_coef_order, i64 0, i64 %14
  %16 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 0
  store i32* %16, i32** %5, align 8
  %17 = load %struct.prev_params*, %struct.prev_params** %4, align 8
  %18 = getelementptr inbounds %struct.prev_params, %struct.prev_params* %17, i32 0, i32 0
  store %struct.omap3isp_prev_cfa* %18, %struct.omap3isp_prev_cfa** %6, align 8
  %19 = load %struct.isp_prev_device*, %struct.isp_prev_device** %3, align 8
  %20 = call %struct.isp_device* @to_isp_device(%struct.isp_prev_device* %19)
  store %struct.isp_device* %20, %struct.isp_device** %7, align 8
  %21 = load %struct.isp_device*, %struct.isp_device** %7, align 8
  %22 = load %struct.omap3isp_prev_cfa*, %struct.omap3isp_prev_cfa** %6, align 8
  %23 = getelementptr inbounds %struct.omap3isp_prev_cfa, %struct.omap3isp_prev_cfa* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @ISPPRV_CFA_GRADTH_VER_SHIFT, align 4
  %26 = shl i32 %24, %25
  %27 = load %struct.omap3isp_prev_cfa*, %struct.omap3isp_prev_cfa** %6, align 8
  %28 = getelementptr inbounds %struct.omap3isp_prev_cfa, %struct.omap3isp_prev_cfa* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @ISPPRV_CFA_GRADTH_HOR_SHIFT, align 4
  %31 = shl i32 %29, %30
  %32 = or i32 %26, %31
  %33 = load i32, i32* @OMAP3_ISP_IOMEM_PREV, align 4
  %34 = load i32, i32* @ISPPRV_CFA, align 4
  %35 = call i32 @isp_reg_writel(%struct.isp_device* %21, i32 %32, i32 %33, i32 %34)
  %36 = load %struct.isp_device*, %struct.isp_device** %7, align 8
  %37 = load i32, i32* @ISPPRV_CFA_TABLE_ADDR, align 4
  %38 = load i32, i32* @OMAP3_ISP_IOMEM_PREV, align 4
  %39 = load i32, i32* @ISPPRV_SET_TBL_ADDR, align 4
  %40 = call i32 @isp_reg_writel(%struct.isp_device* %36, i32 %37, i32 %38, i32 %39)
  store i32 0, i32* %8, align 4
  br label %41

41:                                               ; preds = %74, %2
  %42 = load i32, i32* %8, align 4
  %43 = icmp ult i32 %42, 4
  br i1 %43, label %44, label %77

44:                                               ; preds = %41
  %45 = load %struct.omap3isp_prev_cfa*, %struct.omap3isp_prev_cfa** %6, align 8
  %46 = getelementptr inbounds %struct.omap3isp_prev_cfa, %struct.omap3isp_prev_cfa* %45, i32 0, i32 2
  %47 = load i32**, i32*** %46, align 8
  %48 = load i32*, i32** %5, align 8
  %49 = load i32, i32* %8, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds i32*, i32** %47, i64 %53
  %55 = load i32*, i32** %54, align 8
  store i32* %55, i32** %10, align 8
  store i32 0, i32* %9, align 4
  br label %56

56:                                               ; preds = %70, %44
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* @OMAP3ISP_PREV_CFA_BLK_SIZE, align 4
  %59 = icmp ult i32 %57, %58
  br i1 %59, label %60, label %73

60:                                               ; preds = %56
  %61 = load %struct.isp_device*, %struct.isp_device** %7, align 8
  %62 = load i32*, i32** %10, align 8
  %63 = load i32, i32* %9, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @OMAP3_ISP_IOMEM_PREV, align 4
  %68 = load i32, i32* @ISPPRV_SET_TBL_DATA, align 4
  %69 = call i32 @isp_reg_writel(%struct.isp_device* %61, i32 %66, i32 %67, i32 %68)
  br label %70

70:                                               ; preds = %60
  %71 = load i32, i32* %9, align 4
  %72 = add i32 %71, 1
  store i32 %72, i32* %9, align 4
  br label %56

73:                                               ; preds = %56
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %8, align 4
  %76 = add i32 %75, 1
  store i32 %76, i32* %8, align 4
  br label %41

77:                                               ; preds = %41
  ret void
}

declare dso_local %struct.isp_device* @to_isp_device(%struct.isp_prev_device*) #1

declare dso_local i32 @isp_reg_writel(%struct.isp_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
