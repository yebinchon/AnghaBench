; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_isppreview.c_preview_config_input_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_isppreview.c_preview_config_input_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp_prev_device = type { %struct.TYPE_6__, %struct.TYPE_4__, %struct.v4l2_mbus_framefmt* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.v4l2_mbus_framefmt = type { i64 }
%struct.isp_device = type { i32 }

@PREV_PAD_SINK = common dso_local global i64 0, align 8
@MEDIA_BUS_FMT_Y8_1X8 = common dso_local global i64 0, align 8
@MEDIA_BUS_FMT_Y10_1X10 = common dso_local global i64 0, align 8
@OMAP3ISP_PREV_DEFECT_COR = common dso_local global i32 0, align 4
@OMAP3ISP_PREV_NF = common dso_local global i32 0, align 4
@OMAP3ISP_PREV_HRZ_MED = common dso_local global i32 0, align 4
@OMAP3ISP_PREV_CHROMA_SUPP = common dso_local global i32 0, align 4
@OMAP3ISP_PREV_LUMAENH = common dso_local global i32 0, align 4
@ISPPRV_HORZ_INFO_SPH_SHIFT = common dso_local global i32 0, align 4
@OMAP3_ISP_IOMEM_PREV = common dso_local global i32 0, align 4
@ISPPRV_HORZ_INFO = common dso_local global i32 0, align 4
@ISPPRV_VERT_INFO_SLV_SHIFT = common dso_local global i32 0, align 4
@ISPPRV_VERT_INFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isp_prev_device*, i32)* @preview_config_input_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @preview_config_input_size(%struct.isp_prev_device* %0, i32 %1) #0 {
  %3 = alloca %struct.isp_prev_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %6 = alloca %struct.isp_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.isp_prev_device* %0, %struct.isp_prev_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.isp_prev_device*, %struct.isp_prev_device** %3, align 8
  %13 = getelementptr inbounds %struct.isp_prev_device, %struct.isp_prev_device* %12, i32 0, i32 2
  %14 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %13, align 8
  %15 = load i64, i64* @PREV_PAD_SINK, align 8
  %16 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %14, i64 %15
  store %struct.v4l2_mbus_framefmt* %16, %struct.v4l2_mbus_framefmt** %5, align 8
  %17 = load %struct.isp_prev_device*, %struct.isp_prev_device** %3, align 8
  %18 = call %struct.isp_device* @to_isp_device(%struct.isp_prev_device* %17)
  store %struct.isp_device* %18, %struct.isp_device** %6, align 8
  %19 = load %struct.isp_prev_device*, %struct.isp_prev_device** %3, align 8
  %20 = getelementptr inbounds %struct.isp_prev_device, %struct.isp_prev_device* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %7, align 4
  %23 = load %struct.isp_prev_device*, %struct.isp_prev_device** %3, align 8
  %24 = getelementptr inbounds %struct.isp_prev_device, %struct.isp_prev_device* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.isp_prev_device*, %struct.isp_prev_device** %3, align 8
  %28 = getelementptr inbounds %struct.isp_prev_device, %struct.isp_prev_device* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = add i32 %26, %30
  %32 = sub i32 %31, 1
  store i32 %32, i32* %8, align 4
  %33 = load %struct.isp_prev_device*, %struct.isp_prev_device** %3, align 8
  %34 = getelementptr inbounds %struct.isp_prev_device, %struct.isp_prev_device* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %9, align 4
  %37 = load %struct.isp_prev_device*, %struct.isp_prev_device** %3, align 8
  %38 = getelementptr inbounds %struct.isp_prev_device, %struct.isp_prev_device* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.isp_prev_device*, %struct.isp_prev_device** %3, align 8
  %42 = getelementptr inbounds %struct.isp_prev_device, %struct.isp_prev_device* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = add i32 %40, %44
  %46 = sub i32 %45, 1
  store i32 %46, i32* %10, align 4
  %47 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %5, align 8
  %48 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @MEDIA_BUS_FMT_Y8_1X8, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %67

52:                                               ; preds = %2
  %53 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %5, align 8
  %54 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @MEDIA_BUS_FMT_Y10_1X10, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %67

58:                                               ; preds = %52
  %59 = load i32, i32* %7, align 4
  %60 = sub i32 %59, 2
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %8, align 4
  %62 = add i32 %61, 2
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %9, align 4
  %64 = sub i32 %63, 2
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %10, align 4
  %66 = add i32 %65, 2
  store i32 %66, i32* %10, align 4
  br label %67

67:                                               ; preds = %58, %52, %2
  %68 = load %struct.isp_prev_device*, %struct.isp_prev_device** %3, align 8
  %69 = getelementptr inbounds %struct.isp_prev_device, %struct.isp_prev_device* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i64 0
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %4, align 4
  %76 = and i32 %74, %75
  %77 = load %struct.isp_prev_device*, %struct.isp_prev_device** %3, align 8
  %78 = getelementptr inbounds %struct.isp_prev_device, %struct.isp_prev_device* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i64 1
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %4, align 4
  %85 = xor i32 %84, -1
  %86 = and i32 %83, %85
  %87 = or i32 %76, %86
  store i32 %87, i32* %11, align 4
  %88 = load i32, i32* %11, align 4
  %89 = load i32, i32* @OMAP3ISP_PREV_DEFECT_COR, align 4
  %90 = load i32, i32* @OMAP3ISP_PREV_NF, align 4
  %91 = or i32 %89, %90
  %92 = and i32 %88, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %103

94:                                               ; preds = %67
  %95 = load i32, i32* %7, align 4
  %96 = sub i32 %95, 2
  store i32 %96, i32* %7, align 4
  %97 = load i32, i32* %8, align 4
  %98 = add i32 %97, 2
  store i32 %98, i32* %8, align 4
  %99 = load i32, i32* %9, align 4
  %100 = sub i32 %99, 2
  store i32 %100, i32* %9, align 4
  %101 = load i32, i32* %10, align 4
  %102 = add i32 %101, 2
  store i32 %102, i32* %10, align 4
  br label %103

103:                                              ; preds = %94, %67
  %104 = load i32, i32* %11, align 4
  %105 = load i32, i32* @OMAP3ISP_PREV_HRZ_MED, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %103
  %109 = load i32, i32* %7, align 4
  %110 = sub i32 %109, 2
  store i32 %110, i32* %7, align 4
  %111 = load i32, i32* %8, align 4
  %112 = add i32 %111, 2
  store i32 %112, i32* %8, align 4
  br label %113

113:                                              ; preds = %108, %103
  %114 = load i32, i32* %11, align 4
  %115 = load i32, i32* @OMAP3ISP_PREV_CHROMA_SUPP, align 4
  %116 = load i32, i32* @OMAP3ISP_PREV_LUMAENH, align 4
  %117 = or i32 %115, %116
  %118 = and i32 %114, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %113
  %121 = load i32, i32* %7, align 4
  %122 = sub i32 %121, 2
  store i32 %122, i32* %7, align 4
  br label %123

123:                                              ; preds = %120, %113
  %124 = load %struct.isp_device*, %struct.isp_device** %6, align 8
  %125 = load i32, i32* %7, align 4
  %126 = load i32, i32* @ISPPRV_HORZ_INFO_SPH_SHIFT, align 4
  %127 = shl i32 %125, %126
  %128 = load i32, i32* %8, align 4
  %129 = or i32 %127, %128
  %130 = load i32, i32* @OMAP3_ISP_IOMEM_PREV, align 4
  %131 = load i32, i32* @ISPPRV_HORZ_INFO, align 4
  %132 = call i32 @isp_reg_writel(%struct.isp_device* %124, i32 %129, i32 %130, i32 %131)
  %133 = load %struct.isp_device*, %struct.isp_device** %6, align 8
  %134 = load i32, i32* %9, align 4
  %135 = load i32, i32* @ISPPRV_VERT_INFO_SLV_SHIFT, align 4
  %136 = shl i32 %134, %135
  %137 = load i32, i32* %10, align 4
  %138 = or i32 %136, %137
  %139 = load i32, i32* @OMAP3_ISP_IOMEM_PREV, align 4
  %140 = load i32, i32* @ISPPRV_VERT_INFO, align 4
  %141 = call i32 @isp_reg_writel(%struct.isp_device* %133, i32 %138, i32 %139, i32 %140)
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
