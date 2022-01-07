; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispccdc.c_ccdc_config_sync_if.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispccdc.c_ccdc_config_sync_if.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp_ccdc_device = type { i64, %struct.v4l2_mbus_framefmt* }
%struct.v4l2_mbus_framefmt = type { i64 }
%struct.isp_parallel_cfg = type { i64, i64, i64, i64 }
%struct.isp_device = type { i32 }

@ISPCCDC_SYN_MODE_VDHDEN = common dso_local global i32 0, align 4
@CCDC_PAD_SINK = common dso_local global i64 0, align 8
@MEDIA_BUS_FMT_YUYV8_2X8 = common dso_local global i64 0, align 8
@MEDIA_BUS_FMT_UYVY8_2X8 = common dso_local global i64 0, align 8
@ISPCCDC_SYN_MODE_INPMOD_YCBCR8 = common dso_local global i32 0, align 4
@ISPCCDC_SYN_MODE_INPMOD_YCBCR16 = common dso_local global i32 0, align 4
@ISPCCDC_SYN_MODE_DATSIZ_8 = common dso_local global i32 0, align 4
@ISPCCDC_SYN_MODE_DATSIZ_10 = common dso_local global i32 0, align 4
@ISPCCDC_SYN_MODE_DATSIZ_11 = common dso_local global i32 0, align 4
@ISPCCDC_SYN_MODE_DATSIZ_12 = common dso_local global i32 0, align 4
@ISPCCDC_SYN_MODE_DATAPOL = common dso_local global i32 0, align 4
@ISPCCDC_SYN_MODE_HDPOL = common dso_local global i32 0, align 4
@ISPCCDC_SYN_MODE_VDPOL = common dso_local global i32 0, align 4
@ISPCCDC_SYN_MODE_FLDPOL = common dso_local global i32 0, align 4
@OMAP3_ISP_IOMEM_CCDC = common dso_local global i32 0, align 4
@ISPCCDC_SYN_MODE = common dso_local global i32 0, align 4
@ISPCCDC_CFG = common dso_local global i32 0, align 4
@ISPCCDC_CFG_Y8POS = common dso_local global i32 0, align 4
@ISPCCDC_REC656IF = common dso_local global i32 0, align 4
@ISPCCDC_REC656IF_R656ON = common dso_local global i32 0, align 4
@ISPCCDC_REC656IF_ECCFVH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isp_ccdc_device*, %struct.isp_parallel_cfg*, i32)* @ccdc_config_sync_if to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ccdc_config_sync_if(%struct.isp_ccdc_device* %0, %struct.isp_parallel_cfg* %1, i32 %2) #0 {
  %4 = alloca %struct.isp_ccdc_device*, align 8
  %5 = alloca %struct.isp_parallel_cfg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.isp_device*, align 8
  %8 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %9 = alloca i32, align 4
  store %struct.isp_ccdc_device* %0, %struct.isp_ccdc_device** %4, align 8
  store %struct.isp_parallel_cfg* %1, %struct.isp_parallel_cfg** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %4, align 8
  %11 = call %struct.isp_device* @to_isp_device(%struct.isp_ccdc_device* %10)
  store %struct.isp_device* %11, %struct.isp_device** %7, align 8
  %12 = load i32, i32* @ISPCCDC_SYN_MODE_VDHDEN, align 4
  store i32 %12, i32* %9, align 4
  %13 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %4, align 8
  %14 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %13, i32 0, i32 1
  %15 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %14, align 8
  %16 = load i64, i64* @CCDC_PAD_SINK, align 8
  %17 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %15, i64 %16
  store %struct.v4l2_mbus_framefmt* %17, %struct.v4l2_mbus_framefmt** %8, align 8
  %18 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %19 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @MEDIA_BUS_FMT_YUYV8_2X8, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %29, label %23

23:                                               ; preds = %3
  %24 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %25 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @MEDIA_BUS_FMT_UYVY8_2X8, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %43

29:                                               ; preds = %23, %3
  %30 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %4, align 8
  %31 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load i32, i32* @ISPCCDC_SYN_MODE_INPMOD_YCBCR8, align 4
  %36 = load i32, i32* %9, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %9, align 4
  br label %42

38:                                               ; preds = %29
  %39 = load i32, i32* @ISPCCDC_SYN_MODE_INPMOD_YCBCR16, align 4
  %40 = load i32, i32* %9, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %9, align 4
  br label %42

42:                                               ; preds = %38, %34
  br label %43

43:                                               ; preds = %42, %23
  %44 = load i32, i32* %6, align 4
  switch i32 %44, label %61 [
    i32 8, label %45
    i32 10, label %49
    i32 11, label %53
    i32 12, label %57
  ]

45:                                               ; preds = %43
  %46 = load i32, i32* @ISPCCDC_SYN_MODE_DATSIZ_8, align 4
  %47 = load i32, i32* %9, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %9, align 4
  br label %61

49:                                               ; preds = %43
  %50 = load i32, i32* @ISPCCDC_SYN_MODE_DATSIZ_10, align 4
  %51 = load i32, i32* %9, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %9, align 4
  br label %61

53:                                               ; preds = %43
  %54 = load i32, i32* @ISPCCDC_SYN_MODE_DATSIZ_11, align 4
  %55 = load i32, i32* %9, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %9, align 4
  br label %61

57:                                               ; preds = %43
  %58 = load i32, i32* @ISPCCDC_SYN_MODE_DATSIZ_12, align 4
  %59 = load i32, i32* %9, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %9, align 4
  br label %61

61:                                               ; preds = %43, %57, %53, %49, %45
  %62 = load %struct.isp_parallel_cfg*, %struct.isp_parallel_cfg** %5, align 8
  %63 = icmp ne %struct.isp_parallel_cfg* %62, null
  br i1 %63, label %64, label %73

64:                                               ; preds = %61
  %65 = load %struct.isp_parallel_cfg*, %struct.isp_parallel_cfg** %5, align 8
  %66 = getelementptr inbounds %struct.isp_parallel_cfg, %struct.isp_parallel_cfg* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %64
  %70 = load i32, i32* @ISPCCDC_SYN_MODE_DATAPOL, align 4
  %71 = load i32, i32* %9, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %9, align 4
  br label %73

73:                                               ; preds = %69, %64, %61
  %74 = load %struct.isp_parallel_cfg*, %struct.isp_parallel_cfg** %5, align 8
  %75 = icmp ne %struct.isp_parallel_cfg* %74, null
  br i1 %75, label %76, label %85

76:                                               ; preds = %73
  %77 = load %struct.isp_parallel_cfg*, %struct.isp_parallel_cfg** %5, align 8
  %78 = getelementptr inbounds %struct.isp_parallel_cfg, %struct.isp_parallel_cfg* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %76
  %82 = load i32, i32* @ISPCCDC_SYN_MODE_HDPOL, align 4
  %83 = load i32, i32* %9, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %9, align 4
  br label %85

85:                                               ; preds = %81, %76, %73
  %86 = load %struct.isp_parallel_cfg*, %struct.isp_parallel_cfg** %5, align 8
  %87 = icmp ne %struct.isp_parallel_cfg* %86, null
  br i1 %87, label %88, label %93

88:                                               ; preds = %85
  %89 = load %struct.isp_parallel_cfg*, %struct.isp_parallel_cfg** %5, align 8
  %90 = getelementptr inbounds %struct.isp_parallel_cfg, %struct.isp_parallel_cfg* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %98, label %93

93:                                               ; preds = %88, %85
  %94 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %4, align 8
  %95 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %93, %88
  %99 = load i32, i32* @ISPCCDC_SYN_MODE_VDPOL, align 4
  %100 = load i32, i32* %9, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %9, align 4
  br label %102

102:                                              ; preds = %98, %93
  %103 = load %struct.isp_parallel_cfg*, %struct.isp_parallel_cfg** %5, align 8
  %104 = icmp ne %struct.isp_parallel_cfg* %103, null
  br i1 %104, label %105, label %114

105:                                              ; preds = %102
  %106 = load %struct.isp_parallel_cfg*, %struct.isp_parallel_cfg** %5, align 8
  %107 = getelementptr inbounds %struct.isp_parallel_cfg, %struct.isp_parallel_cfg* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %105
  %111 = load i32, i32* @ISPCCDC_SYN_MODE_FLDPOL, align 4
  %112 = load i32, i32* %9, align 4
  %113 = or i32 %112, %111
  store i32 %113, i32* %9, align 4
  br label %114

114:                                              ; preds = %110, %105, %102
  %115 = load %struct.isp_device*, %struct.isp_device** %7, align 8
  %116 = load i32, i32* %9, align 4
  %117 = load i32, i32* @OMAP3_ISP_IOMEM_CCDC, align 4
  %118 = load i32, i32* @ISPCCDC_SYN_MODE, align 4
  %119 = call i32 @isp_reg_writel(%struct.isp_device* %115, i32 %116, i32 %117, i32 %118)
  %120 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %121 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @MEDIA_BUS_FMT_UYVY8_2X8, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %131

125:                                              ; preds = %114
  %126 = load %struct.isp_device*, %struct.isp_device** %7, align 8
  %127 = load i32, i32* @OMAP3_ISP_IOMEM_CCDC, align 4
  %128 = load i32, i32* @ISPCCDC_CFG, align 4
  %129 = load i32, i32* @ISPCCDC_CFG_Y8POS, align 4
  %130 = call i32 @isp_reg_set(%struct.isp_device* %126, i32 %127, i32 %128, i32 %129)
  br label %137

131:                                              ; preds = %114
  %132 = load %struct.isp_device*, %struct.isp_device** %7, align 8
  %133 = load i32, i32* @OMAP3_ISP_IOMEM_CCDC, align 4
  %134 = load i32, i32* @ISPCCDC_CFG, align 4
  %135 = load i32, i32* @ISPCCDC_CFG_Y8POS, align 4
  %136 = call i32 @isp_reg_clr(%struct.isp_device* %132, i32 %133, i32 %134, i32 %135)
  br label %137

137:                                              ; preds = %131, %125
  %138 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %4, align 8
  %139 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %150

142:                                              ; preds = %137
  %143 = load %struct.isp_device*, %struct.isp_device** %7, align 8
  %144 = load i32, i32* @OMAP3_ISP_IOMEM_CCDC, align 4
  %145 = load i32, i32* @ISPCCDC_REC656IF, align 4
  %146 = load i32, i32* @ISPCCDC_REC656IF_R656ON, align 4
  %147 = load i32, i32* @ISPCCDC_REC656IF_ECCFVH, align 4
  %148 = or i32 %146, %147
  %149 = call i32 @isp_reg_set(%struct.isp_device* %143, i32 %144, i32 %145, i32 %148)
  br label %158

150:                                              ; preds = %137
  %151 = load %struct.isp_device*, %struct.isp_device** %7, align 8
  %152 = load i32, i32* @OMAP3_ISP_IOMEM_CCDC, align 4
  %153 = load i32, i32* @ISPCCDC_REC656IF, align 4
  %154 = load i32, i32* @ISPCCDC_REC656IF_R656ON, align 4
  %155 = load i32, i32* @ISPCCDC_REC656IF_ECCFVH, align 4
  %156 = or i32 %154, %155
  %157 = call i32 @isp_reg_clr(%struct.isp_device* %151, i32 %152, i32 %153, i32 %156)
  br label %158

158:                                              ; preds = %150, %142
  ret void
}

declare dso_local %struct.isp_device* @to_isp_device(%struct.isp_ccdc_device*) #1

declare dso_local i32 @isp_reg_writel(%struct.isp_device*, i32, i32, i32) #1

declare dso_local i32 @isp_reg_set(%struct.isp_device*, i32, i32, i32) #1

declare dso_local i32 @isp_reg_clr(%struct.isp_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
