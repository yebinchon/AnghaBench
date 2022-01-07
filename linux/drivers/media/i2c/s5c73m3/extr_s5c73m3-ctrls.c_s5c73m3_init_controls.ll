; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/s5c73m3/extr_s5c73m3-ctrls.c_s5c73m3_init_controls.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/s5c73m3/extr_s5c73m3-ctrls.c_s5c73m3_init_controls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_ctrl_ops = type { i32 }
%struct.s5c73m3 = type { %struct.TYPE_5__, %struct.s5c73m3_ctrls }
%struct.TYPE_5__ = type { %struct.v4l2_ctrl_handler* }
%struct.v4l2_ctrl_handler = type { i32 }
%struct.s5c73m3_ctrls = type { i8*, %struct.TYPE_4__*, %struct.TYPE_6__*, %struct.TYPE_6__*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct.v4l2_ctrl_handler }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@s5c73m3_ctrl_ops = common dso_local global %struct.v4l2_ctrl_ops zeroinitializer, align 4
@V4L2_CID_AUTO_N_PRESET_WHITE_BALANCE = common dso_local global i32 0, align 4
@V4L2_WHITE_BALANCE_AUTO = common dso_local global i32 0, align 4
@V4L2_CID_EXPOSURE_AUTO = common dso_local global i32 0, align 4
@V4L2_EXPOSURE_AUTO = common dso_local global i32 0, align 4
@V4L2_CID_AUTO_EXPOSURE_BIAS = common dso_local global i32 0, align 4
@ev_bias_qmenu = common dso_local global i32 0, align 4
@V4L2_CID_EXPOSURE_METERING = common dso_local global i32 0, align 4
@V4L2_EXPOSURE_METERING_AVERAGE = common dso_local global i32 0, align 4
@V4L2_CID_FOCUS_AUTO = common dso_local global i32 0, align 4
@V4L2_CID_AUTO_FOCUS_START = common dso_local global i32 0, align 4
@V4L2_CID_AUTO_FOCUS_STOP = common dso_local global i32 0, align 4
@V4L2_CID_AUTO_FOCUS_STATUS = common dso_local global i32 0, align 4
@V4L2_AUTO_FOCUS_STATUS_BUSY = common dso_local global i32 0, align 4
@V4L2_AUTO_FOCUS_STATUS_REACHED = common dso_local global i32 0, align 4
@V4L2_AUTO_FOCUS_STATUS_FAILED = common dso_local global i32 0, align 4
@V4L2_AUTO_FOCUS_STATUS_IDLE = common dso_local global i32 0, align 4
@V4L2_CID_AUTO_FOCUS_RANGE = common dso_local global i32 0, align 4
@V4L2_AUTO_FOCUS_RANGE_MACRO = common dso_local global i32 0, align 4
@V4L2_AUTO_FOCUS_RANGE_NORMAL = common dso_local global i32 0, align 4
@V4L2_CID_ISO_SENSITIVITY_AUTO = common dso_local global i32 0, align 4
@V4L2_ISO_SENSITIVITY_AUTO = common dso_local global i32 0, align 4
@V4L2_CID_ISO_SENSITIVITY = common dso_local global i32 0, align 4
@iso_qmenu = common dso_local global i32 0, align 4
@V4L2_CID_CONTRAST = common dso_local global i32 0, align 4
@V4L2_CID_SATURATION = common dso_local global i32 0, align 4
@V4L2_CID_SHARPNESS = common dso_local global i32 0, align 4
@V4L2_CID_ZOOM_ABSOLUTE = common dso_local global i32 0, align 4
@V4L2_CID_COLORFX = common dso_local global i32 0, align 4
@V4L2_COLORFX_AQUA = common dso_local global i32 0, align 4
@V4L2_COLORFX_NONE = common dso_local global i32 0, align 4
@V4L2_CID_WIDE_DYNAMIC_RANGE = common dso_local global i32 0, align 4
@V4L2_CID_IMAGE_STABILIZATION = common dso_local global i32 0, align 4
@V4L2_CID_POWER_LINE_FREQUENCY = common dso_local global i32 0, align 4
@V4L2_CID_POWER_LINE_FREQUENCY_AUTO = common dso_local global i32 0, align 4
@V4L2_CID_JPEG_COMPRESSION_QUALITY = common dso_local global i32 0, align 4
@V4L2_CID_SCENE_MODE = common dso_local global i32 0, align 4
@V4L2_SCENE_MODE_TEXT = common dso_local global i32 0, align 4
@V4L2_SCENE_MODE_NONE = common dso_local global i32 0, align 4
@V4L2_CID_3A_LOCK = common dso_local global i32 0, align 4
@V4L2_CTRL_FLAG_VOLATILE = common dso_local global i32 0, align 4
@V4L2_CTRL_FLAG_UPDATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @s5c73m3_init_controls(%struct.s5c73m3* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.s5c73m3*, align 8
  %4 = alloca %struct.v4l2_ctrl_ops*, align 8
  %5 = alloca %struct.s5c73m3_ctrls*, align 8
  %6 = alloca %struct.v4l2_ctrl_handler*, align 8
  %7 = alloca i32, align 4
  store %struct.s5c73m3* %0, %struct.s5c73m3** %3, align 8
  store %struct.v4l2_ctrl_ops* @s5c73m3_ctrl_ops, %struct.v4l2_ctrl_ops** %4, align 8
  %8 = load %struct.s5c73m3*, %struct.s5c73m3** %3, align 8
  %9 = getelementptr inbounds %struct.s5c73m3, %struct.s5c73m3* %8, i32 0, i32 1
  store %struct.s5c73m3_ctrls* %9, %struct.s5c73m3_ctrls** %5, align 8
  %10 = load %struct.s5c73m3_ctrls*, %struct.s5c73m3_ctrls** %5, align 8
  %11 = getelementptr inbounds %struct.s5c73m3_ctrls, %struct.s5c73m3_ctrls* %10, i32 0, i32 21
  store %struct.v4l2_ctrl_handler* %11, %struct.v4l2_ctrl_handler** %6, align 8
  %12 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %13 = call i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler* %12, i32 22)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %7, align 4
  store i32 %17, i32* %2, align 4
  br label %233

18:                                               ; preds = %1
  %19 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %20 = load %struct.v4l2_ctrl_ops*, %struct.v4l2_ctrl_ops** %4, align 8
  %21 = load i32, i32* @V4L2_CID_AUTO_N_PRESET_WHITE_BALANCE, align 4
  %22 = load i32, i32* @V4L2_WHITE_BALANCE_AUTO, align 4
  %23 = call i8* @v4l2_ctrl_new_std_menu(%struct.v4l2_ctrl_handler* %19, %struct.v4l2_ctrl_ops* %20, i32 %21, i32 9, i32 -351, i32 %22)
  %24 = load %struct.s5c73m3_ctrls*, %struct.s5c73m3_ctrls** %5, align 8
  %25 = getelementptr inbounds %struct.s5c73m3_ctrls, %struct.s5c73m3_ctrls* %24, i32 0, i32 20
  store i8* %23, i8** %25, align 8
  %26 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %27 = load %struct.v4l2_ctrl_ops*, %struct.v4l2_ctrl_ops** %4, align 8
  %28 = load i32, i32* @V4L2_CID_EXPOSURE_AUTO, align 4
  %29 = load i32, i32* @V4L2_EXPOSURE_AUTO, align 4
  %30 = call i8* @v4l2_ctrl_new_std_menu(%struct.v4l2_ctrl_handler* %26, %struct.v4l2_ctrl_ops* %27, i32 %28, i32 0, i32 -2, i32 %29)
  %31 = bitcast i8* %30 to %struct.TYPE_6__*
  %32 = load %struct.s5c73m3_ctrls*, %struct.s5c73m3_ctrls** %5, align 8
  %33 = getelementptr inbounds %struct.s5c73m3_ctrls, %struct.s5c73m3_ctrls* %32, i32 0, i32 3
  store %struct.TYPE_6__* %31, %struct.TYPE_6__** %33, align 8
  %34 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %35 = load %struct.v4l2_ctrl_ops*, %struct.v4l2_ctrl_ops** %4, align 8
  %36 = load i32, i32* @V4L2_CID_AUTO_EXPOSURE_BIAS, align 4
  %37 = load i32, i32* @ev_bias_qmenu, align 4
  %38 = call i32 @ARRAY_SIZE(i32 %37)
  %39 = sub nsw i32 %38, 1
  %40 = load i32, i32* @ev_bias_qmenu, align 4
  %41 = call i32 @ARRAY_SIZE(i32 %40)
  %42 = sdiv i32 %41, 2
  %43 = sub nsw i32 %42, 1
  %44 = load i32, i32* @ev_bias_qmenu, align 4
  %45 = call i8* @v4l2_ctrl_new_int_menu(%struct.v4l2_ctrl_handler* %34, %struct.v4l2_ctrl_ops* %35, i32 %36, i32 %39, i32 %43, i32 %44)
  %46 = load %struct.s5c73m3_ctrls*, %struct.s5c73m3_ctrls** %5, align 8
  %47 = getelementptr inbounds %struct.s5c73m3_ctrls, %struct.s5c73m3_ctrls* %46, i32 0, i32 19
  store i8* %45, i8** %47, align 8
  %48 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %49 = load %struct.v4l2_ctrl_ops*, %struct.v4l2_ctrl_ops** %4, align 8
  %50 = load i32, i32* @V4L2_CID_EXPOSURE_METERING, align 4
  %51 = load i32, i32* @V4L2_EXPOSURE_METERING_AVERAGE, align 4
  %52 = call i8* @v4l2_ctrl_new_std_menu(%struct.v4l2_ctrl_handler* %48, %struct.v4l2_ctrl_ops* %49, i32 %50, i32 2, i32 -8, i32 %51)
  %53 = load %struct.s5c73m3_ctrls*, %struct.s5c73m3_ctrls** %5, align 8
  %54 = getelementptr inbounds %struct.s5c73m3_ctrls, %struct.s5c73m3_ctrls* %53, i32 0, i32 18
  store i8* %52, i8** %54, align 8
  %55 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %56 = load %struct.v4l2_ctrl_ops*, %struct.v4l2_ctrl_ops** %4, align 8
  %57 = load i32, i32* @V4L2_CID_FOCUS_AUTO, align 4
  %58 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %55, %struct.v4l2_ctrl_ops* %56, i32 %57, i32 0, i32 1, i32 1, i32 0)
  %59 = load %struct.s5c73m3_ctrls*, %struct.s5c73m3_ctrls** %5, align 8
  %60 = getelementptr inbounds %struct.s5c73m3_ctrls, %struct.s5c73m3_ctrls* %59, i32 0, i32 0
  store i8* %58, i8** %60, align 8
  %61 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %62 = load %struct.v4l2_ctrl_ops*, %struct.v4l2_ctrl_ops** %4, align 8
  %63 = load i32, i32* @V4L2_CID_AUTO_FOCUS_START, align 4
  %64 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %61, %struct.v4l2_ctrl_ops* %62, i32 %63, i32 0, i32 1, i32 1, i32 0)
  %65 = load %struct.s5c73m3_ctrls*, %struct.s5c73m3_ctrls** %5, align 8
  %66 = getelementptr inbounds %struct.s5c73m3_ctrls, %struct.s5c73m3_ctrls* %65, i32 0, i32 17
  store i8* %64, i8** %66, align 8
  %67 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %68 = load %struct.v4l2_ctrl_ops*, %struct.v4l2_ctrl_ops** %4, align 8
  %69 = load i32, i32* @V4L2_CID_AUTO_FOCUS_STOP, align 4
  %70 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %67, %struct.v4l2_ctrl_ops* %68, i32 %69, i32 0, i32 1, i32 1, i32 0)
  %71 = load %struct.s5c73m3_ctrls*, %struct.s5c73m3_ctrls** %5, align 8
  %72 = getelementptr inbounds %struct.s5c73m3_ctrls, %struct.s5c73m3_ctrls* %71, i32 0, i32 16
  store i8* %70, i8** %72, align 8
  %73 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %74 = load %struct.v4l2_ctrl_ops*, %struct.v4l2_ctrl_ops** %4, align 8
  %75 = load i32, i32* @V4L2_CID_AUTO_FOCUS_STATUS, align 4
  %76 = load i32, i32* @V4L2_AUTO_FOCUS_STATUS_BUSY, align 4
  %77 = load i32, i32* @V4L2_AUTO_FOCUS_STATUS_REACHED, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* @V4L2_AUTO_FOCUS_STATUS_FAILED, align 4
  %80 = or i32 %78, %79
  %81 = load i32, i32* @V4L2_AUTO_FOCUS_STATUS_IDLE, align 4
  %82 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %73, %struct.v4l2_ctrl_ops* %74, i32 %75, i32 0, i32 %80, i32 0, i32 %81)
  %83 = bitcast i8* %82 to %struct.TYPE_4__*
  %84 = load %struct.s5c73m3_ctrls*, %struct.s5c73m3_ctrls** %5, align 8
  %85 = getelementptr inbounds %struct.s5c73m3_ctrls, %struct.s5c73m3_ctrls* %84, i32 0, i32 1
  store %struct.TYPE_4__* %83, %struct.TYPE_4__** %85, align 8
  %86 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %87 = load %struct.v4l2_ctrl_ops*, %struct.v4l2_ctrl_ops** %4, align 8
  %88 = load i32, i32* @V4L2_CID_AUTO_FOCUS_RANGE, align 4
  %89 = load i32, i32* @V4L2_AUTO_FOCUS_RANGE_MACRO, align 4
  %90 = load i32, i32* @V4L2_AUTO_FOCUS_RANGE_NORMAL, align 4
  %91 = shl i32 1, %90
  %92 = load i32, i32* @V4L2_AUTO_FOCUS_RANGE_MACRO, align 4
  %93 = shl i32 1, %92
  %94 = or i32 %91, %93
  %95 = xor i32 %94, -1
  %96 = load i32, i32* @V4L2_AUTO_FOCUS_RANGE_NORMAL, align 4
  %97 = call i8* @v4l2_ctrl_new_std_menu(%struct.v4l2_ctrl_handler* %86, %struct.v4l2_ctrl_ops* %87, i32 %88, i32 %89, i32 %95, i32 %96)
  %98 = load %struct.s5c73m3_ctrls*, %struct.s5c73m3_ctrls** %5, align 8
  %99 = getelementptr inbounds %struct.s5c73m3_ctrls, %struct.s5c73m3_ctrls* %98, i32 0, i32 15
  store i8* %97, i8** %99, align 8
  %100 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %101 = load %struct.v4l2_ctrl_ops*, %struct.v4l2_ctrl_ops** %4, align 8
  %102 = load i32, i32* @V4L2_CID_ISO_SENSITIVITY_AUTO, align 4
  %103 = load i32, i32* @V4L2_ISO_SENSITIVITY_AUTO, align 4
  %104 = call i8* @v4l2_ctrl_new_std_menu(%struct.v4l2_ctrl_handler* %100, %struct.v4l2_ctrl_ops* %101, i32 %102, i32 1, i32 0, i32 %103)
  %105 = bitcast i8* %104 to %struct.TYPE_6__*
  %106 = load %struct.s5c73m3_ctrls*, %struct.s5c73m3_ctrls** %5, align 8
  %107 = getelementptr inbounds %struct.s5c73m3_ctrls, %struct.s5c73m3_ctrls* %106, i32 0, i32 2
  store %struct.TYPE_6__* %105, %struct.TYPE_6__** %107, align 8
  %108 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %109 = load %struct.v4l2_ctrl_ops*, %struct.v4l2_ctrl_ops** %4, align 8
  %110 = load i32, i32* @V4L2_CID_ISO_SENSITIVITY, align 4
  %111 = load i32, i32* @iso_qmenu, align 4
  %112 = call i32 @ARRAY_SIZE(i32 %111)
  %113 = sub nsw i32 %112, 1
  %114 = load i32, i32* @iso_qmenu, align 4
  %115 = call i32 @ARRAY_SIZE(i32 %114)
  %116 = sdiv i32 %115, 2
  %117 = sub nsw i32 %116, 1
  %118 = load i32, i32* @iso_qmenu, align 4
  %119 = call i8* @v4l2_ctrl_new_int_menu(%struct.v4l2_ctrl_handler* %108, %struct.v4l2_ctrl_ops* %109, i32 %110, i32 %113, i32 %117, i32 %118)
  %120 = load %struct.s5c73m3_ctrls*, %struct.s5c73m3_ctrls** %5, align 8
  %121 = getelementptr inbounds %struct.s5c73m3_ctrls, %struct.s5c73m3_ctrls* %120, i32 0, i32 14
  store i8* %119, i8** %121, align 8
  %122 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %123 = load %struct.v4l2_ctrl_ops*, %struct.v4l2_ctrl_ops** %4, align 8
  %124 = load i32, i32* @V4L2_CID_CONTRAST, align 4
  %125 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %122, %struct.v4l2_ctrl_ops* %123, i32 %124, i32 -2, i32 2, i32 1, i32 0)
  %126 = load %struct.s5c73m3_ctrls*, %struct.s5c73m3_ctrls** %5, align 8
  %127 = getelementptr inbounds %struct.s5c73m3_ctrls, %struct.s5c73m3_ctrls* %126, i32 0, i32 13
  store i8* %125, i8** %127, align 8
  %128 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %129 = load %struct.v4l2_ctrl_ops*, %struct.v4l2_ctrl_ops** %4, align 8
  %130 = load i32, i32* @V4L2_CID_SATURATION, align 4
  %131 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %128, %struct.v4l2_ctrl_ops* %129, i32 %130, i32 -2, i32 2, i32 1, i32 0)
  %132 = load %struct.s5c73m3_ctrls*, %struct.s5c73m3_ctrls** %5, align 8
  %133 = getelementptr inbounds %struct.s5c73m3_ctrls, %struct.s5c73m3_ctrls* %132, i32 0, i32 12
  store i8* %131, i8** %133, align 8
  %134 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %135 = load %struct.v4l2_ctrl_ops*, %struct.v4l2_ctrl_ops** %4, align 8
  %136 = load i32, i32* @V4L2_CID_SHARPNESS, align 4
  %137 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %134, %struct.v4l2_ctrl_ops* %135, i32 %136, i32 -2, i32 2, i32 1, i32 0)
  %138 = load %struct.s5c73m3_ctrls*, %struct.s5c73m3_ctrls** %5, align 8
  %139 = getelementptr inbounds %struct.s5c73m3_ctrls, %struct.s5c73m3_ctrls* %138, i32 0, i32 11
  store i8* %137, i8** %139, align 8
  %140 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %141 = load %struct.v4l2_ctrl_ops*, %struct.v4l2_ctrl_ops** %4, align 8
  %142 = load i32, i32* @V4L2_CID_ZOOM_ABSOLUTE, align 4
  %143 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %140, %struct.v4l2_ctrl_ops* %141, i32 %142, i32 0, i32 30, i32 1, i32 0)
  %144 = load %struct.s5c73m3_ctrls*, %struct.s5c73m3_ctrls** %5, align 8
  %145 = getelementptr inbounds %struct.s5c73m3_ctrls, %struct.s5c73m3_ctrls* %144, i32 0, i32 10
  store i8* %143, i8** %145, align 8
  %146 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %147 = load %struct.v4l2_ctrl_ops*, %struct.v4l2_ctrl_ops** %4, align 8
  %148 = load i32, i32* @V4L2_CID_COLORFX, align 4
  %149 = load i32, i32* @V4L2_COLORFX_AQUA, align 4
  %150 = load i32, i32* @V4L2_COLORFX_NONE, align 4
  %151 = call i8* @v4l2_ctrl_new_std_menu(%struct.v4l2_ctrl_handler* %146, %struct.v4l2_ctrl_ops* %147, i32 %148, i32 %149, i32 -1040, i32 %150)
  %152 = load %struct.s5c73m3_ctrls*, %struct.s5c73m3_ctrls** %5, align 8
  %153 = getelementptr inbounds %struct.s5c73m3_ctrls, %struct.s5c73m3_ctrls* %152, i32 0, i32 9
  store i8* %151, i8** %153, align 8
  %154 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %155 = load %struct.v4l2_ctrl_ops*, %struct.v4l2_ctrl_ops** %4, align 8
  %156 = load i32, i32* @V4L2_CID_WIDE_DYNAMIC_RANGE, align 4
  %157 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %154, %struct.v4l2_ctrl_ops* %155, i32 %156, i32 0, i32 1, i32 1, i32 0)
  %158 = load %struct.s5c73m3_ctrls*, %struct.s5c73m3_ctrls** %5, align 8
  %159 = getelementptr inbounds %struct.s5c73m3_ctrls, %struct.s5c73m3_ctrls* %158, i32 0, i32 8
  store i8* %157, i8** %159, align 8
  %160 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %161 = load %struct.v4l2_ctrl_ops*, %struct.v4l2_ctrl_ops** %4, align 8
  %162 = load i32, i32* @V4L2_CID_IMAGE_STABILIZATION, align 4
  %163 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %160, %struct.v4l2_ctrl_ops* %161, i32 %162, i32 0, i32 1, i32 1, i32 0)
  %164 = load %struct.s5c73m3_ctrls*, %struct.s5c73m3_ctrls** %5, align 8
  %165 = getelementptr inbounds %struct.s5c73m3_ctrls, %struct.s5c73m3_ctrls* %164, i32 0, i32 7
  store i8* %163, i8** %165, align 8
  %166 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %167 = load %struct.v4l2_ctrl_ops*, %struct.v4l2_ctrl_ops** %4, align 8
  %168 = load i32, i32* @V4L2_CID_POWER_LINE_FREQUENCY, align 4
  %169 = load i32, i32* @V4L2_CID_POWER_LINE_FREQUENCY_AUTO, align 4
  %170 = load i32, i32* @V4L2_CID_POWER_LINE_FREQUENCY_AUTO, align 4
  %171 = call i8* @v4l2_ctrl_new_std_menu(%struct.v4l2_ctrl_handler* %166, %struct.v4l2_ctrl_ops* %167, i32 %168, i32 %169, i32 0, i32 %170)
  %172 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %173 = load %struct.v4l2_ctrl_ops*, %struct.v4l2_ctrl_ops** %4, align 8
  %174 = load i32, i32* @V4L2_CID_JPEG_COMPRESSION_QUALITY, align 4
  %175 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %172, %struct.v4l2_ctrl_ops* %173, i32 %174, i32 1, i32 100, i32 1, i32 80)
  %176 = load %struct.s5c73m3_ctrls*, %struct.s5c73m3_ctrls** %5, align 8
  %177 = getelementptr inbounds %struct.s5c73m3_ctrls, %struct.s5c73m3_ctrls* %176, i32 0, i32 6
  store i8* %175, i8** %177, align 8
  %178 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %179 = load %struct.v4l2_ctrl_ops*, %struct.v4l2_ctrl_ops** %4, align 8
  %180 = load i32, i32* @V4L2_CID_SCENE_MODE, align 4
  %181 = load i32, i32* @V4L2_SCENE_MODE_TEXT, align 4
  %182 = load i32, i32* @V4L2_SCENE_MODE_NONE, align 4
  %183 = call i8* @v4l2_ctrl_new_std_menu(%struct.v4l2_ctrl_handler* %178, %struct.v4l2_ctrl_ops* %179, i32 %180, i32 %181, i32 -16384, i32 %182)
  %184 = load %struct.s5c73m3_ctrls*, %struct.s5c73m3_ctrls** %5, align 8
  %185 = getelementptr inbounds %struct.s5c73m3_ctrls, %struct.s5c73m3_ctrls* %184, i32 0, i32 5
  store i8* %183, i8** %185, align 8
  %186 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %187 = load %struct.v4l2_ctrl_ops*, %struct.v4l2_ctrl_ops** %4, align 8
  %188 = load i32, i32* @V4L2_CID_3A_LOCK, align 4
  %189 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %186, %struct.v4l2_ctrl_ops* %187, i32 %188, i32 0, i32 7, i32 0, i32 0)
  %190 = load %struct.s5c73m3_ctrls*, %struct.s5c73m3_ctrls** %5, align 8
  %191 = getelementptr inbounds %struct.s5c73m3_ctrls, %struct.s5c73m3_ctrls* %190, i32 0, i32 4
  store i8* %189, i8** %191, align 8
  %192 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %193 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %203

196:                                              ; preds = %18
  %197 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %198 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  store i32 %199, i32* %7, align 4
  %200 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %201 = call i32 @v4l2_ctrl_handler_free(%struct.v4l2_ctrl_handler* %200)
  %202 = load i32, i32* %7, align 4
  store i32 %202, i32* %2, align 4
  br label %233

203:                                              ; preds = %18
  %204 = load %struct.s5c73m3_ctrls*, %struct.s5c73m3_ctrls** %5, align 8
  %205 = getelementptr inbounds %struct.s5c73m3_ctrls, %struct.s5c73m3_ctrls* %204, i32 0, i32 3
  %206 = call i32 @v4l2_ctrl_auto_cluster(i32 3, %struct.TYPE_6__** %205, i32 0, i32 0)
  %207 = load i32, i32* @V4L2_CTRL_FLAG_VOLATILE, align 4
  %208 = load i32, i32* @V4L2_CTRL_FLAG_UPDATE, align 4
  %209 = or i32 %207, %208
  %210 = load %struct.s5c73m3_ctrls*, %struct.s5c73m3_ctrls** %5, align 8
  %211 = getelementptr inbounds %struct.s5c73m3_ctrls, %struct.s5c73m3_ctrls* %210, i32 0, i32 2
  %212 = load %struct.TYPE_6__*, %struct.TYPE_6__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = or i32 %214, %209
  store i32 %215, i32* %213, align 4
  %216 = load %struct.s5c73m3_ctrls*, %struct.s5c73m3_ctrls** %5, align 8
  %217 = getelementptr inbounds %struct.s5c73m3_ctrls, %struct.s5c73m3_ctrls* %216, i32 0, i32 2
  %218 = call i32 @v4l2_ctrl_auto_cluster(i32 2, %struct.TYPE_6__** %217, i32 0, i32 0)
  %219 = load i32, i32* @V4L2_CTRL_FLAG_VOLATILE, align 4
  %220 = load %struct.s5c73m3_ctrls*, %struct.s5c73m3_ctrls** %5, align 8
  %221 = getelementptr inbounds %struct.s5c73m3_ctrls, %struct.s5c73m3_ctrls* %220, i32 0, i32 1
  %222 = load %struct.TYPE_4__*, %struct.TYPE_4__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 4
  %225 = or i32 %224, %219
  store i32 %225, i32* %223, align 4
  %226 = load %struct.s5c73m3_ctrls*, %struct.s5c73m3_ctrls** %5, align 8
  %227 = getelementptr inbounds %struct.s5c73m3_ctrls, %struct.s5c73m3_ctrls* %226, i32 0, i32 0
  %228 = call i32 @v4l2_ctrl_cluster(i32 6, i8** %227)
  %229 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %230 = load %struct.s5c73m3*, %struct.s5c73m3** %3, align 8
  %231 = getelementptr inbounds %struct.s5c73m3, %struct.s5c73m3* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %231, i32 0, i32 0
  store %struct.v4l2_ctrl_handler* %229, %struct.v4l2_ctrl_handler** %232, align 8
  store i32 0, i32* %2, align 4
  br label %233

233:                                              ; preds = %203, %196, %16
  %234 = load i32, i32* %2, align 4
  ret i32 %234
}

declare dso_local i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler*, i32) #1

declare dso_local i8* @v4l2_ctrl_new_std_menu(%struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_ops*, i32, i32, i32, i32) #1

declare dso_local i8* @v4l2_ctrl_new_int_menu(%struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_ops*, i32, i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_ops*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @v4l2_ctrl_handler_free(%struct.v4l2_ctrl_handler*) #1

declare dso_local i32 @v4l2_ctrl_auto_cluster(i32, %struct.TYPE_6__**, i32, i32) #1

declare dso_local i32 @v4l2_ctrl_cluster(i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
