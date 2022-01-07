; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispccp2.c_ccp2_mem_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispccp2.c_ccp2_mem_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp_ccp2_device = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_3__ = type { i64 }
%struct.isp_interface_mem_config = type { i32, i64, i64 }
%struct.isp_device = type { i32 }

@CCP2_PAD_SINK = common dso_local global i64 0, align 8
@CCP2_PAD_SOURCE = common dso_local global i64 0, align 8
@MEDIA_BUS_FMT_SGRBG10_DPCM8_1X8 = common dso_local global i64 0, align 8
@ISPCCP2_LCM_HSIZE_SKIP_MIN = common dso_local global i32 0, align 4
@ISPCCP2_LCM_HSIZE_SHIFT = common dso_local global i32 0, align 4
@OMAP3_ISP_IOMEM_CCP2 = common dso_local global i32 0, align 4
@ISPCCP2_LCM_HSIZE = common dso_local global i32 0, align 4
@ISPCCP2_LCM_VSIZE_SHIFT = common dso_local global i64 0, align 8
@ISPCCP2_LCM_VSIZE = common dso_local global i32 0, align 4
@ISPCCP2_LCM_SRC_OFST = common dso_local global i32 0, align 4
@ISPCCP2_LCM_CTRL_DST_FORMAT_RAW10 = common dso_local global i64 0, align 8
@ISPCCP2_LCM_CTRL_DST_FORMAT_SHIFT = common dso_local global i64 0, align 8
@ISPCCP2_LCM_CTRL_SRC_FORMAT_RAW8 = common dso_local global i64 0, align 8
@ISPCCP2_LCM_CTRL_SRC_FORMAT_SHIFT = common dso_local global i64 0, align 8
@ISPCCP2_LCM_CTRL_SRC_DPCM_PRED = common dso_local global i64 0, align 8
@ISPCCP2_LCM_CTRL_SRC_DECOMPR_DPCM10 = common dso_local global i64 0, align 8
@ISPCCP2_LCM_CTRL_SRC_DECOMPR_SHIFT = common dso_local global i64 0, align 8
@ISPCCP2_LCM_CTRL_SRC_FORMAT_RAW10 = common dso_local global i64 0, align 8
@ISPCCP2_LCM_CTRL_BURST_SIZE_32X = common dso_local global i64 0, align 8
@ISPCCP2_LCM_CTRL_BURST_SIZE_SHIFT = common dso_local global i64 0, align 8
@ISPCCP2_LCM_CTRL = common dso_local global i32 0, align 4
@ISPCCP2_LCM_PREFETCH_SHIFT = common dso_local global i64 0, align 8
@ISPCCP2_LCM_PREFETCH = common dso_local global i32 0, align 4
@ISPCCP2_CTRL = common dso_local global i32 0, align 4
@ISPCCP2_CTRL_IO_OUT_SEL = common dso_local global i64 0, align 8
@ISPCCP2_CTRL_MODE = common dso_local global i64 0, align 8
@ISPCCP2_LCM_IRQSTATUS_OCPERROR_IRQ = common dso_local global i64 0, align 8
@ISPCCP2_LCM_IRQSTATUS_EOF_IRQ = common dso_local global i64 0, align 8
@ISPCCP2_LCM_IRQSTATUS = common dso_local global i32 0, align 4
@ISPCCP2_LCM_IRQENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isp_ccp2_device*, %struct.isp_interface_mem_config*)* @ccp2_mem_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ccp2_mem_configure(%struct.isp_ccp2_device* %0, %struct.isp_interface_mem_config* %1) #0 {
  %3 = alloca %struct.isp_ccp2_device*, align 8
  %4 = alloca %struct.isp_interface_mem_config*, align 8
  %5 = alloca %struct.isp_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.isp_ccp2_device* %0, %struct.isp_ccp2_device** %3, align 8
  store %struct.isp_interface_mem_config* %1, %struct.isp_interface_mem_config** %4, align 8
  %11 = load %struct.isp_ccp2_device*, %struct.isp_ccp2_device** %3, align 8
  %12 = call %struct.isp_device* @to_isp_device(%struct.isp_ccp2_device* %11)
  store %struct.isp_device* %12, %struct.isp_device** %5, align 8
  %13 = load %struct.isp_ccp2_device*, %struct.isp_ccp2_device** %3, align 8
  %14 = getelementptr inbounds %struct.isp_ccp2_device, %struct.isp_ccp2_device* %13, i32 0, i32 1
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = load i64, i64* @CCP2_PAD_SINK, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %6, align 8
  %20 = load %struct.isp_ccp2_device*, %struct.isp_ccp2_device** %3, align 8
  %21 = getelementptr inbounds %struct.isp_ccp2_device, %struct.isp_ccp2_device* %20, i32 0, i32 1
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = load i64, i64* @CCP2_PAD_SOURCE, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %7, align 8
  store i32 0, i32* %8, align 4
  %27 = load i64, i64* %6, align 8
  %28 = load i64, i64* %7, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %2
  %31 = load i64, i64* %6, align 8
  %32 = load i64, i64* @MEDIA_BUS_FMT_SGRBG10_DPCM8_1X8, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  store i32 1, i32* %8, align 4
  br label %35

35:                                               ; preds = %34, %30, %2
  %36 = load %struct.isp_ccp2_device*, %struct.isp_ccp2_device** %3, align 8
  %37 = call i32 @ccp2_pwr_cfg(%struct.isp_ccp2_device* %36)
  %38 = load %struct.isp_device*, %struct.isp_device** %5, align 8
  %39 = load i32, i32* @ISPCCP2_LCM_HSIZE_SKIP_MIN, align 4
  %40 = load %struct.isp_interface_mem_config*, %struct.isp_interface_mem_config** %4, align 8
  %41 = getelementptr inbounds %struct.isp_interface_mem_config, %struct.isp_interface_mem_config* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @ISPCCP2_LCM_HSIZE_SHIFT, align 4
  %44 = shl i32 %42, %43
  %45 = or i32 %39, %44
  %46 = sext i32 %45 to i64
  %47 = load i32, i32* @OMAP3_ISP_IOMEM_CCP2, align 4
  %48 = load i32, i32* @ISPCCP2_LCM_HSIZE, align 4
  %49 = call i32 @isp_reg_writel(%struct.isp_device* %38, i64 %46, i32 %47, i32 %48)
  %50 = load %struct.isp_device*, %struct.isp_device** %5, align 8
  %51 = load %struct.isp_interface_mem_config*, %struct.isp_interface_mem_config** %4, align 8
  %52 = getelementptr inbounds %struct.isp_interface_mem_config, %struct.isp_interface_mem_config* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @ISPCCP2_LCM_VSIZE_SHIFT, align 8
  %55 = shl i64 %53, %54
  %56 = load i32, i32* @OMAP3_ISP_IOMEM_CCP2, align 4
  %57 = load i32, i32* @ISPCCP2_LCM_VSIZE, align 4
  %58 = call i32 @isp_reg_writel(%struct.isp_device* %50, i64 %55, i32 %56, i32 %57)
  %59 = load %struct.isp_ccp2_device*, %struct.isp_ccp2_device** %3, align 8
  %60 = getelementptr inbounds %struct.isp_ccp2_device, %struct.isp_ccp2_device* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %35
  %65 = load %struct.isp_interface_mem_config*, %struct.isp_interface_mem_config** %4, align 8
  %66 = getelementptr inbounds %struct.isp_interface_mem_config, %struct.isp_interface_mem_config* %65, i32 0, i32 2
  store i64 0, i64* %66, align 8
  br label %74

67:                                               ; preds = %35
  %68 = load %struct.isp_ccp2_device*, %struct.isp_ccp2_device** %3, align 8
  %69 = getelementptr inbounds %struct.isp_ccp2_device, %struct.isp_ccp2_device* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.isp_interface_mem_config*, %struct.isp_interface_mem_config** %4, align 8
  %73 = getelementptr inbounds %struct.isp_interface_mem_config, %struct.isp_interface_mem_config* %72, i32 0, i32 2
  store i64 %71, i64* %73, align 8
  br label %74

74:                                               ; preds = %67, %64
  %75 = load %struct.isp_device*, %struct.isp_device** %5, align 8
  %76 = load %struct.isp_interface_mem_config*, %struct.isp_interface_mem_config** %4, align 8
  %77 = getelementptr inbounds %struct.isp_interface_mem_config, %struct.isp_interface_mem_config* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = load i32, i32* @OMAP3_ISP_IOMEM_CCP2, align 4
  %80 = load i32, i32* @ISPCCP2_LCM_SRC_OFST, align 4
  %81 = call i32 @isp_reg_writel(%struct.isp_device* %75, i64 %78, i32 %79, i32 %80)
  %82 = load i64, i64* @ISPCCP2_LCM_CTRL_DST_FORMAT_RAW10, align 8
  %83 = load i64, i64* @ISPCCP2_LCM_CTRL_DST_FORMAT_SHIFT, align 8
  %84 = shl i64 %82, %83
  store i64 %84, i64* %9, align 8
  %85 = load i32, i32* %8, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %101

87:                                               ; preds = %74
  %88 = load i64, i64* @ISPCCP2_LCM_CTRL_SRC_FORMAT_RAW8, align 8
  %89 = load i64, i64* @ISPCCP2_LCM_CTRL_SRC_FORMAT_SHIFT, align 8
  %90 = shl i64 %88, %89
  %91 = load i64, i64* %9, align 8
  %92 = or i64 %91, %90
  store i64 %92, i64* %9, align 8
  %93 = load i64, i64* @ISPCCP2_LCM_CTRL_SRC_DPCM_PRED, align 8
  %94 = load i64, i64* %9, align 8
  %95 = or i64 %94, %93
  store i64 %95, i64* %9, align 8
  %96 = load i64, i64* @ISPCCP2_LCM_CTRL_SRC_DECOMPR_DPCM10, align 8
  %97 = load i64, i64* @ISPCCP2_LCM_CTRL_SRC_DECOMPR_SHIFT, align 8
  %98 = shl i64 %96, %97
  %99 = load i64, i64* %9, align 8
  %100 = or i64 %99, %98
  store i64 %100, i64* %9, align 8
  br label %107

101:                                              ; preds = %74
  %102 = load i64, i64* @ISPCCP2_LCM_CTRL_SRC_FORMAT_RAW10, align 8
  %103 = load i64, i64* @ISPCCP2_LCM_CTRL_SRC_FORMAT_SHIFT, align 8
  %104 = shl i64 %102, %103
  %105 = load i64, i64* %9, align 8
  %106 = or i64 %105, %104
  store i64 %106, i64* %9, align 8
  br label %107

107:                                              ; preds = %101, %87
  %108 = load i64, i64* @ISPCCP2_LCM_CTRL_BURST_SIZE_32X, align 8
  %109 = load i64, i64* @ISPCCP2_LCM_CTRL_BURST_SIZE_SHIFT, align 8
  %110 = shl i64 %108, %109
  %111 = load i64, i64* %9, align 8
  %112 = or i64 %111, %110
  store i64 %112, i64* %9, align 8
  %113 = load %struct.isp_device*, %struct.isp_device** %5, align 8
  %114 = load i64, i64* %9, align 8
  %115 = load i32, i32* @OMAP3_ISP_IOMEM_CCP2, align 4
  %116 = load i32, i32* @ISPCCP2_LCM_CTRL, align 4
  %117 = call i32 @isp_reg_writel(%struct.isp_device* %113, i64 %114, i32 %115, i32 %116)
  %118 = load i32, i32* %8, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %128

120:                                              ; preds = %107
  %121 = load i32, i32* @ISPCCP2_LCM_HSIZE_SKIP_MIN, align 4
  %122 = load %struct.isp_interface_mem_config*, %struct.isp_interface_mem_config** %4, align 8
  %123 = getelementptr inbounds %struct.isp_interface_mem_config, %struct.isp_interface_mem_config* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = add nsw i32 %121, %124
  %126 = ashr i32 %125, 3
  %127 = sext i32 %126 to i64
  store i64 %127, i64* %10, align 8
  br label %136

128:                                              ; preds = %107
  %129 = load i32, i32* @ISPCCP2_LCM_HSIZE_SKIP_MIN, align 4
  %130 = load %struct.isp_interface_mem_config*, %struct.isp_interface_mem_config** %4, align 8
  %131 = getelementptr inbounds %struct.isp_interface_mem_config, %struct.isp_interface_mem_config* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = add nsw i32 %129, %132
  %134 = ashr i32 %133, 2
  %135 = sext i32 %134 to i64
  store i64 %135, i64* %10, align 8
  br label %136

136:                                              ; preds = %128, %120
  %137 = load %struct.isp_device*, %struct.isp_device** %5, align 8
  %138 = load i64, i64* %10, align 8
  %139 = load i64, i64* @ISPCCP2_LCM_PREFETCH_SHIFT, align 8
  %140 = shl i64 %138, %139
  %141 = load i32, i32* @OMAP3_ISP_IOMEM_CCP2, align 4
  %142 = load i32, i32* @ISPCCP2_LCM_PREFETCH, align 4
  %143 = call i32 @isp_reg_writel(%struct.isp_device* %137, i64 %140, i32 %141, i32 %142)
  %144 = load %struct.isp_device*, %struct.isp_device** %5, align 8
  %145 = load i32, i32* @OMAP3_ISP_IOMEM_CCP2, align 4
  %146 = load i32, i32* @ISPCCP2_CTRL, align 4
  %147 = load i64, i64* @ISPCCP2_CTRL_IO_OUT_SEL, align 8
  %148 = load i64, i64* @ISPCCP2_CTRL_MODE, align 8
  %149 = or i64 %147, %148
  %150 = call i32 @isp_reg_set(%struct.isp_device* %144, i32 %145, i32 %146, i64 %149)
  %151 = load %struct.isp_ccp2_device*, %struct.isp_ccp2_device** %3, align 8
  %152 = load %struct.isp_ccp2_device*, %struct.isp_ccp2_device** %3, align 8
  %153 = call i32 @ccp2_adjust_bandwidth(%struct.isp_ccp2_device* %152)
  %154 = call i32 @ccp2_vp_config(%struct.isp_ccp2_device* %151, i32 %153)
  %155 = load %struct.isp_device*, %struct.isp_device** %5, align 8
  %156 = load i64, i64* @ISPCCP2_LCM_IRQSTATUS_OCPERROR_IRQ, align 8
  %157 = load i64, i64* @ISPCCP2_LCM_IRQSTATUS_EOF_IRQ, align 8
  %158 = or i64 %156, %157
  %159 = load i32, i32* @OMAP3_ISP_IOMEM_CCP2, align 4
  %160 = load i32, i32* @ISPCCP2_LCM_IRQSTATUS, align 4
  %161 = call i32 @isp_reg_writel(%struct.isp_device* %155, i64 %158, i32 %159, i32 %160)
  %162 = load %struct.isp_device*, %struct.isp_device** %5, align 8
  %163 = load i32, i32* @OMAP3_ISP_IOMEM_CCP2, align 4
  %164 = load i32, i32* @ISPCCP2_LCM_IRQENABLE, align 4
  %165 = load i64, i64* @ISPCCP2_LCM_IRQSTATUS_EOF_IRQ, align 8
  %166 = load i64, i64* @ISPCCP2_LCM_IRQSTATUS_OCPERROR_IRQ, align 8
  %167 = or i64 %165, %166
  %168 = call i32 @isp_reg_set(%struct.isp_device* %162, i32 %163, i32 %164, i64 %167)
  ret void
}

declare dso_local %struct.isp_device* @to_isp_device(%struct.isp_ccp2_device*) #1

declare dso_local i32 @ccp2_pwr_cfg(%struct.isp_ccp2_device*) #1

declare dso_local i32 @isp_reg_writel(%struct.isp_device*, i64, i32, i32) #1

declare dso_local i32 @isp_reg_set(%struct.isp_device*, i32, i32, i64) #1

declare dso_local i32 @ccp2_vp_config(%struct.isp_ccp2_device*, i32) #1

declare dso_local i32 @ccp2_adjust_bandwidth(%struct.isp_ccp2_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
