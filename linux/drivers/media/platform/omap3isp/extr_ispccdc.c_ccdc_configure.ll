; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispccdc.c_ccdc_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispccdc.c_ccdc_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp_ccdc_device = type { i32, i64, i32, %struct.TYPE_10__, %struct.v4l2_mbus_framefmt*, %struct.TYPE_14__, %struct.v4l2_rect, %struct.TYPE_11__, i32*, i64 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_17__*, i32, i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32 }
%struct.v4l2_mbus_framefmt = type { i32, i32, i64 }
%struct.TYPE_14__ = type { i32 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.isp_device = type { i32 }
%struct.isp_parallel_cfg = type { i32 }
%struct.v4l2_subdev = type { i32 }
%struct.isp_format_info = type { i32, i64 }
%struct.v4l2_subdev_format = type { %struct.TYPE_13__, i32, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.media_pad = type { i32, i32 }
%struct.TYPE_16__ = type { %struct.v4l2_subdev* }
%struct.TYPE_15__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.isp_parallel_cfg }

@CCDC_PAD_SINK = common dso_local global i64 0, align 8
@CCDC_INPUT_PARALLEL = common dso_local global i64 0, align 8
@V4L2_SUBDEV_FORMAT_ACTIVE = common dso_local global i32 0, align 4
@get_fmt = common dso_local global i32 0, align 4
@ISPCTRL_PAR_BRIDGE_DISABLE = common dso_local global i32 0, align 4
@MEDIA_BUS_FMT_YUYV8_2X8 = common dso_local global i64 0, align 8
@ISPCTRL_PAR_BRIDGE_LENDIAN = common dso_local global i32 0, align 4
@MEDIA_BUS_FMT_UYVY8_2X8 = common dso_local global i64 0, align 8
@ISPCTRL_PAR_BRIDGE_BENDIAN = common dso_local global i32 0, align 4
@OMAP3_ISP_IOMEM_CCDC = common dso_local global i32 0, align 4
@ISPCCDC_SYN_MODE = common dso_local global i32 0, align 4
@ISPCCDC_SYN_MODE_VP2SDR = common dso_local global i32 0, align 4
@CCDC_OUTPUT_MEMORY = common dso_local global i32 0, align 4
@ISPCCDC_SYN_MODE_WEN = common dso_local global i32 0, align 4
@CCDC_OUTPUT_RESIZER = common dso_local global i32 0, align 4
@ISPCCDC_SYN_MODE_SDR2RSZ = common dso_local global i32 0, align 4
@ccdc_srggb_pattern = common dso_local global i32 0, align 4
@ccdc_sbggr_pattern = common dso_local global i32 0, align 4
@ccdc_sgbrg_pattern = common dso_local global i32 0, align 4
@ccdc_sgrbg_pattern = common dso_local global i32 0, align 4
@ISPCCDC_VDINT_0_SHIFT = common dso_local global i32 0, align 4
@ISPCCDC_VDINT_1_SHIFT = common dso_local global i32 0, align 4
@ISPCCDC_VDINT = common dso_local global i32 0, align 4
@CCDC_PAD_SOURCE_OF = common dso_local global i64 0, align 8
@ISPCCDC_HORZ_INFO_SPH_SHIFT = common dso_local global i32 0, align 4
@ISPCCDC_HORZ_INFO_NPH_SHIFT = common dso_local global i32 0, align 4
@ISPCCDC_HORZ_INFO = common dso_local global i32 0, align 4
@ISPCCDC_VERT_START_SLV0_SHIFT = common dso_local global i32 0, align 4
@ISPCCDC_VERT_START_SLV1_SHIFT = common dso_local global i32 0, align 4
@ISPCCDC_VERT_START = common dso_local global i32 0, align 4
@ISPCCDC_VERT_LINES_NLV_SHIFT = common dso_local global i32 0, align 4
@ISPCCDC_VERT_LINES = common dso_local global i32 0, align 4
@V4L2_FIELD_ALTERNATE = common dso_local global i64 0, align 8
@V4L2_FIELD_INTERLACED_TB = common dso_local global i64 0, align 8
@V4L2_FIELD_INTERLACED_BT = common dso_local global i64 0, align 8
@ISPCCDC_SYN_MODE_FLDMODE = common dso_local global i32 0, align 4
@MEDIA_BUS_FMT_YUYV8_1X16 = common dso_local global i32 0, align 4
@ISPCCDC_CFG = common dso_local global i32 0, align 4
@ISPCCDC_CFG_BSWD = common dso_local global i32 0, align 4
@ISPCCDC_SYN_MODE_PACK8 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isp_ccdc_device*)* @ccdc_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ccdc_configure(%struct.isp_ccdc_device* %0) #0 {
  %2 = alloca %struct.isp_ccdc_device*, align 8
  %3 = alloca %struct.isp_device*, align 8
  %4 = alloca %struct.isp_parallel_cfg*, align 8
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %7 = alloca %struct.v4l2_rect*, align 8
  %8 = alloca %struct.isp_format_info*, align 8
  %9 = alloca %struct.v4l2_subdev_format, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.media_pad*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.v4l2_subdev*, align 8
  store %struct.isp_ccdc_device* %0, %struct.isp_ccdc_device** %2, align 8
  %21 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %2, align 8
  %22 = call %struct.isp_device* @to_isp_device(%struct.isp_ccdc_device* %21)
  store %struct.isp_device* %22, %struct.isp_device** %3, align 8
  store %struct.isp_parallel_cfg* null, %struct.isp_parallel_cfg** %4, align 8
  store i32 0, i32* %11, align 4
  %23 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %2, align 8
  %24 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %23, i32 0, i32 0
  store i32 0, i32* %24, align 8
  %25 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %2, align 8
  %26 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %25, i32 0, i32 9
  store i64 0, i64* %26, align 8
  %27 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %2, align 8
  %28 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %27, i32 0, i32 8
  %29 = load i32*, i32** %28, align 8
  %30 = load i64, i64* @CCDC_PAD_SINK, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  %32 = call %struct.media_pad* @media_entity_remote_pad(i32* %31)
  store %struct.media_pad* %32, %struct.media_pad** %12, align 8
  %33 = load %struct.media_pad*, %struct.media_pad** %12, align 8
  %34 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call %struct.v4l2_subdev* @media_entity_to_v4l2_subdev(i32 %35)
  store %struct.v4l2_subdev* %36, %struct.v4l2_subdev** %5, align 8
  %37 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %2, align 8
  %38 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @CCDC_INPUT_PARALLEL, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %58

42:                                               ; preds = %1
  %43 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %2, align 8
  %44 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %43, i32 0, i32 7
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  %46 = call %struct.TYPE_16__* @to_isp_pipeline(i32* %45)
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 0
  %48 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %47, align 8
  store %struct.v4l2_subdev* %48, %struct.v4l2_subdev** %20, align 8
  %49 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %20, align 8
  %50 = call %struct.TYPE_15__* @v4l2_subdev_to_bus_cfg(%struct.v4l2_subdev* %49)
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 0
  store %struct.isp_parallel_cfg* %52, %struct.isp_parallel_cfg** %4, align 8
  %53 = load %struct.isp_parallel_cfg*, %struct.isp_parallel_cfg** %4, align 8
  %54 = getelementptr inbounds %struct.isp_parallel_cfg, %struct.isp_parallel_cfg* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %2, align 8
  %57 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  br label %58

58:                                               ; preds = %42, %1
  %59 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %2, align 8
  %60 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %59, i32 0, i32 4
  %61 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %60, align 8
  %62 = load i64, i64* @CCDC_PAD_SINK, align 8
  %63 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %61, i64 %62
  store %struct.v4l2_mbus_framefmt* %63, %struct.v4l2_mbus_framefmt** %6, align 8
  %64 = load %struct.media_pad*, %struct.media_pad** %12, align 8
  %65 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %9, i32 0, i32 2
  store i32 %66, i32* %67, align 4
  %68 = load i32, i32* @V4L2_SUBDEV_FORMAT_ACTIVE, align 4
  %69 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %9, i32 0, i32 1
  store i32 %68, i32* %69, align 4
  %70 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %71 = load %struct.media_pad*, %struct.media_pad** %12, align 8
  %72 = load i32, i32* @get_fmt, align 4
  %73 = call i32 @v4l2_subdev_call(%struct.v4l2_subdev* %70, %struct.media_pad* %71, i32 %72, i32* null, %struct.v4l2_subdev_format* %9)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %83, label %75

75:                                               ; preds = %58
  %76 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %9, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call %struct.isp_format_info* @omap3isp_video_format_info(i32 %78)
  store %struct.isp_format_info* %79, %struct.isp_format_info** %8, align 8
  %80 = load %struct.isp_format_info*, %struct.isp_format_info** %8, align 8
  %81 = getelementptr inbounds %struct.isp_format_info, %struct.isp_format_info* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  store i32 %82, i32* %11, align 4
  br label %83

83:                                               ; preds = %75, %58
  %84 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %6, align 8
  %85 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call %struct.isp_format_info* @omap3isp_video_format_info(i32 %86)
  store %struct.isp_format_info* %87, %struct.isp_format_info** %8, align 8
  %88 = load %struct.isp_format_info*, %struct.isp_format_info** %8, align 8
  %89 = getelementptr inbounds %struct.isp_format_info, %struct.isp_format_info* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  store i32 %90, i32* %10, align 4
  %91 = load i32, i32* %11, align 4
  %92 = load i32, i32* %10, align 4
  %93 = sub i32 %91, %92
  store i32 %93, i32* %15, align 4
  %94 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %2, align 8
  %95 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %83
  %99 = load i32, i32* @ISPCTRL_PAR_BRIDGE_DISABLE, align 4
  store i32 %99, i32* %14, align 4
  br label %120

100:                                              ; preds = %83
  %101 = load %struct.isp_format_info*, %struct.isp_format_info** %8, align 8
  %102 = getelementptr inbounds %struct.isp_format_info, %struct.isp_format_info* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @MEDIA_BUS_FMT_YUYV8_2X8, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %108

106:                                              ; preds = %100
  %107 = load i32, i32* @ISPCTRL_PAR_BRIDGE_LENDIAN, align 4
  store i32 %107, i32* %14, align 4
  br label %119

108:                                              ; preds = %100
  %109 = load %struct.isp_format_info*, %struct.isp_format_info** %8, align 8
  %110 = getelementptr inbounds %struct.isp_format_info, %struct.isp_format_info* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @MEDIA_BUS_FMT_UYVY8_2X8, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %116

114:                                              ; preds = %108
  %115 = load i32, i32* @ISPCTRL_PAR_BRIDGE_BENDIAN, align 4
  store i32 %115, i32* %14, align 4
  br label %118

116:                                              ; preds = %108
  %117 = load i32, i32* @ISPCTRL_PAR_BRIDGE_DISABLE, align 4
  store i32 %117, i32* %14, align 4
  br label %118

118:                                              ; preds = %116, %114
  br label %119

119:                                              ; preds = %118, %106
  br label %120

120:                                              ; preds = %119, %98
  %121 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %122 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %2, align 8
  %123 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.isp_parallel_cfg*, %struct.isp_parallel_cfg** %4, align 8
  %126 = load i32, i32* %15, align 4
  %127 = load i32, i32* %14, align 4
  %128 = call i32 @omap3isp_configure_bridge(%struct.isp_device* %121, i64 %124, %struct.isp_parallel_cfg* %125, i32 %126, i32 %127)
  %129 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %2, align 8
  %130 = load %struct.isp_parallel_cfg*, %struct.isp_parallel_cfg** %4, align 8
  %131 = load i32, i32* %10, align 4
  %132 = call i32 @ccdc_config_sync_if(%struct.isp_ccdc_device* %129, %struct.isp_parallel_cfg* %130, i32 %131)
  %133 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %134 = load i32, i32* @OMAP3_ISP_IOMEM_CCDC, align 4
  %135 = load i32, i32* @ISPCCDC_SYN_MODE, align 4
  %136 = call i32 @isp_reg_readl(%struct.isp_device* %133, i32 %134, i32 %135)
  store i32 %136, i32* %18, align 4
  %137 = load i32, i32* @ISPCCDC_SYN_MODE_VP2SDR, align 4
  %138 = xor i32 %137, -1
  %139 = load i32, i32* %18, align 4
  %140 = and i32 %139, %138
  store i32 %140, i32* %18, align 4
  %141 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %2, align 8
  %142 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* @CCDC_OUTPUT_MEMORY, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %151

147:                                              ; preds = %120
  %148 = load i32, i32* @ISPCCDC_SYN_MODE_WEN, align 4
  %149 = load i32, i32* %18, align 4
  %150 = or i32 %149, %148
  store i32 %150, i32* %18, align 4
  br label %156

151:                                              ; preds = %120
  %152 = load i32, i32* @ISPCCDC_SYN_MODE_WEN, align 4
  %153 = xor i32 %152, -1
  %154 = load i32, i32* %18, align 4
  %155 = and i32 %154, %153
  store i32 %155, i32* %18, align 4
  br label %156

156:                                              ; preds = %151, %147
  %157 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %2, align 8
  %158 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 8
  %160 = load i32, i32* @CCDC_OUTPUT_RESIZER, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %167

163:                                              ; preds = %156
  %164 = load i32, i32* @ISPCCDC_SYN_MODE_SDR2RSZ, align 4
  %165 = load i32, i32* %18, align 4
  %166 = or i32 %165, %164
  store i32 %166, i32* %18, align 4
  br label %172

167:                                              ; preds = %156
  %168 = load i32, i32* @ISPCCDC_SYN_MODE_SDR2RSZ, align 4
  %169 = xor i32 %168, -1
  %170 = load i32, i32* %18, align 4
  %171 = and i32 %170, %169
  store i32 %171, i32* %18, align 4
  br label %172

172:                                              ; preds = %167, %163
  %173 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %6, align 8
  %174 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  switch i32 %175, label %182 [
    i32 129, label %176
    i32 128, label %176
    i32 133, label %178
    i32 132, label %178
    i32 131, label %180
    i32 130, label %180
  ]

176:                                              ; preds = %172, %172
  %177 = load i32, i32* @ccdc_srggb_pattern, align 4
  store i32 %177, i32* %19, align 4
  br label %184

178:                                              ; preds = %172, %172
  %179 = load i32, i32* @ccdc_sbggr_pattern, align 4
  store i32 %179, i32* %19, align 4
  br label %184

180:                                              ; preds = %172, %172
  %181 = load i32, i32* @ccdc_sgbrg_pattern, align 4
  store i32 %181, i32* %19, align 4
  br label %184

182:                                              ; preds = %172
  %183 = load i32, i32* @ccdc_sgrbg_pattern, align 4
  store i32 %183, i32* %19, align 4
  br label %184

184:                                              ; preds = %182, %180, %178, %176
  %185 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %2, align 8
  %186 = load i32, i32* %19, align 4
  %187 = call i32 @ccdc_config_imgattr(%struct.isp_ccdc_device* %185, i32 %186)
  %188 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %189 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %6, align 8
  %190 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = sub nsw i32 %191, 2
  %193 = load i32, i32* @ISPCCDC_VDINT_0_SHIFT, align 4
  %194 = shl i32 %192, %193
  %195 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %6, align 8
  %196 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = mul nsw i32 %197, 2
  %199 = sdiv i32 %198, 3
  %200 = load i32, i32* @ISPCCDC_VDINT_1_SHIFT, align 4
  %201 = shl i32 %199, %200
  %202 = or i32 %194, %201
  %203 = load i32, i32* @OMAP3_ISP_IOMEM_CCDC, align 4
  %204 = load i32, i32* @ISPCCDC_VDINT, align 4
  %205 = call i32 @isp_reg_writel(%struct.isp_device* %188, i32 %202, i32 %203, i32 %204)
  %206 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %2, align 8
  %207 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %206, i32 0, i32 4
  %208 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %207, align 8
  %209 = load i64, i64* @CCDC_PAD_SOURCE_OF, align 8
  %210 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %208, i64 %209
  store %struct.v4l2_mbus_framefmt* %210, %struct.v4l2_mbus_framefmt** %6, align 8
  %211 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %2, align 8
  %212 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %211, i32 0, i32 6
  store %struct.v4l2_rect* %212, %struct.v4l2_rect** %7, align 8
  %213 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %2, align 8
  %214 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %227

217:                                              ; preds = %184
  %218 = load %struct.v4l2_rect*, %struct.v4l2_rect** %7, align 8
  %219 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  %221 = mul nsw i32 %220, 2
  store i32 %221, i32* %17, align 4
  %222 = load %struct.v4l2_rect*, %struct.v4l2_rect** %7, align 8
  %223 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 4
  %225 = mul nsw i32 %224, 2
  %226 = sub nsw i32 %225, 1
  store i32 %226, i32* %16, align 4
  br label %235

227:                                              ; preds = %184
  %228 = load %struct.v4l2_rect*, %struct.v4l2_rect** %7, align 8
  %229 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 4
  store i32 %230, i32* %17, align 4
  %231 = load %struct.v4l2_rect*, %struct.v4l2_rect** %7, align 8
  %232 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 4
  %234 = sub nsw i32 %233, 1
  store i32 %234, i32* %16, align 4
  br label %235

235:                                              ; preds = %227, %217
  %236 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %237 = load i32, i32* %17, align 4
  %238 = load i32, i32* @ISPCCDC_HORZ_INFO_SPH_SHIFT, align 4
  %239 = shl i32 %237, %238
  %240 = load i32, i32* %16, align 4
  %241 = load i32, i32* @ISPCCDC_HORZ_INFO_NPH_SHIFT, align 4
  %242 = shl i32 %240, %241
  %243 = or i32 %239, %242
  %244 = load i32, i32* @OMAP3_ISP_IOMEM_CCDC, align 4
  %245 = load i32, i32* @ISPCCDC_HORZ_INFO, align 4
  %246 = call i32 @isp_reg_writel(%struct.isp_device* %236, i32 %243, i32 %244, i32 %245)
  %247 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %248 = load %struct.v4l2_rect*, %struct.v4l2_rect** %7, align 8
  %249 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %248, i32 0, i32 2
  %250 = load i32, i32* %249, align 4
  %251 = load i32, i32* @ISPCCDC_VERT_START_SLV0_SHIFT, align 4
  %252 = shl i32 %250, %251
  %253 = load %struct.v4l2_rect*, %struct.v4l2_rect** %7, align 8
  %254 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %253, i32 0, i32 2
  %255 = load i32, i32* %254, align 4
  %256 = load i32, i32* @ISPCCDC_VERT_START_SLV1_SHIFT, align 4
  %257 = shl i32 %255, %256
  %258 = or i32 %252, %257
  %259 = load i32, i32* @OMAP3_ISP_IOMEM_CCDC, align 4
  %260 = load i32, i32* @ISPCCDC_VERT_START, align 4
  %261 = call i32 @isp_reg_writel(%struct.isp_device* %247, i32 %258, i32 %259, i32 %260)
  %262 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %263 = load %struct.v4l2_rect*, %struct.v4l2_rect** %7, align 8
  %264 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %263, i32 0, i32 3
  %265 = load i32, i32* %264, align 4
  %266 = sub nsw i32 %265, 1
  %267 = load i32, i32* @ISPCCDC_VERT_LINES_NLV_SHIFT, align 4
  %268 = shl i32 %266, %267
  %269 = load i32, i32* @OMAP3_ISP_IOMEM_CCDC, align 4
  %270 = load i32, i32* @ISPCCDC_VERT_LINES, align 4
  %271 = call i32 @isp_reg_writel(%struct.isp_device* %262, i32 %268, i32 %269, i32 %270)
  %272 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %2, align 8
  %273 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %2, align 8
  %274 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %273, i32 0, i32 5
  %275 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 8
  %277 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %6, align 8
  %278 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %277, i32 0, i32 2
  %279 = load i64, i64* %278, align 8
  %280 = call i32 @ccdc_config_outlineoffset(%struct.isp_ccdc_device* %272, i32 %276, i64 %279)
  %281 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %2, align 8
  %282 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %281, i32 0, i32 4
  %283 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %282, align 8
  %284 = load i64, i64* @CCDC_PAD_SINK, align 8
  %285 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %283, i64 %284
  %286 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %285, i32 0, i32 2
  %287 = load i64, i64* %286, align 8
  %288 = load i64, i64* @V4L2_FIELD_ALTERNATE, align 8
  %289 = icmp eq i64 %287, %288
  br i1 %289, label %290, label %306

290:                                              ; preds = %235
  %291 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %6, align 8
  %292 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %291, i32 0, i32 2
  %293 = load i64, i64* %292, align 8
  %294 = load i64, i64* @V4L2_FIELD_INTERLACED_TB, align 8
  %295 = icmp eq i64 %293, %294
  br i1 %295, label %302, label %296

296:                                              ; preds = %290
  %297 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %6, align 8
  %298 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %297, i32 0, i32 2
  %299 = load i64, i64* %298, align 8
  %300 = load i64, i64* @V4L2_FIELD_INTERLACED_BT, align 8
  %301 = icmp eq i64 %299, %300
  br i1 %301, label %302, label %306

302:                                              ; preds = %296, %290
  %303 = load i32, i32* @ISPCCDC_SYN_MODE_FLDMODE, align 4
  %304 = load i32, i32* %18, align 4
  %305 = or i32 %304, %303
  store i32 %305, i32* %18, align 4
  br label %306

306:                                              ; preds = %302, %296, %235
  %307 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %6, align 8
  %308 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %307, i32 0, i32 0
  %309 = load i32, i32* %308, align 8
  %310 = load i32, i32* @MEDIA_BUS_FMT_YUYV8_1X16, align 4
  %311 = icmp eq i32 %309, %310
  br i1 %311, label %312, label %318

312:                                              ; preds = %306
  %313 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %314 = load i32, i32* @OMAP3_ISP_IOMEM_CCDC, align 4
  %315 = load i32, i32* @ISPCCDC_CFG, align 4
  %316 = load i32, i32* @ISPCCDC_CFG_BSWD, align 4
  %317 = call i32 @isp_reg_set(%struct.isp_device* %313, i32 %314, i32 %315, i32 %316)
  br label %324

318:                                              ; preds = %306
  %319 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %320 = load i32, i32* @OMAP3_ISP_IOMEM_CCDC, align 4
  %321 = load i32, i32* @ISPCCDC_CFG, align 4
  %322 = load i32, i32* @ISPCCDC_CFG_BSWD, align 4
  %323 = call i32 @isp_reg_clr(%struct.isp_device* %319, i32 %320, i32 %321, i32 %322)
  br label %324

324:                                              ; preds = %318, %312
  %325 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %6, align 8
  %326 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %325, i32 0, i32 0
  %327 = load i32, i32* %326, align 8
  %328 = call %struct.isp_format_info* @omap3isp_video_format_info(i32 %327)
  %329 = getelementptr inbounds %struct.isp_format_info, %struct.isp_format_info* %328, i32 0, i32 0
  %330 = load i32, i32* %329, align 8
  %331 = icmp ule i32 %330, 8
  br i1 %331, label %337, label %332

332:                                              ; preds = %324
  %333 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %2, align 8
  %334 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %333, i32 0, i32 0
  %335 = load i32, i32* %334, align 8
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %337, label %341

337:                                              ; preds = %332, %324
  %338 = load i32, i32* @ISPCCDC_SYN_MODE_PACK8, align 4
  %339 = load i32, i32* %18, align 4
  %340 = or i32 %339, %338
  store i32 %340, i32* %18, align 4
  br label %346

341:                                              ; preds = %332
  %342 = load i32, i32* @ISPCCDC_SYN_MODE_PACK8, align 4
  %343 = xor i32 %342, -1
  %344 = load i32, i32* %18, align 4
  %345 = and i32 %344, %343
  store i32 %345, i32* %18, align 4
  br label %346

346:                                              ; preds = %341, %337
  %347 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %348 = load i32, i32* %18, align 4
  %349 = load i32, i32* @OMAP3_ISP_IOMEM_CCDC, align 4
  %350 = load i32, i32* @ISPCCDC_SYN_MODE, align 4
  %351 = call i32 @isp_reg_writel(%struct.isp_device* %347, i32 %348, i32 %349, i32 %350)
  %352 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %2, align 8
  %353 = call i32 @ccdc_config_vp(%struct.isp_ccdc_device* %352)
  %354 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %2, align 8
  %355 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %354, i32 0, i32 3
  %356 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %355, i32 0, i32 0
  %357 = load i64, i64* %13, align 8
  %358 = call i32 @spin_lock_irqsave(i32* %356, i64 %357)
  %359 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %2, align 8
  %360 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %359, i32 0, i32 3
  %361 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %360, i32 0, i32 1
  %362 = load %struct.TYPE_17__*, %struct.TYPE_17__** %361, align 8
  %363 = icmp eq %struct.TYPE_17__* %362, null
  br i1 %363, label %364, label %365

364:                                              ; preds = %346
  br label %410

365:                                              ; preds = %346
  %366 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %2, align 8
  %367 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %366, i32 0, i32 3
  %368 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %367, i32 0, i32 4
  %369 = load %struct.TYPE_17__*, %struct.TYPE_17__** %368, align 8
  %370 = call i32 @WARN_ON(%struct.TYPE_17__* %369)
  %371 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %2, align 8
  %372 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %371, i32 0, i32 3
  %373 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %372, i32 0, i32 4
  %374 = load %struct.TYPE_17__*, %struct.TYPE_17__** %373, align 8
  %375 = icmp eq %struct.TYPE_17__* %374, null
  br i1 %375, label %376, label %392

376:                                              ; preds = %365
  %377 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %2, align 8
  %378 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %2, align 8
  %379 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %378, i32 0, i32 3
  %380 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %379, i32 0, i32 1
  %381 = load %struct.TYPE_17__*, %struct.TYPE_17__** %380, align 8
  %382 = call i64 @__ccdc_lsc_configure(%struct.isp_ccdc_device* %377, %struct.TYPE_17__* %381)
  %383 = icmp eq i64 %382, 0
  br i1 %383, label %384, label %392

384:                                              ; preds = %376
  %385 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %2, align 8
  %386 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %385, i32 0, i32 3
  %387 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %386, i32 0, i32 1
  %388 = load %struct.TYPE_17__*, %struct.TYPE_17__** %387, align 8
  %389 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %2, align 8
  %390 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %389, i32 0, i32 3
  %391 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %390, i32 0, i32 4
  store %struct.TYPE_17__* %388, %struct.TYPE_17__** %391, align 8
  br label %406

392:                                              ; preds = %376, %365
  %393 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %2, align 8
  %394 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %393, i32 0, i32 3
  %395 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %394, i32 0, i32 1
  %396 = load %struct.TYPE_17__*, %struct.TYPE_17__** %395, align 8
  %397 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %396, i32 0, i32 0
  %398 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %2, align 8
  %399 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %398, i32 0, i32 3
  %400 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %399, i32 0, i32 3
  %401 = call i32 @list_add_tail(i32* %397, i32* %400)
  %402 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %2, align 8
  %403 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %402, i32 0, i32 3
  %404 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %403, i32 0, i32 2
  %405 = call i32 @schedule_work(i32* %404)
  br label %406

406:                                              ; preds = %392, %384
  %407 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %2, align 8
  %408 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %407, i32 0, i32 3
  %409 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %408, i32 0, i32 1
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %409, align 8
  br label %410

410:                                              ; preds = %406, %364
  %411 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %2, align 8
  %412 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %411, i32 0, i32 3
  %413 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %412, i32 0, i32 0
  %414 = load i64, i64* %13, align 8
  %415 = call i32 @spin_unlock_irqrestore(i32* %413, i64 %414)
  %416 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %2, align 8
  %417 = call i32 @ccdc_apply_controls(%struct.isp_ccdc_device* %416)
  ret void
}

declare dso_local %struct.isp_device* @to_isp_device(%struct.isp_ccdc_device*) #1

declare dso_local %struct.media_pad* @media_entity_remote_pad(i32*) #1

declare dso_local %struct.v4l2_subdev* @media_entity_to_v4l2_subdev(i32) #1

declare dso_local %struct.TYPE_16__* @to_isp_pipeline(i32*) #1

declare dso_local %struct.TYPE_15__* @v4l2_subdev_to_bus_cfg(%struct.v4l2_subdev*) #1

declare dso_local i32 @v4l2_subdev_call(%struct.v4l2_subdev*, %struct.media_pad*, i32, i32*, %struct.v4l2_subdev_format*) #1

declare dso_local %struct.isp_format_info* @omap3isp_video_format_info(i32) #1

declare dso_local i32 @omap3isp_configure_bridge(%struct.isp_device*, i64, %struct.isp_parallel_cfg*, i32, i32) #1

declare dso_local i32 @ccdc_config_sync_if(%struct.isp_ccdc_device*, %struct.isp_parallel_cfg*, i32) #1

declare dso_local i32 @isp_reg_readl(%struct.isp_device*, i32, i32) #1

declare dso_local i32 @ccdc_config_imgattr(%struct.isp_ccdc_device*, i32) #1

declare dso_local i32 @isp_reg_writel(%struct.isp_device*, i32, i32, i32) #1

declare dso_local i32 @ccdc_config_outlineoffset(%struct.isp_ccdc_device*, i32, i64) #1

declare dso_local i32 @isp_reg_set(%struct.isp_device*, i32, i32, i32) #1

declare dso_local i32 @isp_reg_clr(%struct.isp_device*, i32, i32, i32) #1

declare dso_local i32 @ccdc_config_vp(%struct.isp_ccdc_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @WARN_ON(%struct.TYPE_17__*) #1

declare dso_local i64 @__ccdc_lsc_configure(%struct.isp_ccdc_device*, %struct.TYPE_17__*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ccdc_apply_controls(%struct.isp_ccdc_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
