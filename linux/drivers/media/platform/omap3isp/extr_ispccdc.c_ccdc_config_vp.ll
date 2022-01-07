; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispccdc.c_ccdc_config_vp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispccdc.c_ccdc_config_vp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp_ccdc_device = type { %struct.v4l2_mbus_framefmt*, %struct.TYPE_2__ }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.isp_pipeline = type { i64, i32, i32, i64 }
%struct.isp_device = type { i64 }
%struct.isp_format_info = type { i32 }

@ISP_REVISION_15_0 = common dso_local global i64 0, align 8
@ISPCCDC_FMTCFG_VPEN = common dso_local global i32 0, align 4
@CCDC_PAD_SOURCE_VP = common dso_local global i64 0, align 8
@OMAP3_ISP_IOMEM_CCDC = common dso_local global i32 0, align 4
@ISPCCDC_FMTCFG = common dso_local global i32 0, align 4
@ISPCCDC_FMT_HORZ_FMTSPH_SHIFT = common dso_local global i32 0, align 4
@ISPCCDC_FMT_HORZ_FMTLNH_SHIFT = common dso_local global i32 0, align 4
@ISPCCDC_FMT_HORZ = common dso_local global i32 0, align 4
@ISPCCDC_FMT_VERT_FMTSLV_SHIFT = common dso_local global i32 0, align 4
@ISPCCDC_FMT_VERT_FMTLNV_SHIFT = common dso_local global i32 0, align 4
@ISPCCDC_FMT_VERT = common dso_local global i32 0, align 4
@ISPCCDC_VP_OUT_HORZ_NUM_SHIFT = common dso_local global i32 0, align 4
@ISPCCDC_VP_OUT_VERT_NUM_SHIFT = common dso_local global i32 0, align 4
@ISPCCDC_VP_OUT = common dso_local global i32 0, align 4
@CCDC_PAD_SINK = common dso_local global i64 0, align 8
@ISPCCDC_FMTCFG_VPIN_9_0 = common dso_local global i32 0, align 4
@ISPCCDC_FMTCFG_VPIN_10_1 = common dso_local global i32 0, align 4
@ISPCCDC_FMTCFG_VPIN_11_2 = common dso_local global i32 0, align 4
@ISPCCDC_FMTCFG_VPIN_12_3 = common dso_local global i32 0, align 4
@ISPCCDC_FMTCFG_VPIF_FRQ_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isp_ccdc_device*)* @ccdc_config_vp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ccdc_config_vp(%struct.isp_ccdc_device* %0) #0 {
  %2 = alloca %struct.isp_ccdc_device*, align 8
  %3 = alloca %struct.isp_pipeline*, align 8
  %4 = alloca %struct.isp_device*, align 8
  %5 = alloca %struct.isp_format_info*, align 8
  %6 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.isp_ccdc_device* %0, %struct.isp_ccdc_device** %2, align 8
  %11 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %2, align 8
  %12 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = call %struct.isp_pipeline* @to_isp_pipeline(i32* %13)
  store %struct.isp_pipeline* %14, %struct.isp_pipeline** %3, align 8
  %15 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %2, align 8
  %16 = call %struct.isp_device* @to_isp_device(%struct.isp_ccdc_device* %15)
  store %struct.isp_device* %16, %struct.isp_device** %4, align 8
  %17 = load %struct.isp_pipeline*, %struct.isp_pipeline** %3, align 8
  %18 = getelementptr inbounds %struct.isp_pipeline, %struct.isp_pipeline* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %7, align 8
  %20 = load %struct.isp_device*, %struct.isp_device** %4, align 8
  %21 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @ISP_REVISION_15_0, align 8
  %24 = icmp eq i64 %22, %23
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i32 64, i32 8
  store i32 %26, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %27 = load i32, i32* @ISPCCDC_FMTCFG_VPEN, align 4
  store i32 %27, i32* %10, align 4
  %28 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %2, align 8
  %29 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %28, i32 0, i32 0
  %30 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %29, align 8
  %31 = load i64, i64* @CCDC_PAD_SOURCE_VP, align 8
  %32 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %30, i64 %31
  store %struct.v4l2_mbus_framefmt* %32, %struct.v4l2_mbus_framefmt** %6, align 8
  %33 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %6, align 8
  %34 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %1
  %38 = load %struct.isp_device*, %struct.isp_device** %4, align 8
  %39 = load i32, i32* @OMAP3_ISP_IOMEM_CCDC, align 4
  %40 = load i32, i32* @ISPCCDC_FMTCFG, align 4
  %41 = call i32 @isp_reg_writel(%struct.isp_device* %38, i32 0, i32 %39, i32 %40)
  br label %150

42:                                               ; preds = %1
  %43 = load %struct.isp_device*, %struct.isp_device** %4, align 8
  %44 = load i32, i32* @ISPCCDC_FMT_HORZ_FMTSPH_SHIFT, align 4
  %45 = shl i32 0, %44
  %46 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %6, align 8
  %47 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @ISPCCDC_FMT_HORZ_FMTLNH_SHIFT, align 4
  %50 = shl i32 %48, %49
  %51 = or i32 %45, %50
  %52 = load i32, i32* @OMAP3_ISP_IOMEM_CCDC, align 4
  %53 = load i32, i32* @ISPCCDC_FMT_HORZ, align 4
  %54 = call i32 @isp_reg_writel(%struct.isp_device* %43, i32 %51, i32 %52, i32 %53)
  %55 = load %struct.isp_device*, %struct.isp_device** %4, align 8
  %56 = load i32, i32* @ISPCCDC_FMT_VERT_FMTSLV_SHIFT, align 4
  %57 = shl i32 0, %56
  %58 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %6, align 8
  %59 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, 1
  %62 = load i32, i32* @ISPCCDC_FMT_VERT_FMTLNV_SHIFT, align 4
  %63 = shl i32 %61, %62
  %64 = or i32 %57, %63
  %65 = load i32, i32* @OMAP3_ISP_IOMEM_CCDC, align 4
  %66 = load i32, i32* @ISPCCDC_FMT_VERT, align 4
  %67 = call i32 @isp_reg_writel(%struct.isp_device* %55, i32 %64, i32 %65, i32 %66)
  %68 = load %struct.isp_device*, %struct.isp_device** %4, align 8
  %69 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %6, align 8
  %70 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @ISPCCDC_VP_OUT_HORZ_NUM_SHIFT, align 4
  %73 = shl i32 %71, %72
  %74 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %6, align 8
  %75 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @ISPCCDC_VP_OUT_VERT_NUM_SHIFT, align 4
  %78 = shl i32 %76, %77
  %79 = or i32 %73, %78
  %80 = load i32, i32* @OMAP3_ISP_IOMEM_CCDC, align 4
  %81 = load i32, i32* @ISPCCDC_VP_OUT, align 4
  %82 = call i32 @isp_reg_writel(%struct.isp_device* %68, i32 %79, i32 %80, i32 %81)
  %83 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %2, align 8
  %84 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %83, i32 0, i32 0
  %85 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %84, align 8
  %86 = load i64, i64* @CCDC_PAD_SINK, align 8
  %87 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %85, i64 %86
  %88 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = call %struct.isp_format_info* @omap3isp_video_format_info(i32 %89)
  store %struct.isp_format_info* %90, %struct.isp_format_info** %5, align 8
  %91 = load %struct.isp_format_info*, %struct.isp_format_info** %5, align 8
  %92 = getelementptr inbounds %struct.isp_format_info, %struct.isp_format_info* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  switch i32 %93, label %110 [
    i32 8, label %94
    i32 10, label %94
    i32 11, label %98
    i32 12, label %102
    i32 13, label %106
  ]

94:                                               ; preds = %42, %42
  %95 = load i32, i32* @ISPCCDC_FMTCFG_VPIN_9_0, align 4
  %96 = load i32, i32* %10, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %10, align 4
  br label %110

98:                                               ; preds = %42
  %99 = load i32, i32* @ISPCCDC_FMTCFG_VPIN_10_1, align 4
  %100 = load i32, i32* %10, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %10, align 4
  br label %110

102:                                              ; preds = %42
  %103 = load i32, i32* @ISPCCDC_FMTCFG_VPIN_11_2, align 4
  %104 = load i32, i32* %10, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %10, align 4
  br label %110

106:                                              ; preds = %42
  %107 = load i32, i32* @ISPCCDC_FMTCFG_VPIN_12_3, align 4
  %108 = load i32, i32* %10, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %10, align 4
  br label %110

110:                                              ; preds = %42, %106, %102, %98, %94
  %111 = load %struct.isp_pipeline*, %struct.isp_pipeline** %3, align 8
  %112 = getelementptr inbounds %struct.isp_pipeline, %struct.isp_pipeline* %111, i32 0, i32 3
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %110
  %116 = load i64, i64* %7, align 8
  %117 = load %struct.isp_pipeline*, %struct.isp_pipeline** %3, align 8
  %118 = getelementptr inbounds %struct.isp_pipeline, %struct.isp_pipeline* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @DIV_ROUND_UP(i64 %116, i32 %119)
  store i32 %120, i32* %9, align 4
  br label %135

121:                                              ; preds = %110
  %122 = load %struct.isp_pipeline*, %struct.isp_pipeline** %3, align 8
  %123 = getelementptr inbounds %struct.isp_pipeline, %struct.isp_pipeline* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %134

126:                                              ; preds = %121
  %127 = load i64, i64* %7, align 8
  %128 = load %struct.isp_pipeline*, %struct.isp_pipeline** %3, align 8
  %129 = getelementptr inbounds %struct.isp_pipeline, %struct.isp_pipeline* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = sext i32 %130 to i64
  %132 = udiv i64 %127, %131
  %133 = trunc i64 %132 to i32
  store i32 %133, i32* %9, align 4
  br label %134

134:                                              ; preds = %126, %121
  br label %135

135:                                              ; preds = %134, %115
  %136 = load i32, i32* %9, align 4
  %137 = load i32, i32* %8, align 4
  %138 = call i32 @clamp(i32 %136, i32 2, i32 %137)
  store i32 %138, i32* %9, align 4
  %139 = load i32, i32* %9, align 4
  %140 = sub i32 %139, 2
  %141 = load i32, i32* @ISPCCDC_FMTCFG_VPIF_FRQ_SHIFT, align 4
  %142 = shl i32 %140, %141
  %143 = load i32, i32* %10, align 4
  %144 = or i32 %143, %142
  store i32 %144, i32* %10, align 4
  %145 = load %struct.isp_device*, %struct.isp_device** %4, align 8
  %146 = load i32, i32* %10, align 4
  %147 = load i32, i32* @OMAP3_ISP_IOMEM_CCDC, align 4
  %148 = load i32, i32* @ISPCCDC_FMTCFG, align 4
  %149 = call i32 @isp_reg_writel(%struct.isp_device* %145, i32 %146, i32 %147, i32 %148)
  br label %150

150:                                              ; preds = %135, %37
  ret void
}

declare dso_local %struct.isp_pipeline* @to_isp_pipeline(i32*) #1

declare dso_local %struct.isp_device* @to_isp_device(%struct.isp_ccdc_device*) #1

declare dso_local i32 @isp_reg_writel(%struct.isp_device*, i32, i32, i32) #1

declare dso_local %struct.isp_format_info* @omap3isp_video_format_info(i32) #1

declare dso_local i32 @DIV_ROUND_UP(i64, i32) #1

declare dso_local i32 @clamp(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
