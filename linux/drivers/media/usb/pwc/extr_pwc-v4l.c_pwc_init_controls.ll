; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/pwc/extr_pwc-v4l.c_pwc_init_controls.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/pwc/extr_pwc-v4l.c_pwc_init_controls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_ctrl_config = type { i32, i32, i8* }
%struct.pwc_device = type { i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, %struct.TYPE_4__*, %struct.TYPE_3__*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8**, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i8*, i8*, %struct.v4l2_ctrl_handler }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.v4l2_ctrl_handler = type { i32 }

@GET_LUM_CTL = common dso_local global i32 0, align 4
@BRIGHTNESS_FORMATTER = common dso_local global i32 0, align 4
@pwc_ctrl_ops = common dso_local global i32 0, align 4
@V4L2_CID_BRIGHTNESS = common dso_local global i32 0, align 4
@CONTRAST_FORMATTER = common dso_local global i32 0, align 4
@V4L2_CID_CONTRAST = common dso_local global i32 0, align 4
@SATURATION_MODE_FORMATTER2 = common dso_local global i32 0, align 4
@SATURATION_MODE_FORMATTER1 = common dso_local global i32 0, align 4
@GET_CHROM_CTL = common dso_local global i32 0, align 4
@V4L2_CID_SATURATION = common dso_local global i32 0, align 4
@GAMMA_FORMATTER = common dso_local global i32 0, align 4
@V4L2_CID_GAMMA = common dso_local global i32 0, align 4
@WB_MODE_FORMATTER = common dso_local global i32 0, align 4
@awb_auto = common dso_local global i32 0, align 4
@pwc_auto_white_balance_cfg = common dso_local global %struct.v4l2_ctrl_config zeroinitializer, align 8
@PRESET_MANUAL_RED_GAIN_FORMATTER = common dso_local global i32 0, align 4
@V4L2_CID_RED_BALANCE = common dso_local global i32 0, align 4
@PRESET_MANUAL_BLUE_GAIN_FORMATTER = common dso_local global i32 0, align 4
@V4L2_CID_BLUE_BALANCE = common dso_local global i32 0, align 4
@awb_manual = common dso_local global i32 0, align 4
@AGC_MODE_FORMATTER = common dso_local global i32 0, align 4
@V4L2_CID_AUTOGAIN = common dso_local global i32 0, align 4
@PRESET_AGC_FORMATTER = common dso_local global i32 0, align 4
@V4L2_CID_GAIN = common dso_local global i32 0, align 4
@SHUTTER_MODE_FORMATTER = common dso_local global i32 0, align 4
@V4L2_CID_EXPOSURE_AUTO = common dso_local global i32 0, align 4
@GET_STATUS_CTL = common dso_local global i32 0, align 4
@READ_SHUTTER_FORMATTER = common dso_local global i32 0, align 4
@V4L2_CID_EXPOSURE = common dso_local global i32 0, align 4
@V4L2_EXPOSURE_MANUAL = common dso_local global i32 0, align 4
@COLOUR_MODE_FORMATTER = common dso_local global i32 0, align 4
@V4L2_CID_COLORFX = common dso_local global i32 0, align 4
@AUTO_CONTOUR_FORMATTER = common dso_local global i32 0, align 4
@pwc_autocontour_cfg = common dso_local global %struct.v4l2_ctrl_config zeroinitializer, align 8
@PRESET_CONTOUR_FORMATTER = common dso_local global i32 0, align 4
@pwc_contour_cfg = common dso_local global %struct.v4l2_ctrl_config zeroinitializer, align 8
@BACK_LIGHT_COMPENSATION_FORMATTER = common dso_local global i32 0, align 4
@pwc_backlight_cfg = common dso_local global %struct.v4l2_ctrl_config zeroinitializer, align 8
@FLICKERLESS_MODE_FORMATTER = common dso_local global i32 0, align 4
@pwc_flicker_cfg = common dso_local global %struct.v4l2_ctrl_config zeroinitializer, align 8
@DYNAMIC_NOISE_CONTROL_FORMATTER = common dso_local global i32 0, align 4
@pwc_noise_reduction_cfg = common dso_local global %struct.v4l2_ctrl_config zeroinitializer, align 8
@pwc_save_user_cfg = common dso_local global %struct.v4l2_ctrl_config zeroinitializer, align 8
@pwc_restore_user_cfg = common dso_local global %struct.v4l2_ctrl_config zeroinitializer, align 8
@V4L2_CTRL_FLAG_UPDATE = common dso_local global i32 0, align 4
@pwc_restore_factory_cfg = common dso_local global %struct.v4l2_ctrl_config zeroinitializer, align 8
@AWB_CONTROL_SPEED_FORMATTER = common dso_local global i32 0, align 4
@pwc_awb_speed_cfg = common dso_local global %struct.v4l2_ctrl_config zeroinitializer, align 8
@AWB_CONTROL_DELAY_FORMATTER = common dso_local global i32 0, align 4
@pwc_awb_delay_cfg = common dso_local global %struct.v4l2_ctrl_config zeroinitializer, align 8
@FEATURE_MOTOR_PANTILT = common dso_local global i32 0, align 4
@V4L2_CID_PAN_RELATIVE = common dso_local global i32 0, align 4
@V4L2_CID_TILT_RELATIVE = common dso_local global i32 0, align 4
@V4L2_CID_PAN_RESET = common dso_local global i32 0, align 4
@V4L2_CID_TILT_RESET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pwc_init_controls(%struct.pwc_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pwc_device*, align 8
  %4 = alloca %struct.v4l2_ctrl_handler*, align 8
  %5 = alloca %struct.v4l2_ctrl_config, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pwc_device* %0, %struct.pwc_device** %3, align 8
  %8 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %9 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %8, i32 0, i32 30
  store %struct.v4l2_ctrl_handler* %9, %struct.v4l2_ctrl_handler** %4, align 8
  %10 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %11 = call i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler* %10, i32 20)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %6, align 4
  store i32 %15, i32* %2, align 4
  br label %606

16:                                               ; preds = %1
  %17 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %18 = load i32, i32* @GET_LUM_CTL, align 4
  %19 = load i32, i32* @BRIGHTNESS_FORMATTER, align 4
  %20 = call i32 @pwc_get_u8_ctrl(%struct.pwc_device* %17, i32 %18, i32 %19, i32* %7)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %16
  %24 = load i32, i32* %7, align 4
  %25 = icmp sgt i32 %24, 127
  br i1 %25, label %26, label %27

26:                                               ; preds = %23, %16
  store i32 63, i32* %7, align 4
  br label %27

27:                                               ; preds = %26, %23
  %28 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %29 = load i32, i32* @V4L2_CID_BRIGHTNESS, align 4
  %30 = load i32, i32* %7, align 4
  %31 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %28, i32* @pwc_ctrl_ops, i32 %29, i32 0, i32 127, i32 1, i32 %30)
  %32 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %33 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %32, i32 0, i32 29
  store i8* %31, i8** %33, align 8
  %34 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %35 = load i32, i32* @GET_LUM_CTL, align 4
  %36 = load i32, i32* @CONTRAST_FORMATTER, align 4
  %37 = call i32 @pwc_get_u8_ctrl(%struct.pwc_device* %34, i32 %35, i32 %36, i32* %7)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %27
  %41 = load i32, i32* %7, align 4
  %42 = icmp sgt i32 %41, 63
  br i1 %42, label %43, label %44

43:                                               ; preds = %40, %27
  store i32 31, i32* %7, align 4
  br label %44

44:                                               ; preds = %43, %40
  %45 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %46 = load i32, i32* @V4L2_CID_CONTRAST, align 4
  %47 = load i32, i32* %7, align 4
  %48 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %45, i32* @pwc_ctrl_ops, i32 %46, i32 0, i32 63, i32 1, i32 %47)
  %49 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %50 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %49, i32 0, i32 28
  store i8* %48, i8** %50, align 8
  %51 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %52 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp sge i32 %53, 675
  br i1 %54, label %55, label %91

55:                                               ; preds = %44
  %56 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %57 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp slt i32 %58, 730
  br i1 %59, label %60, label %64

60:                                               ; preds = %55
  %61 = load i32, i32* @SATURATION_MODE_FORMATTER2, align 4
  %62 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %63 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %62, i32 0, i32 27
  store i32 %61, i32* %63, align 8
  br label %68

64:                                               ; preds = %55
  %65 = load i32, i32* @SATURATION_MODE_FORMATTER1, align 4
  %66 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %67 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %66, i32 0, i32 27
  store i32 %65, i32* %67, align 8
  br label %68

68:                                               ; preds = %64, %60
  %69 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %70 = load i32, i32* @GET_CHROM_CTL, align 4
  %71 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %72 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %71, i32 0, i32 27
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @pwc_get_s8_ctrl(%struct.pwc_device* %69, i32 %70, i32 %73, i32* %7)
  store i32 %74, i32* %6, align 4
  %75 = load i32, i32* %6, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %83, label %77

77:                                               ; preds = %68
  %78 = load i32, i32* %7, align 4
  %79 = icmp slt i32 %78, -100
  br i1 %79, label %83, label %80

80:                                               ; preds = %77
  %81 = load i32, i32* %7, align 4
  %82 = icmp sgt i32 %81, 100
  br i1 %82, label %83, label %84

83:                                               ; preds = %80, %77, %68
  store i32 0, i32* %7, align 4
  br label %84

84:                                               ; preds = %83, %80
  %85 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %86 = load i32, i32* @V4L2_CID_SATURATION, align 4
  %87 = load i32, i32* %7, align 4
  %88 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %85, i32* @pwc_ctrl_ops, i32 %86, i32 -100, i32 100, i32 1, i32 %87)
  %89 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %90 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %89, i32 0, i32 26
  store i8* %88, i8** %90, align 8
  br label %91

91:                                               ; preds = %84, %44
  %92 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %93 = load i32, i32* @GET_LUM_CTL, align 4
  %94 = load i32, i32* @GAMMA_FORMATTER, align 4
  %95 = call i32 @pwc_get_u8_ctrl(%struct.pwc_device* %92, i32 %93, i32 %94, i32* %7)
  store i32 %95, i32* %6, align 4
  %96 = load i32, i32* %6, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %101, label %98

98:                                               ; preds = %91
  %99 = load i32, i32* %7, align 4
  %100 = icmp sgt i32 %99, 31
  br i1 %100, label %101, label %102

101:                                              ; preds = %98, %91
  store i32 15, i32* %7, align 4
  br label %102

102:                                              ; preds = %101, %98
  %103 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %104 = load i32, i32* @V4L2_CID_GAMMA, align 4
  %105 = load i32, i32* %7, align 4
  %106 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %103, i32* @pwc_ctrl_ops, i32 %104, i32 0, i32 31, i32 1, i32 %105)
  %107 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %108 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %107, i32 0, i32 25
  store i8* %106, i8** %108, align 8
  %109 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %110 = load i32, i32* @GET_CHROM_CTL, align 4
  %111 = load i32, i32* @WB_MODE_FORMATTER, align 4
  %112 = call i32 @pwc_get_u8_ctrl(%struct.pwc_device* %109, i32 %110, i32 %111, i32* %7)
  store i32 %112, i32* %6, align 4
  %113 = load i32, i32* %6, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %119, label %115

115:                                              ; preds = %102
  %116 = load i32, i32* %7, align 4
  %117 = load i32, i32* @awb_auto, align 4
  %118 = icmp sgt i32 %116, %117
  br i1 %118, label %119, label %121

119:                                              ; preds = %115, %102
  %120 = load i32, i32* @awb_auto, align 4
  store i32 %120, i32* %7, align 4
  br label %121

121:                                              ; preds = %119, %115
  %122 = bitcast %struct.v4l2_ctrl_config* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %122, i8* align 8 bitcast (%struct.v4l2_ctrl_config* @pwc_auto_white_balance_cfg to i8*), i64 16, i1 false)
  %123 = getelementptr inbounds %struct.v4l2_ctrl_config, %struct.v4l2_ctrl_config* %5, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = call i8* @v4l2_ctrl_get_name(i32 %124)
  %126 = getelementptr inbounds %struct.v4l2_ctrl_config, %struct.v4l2_ctrl_config* %5, i32 0, i32 2
  store i8* %125, i8** %126, align 8
  %127 = load i32, i32* %7, align 4
  %128 = getelementptr inbounds %struct.v4l2_ctrl_config, %struct.v4l2_ctrl_config* %5, i32 0, i32 0
  store i32 %127, i32* %128, align 8
  %129 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %130 = call i8* @v4l2_ctrl_new_custom(%struct.v4l2_ctrl_handler* %129, %struct.v4l2_ctrl_config* %5, i32* null)
  %131 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %132 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %131, i32 0, i32 22
  store i8* %130, i8** %132, align 8
  %133 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %134 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %133, i32 0, i32 22
  %135 = load i8*, i8** %134, align 8
  %136 = icmp ne i8* %135, null
  br i1 %136, label %141, label %137

137:                                              ; preds = %121
  %138 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %139 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  store i32 %140, i32* %2, align 4
  br label %606

141:                                              ; preds = %121
  %142 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %143 = load i32, i32* @GET_CHROM_CTL, align 4
  %144 = load i32, i32* @PRESET_MANUAL_RED_GAIN_FORMATTER, align 4
  %145 = call i32 @pwc_get_u8_ctrl(%struct.pwc_device* %142, i32 %143, i32 %144, i32* %7)
  store i32 %145, i32* %6, align 4
  %146 = load i32, i32* %6, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %141
  store i32 127, i32* %7, align 4
  br label %149

149:                                              ; preds = %148, %141
  %150 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %151 = load i32, i32* @V4L2_CID_RED_BALANCE, align 4
  %152 = load i32, i32* %7, align 4
  %153 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %150, i32* @pwc_ctrl_ops, i32 %151, i32 0, i32 255, i32 1, i32 %152)
  %154 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %155 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %154, i32 0, i32 24
  store i8* %153, i8** %155, align 8
  %156 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %157 = load i32, i32* @GET_CHROM_CTL, align 4
  %158 = load i32, i32* @PRESET_MANUAL_BLUE_GAIN_FORMATTER, align 4
  %159 = call i32 @pwc_get_u8_ctrl(%struct.pwc_device* %156, i32 %157, i32 %158, i32* %7)
  store i32 %159, i32* %6, align 4
  %160 = load i32, i32* %6, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %149
  store i32 127, i32* %7, align 4
  br label %163

163:                                              ; preds = %162, %149
  %164 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %165 = load i32, i32* @V4L2_CID_BLUE_BALANCE, align 4
  %166 = load i32, i32* %7, align 4
  %167 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %164, i32* @pwc_ctrl_ops, i32 %165, i32 0, i32 255, i32 1, i32 %166)
  %168 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %169 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %168, i32 0, i32 23
  store i8* %167, i8** %169, align 8
  %170 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %171 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %170, i32 0, i32 22
  %172 = load i32, i32* @awb_manual, align 4
  %173 = call i32 @v4l2_ctrl_auto_cluster(i32 3, i8** %171, i32 %172, i32 1)
  %174 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %175 = load i32, i32* @GET_LUM_CTL, align 4
  %176 = load i32, i32* @AGC_MODE_FORMATTER, align 4
  %177 = call i32 @pwc_get_u8_ctrl(%struct.pwc_device* %174, i32 %175, i32 %176, i32* %7)
  store i32 %177, i32* %6, align 4
  %178 = load i32, i32* %6, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %186, label %180

180:                                              ; preds = %163
  %181 = load i32, i32* %7, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %187

183:                                              ; preds = %180
  %184 = load i32, i32* %7, align 4
  %185 = icmp ne i32 %184, 255
  br i1 %185, label %186, label %187

186:                                              ; preds = %183, %163
  store i32 0, i32* %7, align 4
  br label %187

187:                                              ; preds = %186, %183, %180
  %188 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %189 = load i32, i32* @V4L2_CID_AUTOGAIN, align 4
  %190 = load i32, i32* %7, align 4
  %191 = icmp eq i32 %190, 0
  %192 = zext i1 %191 to i32
  %193 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %188, i32* @pwc_ctrl_ops, i32 %189, i32 0, i32 1, i32 1, i32 %192)
  %194 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %195 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %194, i32 0, i32 20
  store i8* %193, i8** %195, align 8
  %196 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %197 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %196, i32 0, i32 20
  %198 = load i8*, i8** %197, align 8
  %199 = icmp ne i8* %198, null
  br i1 %199, label %204, label %200

200:                                              ; preds = %187
  %201 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %202 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  store i32 %203, i32* %2, align 4
  br label %606

204:                                              ; preds = %187
  %205 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %206 = load i32, i32* @GET_LUM_CTL, align 4
  %207 = load i32, i32* @PRESET_AGC_FORMATTER, align 4
  %208 = call i32 @pwc_get_u8_ctrl(%struct.pwc_device* %205, i32 %206, i32 %207, i32* %7)
  store i32 %208, i32* %6, align 4
  %209 = load i32, i32* %6, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %214, label %211

211:                                              ; preds = %204
  %212 = load i32, i32* %7, align 4
  %213 = icmp sgt i32 %212, 63
  br i1 %213, label %214, label %215

214:                                              ; preds = %211, %204
  store i32 31, i32* %7, align 4
  br label %215

215:                                              ; preds = %214, %211
  %216 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %217 = load i32, i32* @V4L2_CID_GAIN, align 4
  %218 = load i32, i32* %7, align 4
  %219 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %216, i32* @pwc_ctrl_ops, i32 %217, i32 0, i32 63, i32 1, i32 %218)
  %220 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %221 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %220, i32 0, i32 19
  store i8* %219, i8** %221, align 8
  %222 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %223 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = call i64 @DEVICE_USE_CODEC2(i32 %224)
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %283

227:                                              ; preds = %215
  %228 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %229 = load i32, i32* @GET_LUM_CTL, align 4
  %230 = load i32, i32* @SHUTTER_MODE_FORMATTER, align 4
  %231 = call i32 @pwc_get_u8_ctrl(%struct.pwc_device* %228, i32 %229, i32 %230, i32* %7)
  store i32 %231, i32* %6, align 4
  %232 = load i32, i32* %6, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %240, label %234

234:                                              ; preds = %227
  %235 = load i32, i32* %7, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %241

237:                                              ; preds = %234
  %238 = load i32, i32* %7, align 4
  %239 = icmp ne i32 %238, 255
  br i1 %239, label %240, label %241

240:                                              ; preds = %237, %227
  store i32 0, i32* %7, align 4
  br label %241

241:                                              ; preds = %240, %237, %234
  %242 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %243 = load i32, i32* @V4L2_CID_EXPOSURE_AUTO, align 4
  %244 = load i32, i32* %7, align 4
  %245 = icmp ne i32 %244, 0
  %246 = zext i1 %245 to i32
  %247 = call i8* @v4l2_ctrl_new_std_menu(%struct.v4l2_ctrl_handler* %242, i32* @pwc_ctrl_ops, i32 %243, i32 1, i32 0, i32 %246)
  %248 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %249 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %248, i32 0, i32 21
  store i8* %247, i8** %249, align 8
  %250 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %251 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %250, i32 0, i32 21
  %252 = load i8*, i8** %251, align 8
  %253 = icmp ne i8* %252, null
  br i1 %253, label %258, label %254

254:                                              ; preds = %241
  %255 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %256 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 4
  store i32 %257, i32* %2, align 4
  br label %606

258:                                              ; preds = %241
  %259 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %260 = load i32, i32* @GET_STATUS_CTL, align 4
  %261 = load i32, i32* @READ_SHUTTER_FORMATTER, align 4
  %262 = call i32 @pwc_get_u16_ctrl(%struct.pwc_device* %259, i32 %260, i32 %261, i32* %7)
  store i32 %262, i32* %6, align 4
  %263 = load i32, i32* %6, align 4
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %268, label %265

265:                                              ; preds = %258
  %266 = load i32, i32* %7, align 4
  %267 = icmp sgt i32 %266, 655
  br i1 %267, label %268, label %269

268:                                              ; preds = %265, %258
  store i32 655, i32* %7, align 4
  br label %269

269:                                              ; preds = %268, %265
  %270 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %271 = load i32, i32* @V4L2_CID_EXPOSURE, align 4
  %272 = load i32, i32* %7, align 4
  %273 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %270, i32* @pwc_ctrl_ops, i32 %271, i32 0, i32 655, i32 1, i32 %272)
  %274 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %275 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %274, i32 0, i32 18
  store i8* %273, i8** %275, align 8
  %276 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %277 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %276, i32 0, i32 20
  %278 = call i32 @v4l2_ctrl_auto_cluster(i32 2, i8** %277, i32 0, i32 1)
  %279 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %280 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %279, i32 0, i32 21
  %281 = load i32, i32* @V4L2_EXPOSURE_MANUAL, align 4
  %282 = call i32 @v4l2_ctrl_auto_cluster(i32 2, i8** %280, i32 %281, i32 1)
  br label %333

283:                                              ; preds = %215
  %284 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %285 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 8
  %287 = call i64 @DEVICE_USE_CODEC3(i32 %286)
  %288 = icmp ne i64 %287, 0
  br i1 %288, label %289, label %332

289:                                              ; preds = %283
  %290 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %291 = load i32, i32* @GET_STATUS_CTL, align 4
  %292 = load i32, i32* @READ_SHUTTER_FORMATTER, align 4
  %293 = call i32 @pwc_get_u16_ctrl(%struct.pwc_device* %290, i32 %291, i32 %292, i32* %7)
  store i32 %293, i32* %6, align 4
  %294 = load i32, i32* %6, align 4
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %299, label %296

296:                                              ; preds = %289
  %297 = load i32, i32* %7, align 4
  %298 = icmp sgt i32 %297, 255
  br i1 %298, label %299, label %300

299:                                              ; preds = %296, %289
  store i32 255, i32* %7, align 4
  br label %300

300:                                              ; preds = %299, %296
  %301 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %302 = load i32, i32* @V4L2_CID_EXPOSURE, align 4
  %303 = load i32, i32* %7, align 4
  %304 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %301, i32* @pwc_ctrl_ops, i32 %302, i32 0, i32 255, i32 1, i32 %303)
  %305 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %306 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %305, i32 0, i32 18
  store i8* %304, i8** %306, align 8
  %307 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %308 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %307, i32 0, i32 20
  %309 = load i8*, i8** %308, align 8
  %310 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %311 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %310, i32 0, i32 17
  %312 = load i8**, i8*** %311, align 8
  %313 = getelementptr inbounds i8*, i8** %312, i64 0
  store i8* %309, i8** %313, align 8
  %314 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %315 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %314, i32 0, i32 19
  %316 = load i8*, i8** %315, align 8
  %317 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %318 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %317, i32 0, i32 17
  %319 = load i8**, i8*** %318, align 8
  %320 = getelementptr inbounds i8*, i8** %319, i64 1
  store i8* %316, i8** %320, align 8
  %321 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %322 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %321, i32 0, i32 18
  %323 = load i8*, i8** %322, align 8
  %324 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %325 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %324, i32 0, i32 17
  %326 = load i8**, i8*** %325, align 8
  %327 = getelementptr inbounds i8*, i8** %326, i64 2
  store i8* %323, i8** %327, align 8
  %328 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %329 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %328, i32 0, i32 17
  %330 = load i8**, i8*** %329, align 8
  %331 = call i32 @v4l2_ctrl_auto_cluster(i32 3, i8** %330, i32 0, i32 1)
  br label %332

332:                                              ; preds = %300, %283
  br label %333

333:                                              ; preds = %332, %269
  %334 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %335 = load i32, i32* @GET_CHROM_CTL, align 4
  %336 = load i32, i32* @COLOUR_MODE_FORMATTER, align 4
  %337 = call i32 @pwc_get_u8_ctrl(%struct.pwc_device* %334, i32 %335, i32 %336, i32* %7)
  store i32 %337, i32* %6, align 4
  %338 = load i32, i32* %6, align 4
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %346, label %340

340:                                              ; preds = %333
  %341 = load i32, i32* %7, align 4
  %342 = icmp ne i32 %341, 0
  br i1 %342, label %343, label %347

343:                                              ; preds = %340
  %344 = load i32, i32* %7, align 4
  %345 = icmp ne i32 %344, 255
  br i1 %345, label %346, label %347

346:                                              ; preds = %343, %333
  store i32 255, i32* %7, align 4
  br label %347

347:                                              ; preds = %346, %343, %340
  %348 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %349 = load i32, i32* @V4L2_CID_COLORFX, align 4
  %350 = load i32, i32* %7, align 4
  %351 = icmp eq i32 %350, 0
  %352 = zext i1 %351 to i32
  %353 = call i8* @v4l2_ctrl_new_std_menu(%struct.v4l2_ctrl_handler* %348, i32* @pwc_ctrl_ops, i32 %349, i32 1, i32 0, i32 %352)
  %354 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %355 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %354, i32 0, i32 16
  store i8* %353, i8** %355, align 8
  %356 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %357 = load i32, i32* @GET_LUM_CTL, align 4
  %358 = load i32, i32* @AUTO_CONTOUR_FORMATTER, align 4
  %359 = call i32 @pwc_get_u8_ctrl(%struct.pwc_device* %356, i32 %357, i32 %358, i32* %7)
  store i32 %359, i32* %6, align 4
  %360 = load i32, i32* %6, align 4
  %361 = icmp ne i32 %360, 0
  br i1 %361, label %368, label %362

362:                                              ; preds = %347
  %363 = load i32, i32* %7, align 4
  %364 = icmp ne i32 %363, 0
  br i1 %364, label %365, label %369

365:                                              ; preds = %362
  %366 = load i32, i32* %7, align 4
  %367 = icmp ne i32 %366, 255
  br i1 %367, label %368, label %369

368:                                              ; preds = %365, %347
  store i32 0, i32* %7, align 4
  br label %369

369:                                              ; preds = %368, %365, %362
  %370 = bitcast %struct.v4l2_ctrl_config* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %370, i8* align 8 bitcast (%struct.v4l2_ctrl_config* @pwc_autocontour_cfg to i8*), i64 16, i1 false)
  %371 = load i32, i32* %7, align 4
  %372 = icmp eq i32 %371, 0
  %373 = zext i1 %372 to i32
  %374 = getelementptr inbounds %struct.v4l2_ctrl_config, %struct.v4l2_ctrl_config* %5, i32 0, i32 0
  store i32 %373, i32* %374, align 8
  %375 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %376 = call i8* @v4l2_ctrl_new_custom(%struct.v4l2_ctrl_handler* %375, %struct.v4l2_ctrl_config* %5, i32* null)
  %377 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %378 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %377, i32 0, i32 14
  store i8* %376, i8** %378, align 8
  %379 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %380 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %379, i32 0, i32 14
  %381 = load i8*, i8** %380, align 8
  %382 = icmp ne i8* %381, null
  br i1 %382, label %387, label %383

383:                                              ; preds = %369
  %384 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %385 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %384, i32 0, i32 0
  %386 = load i32, i32* %385, align 4
  store i32 %386, i32* %2, align 4
  br label %606

387:                                              ; preds = %369
  %388 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %389 = load i32, i32* @GET_LUM_CTL, align 4
  %390 = load i32, i32* @PRESET_CONTOUR_FORMATTER, align 4
  %391 = call i32 @pwc_get_u8_ctrl(%struct.pwc_device* %388, i32 %389, i32 %390, i32* %7)
  store i32 %391, i32* %6, align 4
  %392 = load i32, i32* %6, align 4
  %393 = icmp ne i32 %392, 0
  br i1 %393, label %397, label %394

394:                                              ; preds = %387
  %395 = load i32, i32* %7, align 4
  %396 = icmp sgt i32 %395, 63
  br i1 %396, label %397, label %398

397:                                              ; preds = %394, %387
  store i32 31, i32* %7, align 4
  br label %398

398:                                              ; preds = %397, %394
  %399 = bitcast %struct.v4l2_ctrl_config* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %399, i8* align 8 bitcast (%struct.v4l2_ctrl_config* @pwc_contour_cfg to i8*), i64 16, i1 false)
  %400 = load i32, i32* %7, align 4
  %401 = getelementptr inbounds %struct.v4l2_ctrl_config, %struct.v4l2_ctrl_config* %5, i32 0, i32 0
  store i32 %400, i32* %401, align 8
  %402 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %403 = call i8* @v4l2_ctrl_new_custom(%struct.v4l2_ctrl_handler* %402, %struct.v4l2_ctrl_config* %5, i32* null)
  %404 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %405 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %404, i32 0, i32 15
  store i8* %403, i8** %405, align 8
  %406 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %407 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %406, i32 0, i32 14
  %408 = call i32 @v4l2_ctrl_auto_cluster(i32 2, i8** %407, i32 0, i32 0)
  %409 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %410 = load i32, i32* @GET_LUM_CTL, align 4
  %411 = load i32, i32* @BACK_LIGHT_COMPENSATION_FORMATTER, align 4
  %412 = call i32 @pwc_get_u8_ctrl(%struct.pwc_device* %409, i32 %410, i32 %411, i32* %7)
  store i32 %412, i32* %6, align 4
  %413 = load i32, i32* %6, align 4
  %414 = icmp ne i32 %413, 0
  br i1 %414, label %421, label %415

415:                                              ; preds = %398
  %416 = load i32, i32* %7, align 4
  %417 = icmp ne i32 %416, 0
  br i1 %417, label %418, label %422

418:                                              ; preds = %415
  %419 = load i32, i32* %7, align 4
  %420 = icmp ne i32 %419, 255
  br i1 %420, label %421, label %422

421:                                              ; preds = %418, %398
  store i32 0, i32* %7, align 4
  br label %422

422:                                              ; preds = %421, %418, %415
  %423 = bitcast %struct.v4l2_ctrl_config* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %423, i8* align 8 bitcast (%struct.v4l2_ctrl_config* @pwc_backlight_cfg to i8*), i64 16, i1 false)
  %424 = getelementptr inbounds %struct.v4l2_ctrl_config, %struct.v4l2_ctrl_config* %5, i32 0, i32 1
  %425 = load i32, i32* %424, align 4
  %426 = call i8* @v4l2_ctrl_get_name(i32 %425)
  %427 = getelementptr inbounds %struct.v4l2_ctrl_config, %struct.v4l2_ctrl_config* %5, i32 0, i32 2
  store i8* %426, i8** %427, align 8
  %428 = load i32, i32* %7, align 4
  %429 = icmp eq i32 %428, 0
  %430 = zext i1 %429 to i32
  %431 = getelementptr inbounds %struct.v4l2_ctrl_config, %struct.v4l2_ctrl_config* %5, i32 0, i32 0
  store i32 %430, i32* %431, align 8
  %432 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %433 = call i8* @v4l2_ctrl_new_custom(%struct.v4l2_ctrl_handler* %432, %struct.v4l2_ctrl_config* %5, i32* null)
  %434 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %435 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %434, i32 0, i32 13
  store i8* %433, i8** %435, align 8
  %436 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %437 = load i32, i32* @GET_LUM_CTL, align 4
  %438 = load i32, i32* @FLICKERLESS_MODE_FORMATTER, align 4
  %439 = call i32 @pwc_get_u8_ctrl(%struct.pwc_device* %436, i32 %437, i32 %438, i32* %7)
  store i32 %439, i32* %6, align 4
  %440 = load i32, i32* %6, align 4
  %441 = icmp ne i32 %440, 0
  br i1 %441, label %448, label %442

442:                                              ; preds = %422
  %443 = load i32, i32* %7, align 4
  %444 = icmp ne i32 %443, 0
  br i1 %444, label %445, label %449

445:                                              ; preds = %442
  %446 = load i32, i32* %7, align 4
  %447 = icmp ne i32 %446, 255
  br i1 %447, label %448, label %449

448:                                              ; preds = %445, %422
  store i32 0, i32* %7, align 4
  br label %449

449:                                              ; preds = %448, %445, %442
  %450 = bitcast %struct.v4l2_ctrl_config* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %450, i8* align 8 bitcast (%struct.v4l2_ctrl_config* @pwc_flicker_cfg to i8*), i64 16, i1 false)
  %451 = getelementptr inbounds %struct.v4l2_ctrl_config, %struct.v4l2_ctrl_config* %5, i32 0, i32 1
  %452 = load i32, i32* %451, align 4
  %453 = call i8* @v4l2_ctrl_get_name(i32 %452)
  %454 = getelementptr inbounds %struct.v4l2_ctrl_config, %struct.v4l2_ctrl_config* %5, i32 0, i32 2
  store i8* %453, i8** %454, align 8
  %455 = load i32, i32* %7, align 4
  %456 = icmp eq i32 %455, 0
  %457 = zext i1 %456 to i32
  %458 = getelementptr inbounds %struct.v4l2_ctrl_config, %struct.v4l2_ctrl_config* %5, i32 0, i32 0
  store i32 %457, i32* %458, align 8
  %459 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %460 = call i8* @v4l2_ctrl_new_custom(%struct.v4l2_ctrl_handler* %459, %struct.v4l2_ctrl_config* %5, i32* null)
  %461 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %462 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %461, i32 0, i32 12
  store i8* %460, i8** %462, align 8
  %463 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %464 = load i32, i32* @GET_LUM_CTL, align 4
  %465 = load i32, i32* @DYNAMIC_NOISE_CONTROL_FORMATTER, align 4
  %466 = call i32 @pwc_get_u8_ctrl(%struct.pwc_device* %463, i32 %464, i32 %465, i32* %7)
  store i32 %466, i32* %6, align 4
  %467 = load i32, i32* %6, align 4
  %468 = icmp ne i32 %467, 0
  br i1 %468, label %472, label %469

469:                                              ; preds = %449
  %470 = load i32, i32* %7, align 4
  %471 = icmp sgt i32 %470, 3
  br i1 %471, label %472, label %473

472:                                              ; preds = %469, %449
  store i32 2, i32* %7, align 4
  br label %473

473:                                              ; preds = %472, %469
  %474 = bitcast %struct.v4l2_ctrl_config* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %474, i8* align 8 bitcast (%struct.v4l2_ctrl_config* @pwc_noise_reduction_cfg to i8*), i64 16, i1 false)
  %475 = load i32, i32* %7, align 4
  %476 = getelementptr inbounds %struct.v4l2_ctrl_config, %struct.v4l2_ctrl_config* %5, i32 0, i32 0
  store i32 %475, i32* %476, align 8
  %477 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %478 = call i8* @v4l2_ctrl_new_custom(%struct.v4l2_ctrl_handler* %477, %struct.v4l2_ctrl_config* %5, i32* null)
  %479 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %480 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %479, i32 0, i32 11
  store i8* %478, i8** %480, align 8
  %481 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %482 = call i8* @v4l2_ctrl_new_custom(%struct.v4l2_ctrl_handler* %481, %struct.v4l2_ctrl_config* @pwc_save_user_cfg, i32* null)
  %483 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %484 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %483, i32 0, i32 10
  store i8* %482, i8** %484, align 8
  %485 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %486 = call i8* @v4l2_ctrl_new_custom(%struct.v4l2_ctrl_handler* %485, %struct.v4l2_ctrl_config* @pwc_restore_user_cfg, i32* null)
  %487 = bitcast i8* %486 to %struct.TYPE_3__*
  %488 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %489 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %488, i32 0, i32 9
  store %struct.TYPE_3__* %487, %struct.TYPE_3__** %489, align 8
  %490 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %491 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %490, i32 0, i32 9
  %492 = load %struct.TYPE_3__*, %struct.TYPE_3__** %491, align 8
  %493 = icmp ne %struct.TYPE_3__* %492, null
  br i1 %493, label %494, label %502

494:                                              ; preds = %473
  %495 = load i32, i32* @V4L2_CTRL_FLAG_UPDATE, align 4
  %496 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %497 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %496, i32 0, i32 9
  %498 = load %struct.TYPE_3__*, %struct.TYPE_3__** %497, align 8
  %499 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %498, i32 0, i32 0
  %500 = load i32, i32* %499, align 4
  %501 = or i32 %500, %495
  store i32 %501, i32* %499, align 4
  br label %502

502:                                              ; preds = %494, %473
  %503 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %504 = call i8* @v4l2_ctrl_new_custom(%struct.v4l2_ctrl_handler* %503, %struct.v4l2_ctrl_config* @pwc_restore_factory_cfg, i32* null)
  %505 = bitcast i8* %504 to %struct.TYPE_4__*
  %506 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %507 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %506, i32 0, i32 8
  store %struct.TYPE_4__* %505, %struct.TYPE_4__** %507, align 8
  %508 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %509 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %508, i32 0, i32 8
  %510 = load %struct.TYPE_4__*, %struct.TYPE_4__** %509, align 8
  %511 = icmp ne %struct.TYPE_4__* %510, null
  br i1 %511, label %512, label %520

512:                                              ; preds = %502
  %513 = load i32, i32* @V4L2_CTRL_FLAG_UPDATE, align 4
  %514 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %515 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %514, i32 0, i32 8
  %516 = load %struct.TYPE_4__*, %struct.TYPE_4__** %515, align 8
  %517 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %516, i32 0, i32 0
  %518 = load i32, i32* %517, align 4
  %519 = or i32 %518, %513
  store i32 %519, i32* %517, align 4
  br label %520

520:                                              ; preds = %512, %502
  %521 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %522 = load i32, i32* @GET_CHROM_CTL, align 4
  %523 = load i32, i32* @AWB_CONTROL_SPEED_FORMATTER, align 4
  %524 = call i32 @pwc_get_u8_ctrl(%struct.pwc_device* %521, i32 %522, i32 %523, i32* %7)
  store i32 %524, i32* %6, align 4
  %525 = load i32, i32* %6, align 4
  %526 = icmp ne i32 %525, 0
  br i1 %526, label %533, label %527

527:                                              ; preds = %520
  %528 = load i32, i32* %7, align 4
  %529 = icmp slt i32 %528, 1
  br i1 %529, label %533, label %530

530:                                              ; preds = %527
  %531 = load i32, i32* %7, align 4
  %532 = icmp sgt i32 %531, 32
  br i1 %532, label %533, label %534

533:                                              ; preds = %530, %527, %520
  store i32 1, i32* %7, align 4
  br label %534

534:                                              ; preds = %533, %530
  %535 = bitcast %struct.v4l2_ctrl_config* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %535, i8* align 8 bitcast (%struct.v4l2_ctrl_config* @pwc_awb_speed_cfg to i8*), i64 16, i1 false)
  %536 = load i32, i32* %7, align 4
  %537 = getelementptr inbounds %struct.v4l2_ctrl_config, %struct.v4l2_ctrl_config* %5, i32 0, i32 0
  store i32 %536, i32* %537, align 8
  %538 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %539 = call i8* @v4l2_ctrl_new_custom(%struct.v4l2_ctrl_handler* %538, %struct.v4l2_ctrl_config* %5, i32* null)
  %540 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %541 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %540, i32 0, i32 7
  store i8* %539, i8** %541, align 8
  %542 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %543 = load i32, i32* @GET_CHROM_CTL, align 4
  %544 = load i32, i32* @AWB_CONTROL_DELAY_FORMATTER, align 4
  %545 = call i32 @pwc_get_u8_ctrl(%struct.pwc_device* %542, i32 %543, i32 %544, i32* %7)
  store i32 %545, i32* %6, align 4
  %546 = load i32, i32* %6, align 4
  %547 = icmp ne i32 %546, 0
  br i1 %547, label %551, label %548

548:                                              ; preds = %534
  %549 = load i32, i32* %7, align 4
  %550 = icmp sgt i32 %549, 63
  br i1 %550, label %551, label %552

551:                                              ; preds = %548, %534
  store i32 0, i32* %7, align 4
  br label %552

552:                                              ; preds = %551, %548
  %553 = bitcast %struct.v4l2_ctrl_config* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %553, i8* align 8 bitcast (%struct.v4l2_ctrl_config* @pwc_awb_delay_cfg to i8*), i64 16, i1 false)
  %554 = load i32, i32* %7, align 4
  %555 = getelementptr inbounds %struct.v4l2_ctrl_config, %struct.v4l2_ctrl_config* %5, i32 0, i32 0
  store i32 %554, i32* %555, align 8
  %556 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %557 = call i8* @v4l2_ctrl_new_custom(%struct.v4l2_ctrl_handler* %556, %struct.v4l2_ctrl_config* %5, i32* null)
  %558 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %559 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %558, i32 0, i32 6
  store i8* %557, i8** %559, align 8
  %560 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %561 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %560, i32 0, i32 1
  %562 = load i32, i32* %561, align 4
  %563 = load i32, i32* @FEATURE_MOTOR_PANTILT, align 4
  %564 = and i32 %562, %563
  %565 = icmp ne i32 %564, 0
  br i1 %565, label %570, label %566

566:                                              ; preds = %552
  %567 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %568 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %567, i32 0, i32 0
  %569 = load i32, i32* %568, align 4
  store i32 %569, i32* %2, align 4
  br label %606

570:                                              ; preds = %552
  %571 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %572 = load i32, i32* @V4L2_CID_PAN_RELATIVE, align 4
  %573 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %571, i32* @pwc_ctrl_ops, i32 %572, i32 -4480, i32 4480, i32 64, i32 0)
  %574 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %575 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %574, i32 0, i32 2
  store i8* %573, i8** %575, align 8
  %576 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %577 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %576, i32 0, i32 2
  %578 = load i8*, i8** %577, align 8
  %579 = icmp ne i8* %578, null
  br i1 %579, label %584, label %580

580:                                              ; preds = %570
  %581 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %582 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %581, i32 0, i32 0
  %583 = load i32, i32* %582, align 4
  store i32 %583, i32* %2, align 4
  br label %606

584:                                              ; preds = %570
  %585 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %586 = load i32, i32* @V4L2_CID_TILT_RELATIVE, align 4
  %587 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %585, i32* @pwc_ctrl_ops, i32 %586, i32 -1920, i32 1920, i32 64, i32 0)
  %588 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %589 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %588, i32 0, i32 5
  store i8* %587, i8** %589, align 8
  %590 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %591 = load i32, i32* @V4L2_CID_PAN_RESET, align 4
  %592 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %590, i32* @pwc_ctrl_ops, i32 %591, i32 0, i32 0, i32 0, i32 0)
  %593 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %594 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %593, i32 0, i32 4
  store i8* %592, i8** %594, align 8
  %595 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %596 = load i32, i32* @V4L2_CID_TILT_RESET, align 4
  %597 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %595, i32* @pwc_ctrl_ops, i32 %596, i32 0, i32 0, i32 0, i32 0)
  %598 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %599 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %598, i32 0, i32 3
  store i8* %597, i8** %599, align 8
  %600 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %601 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %600, i32 0, i32 2
  %602 = call i32 @v4l2_ctrl_cluster(i32 4, i8** %601)
  %603 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %604 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %603, i32 0, i32 0
  %605 = load i32, i32* %604, align 4
  store i32 %605, i32* %2, align 4
  br label %606

606:                                              ; preds = %584, %580, %566, %383, %254, %200, %137, %14
  %607 = load i32, i32* %2, align 4
  ret i32 %607
}

declare dso_local i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler*, i32) #1

declare dso_local i32 @pwc_get_u8_ctrl(%struct.pwc_device*, i32, i32, i32*) #1

declare dso_local i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @pwc_get_s8_ctrl(%struct.pwc_device*, i32, i32, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @v4l2_ctrl_get_name(i32) #1

declare dso_local i8* @v4l2_ctrl_new_custom(%struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_config*, i32*) #1

declare dso_local i32 @v4l2_ctrl_auto_cluster(i32, i8**, i32, i32) #1

declare dso_local i64 @DEVICE_USE_CODEC2(i32) #1

declare dso_local i8* @v4l2_ctrl_new_std_menu(%struct.v4l2_ctrl_handler*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @pwc_get_u16_ctrl(%struct.pwc_device*, i32, i32, i32*) #1

declare dso_local i64 @DEVICE_USE_CODEC3(i32) #1

declare dso_local i32 @v4l2_ctrl_cluster(i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
