; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_isppreview.c_preview_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_isppreview.c_preview_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp_prev_device = type { i64, i32, %struct.TYPE_2__, %struct.v4l2_mbus_framefmt* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.v4l2_mbus_framefmt = type { i32, i32 }
%struct.isp_device = type { i32 }
%struct.isp_format_info = type { i32 }

@PREV_PAD_SINK = common dso_local global i64 0, align 8
@PREVIEW_INPUT_CCDC = common dso_local global i64 0, align 8
@PREV_PAD_SOURCE = common dso_local global i64 0, align 8
@PREVIEW_OUTPUT_MEMORY = common dso_local global i32 0, align 4
@OMAP3_ISP_IOMEM_PREV = common dso_local global i32 0, align 4
@ISPPRV_PCR = common dso_local global i32 0, align 4
@ISPPRV_PCR_SDRPORT = common dso_local global i32 0, align 4
@PREVIEW_OUTPUT_RESIZER = common dso_local global i32 0, align 4
@ISPPRV_PCR_RSZPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isp_prev_device*)* @preview_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @preview_configure(%struct.isp_prev_device* %0) #0 {
  %2 = alloca %struct.isp_prev_device*, align 8
  %3 = alloca %struct.isp_device*, align 8
  %4 = alloca %struct.isp_format_info*, align 8
  %5 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.isp_prev_device* %0, %struct.isp_prev_device** %2, align 8
  %9 = load %struct.isp_prev_device*, %struct.isp_prev_device** %2, align 8
  %10 = call %struct.isp_device* @to_isp_device(%struct.isp_prev_device* %9)
  store %struct.isp_device* %10, %struct.isp_device** %3, align 8
  %11 = load %struct.isp_prev_device*, %struct.isp_prev_device** %2, align 8
  %12 = getelementptr inbounds %struct.isp_prev_device, %struct.isp_prev_device* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %6, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load %struct.isp_prev_device*, %struct.isp_prev_device** %2, align 8
  %17 = call i32 @preview_params_lock(%struct.isp_prev_device* %16, i32 0, i32 0)
  store i32 %17, i32* %7, align 4
  %18 = load %struct.isp_prev_device*, %struct.isp_prev_device** %2, align 8
  %19 = getelementptr inbounds %struct.isp_prev_device, %struct.isp_prev_device* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %8, align 4
  %22 = load %struct.isp_prev_device*, %struct.isp_prev_device** %2, align 8
  %23 = getelementptr inbounds %struct.isp_prev_device, %struct.isp_prev_device* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %6, align 8
  %26 = call i32 @spin_unlock_irqrestore(i32* %24, i64 %25)
  %27 = load %struct.isp_prev_device*, %struct.isp_prev_device** %2, align 8
  %28 = getelementptr inbounds %struct.isp_prev_device, %struct.isp_prev_device* %27, i32 0, i32 3
  %29 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %28, align 8
  %30 = load i64, i64* @PREV_PAD_SINK, align 8
  %31 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %29, i64 %30
  store %struct.v4l2_mbus_framefmt* %31, %struct.v4l2_mbus_framefmt** %5, align 8
  %32 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %5, align 8
  %33 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call %struct.isp_format_info* @omap3isp_video_format_info(i32 %34)
  store %struct.isp_format_info* %35, %struct.isp_format_info** %4, align 8
  %36 = load %struct.isp_prev_device*, %struct.isp_prev_device** %2, align 8
  %37 = call i32 @preview_adjust_bandwidth(%struct.isp_prev_device* %36)
  %38 = load %struct.isp_prev_device*, %struct.isp_prev_device** %2, align 8
  %39 = load %struct.isp_format_info*, %struct.isp_format_info** %4, align 8
  %40 = call i32 @preview_config_input_format(%struct.isp_prev_device* %38, %struct.isp_format_info* %39)
  %41 = load %struct.isp_prev_device*, %struct.isp_prev_device** %2, align 8
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @preview_config_input_size(%struct.isp_prev_device* %41, i32 %42)
  %44 = load %struct.isp_prev_device*, %struct.isp_prev_device** %2, align 8
  %45 = getelementptr inbounds %struct.isp_prev_device, %struct.isp_prev_device* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @PREVIEW_INPUT_CCDC, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %1
  %50 = load %struct.isp_prev_device*, %struct.isp_prev_device** %2, align 8
  %51 = call i32 @preview_config_inlineoffset(%struct.isp_prev_device* %50, i32 0)
  br label %63

52:                                               ; preds = %1
  %53 = load %struct.isp_prev_device*, %struct.isp_prev_device** %2, align 8
  %54 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %5, align 8
  %55 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @ALIGN(i32 %56, i32 32)
  %58 = load %struct.isp_format_info*, %struct.isp_format_info** %4, align 8
  %59 = getelementptr inbounds %struct.isp_format_info, %struct.isp_format_info* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = mul nsw i32 %57, %60
  %62 = call i32 @preview_config_inlineoffset(%struct.isp_prev_device* %53, i32 %61)
  br label %63

63:                                               ; preds = %52, %49
  %64 = load %struct.isp_prev_device*, %struct.isp_prev_device** %2, align 8
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @preview_setup_hw(%struct.isp_prev_device* %64, i32 %65, i32 %66)
  %68 = load %struct.isp_prev_device*, %struct.isp_prev_device** %2, align 8
  %69 = getelementptr inbounds %struct.isp_prev_device, %struct.isp_prev_device* %68, i32 0, i32 3
  %70 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %69, align 8
  %71 = load i64, i64* @PREV_PAD_SOURCE, align 8
  %72 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %70, i64 %71
  store %struct.v4l2_mbus_framefmt* %72, %struct.v4l2_mbus_framefmt** %5, align 8
  %73 = load %struct.isp_prev_device*, %struct.isp_prev_device** %2, align 8
  %74 = getelementptr inbounds %struct.isp_prev_device, %struct.isp_prev_device* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @PREVIEW_OUTPUT_MEMORY, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %63
  %80 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %81 = load i32, i32* @OMAP3_ISP_IOMEM_PREV, align 4
  %82 = load i32, i32* @ISPPRV_PCR, align 4
  %83 = load i32, i32* @ISPPRV_PCR_SDRPORT, align 4
  %84 = call i32 @isp_reg_set(%struct.isp_device* %80, i32 %81, i32 %82, i32 %83)
  br label %91

85:                                               ; preds = %63
  %86 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %87 = load i32, i32* @OMAP3_ISP_IOMEM_PREV, align 4
  %88 = load i32, i32* @ISPPRV_PCR, align 4
  %89 = load i32, i32* @ISPPRV_PCR_SDRPORT, align 4
  %90 = call i32 @isp_reg_clr(%struct.isp_device* %86, i32 %87, i32 %88, i32 %89)
  br label %91

91:                                               ; preds = %85, %79
  %92 = load %struct.isp_prev_device*, %struct.isp_prev_device** %2, align 8
  %93 = getelementptr inbounds %struct.isp_prev_device, %struct.isp_prev_device* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @PREVIEW_OUTPUT_RESIZER, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %91
  %99 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %100 = load i32, i32* @OMAP3_ISP_IOMEM_PREV, align 4
  %101 = load i32, i32* @ISPPRV_PCR, align 4
  %102 = load i32, i32* @ISPPRV_PCR_RSZPORT, align 4
  %103 = call i32 @isp_reg_set(%struct.isp_device* %99, i32 %100, i32 %101, i32 %102)
  br label %110

104:                                              ; preds = %91
  %105 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %106 = load i32, i32* @OMAP3_ISP_IOMEM_PREV, align 4
  %107 = load i32, i32* @ISPPRV_PCR, align 4
  %108 = load i32, i32* @ISPPRV_PCR_RSZPORT, align 4
  %109 = call i32 @isp_reg_clr(%struct.isp_device* %105, i32 %106, i32 %107, i32 %108)
  br label %110

110:                                              ; preds = %104, %98
  %111 = load %struct.isp_prev_device*, %struct.isp_prev_device** %2, align 8
  %112 = getelementptr inbounds %struct.isp_prev_device, %struct.isp_prev_device* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @PREVIEW_OUTPUT_MEMORY, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %125

117:                                              ; preds = %110
  %118 = load %struct.isp_prev_device*, %struct.isp_prev_device** %2, align 8
  %119 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %5, align 8
  %120 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @ALIGN(i32 %121, i32 16)
  %123 = mul nsw i32 %122, 2
  %124 = call i32 @preview_config_outlineoffset(%struct.isp_prev_device* %118, i32 %123)
  br label %125

125:                                              ; preds = %117, %110
  %126 = load %struct.isp_prev_device*, %struct.isp_prev_device** %2, align 8
  %127 = call i32 @preview_config_averager(%struct.isp_prev_device* %126, i32 0)
  %128 = load %struct.isp_prev_device*, %struct.isp_prev_device** %2, align 8
  %129 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %5, align 8
  %130 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @preview_config_ycpos(%struct.isp_prev_device* %128, i32 %131)
  %133 = load %struct.isp_prev_device*, %struct.isp_prev_device** %2, align 8
  %134 = getelementptr inbounds %struct.isp_prev_device, %struct.isp_prev_device* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 0
  %136 = load i64, i64* %6, align 8
  %137 = call i32 @spin_lock_irqsave(i32* %135, i64 %136)
  %138 = load %struct.isp_prev_device*, %struct.isp_prev_device** %2, align 8
  %139 = load i32, i32* %7, align 4
  %140 = call i32 @preview_params_unlock(%struct.isp_prev_device* %138, i32 %139, i32 0)
  %141 = load %struct.isp_prev_device*, %struct.isp_prev_device** %2, align 8
  %142 = getelementptr inbounds %struct.isp_prev_device, %struct.isp_prev_device* %141, i32 0, i32 2
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 0
  %144 = load i64, i64* %6, align 8
  %145 = call i32 @spin_unlock_irqrestore(i32* %143, i64 %144)
  ret void
}

declare dso_local %struct.isp_device* @to_isp_device(%struct.isp_prev_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @preview_params_lock(%struct.isp_prev_device*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local %struct.isp_format_info* @omap3isp_video_format_info(i32) #1

declare dso_local i32 @preview_adjust_bandwidth(%struct.isp_prev_device*) #1

declare dso_local i32 @preview_config_input_format(%struct.isp_prev_device*, %struct.isp_format_info*) #1

declare dso_local i32 @preview_config_input_size(%struct.isp_prev_device*, i32) #1

declare dso_local i32 @preview_config_inlineoffset(%struct.isp_prev_device*, i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @preview_setup_hw(%struct.isp_prev_device*, i32, i32) #1

declare dso_local i32 @isp_reg_set(%struct.isp_device*, i32, i32, i32) #1

declare dso_local i32 @isp_reg_clr(%struct.isp_device*, i32, i32, i32) #1

declare dso_local i32 @preview_config_outlineoffset(%struct.isp_prev_device*, i32) #1

declare dso_local i32 @preview_config_averager(%struct.isp_prev_device*, i32) #1

declare dso_local i32 @preview_config_ycpos(%struct.isp_prev_device*, i32) #1

declare dso_local i32 @preview_params_unlock(%struct.isp_prev_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
