; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispccp2.c_ccp2_phyif_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispccp2.c_ccp2_phyif_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp_ccp2_device = type { i32 }
%struct.isp_ccp2_cfg = type { i64, i64, i64, i64 }
%struct.isp_device = type { i32 }

@OMAP3_ISP_IOMEM_CCP2 = common dso_local global i32 0, align 4
@ISPCCP2_CTRL = common dso_local global i32 0, align 4
@ISPCCP2_CTRL_MODE = common dso_local global i32 0, align 4
@ISPCCP2_CTRL_PHY_SEL_SHIFT = common dso_local global i32 0, align 4
@ISPCCP2_CTRL_PHY_SEL_MASK = common dso_local global i32 0, align 4
@ISPCCP2_CTRL_IO_OUT_SEL_SHIFT = common dso_local global i32 0, align 4
@ISPCCP2_CTRL_IO_OUT_SEL_MASK = common dso_local global i32 0, align 4
@ISPCCP2_CTRL_INV_SHIFT = common dso_local global i32 0, align 4
@ISPCCP2_CTRL_INV_MASK = common dso_local global i32 0, align 4
@ISPCCP2_CTRL_VP_CLK_POL_SHIFT = common dso_local global i32 0, align 4
@ISPCCP2_CTRL_VP_CLK_POL_MASK = common dso_local global i32 0, align 4
@ISP_CCP2_MODE_CCP2 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"OMAP3 CCP2 bus not available\0A\00", align 1
@ISP_CCP2_PHY_DATA_STROBE = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.isp_ccp2_device*, %struct.isp_ccp2_cfg*)* @ccp2_phyif_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccp2_phyif_config(%struct.isp_ccp2_device* %0, %struct.isp_ccp2_cfg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.isp_ccp2_device*, align 8
  %5 = alloca %struct.isp_ccp2_cfg*, align 8
  %6 = alloca %struct.isp_device*, align 8
  %7 = alloca i32, align 4
  store %struct.isp_ccp2_device* %0, %struct.isp_ccp2_device** %4, align 8
  store %struct.isp_ccp2_cfg* %1, %struct.isp_ccp2_cfg** %5, align 8
  %8 = load %struct.isp_ccp2_device*, %struct.isp_ccp2_device** %4, align 8
  %9 = call %struct.isp_device* @to_isp_device(%struct.isp_ccp2_device* %8)
  store %struct.isp_device* %9, %struct.isp_device** %6, align 8
  %10 = load %struct.isp_device*, %struct.isp_device** %6, align 8
  %11 = load i32, i32* @OMAP3_ISP_IOMEM_CCP2, align 4
  %12 = load i32, i32* @ISPCCP2_CTRL, align 4
  %13 = call i32 @isp_reg_readl(%struct.isp_device* %10, i32 %11, i32 %12)
  %14 = load i32, i32* @ISPCCP2_CTRL_MODE, align 4
  %15 = or i32 %13, %14
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @ISPCCP2_CTRL_PHY_SEL_SHIFT, align 4
  %18 = load i32, i32* @ISPCCP2_CTRL_PHY_SEL_MASK, align 4
  %19 = load %struct.isp_ccp2_cfg*, %struct.isp_ccp2_cfg** %5, align 8
  %20 = getelementptr inbounds %struct.isp_ccp2_cfg, %struct.isp_ccp2_cfg* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @BIT_SET(i32 %16, i32 %17, i32 %18, i64 %21)
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @ISPCCP2_CTRL_IO_OUT_SEL_SHIFT, align 4
  %25 = load i32, i32* @ISPCCP2_CTRL_IO_OUT_SEL_MASK, align 4
  %26 = load %struct.isp_ccp2_cfg*, %struct.isp_ccp2_cfg** %5, align 8
  %27 = getelementptr inbounds %struct.isp_ccp2_cfg, %struct.isp_ccp2_cfg* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @BIT_SET(i32 %23, i32 %24, i32 %25, i64 %28)
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @ISPCCP2_CTRL_INV_SHIFT, align 4
  %32 = load i32, i32* @ISPCCP2_CTRL_INV_MASK, align 4
  %33 = load %struct.isp_ccp2_cfg*, %struct.isp_ccp2_cfg** %5, align 8
  %34 = getelementptr inbounds %struct.isp_ccp2_cfg, %struct.isp_ccp2_cfg* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @BIT_SET(i32 %30, i32 %31, i32 %32, i64 %35)
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @ISPCCP2_CTRL_VP_CLK_POL_SHIFT, align 4
  %39 = load i32, i32* @ISPCCP2_CTRL_VP_CLK_POL_MASK, align 4
  %40 = load %struct.isp_ccp2_cfg*, %struct.isp_ccp2_cfg** %5, align 8
  %41 = getelementptr inbounds %struct.isp_ccp2_cfg, %struct.isp_ccp2_cfg* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @BIT_SET(i32 %37, i32 %38, i32 %39, i64 %42)
  %44 = load %struct.isp_device*, %struct.isp_device** %6, align 8
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @OMAP3_ISP_IOMEM_CCP2, align 4
  %47 = load i32, i32* @ISPCCP2_CTRL, align 4
  %48 = call i32 @isp_reg_writel(%struct.isp_device* %44, i32 %45, i32 %46, i32 %47)
  %49 = load %struct.isp_device*, %struct.isp_device** %6, align 8
  %50 = load i32, i32* @OMAP3_ISP_IOMEM_CCP2, align 4
  %51 = load i32, i32* @ISPCCP2_CTRL, align 4
  %52 = call i32 @isp_reg_readl(%struct.isp_device* %49, i32 %50, i32 %51)
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* @ISPCCP2_CTRL_MODE, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %78, label %57

57:                                               ; preds = %2
  %58 = load %struct.isp_ccp2_cfg*, %struct.isp_ccp2_cfg** %5, align 8
  %59 = getelementptr inbounds %struct.isp_ccp2_cfg, %struct.isp_ccp2_cfg* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @ISP_CCP2_MODE_CCP2, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %57
  %64 = load %struct.isp_device*, %struct.isp_device** %6, align 8
  %65 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @dev_warn(i32 %66, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %68

68:                                               ; preds = %63, %57
  %69 = load %struct.isp_ccp2_cfg*, %struct.isp_ccp2_cfg** %5, align 8
  %70 = getelementptr inbounds %struct.isp_ccp2_cfg, %struct.isp_ccp2_cfg* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @ISP_CCP2_PHY_DATA_STROBE, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %68
  %75 = load i32, i32* @EIO, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %3, align 4
  br label %79

77:                                               ; preds = %68
  br label %78

78:                                               ; preds = %77, %2
  store i32 0, i32* %3, align 4
  br label %79

79:                                               ; preds = %78, %74
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local %struct.isp_device* @to_isp_device(%struct.isp_ccp2_device*) #1

declare dso_local i32 @isp_reg_readl(%struct.isp_device*, i32, i32) #1

declare dso_local i32 @BIT_SET(i32, i32, i32, i64) #1

declare dso_local i32 @isp_reg_writel(%struct.isp_device*, i32, i32, i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
