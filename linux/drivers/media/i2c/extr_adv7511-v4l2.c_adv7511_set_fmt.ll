; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7511-v4l2.c_adv7511_set_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7511-v4l2.c_adv7511_set_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_pad_config = type { i32 }
%struct.v4l2_subdev_format = type { i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }
%struct.adv7511_state = type { i64, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32 }

@HDMI_COLORIMETRY_NONE = common dso_local global i32 0, align 4
@HDMI_EXTENDED_COLORIMETRY_XV_YCC_601 = common dso_local global i32 0, align 4
@HDMI_COLORSPACE_RGB = common dso_local global i32 0, align 4
@HDMI_QUANTIZATION_RANGE_DEFAULT = common dso_local global i32 0, align 4
@HDMI_YCC_QUANTIZATION_RANGE_LIMITED = common dso_local global i32 0, align 4
@V4L2_DV_IT_CONTENT_TYPE_NO_ITC = common dso_local global i64 0, align 8
@V4L2_DV_IT_CONTENT_TYPE_GRAPHICS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@V4L2_SUBDEV_FORMAT_TRY = common dso_local global i64 0, align 8
@HDMI_COLORSPACE_YUV422 = common dso_local global i32 0, align 4
@HDMI_COLORIMETRY_EXTENDED = common dso_local global i32 0, align 4
@HDMI_EXTENDED_COLORIMETRY_OPYCC_601 = common dso_local global i32 0, align 4
@HDMI_EXTENDED_COLORIMETRY_OPRGB = common dso_local global i32 0, align 4
@HDMI_COLORIMETRY_ITU_601 = common dso_local global i32 0, align 4
@V4L2_YCBCR_ENC_XV601 = common dso_local global i32 0, align 4
@HDMI_COLORIMETRY_ITU_709 = common dso_local global i32 0, align 4
@V4L2_YCBCR_ENC_XV709 = common dso_local global i32 0, align 4
@HDMI_EXTENDED_COLORIMETRY_XV_YCC_709 = common dso_local global i32 0, align 4
@HDMI_EXTENDED_COLORIMETRY_S_YCC_601 = common dso_local global i32 0, align 4
@V4L2_YCBCR_ENC_BT2020_CONST_LUM = common dso_local global i32 0, align 4
@HDMI_QUANTIZATION_RANGE_FULL = common dso_local global i32 0, align 4
@HDMI_YCC_QUANTIZATION_RANGE_FULL = common dso_local global i32 0, align 4
@HDMI_QUANTIZATION_RANGE_LIMITED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_format*)* @adv7511_set_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adv7511_set_fmt(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %7 = alloca %struct.v4l2_subdev_format*, align 8
  %8 = alloca %struct.adv7511_state*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.v4l2_mbus_framefmt*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %5, align 8
  store %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_pad_config** %6, align 8
  store %struct.v4l2_subdev_format* %2, %struct.v4l2_subdev_format** %7, align 8
  %17 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %18 = call %struct.adv7511_state* @get_adv7511_state(%struct.v4l2_subdev* %17)
  store %struct.adv7511_state* %18, %struct.adv7511_state** %8, align 8
  %19 = load i32, i32* @HDMI_COLORIMETRY_NONE, align 4
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* @HDMI_EXTENDED_COLORIMETRY_XV_YCC_601, align 4
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* @HDMI_COLORSPACE_RGB, align 4
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* @HDMI_QUANTIZATION_RANGE_DEFAULT, align 4
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* @HDMI_YCC_QUANTIZATION_RANGE_LIMITED, align 4
  store i32 %23, i32* %13, align 4
  %24 = load %struct.adv7511_state*, %struct.adv7511_state** %8, align 8
  %25 = getelementptr inbounds %struct.adv7511_state, %struct.adv7511_state* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @V4L2_DV_IT_CONTENT_TYPE_NO_ITC, align 8
  %28 = icmp ne i64 %26, %27
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %14, align 4
  %30 = load i32, i32* %14, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %3
  %33 = load %struct.adv7511_state*, %struct.adv7511_state** %8, align 8
  %34 = getelementptr inbounds %struct.adv7511_state, %struct.adv7511_state* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  br label %39

36:                                               ; preds = %3
  %37 = load i32, i32* @V4L2_DV_IT_CONTENT_TYPE_GRAPHICS, align 4
  %38 = sext i32 %37 to i64
  br label %39

39:                                               ; preds = %36, %32
  %40 = phi i64 [ %35, %32 ], [ %38, %36 ]
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %15, align 4
  %42 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %43 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %39
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %325

49:                                               ; preds = %39
  %50 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %51 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  switch i32 %53, label %55 [
    i32 136, label %54
    i32 135, label %54
    i32 137, label %54
  ]

54:                                               ; preds = %49, %49, %49
  br label %58

55:                                               ; preds = %49
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %4, align 4
  br label %325

58:                                               ; preds = %54
  %59 = load %struct.adv7511_state*, %struct.adv7511_state** %8, align 8
  %60 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %61 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %60, i32 0, i32 2
  %62 = call i32 @adv7511_fill_format(%struct.adv7511_state* %59, %struct.TYPE_2__* %61)
  %63 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %64 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @V4L2_SUBDEV_FORMAT_TRY, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %105

68:                                               ; preds = %58
  %69 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %70 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %6, align 8
  %71 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %72 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = call %struct.v4l2_mbus_framefmt* @v4l2_subdev_get_try_format(%struct.v4l2_subdev* %69, %struct.v4l2_subdev_pad_config* %70, i64 %73)
  store %struct.v4l2_mbus_framefmt* %74, %struct.v4l2_mbus_framefmt** %16, align 8
  %75 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %76 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %16, align 8
  %80 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 4
  %81 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %82 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %16, align 8
  %86 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 4
  %87 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %88 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %16, align 8
  %92 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %91, i32 0, i32 4
  store i32 %90, i32* %92, align 4
  %93 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %94 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %16, align 8
  %98 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %97, i32 0, i32 2
  store i32 %96, i32* %98, align 4
  %99 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %100 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %16, align 8
  %104 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %103, i32 0, i32 3
  store i32 %102, i32* %104, align 4
  store i32 0, i32* %4, align 4
  br label %325

105:                                              ; preds = %58
  %106 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %107 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  switch i32 %109, label %123 [
    i32 136, label %110
    i32 135, label %116
    i32 137, label %122
  ]

110:                                              ; preds = %105
  %111 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %112 = call i32 @adv7511_wr_and_or(%struct.v4l2_subdev* %111, i32 21, i32 240, i32 1)
  %113 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %114 = call i32 @adv7511_wr_and_or(%struct.v4l2_subdev* %113, i32 22, i32 3, i32 184)
  %115 = load i32, i32* @HDMI_COLORSPACE_YUV422, align 4
  store i32 %115, i32* %11, align 4
  br label %128

116:                                              ; preds = %105
  %117 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %118 = call i32 @adv7511_wr_and_or(%struct.v4l2_subdev* %117, i32 21, i32 240, i32 1)
  %119 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %120 = call i32 @adv7511_wr_and_or(%struct.v4l2_subdev* %119, i32 22, i32 3, i32 188)
  %121 = load i32, i32* @HDMI_COLORSPACE_YUV422, align 4
  store i32 %121, i32* %11, align 4
  br label %128

122:                                              ; preds = %105
  br label %123

123:                                              ; preds = %105, %122
  %124 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %125 = call i32 @adv7511_wr_and_or(%struct.v4l2_subdev* %124, i32 21, i32 240, i32 0)
  %126 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %127 = call i32 @adv7511_wr_and_or(%struct.v4l2_subdev* %126, i32 22, i32 3, i32 0)
  br label %128

128:                                              ; preds = %123, %116, %110
  %129 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %130 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %129, i32 0, i32 2
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.adv7511_state*, %struct.adv7511_state** %8, align 8
  %134 = getelementptr inbounds %struct.adv7511_state, %struct.adv7511_state* %133, i32 0, i32 1
  store i32 %132, i32* %134, align 8
  %135 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %136 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %135, i32 0, i32 2
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.adv7511_state*, %struct.adv7511_state** %8, align 8
  %140 = getelementptr inbounds %struct.adv7511_state, %struct.adv7511_state* %139, i32 0, i32 2
  store i32 %138, i32* %140, align 4
  %141 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %142 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %141, i32 0, i32 2
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.adv7511_state*, %struct.adv7511_state** %8, align 8
  %146 = getelementptr inbounds %struct.adv7511_state, %struct.adv7511_state* %145, i32 0, i32 6
  store i32 %144, i32* %146, align 4
  %147 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %148 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %147, i32 0, i32 2
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.adv7511_state*, %struct.adv7511_state** %8, align 8
  %152 = getelementptr inbounds %struct.adv7511_state, %struct.adv7511_state* %151, i32 0, i32 3
  store i32 %150, i32* %152, align 8
  %153 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %154 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %153, i32 0, i32 2
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 4
  %156 = load i32, i32* %155, align 8
  %157 = load %struct.adv7511_state*, %struct.adv7511_state** %8, align 8
  %158 = getelementptr inbounds %struct.adv7511_state, %struct.adv7511_state* %157, i32 0, i32 5
  store i32 %156, i32* %158, align 8
  %159 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %160 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %159, i32 0, i32 2
  %161 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  switch i32 %162, label %248 [
    i32 133, label %163
    i32 131, label %173
    i32 132, label %195
    i32 130, label %217
    i32 134, label %234
  ]

163:                                              ; preds = %128
  %164 = load i32, i32* @HDMI_COLORIMETRY_EXTENDED, align 4
  store i32 %164, i32* %9, align 4
  %165 = load i32, i32* %11, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %169

167:                                              ; preds = %163
  %168 = load i32, i32* @HDMI_EXTENDED_COLORIMETRY_OPYCC_601, align 4
  br label %171

169:                                              ; preds = %163
  %170 = load i32, i32* @HDMI_EXTENDED_COLORIMETRY_OPRGB, align 4
  br label %171

171:                                              ; preds = %169, %167
  %172 = phi i32 [ %168, %167 ], [ %170, %169 ]
  store i32 %172, i32* %10, align 4
  br label %249

173:                                              ; preds = %128
  %174 = load i32, i32* %11, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %178

176:                                              ; preds = %173
  %177 = load i32, i32* @HDMI_COLORIMETRY_ITU_601, align 4
  br label %180

178:                                              ; preds = %173
  %179 = load i32, i32* @HDMI_COLORIMETRY_NONE, align 4
  br label %180

180:                                              ; preds = %178, %176
  %181 = phi i32 [ %177, %176 ], [ %179, %178 ]
  store i32 %181, i32* %9, align 4
  %182 = load i32, i32* %11, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %194

184:                                              ; preds = %180
  %185 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %186 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %185, i32 0, i32 2
  %187 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %186, i32 0, i32 3
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* @V4L2_YCBCR_ENC_XV601, align 4
  %190 = icmp eq i32 %188, %189
  br i1 %190, label %191, label %194

191:                                              ; preds = %184
  %192 = load i32, i32* @HDMI_COLORIMETRY_EXTENDED, align 4
  store i32 %192, i32* %9, align 4
  %193 = load i32, i32* @HDMI_EXTENDED_COLORIMETRY_XV_YCC_601, align 4
  store i32 %193, i32* %10, align 4
  br label %194

194:                                              ; preds = %191, %184, %180
  br label %249

195:                                              ; preds = %128
  %196 = load i32, i32* %11, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %200

198:                                              ; preds = %195
  %199 = load i32, i32* @HDMI_COLORIMETRY_ITU_709, align 4
  br label %202

200:                                              ; preds = %195
  %201 = load i32, i32* @HDMI_COLORIMETRY_NONE, align 4
  br label %202

202:                                              ; preds = %200, %198
  %203 = phi i32 [ %199, %198 ], [ %201, %200 ]
  store i32 %203, i32* %9, align 4
  %204 = load i32, i32* %11, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %216

206:                                              ; preds = %202
  %207 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %208 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %207, i32 0, i32 2
  %209 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %208, i32 0, i32 3
  %210 = load i32, i32* %209, align 4
  %211 = load i32, i32* @V4L2_YCBCR_ENC_XV709, align 4
  %212 = icmp eq i32 %210, %211
  br i1 %212, label %213, label %216

213:                                              ; preds = %206
  %214 = load i32, i32* @HDMI_COLORIMETRY_EXTENDED, align 4
  store i32 %214, i32* %9, align 4
  %215 = load i32, i32* @HDMI_EXTENDED_COLORIMETRY_XV_YCC_709, align 4
  store i32 %215, i32* %10, align 4
  br label %216

216:                                              ; preds = %213, %206, %202
  br label %249

217:                                              ; preds = %128
  %218 = load i32, i32* %11, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %222

220:                                              ; preds = %217
  %221 = load i32, i32* @HDMI_COLORIMETRY_EXTENDED, align 4
  br label %224

222:                                              ; preds = %217
  %223 = load i32, i32* @HDMI_COLORIMETRY_NONE, align 4
  br label %224

224:                                              ; preds = %222, %220
  %225 = phi i32 [ %221, %220 ], [ %223, %222 ]
  store i32 %225, i32* %9, align 4
  %226 = load i32, i32* %11, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %230

228:                                              ; preds = %224
  %229 = load i32, i32* @HDMI_EXTENDED_COLORIMETRY_S_YCC_601, align 4
  br label %232

230:                                              ; preds = %224
  %231 = load i32, i32* @HDMI_EXTENDED_COLORIMETRY_XV_YCC_601, align 4
  br label %232

232:                                              ; preds = %230, %228
  %233 = phi i32 [ %229, %228 ], [ %231, %230 ]
  store i32 %233, i32* %10, align 4
  br label %249

234:                                              ; preds = %128
  %235 = load i32, i32* @HDMI_COLORIMETRY_EXTENDED, align 4
  store i32 %235, i32* %9, align 4
  %236 = load i32, i32* %11, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %246

238:                                              ; preds = %234
  %239 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %240 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %239, i32 0, i32 2
  %241 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %240, i32 0, i32 3
  %242 = load i32, i32* %241, align 4
  %243 = load i32, i32* @V4L2_YCBCR_ENC_BT2020_CONST_LUM, align 4
  %244 = icmp eq i32 %242, %243
  br i1 %244, label %245, label %246

245:                                              ; preds = %238
  store i32 5, i32* %10, align 4
  br label %247

246:                                              ; preds = %238, %234
  store i32 6, i32* %10, align 4
  br label %247

247:                                              ; preds = %246, %245
  br label %249

248:                                              ; preds = %128
  br label %249

249:                                              ; preds = %248, %247, %232, %216, %194, %171
  %250 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %251 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %250, i32 0, i32 2
  %252 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %251, i32 0, i32 2
  %253 = load i32, i32* %252, align 8
  switch i32 %253, label %290 [
    i32 129, label %254
    i32 128, label %272
  ]

254:                                              ; preds = %249
  %255 = load i32, i32* %11, align 4
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %259

257:                                              ; preds = %254
  %258 = load i32, i32* @HDMI_QUANTIZATION_RANGE_DEFAULT, align 4
  br label %261

259:                                              ; preds = %254
  %260 = load i32, i32* @HDMI_QUANTIZATION_RANGE_FULL, align 4
  br label %261

261:                                              ; preds = %259, %257
  %262 = phi i32 [ %258, %257 ], [ %260, %259 ]
  store i32 %262, i32* %12, align 4
  %263 = load i32, i32* %12, align 4
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %268

265:                                              ; preds = %261
  %266 = load i32, i32* %12, align 4
  %267 = sub nsw i32 %266, 1
  br label %270

268:                                              ; preds = %261
  %269 = load i32, i32* @HDMI_YCC_QUANTIZATION_RANGE_FULL, align 4
  br label %270

270:                                              ; preds = %268, %265
  %271 = phi i32 [ %267, %265 ], [ %269, %268 ]
  store i32 %271, i32* %13, align 4
  br label %290

272:                                              ; preds = %249
  %273 = load i32, i32* %11, align 4
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %277

275:                                              ; preds = %272
  %276 = load i32, i32* @HDMI_QUANTIZATION_RANGE_DEFAULT, align 4
  br label %279

277:                                              ; preds = %272
  %278 = load i32, i32* @HDMI_QUANTIZATION_RANGE_LIMITED, align 4
  br label %279

279:                                              ; preds = %277, %275
  %280 = phi i32 [ %276, %275 ], [ %278, %277 ]
  store i32 %280, i32* %12, align 4
  %281 = load i32, i32* %12, align 4
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %286

283:                                              ; preds = %279
  %284 = load i32, i32* %12, align 4
  %285 = sub nsw i32 %284, 1
  br label %288

286:                                              ; preds = %279
  %287 = load i32, i32* @HDMI_YCC_QUANTIZATION_RANGE_LIMITED, align 4
  br label %288

288:                                              ; preds = %286, %283
  %289 = phi i32 [ %285, %283 ], [ %287, %286 ]
  store i32 %289, i32* %13, align 4
  br label %290

290:                                              ; preds = %249, %288, %270
  %291 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %292 = call i32 @adv7511_wr_and_or(%struct.v4l2_subdev* %291, i32 74, i32 191, i32 0)
  %293 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %294 = load i32, i32* %11, align 4
  %295 = shl i32 %294, 5
  %296 = call i32 @adv7511_wr_and_or(%struct.v4l2_subdev* %293, i32 85, i32 159, i32 %295)
  %297 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %298 = load i32, i32* %9, align 4
  %299 = shl i32 %298, 6
  %300 = call i32 @adv7511_wr_and_or(%struct.v4l2_subdev* %297, i32 86, i32 63, i32 %299)
  %301 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %302 = load i32, i32* %10, align 4
  %303 = shl i32 %302, 4
  %304 = load i32, i32* %12, align 4
  %305 = shl i32 %304, 2
  %306 = or i32 %303, %305
  %307 = load i32, i32* %14, align 4
  %308 = shl i32 %307, 7
  %309 = or i32 %306, %308
  %310 = call i32 @adv7511_wr_and_or(%struct.v4l2_subdev* %301, i32 87, i32 131, i32 %309)
  %311 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %312 = load i32, i32* %13, align 4
  %313 = shl i32 %312, 6
  %314 = load i32, i32* %15, align 4
  %315 = shl i32 %314, 4
  %316 = or i32 %313, %315
  %317 = call i32 @adv7511_wr_and_or(%struct.v4l2_subdev* %311, i32 89, i32 15, i32 %316)
  %318 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %319 = call i32 @adv7511_wr_and_or(%struct.v4l2_subdev* %318, i32 74, i32 255, i32 1)
  %320 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %321 = load %struct.adv7511_state*, %struct.adv7511_state** %8, align 8
  %322 = getelementptr inbounds %struct.adv7511_state, %struct.adv7511_state* %321, i32 0, i32 4
  %323 = load i32, i32* %322, align 4
  %324 = call i32 @adv7511_set_rgb_quantization_mode(%struct.v4l2_subdev* %320, i32 %323)
  store i32 0, i32* %4, align 4
  br label %325

325:                                              ; preds = %290, %68, %55, %46
  %326 = load i32, i32* %4, align 4
  ret i32 %326
}

declare dso_local %struct.adv7511_state* @get_adv7511_state(%struct.v4l2_subdev*) #1

declare dso_local i32 @adv7511_fill_format(%struct.adv7511_state*, %struct.TYPE_2__*) #1

declare dso_local %struct.v4l2_mbus_framefmt* @v4l2_subdev_get_try_format(%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, i64) #1

declare dso_local i32 @adv7511_wr_and_or(%struct.v4l2_subdev*, i32, i32, i32) #1

declare dso_local i32 @adv7511_set_rgb_quantization_mode(%struct.v4l2_subdev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
