; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-isp.c_fimc_isp_subdev_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-isp.c_fimc_isp_subdev_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_ctrl_ops = type { i32 }
%struct.fimc_isp = type { %struct.TYPE_5__*, i32, %struct.fimc_isp_ctrls, %struct.v4l2_subdev }
%struct.TYPE_5__ = type { i8* }
%struct.fimc_isp_ctrls = type { i8*, i8*, i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct.v4l2_ctrl_handler }
%struct.v4l2_ctrl_handler = type { i32 }
%struct.v4l2_subdev = type { %struct.TYPE_4__, i32*, %struct.v4l2_ctrl_handler*, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32*, i32 }

@fimc_isp_ctrl_ops = common dso_local global %struct.v4l2_ctrl_ops zeroinitializer, align 4
@fimc_is_subdev_ops = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@GRP_ID_FIMC_IS = common dso_local global i32 0, align 4
@V4L2_SUBDEV_FL_HAS_DEVNODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"FIMC-IS-ISP\00", align 1
@MEDIA_ENT_F_PROC_VIDEO_PIXEL_FORMATTER = common dso_local global i32 0, align 4
@MEDIA_PAD_FL_SINK = common dso_local global i8* null, align 8
@FIMC_ISP_SD_PAD_SINK = common dso_local global i64 0, align 8
@MEDIA_PAD_FL_SOURCE = common dso_local global i8* null, align 8
@FIMC_ISP_SD_PAD_SRC_FIFO = common dso_local global i64 0, align 8
@FIMC_ISP_SD_PAD_SRC_DMA = common dso_local global i64 0, align 8
@FIMC_ISP_SD_PADS_NUM = common dso_local global i32 0, align 4
@V4L2_CID_SATURATION = common dso_local global i32 0, align 4
@V4L2_CID_BRIGHTNESS = common dso_local global i32 0, align 4
@V4L2_CID_CONTRAST = common dso_local global i32 0, align 4
@V4L2_CID_SHARPNESS = common dso_local global i32 0, align 4
@V4L2_CID_HUE = common dso_local global i32 0, align 4
@V4L2_CID_AUTO_N_PRESET_WHITE_BALANCE = common dso_local global i32 0, align 4
@V4L2_WHITE_BALANCE_AUTO = common dso_local global i32 0, align 4
@V4L2_CID_EXPOSURE_ABSOLUTE = common dso_local global i32 0, align 4
@V4L2_CID_EXPOSURE_METERING = common dso_local global i32 0, align 4
@V4L2_EXPOSURE_METERING_AVERAGE = common dso_local global i32 0, align 4
@V4L2_CID_POWER_LINE_FREQUENCY = common dso_local global i32 0, align 4
@V4L2_CID_POWER_LINE_FREQUENCY_AUTO = common dso_local global i32 0, align 4
@V4L2_CID_ISO_SENSITIVITY_AUTO = common dso_local global i32 0, align 4
@V4L2_ISO_SENSITIVITY_AUTO = common dso_local global i32 0, align 4
@V4L2_CID_ISO_SENSITIVITY = common dso_local global i32 0, align 4
@iso_qmenu = common dso_local global i32 0, align 4
@V4L2_CID_3A_LOCK = common dso_local global i32 0, align 4
@V4L2_CID_COLORFX = common dso_local global i32 0, align 4
@V4L2_COLORFX_SET_CBCR = common dso_local global i32 0, align 4
@V4L2_COLORFX_NONE = common dso_local global i32 0, align 4
@V4L2_ISO_SENSITIVITY_MANUAL = common dso_local global i32 0, align 4
@fimc_is_subdev_internal_ops = common dso_local global i32 0, align 4
@fimc_is_subdev_media_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fimc_isp_subdev_create(%struct.fimc_isp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fimc_isp*, align 8
  %4 = alloca %struct.v4l2_ctrl_ops*, align 8
  %5 = alloca %struct.v4l2_ctrl_handler*, align 8
  %6 = alloca %struct.v4l2_subdev*, align 8
  %7 = alloca %struct.fimc_isp_ctrls*, align 8
  %8 = alloca i32, align 4
  store %struct.fimc_isp* %0, %struct.fimc_isp** %3, align 8
  store %struct.v4l2_ctrl_ops* @fimc_isp_ctrl_ops, %struct.v4l2_ctrl_ops** %4, align 8
  %9 = load %struct.fimc_isp*, %struct.fimc_isp** %3, align 8
  %10 = getelementptr inbounds %struct.fimc_isp, %struct.fimc_isp* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.fimc_isp_ctrls, %struct.fimc_isp_ctrls* %10, i32 0, i32 12
  store %struct.v4l2_ctrl_handler* %11, %struct.v4l2_ctrl_handler** %5, align 8
  %12 = load %struct.fimc_isp*, %struct.fimc_isp** %3, align 8
  %13 = getelementptr inbounds %struct.fimc_isp, %struct.fimc_isp* %12, i32 0, i32 3
  store %struct.v4l2_subdev* %13, %struct.v4l2_subdev** %6, align 8
  %14 = load %struct.fimc_isp*, %struct.fimc_isp** %3, align 8
  %15 = getelementptr inbounds %struct.fimc_isp, %struct.fimc_isp* %14, i32 0, i32 2
  store %struct.fimc_isp_ctrls* %15, %struct.fimc_isp_ctrls** %7, align 8
  %16 = load %struct.fimc_isp*, %struct.fimc_isp** %3, align 8
  %17 = getelementptr inbounds %struct.fimc_isp, %struct.fimc_isp* %16, i32 0, i32 1
  %18 = call i32 @mutex_init(i32* %17)
  %19 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %20 = call i32 @v4l2_subdev_init(%struct.v4l2_subdev* %19, i32* @fimc_is_subdev_ops)
  %21 = load i32, i32* @THIS_MODULE, align 4
  %22 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %23 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %22, i32 0, i32 6
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* @GRP_ID_FIMC_IS, align 4
  %25 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %26 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %25, i32 0, i32 5
  store i32 %24, i32* %26, align 8
  %27 = load i32, i32* @V4L2_SUBDEV_FL_HAS_DEVNODE, align 4
  %28 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %29 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 4
  %32 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %33 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @snprintf(i32 %34, i32 4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @MEDIA_ENT_F_PROC_VIDEO_PIXEL_FORMATTER, align 4
  %37 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %38 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  store i32 %36, i32* %39, align 8
  %40 = load i8*, i8** @MEDIA_PAD_FL_SINK, align 8
  %41 = load %struct.fimc_isp*, %struct.fimc_isp** %3, align 8
  %42 = getelementptr inbounds %struct.fimc_isp, %struct.fimc_isp* %41, i32 0, i32 0
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = load i64, i64* @FIMC_ISP_SD_PAD_SINK, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  store i8* %40, i8** %46, align 8
  %47 = load i8*, i8** @MEDIA_PAD_FL_SOURCE, align 8
  %48 = load %struct.fimc_isp*, %struct.fimc_isp** %3, align 8
  %49 = getelementptr inbounds %struct.fimc_isp, %struct.fimc_isp* %48, i32 0, i32 0
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = load i64, i64* @FIMC_ISP_SD_PAD_SRC_FIFO, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  store i8* %47, i8** %53, align 8
  %54 = load i8*, i8** @MEDIA_PAD_FL_SOURCE, align 8
  %55 = load %struct.fimc_isp*, %struct.fimc_isp** %3, align 8
  %56 = getelementptr inbounds %struct.fimc_isp, %struct.fimc_isp* %55, i32 0, i32 0
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = load i64, i64* @FIMC_ISP_SD_PAD_SRC_DMA, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  store i8* %54, i8** %60, align 8
  %61 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %62 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %61, i32 0, i32 0
  %63 = load i32, i32* @FIMC_ISP_SD_PADS_NUM, align 4
  %64 = load %struct.fimc_isp*, %struct.fimc_isp** %3, align 8
  %65 = getelementptr inbounds %struct.fimc_isp, %struct.fimc_isp* %64, i32 0, i32 0
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %65, align 8
  %67 = call i32 @media_entity_pads_init(%struct.TYPE_4__* %62, i32 %63, %struct.TYPE_5__* %66)
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %8, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %1
  %71 = load i32, i32* %8, align 4
  store i32 %71, i32* %2, align 4
  br label %196

72:                                               ; preds = %1
  %73 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %74 = call i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler* %73, i32 20)
  %75 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %76 = load %struct.v4l2_ctrl_ops*, %struct.v4l2_ctrl_ops** %4, align 8
  %77 = load i32, i32* @V4L2_CID_SATURATION, align 4
  %78 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %75, %struct.v4l2_ctrl_ops* %76, i32 %77, i32 -2, i32 2, i32 1, i32 0)
  %79 = load %struct.fimc_isp_ctrls*, %struct.fimc_isp_ctrls** %7, align 8
  %80 = getelementptr inbounds %struct.fimc_isp_ctrls, %struct.fimc_isp_ctrls* %79, i32 0, i32 11
  store i8* %78, i8** %80, align 8
  %81 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %82 = load %struct.v4l2_ctrl_ops*, %struct.v4l2_ctrl_ops** %4, align 8
  %83 = load i32, i32* @V4L2_CID_BRIGHTNESS, align 4
  %84 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %81, %struct.v4l2_ctrl_ops* %82, i32 %83, i32 -4, i32 4, i32 1, i32 0)
  %85 = load %struct.fimc_isp_ctrls*, %struct.fimc_isp_ctrls** %7, align 8
  %86 = getelementptr inbounds %struct.fimc_isp_ctrls, %struct.fimc_isp_ctrls* %85, i32 0, i32 10
  store i8* %84, i8** %86, align 8
  %87 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %88 = load %struct.v4l2_ctrl_ops*, %struct.v4l2_ctrl_ops** %4, align 8
  %89 = load i32, i32* @V4L2_CID_CONTRAST, align 4
  %90 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %87, %struct.v4l2_ctrl_ops* %88, i32 %89, i32 -2, i32 2, i32 1, i32 0)
  %91 = load %struct.fimc_isp_ctrls*, %struct.fimc_isp_ctrls** %7, align 8
  %92 = getelementptr inbounds %struct.fimc_isp_ctrls, %struct.fimc_isp_ctrls* %91, i32 0, i32 9
  store i8* %90, i8** %92, align 8
  %93 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %94 = load %struct.v4l2_ctrl_ops*, %struct.v4l2_ctrl_ops** %4, align 8
  %95 = load i32, i32* @V4L2_CID_SHARPNESS, align 4
  %96 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %93, %struct.v4l2_ctrl_ops* %94, i32 %95, i32 -2, i32 2, i32 1, i32 0)
  %97 = load %struct.fimc_isp_ctrls*, %struct.fimc_isp_ctrls** %7, align 8
  %98 = getelementptr inbounds %struct.fimc_isp_ctrls, %struct.fimc_isp_ctrls* %97, i32 0, i32 8
  store i8* %96, i8** %98, align 8
  %99 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %100 = load %struct.v4l2_ctrl_ops*, %struct.v4l2_ctrl_ops** %4, align 8
  %101 = load i32, i32* @V4L2_CID_HUE, align 4
  %102 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %99, %struct.v4l2_ctrl_ops* %100, i32 %101, i32 -2, i32 2, i32 1, i32 0)
  %103 = load %struct.fimc_isp_ctrls*, %struct.fimc_isp_ctrls** %7, align 8
  %104 = getelementptr inbounds %struct.fimc_isp_ctrls, %struct.fimc_isp_ctrls* %103, i32 0, i32 7
  store i8* %102, i8** %104, align 8
  %105 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %106 = load %struct.v4l2_ctrl_ops*, %struct.v4l2_ctrl_ops** %4, align 8
  %107 = load i32, i32* @V4L2_CID_AUTO_N_PRESET_WHITE_BALANCE, align 4
  %108 = load i32, i32* @V4L2_WHITE_BALANCE_AUTO, align 4
  %109 = call i8* @v4l2_ctrl_new_std_menu(%struct.v4l2_ctrl_handler* %105, %struct.v4l2_ctrl_ops* %106, i32 %107, i32 8, i32 -335, i32 %108)
  %110 = load %struct.fimc_isp_ctrls*, %struct.fimc_isp_ctrls** %7, align 8
  %111 = getelementptr inbounds %struct.fimc_isp_ctrls, %struct.fimc_isp_ctrls* %110, i32 0, i32 6
  store i8* %109, i8** %111, align 8
  %112 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %113 = load %struct.v4l2_ctrl_ops*, %struct.v4l2_ctrl_ops** %4, align 8
  %114 = load i32, i32* @V4L2_CID_EXPOSURE_ABSOLUTE, align 4
  %115 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %112, %struct.v4l2_ctrl_ops* %113, i32 %114, i32 -4, i32 4, i32 1, i32 0)
  %116 = load %struct.fimc_isp_ctrls*, %struct.fimc_isp_ctrls** %7, align 8
  %117 = getelementptr inbounds %struct.fimc_isp_ctrls, %struct.fimc_isp_ctrls* %116, i32 0, i32 5
  store i8* %115, i8** %117, align 8
  %118 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %119 = load %struct.v4l2_ctrl_ops*, %struct.v4l2_ctrl_ops** %4, align 8
  %120 = load i32, i32* @V4L2_CID_EXPOSURE_METERING, align 4
  %121 = load i32, i32* @V4L2_EXPOSURE_METERING_AVERAGE, align 4
  %122 = call i8* @v4l2_ctrl_new_std_menu(%struct.v4l2_ctrl_handler* %118, %struct.v4l2_ctrl_ops* %119, i32 %120, i32 3, i32 -16, i32 %121)
  %123 = load %struct.fimc_isp_ctrls*, %struct.fimc_isp_ctrls** %7, align 8
  %124 = getelementptr inbounds %struct.fimc_isp_ctrls, %struct.fimc_isp_ctrls* %123, i32 0, i32 4
  store i8* %122, i8** %124, align 8
  %125 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %126 = load %struct.v4l2_ctrl_ops*, %struct.v4l2_ctrl_ops** %4, align 8
  %127 = load i32, i32* @V4L2_CID_POWER_LINE_FREQUENCY, align 4
  %128 = load i32, i32* @V4L2_CID_POWER_LINE_FREQUENCY_AUTO, align 4
  %129 = load i32, i32* @V4L2_CID_POWER_LINE_FREQUENCY_AUTO, align 4
  %130 = call i8* @v4l2_ctrl_new_std_menu(%struct.v4l2_ctrl_handler* %125, %struct.v4l2_ctrl_ops* %126, i32 %127, i32 %128, i32 0, i32 %129)
  %131 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %132 = load %struct.v4l2_ctrl_ops*, %struct.v4l2_ctrl_ops** %4, align 8
  %133 = load i32, i32* @V4L2_CID_ISO_SENSITIVITY_AUTO, align 4
  %134 = load i32, i32* @V4L2_ISO_SENSITIVITY_AUTO, align 4
  %135 = call i8* @v4l2_ctrl_new_std_menu(%struct.v4l2_ctrl_handler* %131, %struct.v4l2_ctrl_ops* %132, i32 %133, i32 1, i32 0, i32 %134)
  %136 = load %struct.fimc_isp_ctrls*, %struct.fimc_isp_ctrls** %7, align 8
  %137 = getelementptr inbounds %struct.fimc_isp_ctrls, %struct.fimc_isp_ctrls* %136, i32 0, i32 0
  store i8* %135, i8** %137, align 8
  %138 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %139 = load %struct.v4l2_ctrl_ops*, %struct.v4l2_ctrl_ops** %4, align 8
  %140 = load i32, i32* @V4L2_CID_ISO_SENSITIVITY, align 4
  %141 = load i32, i32* @iso_qmenu, align 4
  %142 = call i32 @ARRAY_SIZE(i32 %141)
  %143 = sub nsw i32 %142, 1
  %144 = load i32, i32* @iso_qmenu, align 4
  %145 = call i32 @ARRAY_SIZE(i32 %144)
  %146 = sdiv i32 %145, 2
  %147 = sub nsw i32 %146, 1
  %148 = load i32, i32* @iso_qmenu, align 4
  %149 = call i32 @v4l2_ctrl_new_int_menu(%struct.v4l2_ctrl_handler* %138, %struct.v4l2_ctrl_ops* %139, i32 %140, i32 %143, i32 %147, i32 %148)
  %150 = load %struct.fimc_isp_ctrls*, %struct.fimc_isp_ctrls** %7, align 8
  %151 = getelementptr inbounds %struct.fimc_isp_ctrls, %struct.fimc_isp_ctrls* %150, i32 0, i32 3
  store i32 %149, i32* %151, align 8
  %152 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %153 = load %struct.v4l2_ctrl_ops*, %struct.v4l2_ctrl_ops** %4, align 8
  %154 = load i32, i32* @V4L2_CID_3A_LOCK, align 4
  %155 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %152, %struct.v4l2_ctrl_ops* %153, i32 %154, i32 0, i32 3, i32 0, i32 0)
  %156 = load %struct.fimc_isp_ctrls*, %struct.fimc_isp_ctrls** %7, align 8
  %157 = getelementptr inbounds %struct.fimc_isp_ctrls, %struct.fimc_isp_ctrls* %156, i32 0, i32 2
  store i8* %155, i8** %157, align 8
  %158 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %159 = load %struct.v4l2_ctrl_ops*, %struct.v4l2_ctrl_ops** %4, align 8
  %160 = load i32, i32* @V4L2_CID_COLORFX, align 4
  %161 = load i32, i32* @V4L2_COLORFX_SET_CBCR, align 4
  %162 = add nsw i32 %161, 1
  %163 = load i32, i32* @V4L2_COLORFX_NONE, align 4
  %164 = call i8* @v4l2_ctrl_new_std_menu(%struct.v4l2_ctrl_handler* %158, %struct.v4l2_ctrl_ops* %159, i32 %160, i32 %162, i32 -65552, i32 %163)
  %165 = load %struct.fimc_isp_ctrls*, %struct.fimc_isp_ctrls** %7, align 8
  %166 = getelementptr inbounds %struct.fimc_isp_ctrls, %struct.fimc_isp_ctrls* %165, i32 0, i32 1
  store i8* %164, i8** %166, align 8
  %167 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %168 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %178

171:                                              ; preds = %72
  %172 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %173 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %172, i32 0, i32 0
  %174 = call i32 @media_entity_cleanup(%struct.TYPE_4__* %173)
  %175 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %176 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  store i32 %177, i32* %2, align 4
  br label %196

178:                                              ; preds = %72
  %179 = load %struct.fimc_isp_ctrls*, %struct.fimc_isp_ctrls** %7, align 8
  %180 = getelementptr inbounds %struct.fimc_isp_ctrls, %struct.fimc_isp_ctrls* %179, i32 0, i32 0
  %181 = load i32, i32* @V4L2_ISO_SENSITIVITY_MANUAL, align 4
  %182 = call i32 @v4l2_ctrl_auto_cluster(i32 2, i8** %180, i32 %181, i32 0)
  %183 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %184 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %185 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %184, i32 0, i32 2
  store %struct.v4l2_ctrl_handler* %183, %struct.v4l2_ctrl_handler** %185, align 8
  %186 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %187 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %186, i32 0, i32 1
  store i32* @fimc_is_subdev_internal_ops, i32** %187, align 8
  %188 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %189 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i32 0, i32 0
  store i32* @fimc_is_subdev_media_ops, i32** %190, align 8
  %191 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %192 = load %struct.fimc_isp*, %struct.fimc_isp** %3, align 8
  %193 = call i32 @v4l2_set_subdevdata(%struct.v4l2_subdev* %191, %struct.fimc_isp* %192)
  %194 = load %struct.fimc_isp*, %struct.fimc_isp** %3, align 8
  %195 = call i32 @__isp_subdev_set_default_format(%struct.fimc_isp* %194)
  store i32 0, i32* %2, align 4
  br label %196

196:                                              ; preds = %178, %171, %70
  %197 = load i32, i32* %2, align 4
  ret i32 %197
}

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @v4l2_subdev_init(%struct.v4l2_subdev*, i32*) #1

declare dso_local i32 @snprintf(i32, i32, i8*) #1

declare dso_local i32 @media_entity_pads_init(%struct.TYPE_4__*, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler*, i32) #1

declare dso_local i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_ops*, i32, i32, i32, i32, i32) #1

declare dso_local i8* @v4l2_ctrl_new_std_menu(%struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_ops*, i32, i32, i32, i32) #1

declare dso_local i32 @v4l2_ctrl_new_int_menu(%struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_ops*, i32, i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @media_entity_cleanup(%struct.TYPE_4__*) #1

declare dso_local i32 @v4l2_ctrl_auto_cluster(i32, i8**, i32, i32) #1

declare dso_local i32 @v4l2_set_subdevdata(%struct.v4l2_subdev*, %struct.fimc_isp*) #1

declare dso_local i32 @__isp_subdev_set_default_format(%struct.fimc_isp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
