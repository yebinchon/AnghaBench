; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tda1997x.c_tda1997x_configure_csc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tda1997x.c_tda1997x_configure_csc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blanking_codes = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_subdev = type { i32 }
%struct.tda1997x_state = type { i64, %struct.TYPE_6__*, i32, %struct.TYPE_5__, %struct.v4l2_hdmi_colorimetry, %struct.hdmi_avi_infoframe }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.v4l2_hdmi_colorimetry = type { i64, i32 }
%struct.hdmi_avi_infoframe = type { i64 }

@tda1997x_configure_csc.rgb_blanking = internal constant %struct.blanking_codes { i32 64, i32 64, i32 64 }, align 4
@tda1997x_configure_csc.yuv_blanking = internal constant %struct.blanking_codes { i32 64, i32 512, i32 512 }, align 4
@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"input:%s quant:%s output:%s\0A\00", align 1
@hdmi_colorspace_names = common dso_local global i32* null, align 8
@v4l2_quantization_names = common dso_local global i32* null, align 8
@vidfmt_names = common dso_local global i32* null, align 8
@V4L2_COLORSPACE_SRGB = common dso_local global i32 0, align 4
@V4L2_QUANTIZATION_LIM_RANGE = common dso_local global i64 0, align 8
@conv_matrix = common dso_local global %struct.TYPE_6__* null, align 8
@RGBLIMITED_RGBFULL = common dso_local global i64 0, align 8
@V4L2_COLORSPACE_REC709 = common dso_local global i32 0, align 4
@ITU709_RGBFULL = common dso_local global i64 0, align 8
@V4L2_COLORSPACE_SMPTE170M = common dso_local global i32 0, align 4
@ITU601_RGBFULL = common dso_local global i64 0, align 8
@V4L2_QUANTIZATION_FULL_RANGE = common dso_local global i64 0, align 8
@RGBFULL_ITU601 = common dso_local global i64 0, align 8
@RGBFULL_ITU709 = common dso_local global i64 0, align 8
@RGBLIMITED_ITU601 = common dso_local global i64 0, align 8
@RGBLIMITED_ITU709 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@REG_VDP_CTRL = common dso_local global i32 0, align 4
@VDP_CTRL_MATRIX_BP = common dso_local global i32 0, align 4
@REG_VDP_MATRIX = common dso_local global i64 0, align 8
@REG_BLK_GY = common dso_local global i64 0, align 8
@REG_BLK_BU = common dso_local global i64 0, align 8
@REG_BLK_RV = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.v4l2_subdev*)* @tda1997x_configure_csc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tda1997x_configure_csc(%struct.v4l2_subdev* %0) #0 {
  %2 = alloca %struct.v4l2_subdev*, align 8
  %3 = alloca %struct.tda1997x_state*, align 8
  %4 = alloca %struct.hdmi_avi_infoframe*, align 8
  %5 = alloca %struct.v4l2_hdmi_colorimetry*, align 8
  %6 = alloca %struct.blanking_codes*, align 8
  %7 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %2, align 8
  %8 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %9 = call %struct.tda1997x_state* @to_state(%struct.v4l2_subdev* %8)
  store %struct.tda1997x_state* %9, %struct.tda1997x_state** %3, align 8
  %10 = load %struct.tda1997x_state*, %struct.tda1997x_state** %3, align 8
  %11 = getelementptr inbounds %struct.tda1997x_state, %struct.tda1997x_state* %10, i32 0, i32 5
  store %struct.hdmi_avi_infoframe* %11, %struct.hdmi_avi_infoframe** %4, align 8
  %12 = load %struct.tda1997x_state*, %struct.tda1997x_state** %3, align 8
  %13 = getelementptr inbounds %struct.tda1997x_state, %struct.tda1997x_state* %12, i32 0, i32 4
  store %struct.v4l2_hdmi_colorimetry* %13, %struct.v4l2_hdmi_colorimetry** %5, align 8
  store %struct.blanking_codes* null, %struct.blanking_codes** %6, align 8
  %14 = load i32, i32* @debug, align 4
  %15 = load %struct.tda1997x_state*, %struct.tda1997x_state** %3, align 8
  %16 = getelementptr inbounds %struct.tda1997x_state, %struct.tda1997x_state* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = load i32*, i32** @hdmi_colorspace_names, align 8
  %19 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %4, align 8
  %20 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds i32, i32* %18, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load i32*, i32** @v4l2_quantization_names, align 8
  %25 = load %struct.v4l2_hdmi_colorimetry*, %struct.v4l2_hdmi_colorimetry** %5, align 8
  %26 = getelementptr inbounds %struct.v4l2_hdmi_colorimetry, %struct.v4l2_hdmi_colorimetry* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds i32, i32* %24, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32*, i32** @vidfmt_names, align 8
  %31 = load %struct.tda1997x_state*, %struct.tda1997x_state** %3, align 8
  %32 = getelementptr inbounds %struct.tda1997x_state, %struct.tda1997x_state* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds i32, i32* %30, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = call i32 (i32, i32, i32, i8*, i32, ...) @v4l_dbg(i32 1, i32 %14, i32 %17, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %29, i32 %35)
  %37 = load %struct.tda1997x_state*, %struct.tda1997x_state** %3, align 8
  %38 = getelementptr inbounds %struct.tda1997x_state, %struct.tda1997x_state* %37, i32 0, i32 1
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %38, align 8
  %39 = load %struct.tda1997x_state*, %struct.tda1997x_state** %3, align 8
  %40 = getelementptr inbounds %struct.tda1997x_state, %struct.tda1997x_state* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  switch i64 %41, label %154 [
    i64 128, label %42
    i64 129, label %88
    i64 130, label %88
  ]

42:                                               ; preds = %1
  store %struct.blanking_codes* @tda1997x_configure_csc.rgb_blanking, %struct.blanking_codes** %6, align 8
  %43 = load %struct.v4l2_hdmi_colorimetry*, %struct.v4l2_hdmi_colorimetry** %5, align 8
  %44 = getelementptr inbounds %struct.v4l2_hdmi_colorimetry, %struct.v4l2_hdmi_colorimetry* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @V4L2_COLORSPACE_SRGB, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %61

48:                                               ; preds = %42
  %49 = load %struct.v4l2_hdmi_colorimetry*, %struct.v4l2_hdmi_colorimetry** %5, align 8
  %50 = getelementptr inbounds %struct.v4l2_hdmi_colorimetry, %struct.v4l2_hdmi_colorimetry* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @V4L2_QUANTIZATION_LIM_RANGE, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %48
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** @conv_matrix, align 8
  %56 = load i64, i64* @RGBLIMITED_RGBFULL, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i64 %56
  %58 = load %struct.tda1997x_state*, %struct.tda1997x_state** %3, align 8
  %59 = getelementptr inbounds %struct.tda1997x_state, %struct.tda1997x_state* %58, i32 0, i32 1
  store %struct.TYPE_6__* %57, %struct.TYPE_6__** %59, align 8
  br label %60

60:                                               ; preds = %54, %48
  br label %87

61:                                               ; preds = %42
  %62 = load %struct.v4l2_hdmi_colorimetry*, %struct.v4l2_hdmi_colorimetry** %5, align 8
  %63 = getelementptr inbounds %struct.v4l2_hdmi_colorimetry, %struct.v4l2_hdmi_colorimetry* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @V4L2_COLORSPACE_REC709, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %73

67:                                               ; preds = %61
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** @conv_matrix, align 8
  %69 = load i64, i64* @ITU709_RGBFULL, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i64 %69
  %71 = load %struct.tda1997x_state*, %struct.tda1997x_state** %3, align 8
  %72 = getelementptr inbounds %struct.tda1997x_state, %struct.tda1997x_state* %71, i32 0, i32 1
  store %struct.TYPE_6__* %70, %struct.TYPE_6__** %72, align 8
  br label %86

73:                                               ; preds = %61
  %74 = load %struct.v4l2_hdmi_colorimetry*, %struct.v4l2_hdmi_colorimetry** %5, align 8
  %75 = getelementptr inbounds %struct.v4l2_hdmi_colorimetry, %struct.v4l2_hdmi_colorimetry* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @V4L2_COLORSPACE_SMPTE170M, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %85

79:                                               ; preds = %73
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** @conv_matrix, align 8
  %81 = load i64, i64* @ITU601_RGBFULL, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i64 %81
  %83 = load %struct.tda1997x_state*, %struct.tda1997x_state** %3, align 8
  %84 = getelementptr inbounds %struct.tda1997x_state, %struct.tda1997x_state* %83, i32 0, i32 1
  store %struct.TYPE_6__* %82, %struct.TYPE_6__** %84, align 8
  br label %85

85:                                               ; preds = %79, %73
  br label %86

86:                                               ; preds = %85, %67
  br label %87

87:                                               ; preds = %86, %60
  br label %154

88:                                               ; preds = %1, %1
  store %struct.blanking_codes* @tda1997x_configure_csc.yuv_blanking, %struct.blanking_codes** %6, align 8
  %89 = load %struct.v4l2_hdmi_colorimetry*, %struct.v4l2_hdmi_colorimetry** %5, align 8
  %90 = getelementptr inbounds %struct.v4l2_hdmi_colorimetry, %struct.v4l2_hdmi_colorimetry* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @V4L2_COLORSPACE_SRGB, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %120

94:                                               ; preds = %88
  %95 = load %struct.v4l2_hdmi_colorimetry*, %struct.v4l2_hdmi_colorimetry** %5, align 8
  %96 = getelementptr inbounds %struct.v4l2_hdmi_colorimetry, %struct.v4l2_hdmi_colorimetry* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @V4L2_QUANTIZATION_FULL_RANGE, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %120

100:                                              ; preds = %94
  %101 = load %struct.tda1997x_state*, %struct.tda1997x_state** %3, align 8
  %102 = getelementptr inbounds %struct.tda1997x_state, %struct.tda1997x_state* %101, i32 0, i32 3
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = icmp sle i32 %105, 576
  br i1 %106, label %107, label %113

107:                                              ; preds = %100
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** @conv_matrix, align 8
  %109 = load i64, i64* @RGBFULL_ITU601, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i64 %109
  %111 = load %struct.tda1997x_state*, %struct.tda1997x_state** %3, align 8
  %112 = getelementptr inbounds %struct.tda1997x_state, %struct.tda1997x_state* %111, i32 0, i32 1
  store %struct.TYPE_6__* %110, %struct.TYPE_6__** %112, align 8
  br label %119

113:                                              ; preds = %100
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** @conv_matrix, align 8
  %115 = load i64, i64* @RGBFULL_ITU709, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i64 %115
  %117 = load %struct.tda1997x_state*, %struct.tda1997x_state** %3, align 8
  %118 = getelementptr inbounds %struct.tda1997x_state, %struct.tda1997x_state* %117, i32 0, i32 1
  store %struct.TYPE_6__* %116, %struct.TYPE_6__** %118, align 8
  br label %119

119:                                              ; preds = %113, %107
  br label %153

120:                                              ; preds = %94, %88
  %121 = load %struct.v4l2_hdmi_colorimetry*, %struct.v4l2_hdmi_colorimetry** %5, align 8
  %122 = getelementptr inbounds %struct.v4l2_hdmi_colorimetry, %struct.v4l2_hdmi_colorimetry* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @V4L2_COLORSPACE_SRGB, align 4
  %125 = icmp eq i32 %123, %124
  br i1 %125, label %126, label %152

126:                                              ; preds = %120
  %127 = load %struct.v4l2_hdmi_colorimetry*, %struct.v4l2_hdmi_colorimetry** %5, align 8
  %128 = getelementptr inbounds %struct.v4l2_hdmi_colorimetry, %struct.v4l2_hdmi_colorimetry* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @V4L2_QUANTIZATION_LIM_RANGE, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %132, label %152

132:                                              ; preds = %126
  %133 = load %struct.tda1997x_state*, %struct.tda1997x_state** %3, align 8
  %134 = getelementptr inbounds %struct.tda1997x_state, %struct.tda1997x_state* %133, i32 0, i32 3
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = icmp sle i32 %137, 576
  br i1 %138, label %139, label %145

139:                                              ; preds = %132
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** @conv_matrix, align 8
  %141 = load i64, i64* @RGBLIMITED_ITU601, align 8
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i64 %141
  %143 = load %struct.tda1997x_state*, %struct.tda1997x_state** %3, align 8
  %144 = getelementptr inbounds %struct.tda1997x_state, %struct.tda1997x_state* %143, i32 0, i32 1
  store %struct.TYPE_6__* %142, %struct.TYPE_6__** %144, align 8
  br label %151

145:                                              ; preds = %132
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** @conv_matrix, align 8
  %147 = load i64, i64* @RGBLIMITED_ITU709, align 8
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i64 %147
  %149 = load %struct.tda1997x_state*, %struct.tda1997x_state** %3, align 8
  %150 = getelementptr inbounds %struct.tda1997x_state, %struct.tda1997x_state* %149, i32 0, i32 1
  store %struct.TYPE_6__* %148, %struct.TYPE_6__** %150, align 8
  br label %151

151:                                              ; preds = %145, %139
  br label %152

152:                                              ; preds = %151, %126, %120
  br label %153

153:                                              ; preds = %152, %119
  br label %154

154:                                              ; preds = %1, %153, %87
  %155 = load %struct.tda1997x_state*, %struct.tda1997x_state** %3, align 8
  %156 = getelementptr inbounds %struct.tda1997x_state, %struct.tda1997x_state* %155, i32 0, i32 1
  %157 = load %struct.TYPE_6__*, %struct.TYPE_6__** %156, align 8
  %158 = icmp ne %struct.TYPE_6__* %157, null
  br i1 %158, label %159, label %316

159:                                              ; preds = %154
  %160 = load i32, i32* @debug, align 4
  %161 = load %struct.tda1997x_state*, %struct.tda1997x_state** %3, align 8
  %162 = getelementptr inbounds %struct.tda1997x_state, %struct.tda1997x_state* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 8
  %164 = load %struct.tda1997x_state*, %struct.tda1997x_state** %3, align 8
  %165 = getelementptr inbounds %struct.tda1997x_state, %struct.tda1997x_state* %164, i32 0, i32 1
  %166 = load %struct.TYPE_6__*, %struct.TYPE_6__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 15
  %168 = load i32, i32* %167, align 4
  %169 = call i32 (i32, i32, i32, i8*, i32, ...) @v4l_dbg(i32 1, i32 %160, i32 %163, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %168)
  %170 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %171 = load i32, i32* @REG_VDP_CTRL, align 4
  %172 = call i32 @io_read(%struct.v4l2_subdev* %170, i32 %171)
  store i32 %172, i32* %7, align 4
  %173 = load i32, i32* @VDP_CTRL_MATRIX_BP, align 4
  %174 = xor i32 %173, -1
  %175 = load i32, i32* %7, align 4
  %176 = and i32 %175, %174
  store i32 %176, i32* %7, align 4
  %177 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %178 = load i32, i32* @REG_VDP_CTRL, align 4
  %179 = load i32, i32* %7, align 4
  %180 = call i32 @io_write(%struct.v4l2_subdev* %177, i32 %178, i32 %179)
  %181 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %182 = load i64, i64* @REG_VDP_MATRIX, align 8
  %183 = add nsw i64 %182, 0
  %184 = load %struct.tda1997x_state*, %struct.tda1997x_state** %3, align 8
  %185 = getelementptr inbounds %struct.tda1997x_state, %struct.tda1997x_state* %184, i32 0, i32 1
  %186 = load %struct.TYPE_6__*, %struct.TYPE_6__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i32 0, i32 14
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @io_write16(%struct.v4l2_subdev* %181, i64 %183, i32 %188)
  %190 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %191 = load i64, i64* @REG_VDP_MATRIX, align 8
  %192 = add nsw i64 %191, 2
  %193 = load %struct.tda1997x_state*, %struct.tda1997x_state** %3, align 8
  %194 = getelementptr inbounds %struct.tda1997x_state, %struct.tda1997x_state* %193, i32 0, i32 1
  %195 = load %struct.TYPE_6__*, %struct.TYPE_6__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %195, i32 0, i32 13
  %197 = load i32, i32* %196, align 4
  %198 = call i32 @io_write16(%struct.v4l2_subdev* %190, i64 %192, i32 %197)
  %199 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %200 = load i64, i64* @REG_VDP_MATRIX, align 8
  %201 = add nsw i64 %200, 4
  %202 = load %struct.tda1997x_state*, %struct.tda1997x_state** %3, align 8
  %203 = getelementptr inbounds %struct.tda1997x_state, %struct.tda1997x_state* %202, i32 0, i32 1
  %204 = load %struct.TYPE_6__*, %struct.TYPE_6__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %204, i32 0, i32 12
  %206 = load i32, i32* %205, align 4
  %207 = call i32 @io_write16(%struct.v4l2_subdev* %199, i64 %201, i32 %206)
  %208 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %209 = load i64, i64* @REG_VDP_MATRIX, align 8
  %210 = add nsw i64 %209, 6
  %211 = load %struct.tda1997x_state*, %struct.tda1997x_state** %3, align 8
  %212 = getelementptr inbounds %struct.tda1997x_state, %struct.tda1997x_state* %211, i32 0, i32 1
  %213 = load %struct.TYPE_6__*, %struct.TYPE_6__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %213, i32 0, i32 11
  %215 = load i32, i32* %214, align 4
  %216 = call i32 @io_write16(%struct.v4l2_subdev* %208, i64 %210, i32 %215)
  %217 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %218 = load i64, i64* @REG_VDP_MATRIX, align 8
  %219 = add nsw i64 %218, 8
  %220 = load %struct.tda1997x_state*, %struct.tda1997x_state** %3, align 8
  %221 = getelementptr inbounds %struct.tda1997x_state, %struct.tda1997x_state* %220, i32 0, i32 1
  %222 = load %struct.TYPE_6__*, %struct.TYPE_6__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %222, i32 0, i32 10
  %224 = load i32, i32* %223, align 4
  %225 = call i32 @io_write16(%struct.v4l2_subdev* %217, i64 %219, i32 %224)
  %226 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %227 = load i64, i64* @REG_VDP_MATRIX, align 8
  %228 = add nsw i64 %227, 10
  %229 = load %struct.tda1997x_state*, %struct.tda1997x_state** %3, align 8
  %230 = getelementptr inbounds %struct.tda1997x_state, %struct.tda1997x_state* %229, i32 0, i32 1
  %231 = load %struct.TYPE_6__*, %struct.TYPE_6__** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %231, i32 0, i32 9
  %233 = load i32, i32* %232, align 4
  %234 = call i32 @io_write16(%struct.v4l2_subdev* %226, i64 %228, i32 %233)
  %235 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %236 = load i64, i64* @REG_VDP_MATRIX, align 8
  %237 = add nsw i64 %236, 12
  %238 = load %struct.tda1997x_state*, %struct.tda1997x_state** %3, align 8
  %239 = getelementptr inbounds %struct.tda1997x_state, %struct.tda1997x_state* %238, i32 0, i32 1
  %240 = load %struct.TYPE_6__*, %struct.TYPE_6__** %239, align 8
  %241 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %240, i32 0, i32 8
  %242 = load i32, i32* %241, align 4
  %243 = call i32 @io_write16(%struct.v4l2_subdev* %235, i64 %237, i32 %242)
  %244 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %245 = load i64, i64* @REG_VDP_MATRIX, align 8
  %246 = add nsw i64 %245, 14
  %247 = load %struct.tda1997x_state*, %struct.tda1997x_state** %3, align 8
  %248 = getelementptr inbounds %struct.tda1997x_state, %struct.tda1997x_state* %247, i32 0, i32 1
  %249 = load %struct.TYPE_6__*, %struct.TYPE_6__** %248, align 8
  %250 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %249, i32 0, i32 7
  %251 = load i32, i32* %250, align 4
  %252 = call i32 @io_write16(%struct.v4l2_subdev* %244, i64 %246, i32 %251)
  %253 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %254 = load i64, i64* @REG_VDP_MATRIX, align 8
  %255 = add nsw i64 %254, 16
  %256 = load %struct.tda1997x_state*, %struct.tda1997x_state** %3, align 8
  %257 = getelementptr inbounds %struct.tda1997x_state, %struct.tda1997x_state* %256, i32 0, i32 1
  %258 = load %struct.TYPE_6__*, %struct.TYPE_6__** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %258, i32 0, i32 6
  %260 = load i32, i32* %259, align 4
  %261 = call i32 @io_write16(%struct.v4l2_subdev* %253, i64 %255, i32 %260)
  %262 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %263 = load i64, i64* @REG_VDP_MATRIX, align 8
  %264 = add nsw i64 %263, 18
  %265 = load %struct.tda1997x_state*, %struct.tda1997x_state** %3, align 8
  %266 = getelementptr inbounds %struct.tda1997x_state, %struct.tda1997x_state* %265, i32 0, i32 1
  %267 = load %struct.TYPE_6__*, %struct.TYPE_6__** %266, align 8
  %268 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %267, i32 0, i32 5
  %269 = load i32, i32* %268, align 4
  %270 = call i32 @io_write16(%struct.v4l2_subdev* %262, i64 %264, i32 %269)
  %271 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %272 = load i64, i64* @REG_VDP_MATRIX, align 8
  %273 = add nsw i64 %272, 20
  %274 = load %struct.tda1997x_state*, %struct.tda1997x_state** %3, align 8
  %275 = getelementptr inbounds %struct.tda1997x_state, %struct.tda1997x_state* %274, i32 0, i32 1
  %276 = load %struct.TYPE_6__*, %struct.TYPE_6__** %275, align 8
  %277 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %276, i32 0, i32 4
  %278 = load i32, i32* %277, align 4
  %279 = call i32 @io_write16(%struct.v4l2_subdev* %271, i64 %273, i32 %278)
  %280 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %281 = load i64, i64* @REG_VDP_MATRIX, align 8
  %282 = add nsw i64 %281, 22
  %283 = load %struct.tda1997x_state*, %struct.tda1997x_state** %3, align 8
  %284 = getelementptr inbounds %struct.tda1997x_state, %struct.tda1997x_state* %283, i32 0, i32 1
  %285 = load %struct.TYPE_6__*, %struct.TYPE_6__** %284, align 8
  %286 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %285, i32 0, i32 3
  %287 = load i32, i32* %286, align 4
  %288 = call i32 @io_write16(%struct.v4l2_subdev* %280, i64 %282, i32 %287)
  %289 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %290 = load i64, i64* @REG_VDP_MATRIX, align 8
  %291 = add nsw i64 %290, 24
  %292 = load %struct.tda1997x_state*, %struct.tda1997x_state** %3, align 8
  %293 = getelementptr inbounds %struct.tda1997x_state, %struct.tda1997x_state* %292, i32 0, i32 1
  %294 = load %struct.TYPE_6__*, %struct.TYPE_6__** %293, align 8
  %295 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %294, i32 0, i32 2
  %296 = load i32, i32* %295, align 4
  %297 = call i32 @io_write16(%struct.v4l2_subdev* %289, i64 %291, i32 %296)
  %298 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %299 = load i64, i64* @REG_VDP_MATRIX, align 8
  %300 = add nsw i64 %299, 26
  %301 = load %struct.tda1997x_state*, %struct.tda1997x_state** %3, align 8
  %302 = getelementptr inbounds %struct.tda1997x_state, %struct.tda1997x_state* %301, i32 0, i32 1
  %303 = load %struct.TYPE_6__*, %struct.TYPE_6__** %302, align 8
  %304 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %303, i32 0, i32 1
  %305 = load i32, i32* %304, align 4
  %306 = call i32 @io_write16(%struct.v4l2_subdev* %298, i64 %300, i32 %305)
  %307 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %308 = load i64, i64* @REG_VDP_MATRIX, align 8
  %309 = add nsw i64 %308, 28
  %310 = load %struct.tda1997x_state*, %struct.tda1997x_state** %3, align 8
  %311 = getelementptr inbounds %struct.tda1997x_state, %struct.tda1997x_state* %310, i32 0, i32 1
  %312 = load %struct.TYPE_6__*, %struct.TYPE_6__** %311, align 8
  %313 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 4
  %315 = call i32 @io_write16(%struct.v4l2_subdev* %307, i64 %309, i32 %314)
  br label %327

316:                                              ; preds = %154
  %317 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %318 = load i32, i32* @REG_VDP_CTRL, align 4
  %319 = call i32 @io_read(%struct.v4l2_subdev* %317, i32 %318)
  store i32 %319, i32* %7, align 4
  %320 = load i32, i32* @VDP_CTRL_MATRIX_BP, align 4
  %321 = load i32, i32* %7, align 4
  %322 = or i32 %321, %320
  store i32 %322, i32* %7, align 4
  %323 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %324 = load i32, i32* @REG_VDP_CTRL, align 4
  %325 = load i32, i32* %7, align 4
  %326 = call i32 @io_write(%struct.v4l2_subdev* %323, i32 %324, i32 %325)
  br label %327

327:                                              ; preds = %316, %159
  %328 = load %struct.blanking_codes*, %struct.blanking_codes** %6, align 8
  %329 = icmp ne %struct.blanking_codes* %328, null
  br i1 %329, label %330, label %349

330:                                              ; preds = %327
  %331 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %332 = load i64, i64* @REG_BLK_GY, align 8
  %333 = load %struct.blanking_codes*, %struct.blanking_codes** %6, align 8
  %334 = getelementptr inbounds %struct.blanking_codes, %struct.blanking_codes* %333, i32 0, i32 0
  %335 = load i32, i32* %334, align 4
  %336 = call i32 @io_write16(%struct.v4l2_subdev* %331, i64 %332, i32 %335)
  %337 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %338 = load i64, i64* @REG_BLK_BU, align 8
  %339 = load %struct.blanking_codes*, %struct.blanking_codes** %6, align 8
  %340 = getelementptr inbounds %struct.blanking_codes, %struct.blanking_codes* %339, i32 0, i32 1
  %341 = load i32, i32* %340, align 4
  %342 = call i32 @io_write16(%struct.v4l2_subdev* %337, i64 %338, i32 %341)
  %343 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %344 = load i64, i64* @REG_BLK_RV, align 8
  %345 = load %struct.blanking_codes*, %struct.blanking_codes** %6, align 8
  %346 = getelementptr inbounds %struct.blanking_codes, %struct.blanking_codes* %345, i32 0, i32 2
  %347 = load i32, i32* %346, align 4
  %348 = call i32 @io_write16(%struct.v4l2_subdev* %343, i64 %344, i32 %347)
  br label %349

349:                                              ; preds = %330, %327
  ret void
}

declare dso_local %struct.tda1997x_state* @to_state(%struct.v4l2_subdev*) #1

declare dso_local i32 @v4l_dbg(i32, i32, i32, i8*, i32, ...) #1

declare dso_local i32 @io_read(%struct.v4l2_subdev*, i32) #1

declare dso_local i32 @io_write(%struct.v4l2_subdev*, i32, i32) #1

declare dso_local i32 @io_write16(%struct.v4l2_subdev*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
