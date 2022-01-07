; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispccp2.c_ccp2_lcx_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispccp2.c_ccp2_lcx_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp_ccp2_device = type { i32 }
%struct.isp_interface_lcx_config = type { i32, i32, i32, i32 }
%struct.isp_device = type { i64 }

@ISPCCP2_LCx_CTRL_FORMAT_RAW8_DPCM10_VP = common dso_local global i32 0, align 4
@ISPCCP2_LCx_CTRL_FORMAT_RAW10_VP = common dso_local global i32 0, align 4
@OMAP3_ISP_IOMEM_CCP2 = common dso_local global i32 0, align 4
@ISPCCP2_LCx_CTRL_REGION_EN = common dso_local global i32 0, align 4
@ISP_REVISION_15_0 = common dso_local global i64 0, align 8
@ISPCCP2_LCx_CTRL_CRC_SHIFT_15_0 = common dso_local global i32 0, align 4
@ISPCCP2_LCx_CTRL_CRC_MASK = common dso_local global i32 0, align 4
@ISPCCP2_LCx_CTRL_FORMAT_SHIFT_15_0 = common dso_local global i32 0, align 4
@ISPCCP2_LCx_CTRL_FORMAT_MASK_15_0 = common dso_local global i32 0, align 4
@ISPCCP2_LCx_CTRL_CRC_SHIFT = common dso_local global i32 0, align 4
@ISPCCP2_LCx_CTRL_FORMAT_SHIFT = common dso_local global i32 0, align 4
@ISPCCP2_LCx_CTRL_FORMAT_MASK = common dso_local global i32 0, align 4
@ISPCCP2_LCx_DAT_SHIFT = common dso_local global i32 0, align 4
@ISPCCP2_LC01_IRQSTATUS_LC0_FIFO_OVF_IRQ = common dso_local global i32 0, align 4
@ISPCCP2_LC01_IRQSTATUS_LC0_CRC_IRQ = common dso_local global i32 0, align 4
@ISPCCP2_LC01_IRQSTATUS_LC0_FSP_IRQ = common dso_local global i32 0, align 4
@ISPCCP2_LC01_IRQSTATUS_LC0_FW_IRQ = common dso_local global i32 0, align 4
@ISPCCP2_LC01_IRQSTATUS_LC0_FSC_IRQ = common dso_local global i32 0, align 4
@ISPCCP2_LC01_IRQSTATUS_LC0_SSC_IRQ = common dso_local global i32 0, align 4
@ISPCCP2_LC01_IRQSTATUS = common dso_local global i32 0, align 4
@ISPCCP2_LC01_IRQENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isp_ccp2_device*, %struct.isp_interface_lcx_config*)* @ccp2_lcx_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ccp2_lcx_config(%struct.isp_ccp2_device* %0, %struct.isp_interface_lcx_config* %1) #0 {
  %3 = alloca %struct.isp_ccp2_device*, align 8
  %4 = alloca %struct.isp_interface_lcx_config*, align 8
  %5 = alloca %struct.isp_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.isp_ccp2_device* %0, %struct.isp_ccp2_device** %3, align 8
  store %struct.isp_interface_lcx_config* %1, %struct.isp_interface_lcx_config** %4, align 8
  %8 = load %struct.isp_ccp2_device*, %struct.isp_ccp2_device** %3, align 8
  %9 = call %struct.isp_device* @to_isp_device(%struct.isp_ccp2_device* %8)
  store %struct.isp_device* %9, %struct.isp_device** %5, align 8
  %10 = load %struct.isp_interface_lcx_config*, %struct.isp_interface_lcx_config** %4, align 8
  %11 = getelementptr inbounds %struct.isp_interface_lcx_config, %struct.isp_interface_lcx_config* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %16 [
    i32 128, label %13
    i32 129, label %15
  ]

13:                                               ; preds = %2
  %14 = load i32, i32* @ISPCCP2_LCx_CTRL_FORMAT_RAW8_DPCM10_VP, align 4
  store i32 %14, i32* %7, align 4
  br label %18

15:                                               ; preds = %2
  br label %16

16:                                               ; preds = %2, %15
  %17 = load i32, i32* @ISPCCP2_LCx_CTRL_FORMAT_RAW10_VP, align 4
  store i32 %17, i32* %7, align 4
  br label %18

18:                                               ; preds = %16, %13
  %19 = load %struct.isp_device*, %struct.isp_device** %5, align 8
  %20 = load i32, i32* @OMAP3_ISP_IOMEM_CCP2, align 4
  %21 = call i32 @ISPCCP2_LCx_CTRL(i32 0)
  %22 = call i32 @isp_reg_readl(%struct.isp_device* %19, i32 %20, i32 %21)
  %23 = load i32, i32* @ISPCCP2_LCx_CTRL_REGION_EN, align 4
  %24 = or i32 %22, %23
  store i32 %24, i32* %6, align 4
  %25 = load %struct.isp_device*, %struct.isp_device** %5, align 8
  %26 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @ISP_REVISION_15_0, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %43

30:                                               ; preds = %18
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @ISPCCP2_LCx_CTRL_CRC_SHIFT_15_0, align 4
  %33 = load i32, i32* @ISPCCP2_LCx_CTRL_CRC_MASK, align 4
  %34 = load %struct.isp_interface_lcx_config*, %struct.isp_interface_lcx_config** %4, align 8
  %35 = getelementptr inbounds %struct.isp_interface_lcx_config, %struct.isp_interface_lcx_config* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @BIT_SET(i32 %31, i32 %32, i32 %33, i32 %36)
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @ISPCCP2_LCx_CTRL_FORMAT_SHIFT_15_0, align 4
  %40 = load i32, i32* @ISPCCP2_LCx_CTRL_FORMAT_MASK_15_0, align 4
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @BIT_SET(i32 %38, i32 %39, i32 %40, i32 %41)
  br label %56

43:                                               ; preds = %18
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @ISPCCP2_LCx_CTRL_CRC_SHIFT, align 4
  %46 = load i32, i32* @ISPCCP2_LCx_CTRL_CRC_MASK, align 4
  %47 = load %struct.isp_interface_lcx_config*, %struct.isp_interface_lcx_config** %4, align 8
  %48 = getelementptr inbounds %struct.isp_interface_lcx_config, %struct.isp_interface_lcx_config* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @BIT_SET(i32 %44, i32 %45, i32 %46, i32 %49)
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @ISPCCP2_LCx_CTRL_FORMAT_SHIFT, align 4
  %53 = load i32, i32* @ISPCCP2_LCx_CTRL_FORMAT_MASK, align 4
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @BIT_SET(i32 %51, i32 %52, i32 %53, i32 %54)
  br label %56

56:                                               ; preds = %43, %30
  %57 = load %struct.isp_device*, %struct.isp_device** %5, align 8
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @OMAP3_ISP_IOMEM_CCP2, align 4
  %60 = call i32 @ISPCCP2_LCx_CTRL(i32 0)
  %61 = call i32 @isp_reg_writel(%struct.isp_device* %57, i32 %58, i32 %59, i32 %60)
  %62 = load %struct.isp_device*, %struct.isp_device** %5, align 8
  %63 = load %struct.isp_interface_lcx_config*, %struct.isp_interface_lcx_config** %4, align 8
  %64 = getelementptr inbounds %struct.isp_interface_lcx_config, %struct.isp_interface_lcx_config* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @ISPCCP2_LCx_DAT_SHIFT, align 4
  %67 = shl i32 %65, %66
  %68 = load i32, i32* @OMAP3_ISP_IOMEM_CCP2, align 4
  %69 = call i32 @ISPCCP2_LCx_DAT_START(i32 0)
  %70 = call i32 @isp_reg_writel(%struct.isp_device* %62, i32 %67, i32 %68, i32 %69)
  %71 = load %struct.isp_device*, %struct.isp_device** %5, align 8
  %72 = load %struct.isp_interface_lcx_config*, %struct.isp_interface_lcx_config** %4, align 8
  %73 = getelementptr inbounds %struct.isp_interface_lcx_config, %struct.isp_interface_lcx_config* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @ISPCCP2_LCx_DAT_SHIFT, align 4
  %76 = shl i32 %74, %75
  %77 = load i32, i32* @OMAP3_ISP_IOMEM_CCP2, align 4
  %78 = call i32 @ISPCCP2_LCx_DAT_SIZE(i32 0)
  %79 = call i32 @isp_reg_writel(%struct.isp_device* %71, i32 %76, i32 %77, i32 %78)
  %80 = load i32, i32* @ISPCCP2_LC01_IRQSTATUS_LC0_FIFO_OVF_IRQ, align 4
  %81 = load i32, i32* @ISPCCP2_LC01_IRQSTATUS_LC0_CRC_IRQ, align 4
  %82 = or i32 %80, %81
  %83 = load i32, i32* @ISPCCP2_LC01_IRQSTATUS_LC0_FSP_IRQ, align 4
  %84 = or i32 %82, %83
  %85 = load i32, i32* @ISPCCP2_LC01_IRQSTATUS_LC0_FW_IRQ, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* @ISPCCP2_LC01_IRQSTATUS_LC0_FSC_IRQ, align 4
  %88 = or i32 %86, %87
  %89 = load i32, i32* @ISPCCP2_LC01_IRQSTATUS_LC0_SSC_IRQ, align 4
  %90 = or i32 %88, %89
  store i32 %90, i32* %6, align 4
  %91 = load %struct.isp_device*, %struct.isp_device** %5, align 8
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* @OMAP3_ISP_IOMEM_CCP2, align 4
  %94 = load i32, i32* @ISPCCP2_LC01_IRQSTATUS, align 4
  %95 = call i32 @isp_reg_writel(%struct.isp_device* %91, i32 %92, i32 %93, i32 %94)
  %96 = load %struct.isp_device*, %struct.isp_device** %5, align 8
  %97 = load i32, i32* @OMAP3_ISP_IOMEM_CCP2, align 4
  %98 = load i32, i32* @ISPCCP2_LC01_IRQENABLE, align 4
  %99 = load i32, i32* %6, align 4
  %100 = call i32 @isp_reg_set(%struct.isp_device* %96, i32 %97, i32 %98, i32 %99)
  ret void
}

declare dso_local %struct.isp_device* @to_isp_device(%struct.isp_ccp2_device*) #1

declare dso_local i32 @isp_reg_readl(%struct.isp_device*, i32, i32) #1

declare dso_local i32 @ISPCCP2_LCx_CTRL(i32) #1

declare dso_local i32 @BIT_SET(i32, i32, i32, i32) #1

declare dso_local i32 @isp_reg_writel(%struct.isp_device*, i32, i32, i32) #1

declare dso_local i32 @ISPCCP2_LCx_DAT_START(i32) #1

declare dso_local i32 @ISPCCP2_LCx_DAT_SIZE(i32) #1

declare dso_local i32 @isp_reg_set(%struct.isp_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
