; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-dv-timings.c_v4l2_hdmi_rx_colorimetry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-dv-timings.c_v4l2_hdmi_rx_colorimetry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_hdmi_colorimetry = type { i8*, i8*, i8*, i8*, i8*, i32, i32, i8* }
%struct.hdmi_avi_infoframe = type { i32, i32, i32, i32, i32 }
%struct.hdmi_vendor_infoframe = type { i64 }

@V4L2_COLORSPACE_SRGB = common dso_local global i8* null, align 8
@V4L2_YCBCR_ENC_DEFAULT = common dso_local global i32 0, align 4
@V4L2_QUANTIZATION_FULL_RANGE = common dso_local global i32 0, align 4
@V4L2_XFER_FUNC_SRGB = common dso_local global i8* null, align 8
@V4L2_COLORSPACE_OPRGB = common dso_local global i8* null, align 8
@V4L2_XFER_FUNC_OPRGB = common dso_local global i8* null, align 8
@V4L2_COLORSPACE_BT2020 = common dso_local global i8* null, align 8
@V4L2_XFER_FUNC_709 = common dso_local global i8* null, align 8
@V4L2_QUANTIZATION_LIM_RANGE = common dso_local global i8* null, align 8
@V4L2_COLORSPACE_SMPTE170M = common dso_local global i8* null, align 8
@V4L2_YCBCR_ENC_601 = common dso_local global i8* null, align 8
@V4L2_COLORSPACE_REC709 = common dso_local global i8* null, align 8
@V4L2_YCBCR_ENC_709 = common dso_local global i8* null, align 8
@V4L2_YCBCR_ENC_XV709 = common dso_local global i8* null, align 8
@V4L2_YCBCR_ENC_XV601 = common dso_local global i8* null, align 8
@V4L2_YCBCR_ENC_BT2020 = common dso_local global i8* null, align 8
@V4L2_YCBCR_ENC_BT2020_CONST_LUM = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @v4l2_hdmi_rx_colorimetry(%struct.v4l2_hdmi_colorimetry* noalias sret %0, %struct.hdmi_avi_infoframe* %1, %struct.hdmi_vendor_infoframe* %2, i32 %3) #0 {
  %5 = alloca %struct.hdmi_avi_infoframe*, align 8
  %6 = alloca %struct.hdmi_vendor_infoframe*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.hdmi_avi_infoframe* %1, %struct.hdmi_avi_infoframe** %5, align 8
  store %struct.hdmi_vendor_infoframe* %2, %struct.hdmi_vendor_infoframe** %6, align 8
  store i32 %3, i32* %7, align 4
  %11 = getelementptr inbounds %struct.v4l2_hdmi_colorimetry, %struct.v4l2_hdmi_colorimetry* %0, i32 0, i32 0
  %12 = load i8*, i8** @V4L2_COLORSPACE_SRGB, align 8
  store i8* %12, i8** %11, align 8
  %13 = getelementptr inbounds %struct.v4l2_hdmi_colorimetry, %struct.v4l2_hdmi_colorimetry* %0, i32 0, i32 1
  %14 = load i32, i32* @V4L2_YCBCR_ENC_DEFAULT, align 4
  %15 = sext i32 %14 to i64
  %16 = inttoptr i64 %15 to i8*
  store i8* %16, i8** %13, align 8
  %17 = getelementptr inbounds %struct.v4l2_hdmi_colorimetry, %struct.v4l2_hdmi_colorimetry* %0, i32 0, i32 2
  %18 = load i32, i32* @V4L2_QUANTIZATION_FULL_RANGE, align 4
  %19 = sext i32 %18 to i64
  %20 = inttoptr i64 %19 to i8*
  store i8* %20, i8** %17, align 8
  %21 = getelementptr inbounds %struct.v4l2_hdmi_colorimetry, %struct.v4l2_hdmi_colorimetry* %0, i32 0, i32 3
  %22 = load i8*, i8** @V4L2_XFER_FUNC_SRGB, align 8
  store i8* %22, i8** %21, align 8
  %23 = getelementptr inbounds %struct.v4l2_hdmi_colorimetry, %struct.v4l2_hdmi_colorimetry* %0, i32 0, i32 4
  store i8* null, i8** %23, align 8
  %24 = getelementptr inbounds %struct.v4l2_hdmi_colorimetry, %struct.v4l2_hdmi_colorimetry* %0, i32 0, i32 5
  store i32 0, i32* %24, align 8
  %25 = getelementptr inbounds %struct.v4l2_hdmi_colorimetry, %struct.v4l2_hdmi_colorimetry* %0, i32 0, i32 6
  store i32 0, i32* %25, align 4
  %26 = getelementptr inbounds %struct.v4l2_hdmi_colorimetry, %struct.v4l2_hdmi_colorimetry* %0, i32 0, i32 7
  store i8* null, i8** %26, align 8
  %27 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %5, align 8
  %28 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %41, label %31

31:                                               ; preds = %4
  %32 = load %struct.hdmi_vendor_infoframe*, %struct.hdmi_vendor_infoframe** %6, align 8
  %33 = icmp ne %struct.hdmi_vendor_infoframe* %32, null
  br i1 %33, label %34, label %39

34:                                               ; preds = %31
  %35 = load %struct.hdmi_vendor_infoframe*, %struct.hdmi_vendor_infoframe** %6, align 8
  %36 = getelementptr inbounds %struct.hdmi_vendor_infoframe, %struct.hdmi_vendor_infoframe* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br label %39

39:                                               ; preds = %34, %31
  %40 = phi i1 [ false, %31 ], [ %38, %34 ]
  br label %41

41:                                               ; preds = %39, %4
  %42 = phi i1 [ true, %4 ], [ %40, %39 ]
  %43 = zext i1 %42 to i32
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp ule i32 %44, 576
  %46 = zext i1 %45 to i32
  store i32 %46, i32* %9, align 4
  %47 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %5, align 8
  %48 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp sgt i32 %49, 1
  %51 = zext i1 %50 to i32
  store i32 %51, i32* %10, align 4
  %52 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %5, align 8
  %53 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  switch i32 %54, label %92 [
    i32 137, label %55
  ]

55:                                               ; preds = %41
  %56 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %5, align 8
  %57 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  switch i32 %58, label %75 [
    i32 141, label %59
  ]

59:                                               ; preds = %55
  %60 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %5, align 8
  %61 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  switch i32 %62, label %73 [
    i32 134, label %63
    i32 136, label %68
  ]

63:                                               ; preds = %59
  %64 = load i8*, i8** @V4L2_COLORSPACE_OPRGB, align 8
  %65 = getelementptr inbounds %struct.v4l2_hdmi_colorimetry, %struct.v4l2_hdmi_colorimetry* %0, i32 0, i32 2
  store i8* %64, i8** %65, align 8
  %66 = load i8*, i8** @V4L2_XFER_FUNC_OPRGB, align 8
  %67 = getelementptr inbounds %struct.v4l2_hdmi_colorimetry, %struct.v4l2_hdmi_colorimetry* %0, i32 0, i32 0
  store i8* %66, i8** %67, align 8
  br label %74

68:                                               ; preds = %59
  %69 = load i8*, i8** @V4L2_COLORSPACE_BT2020, align 8
  %70 = getelementptr inbounds %struct.v4l2_hdmi_colorimetry, %struct.v4l2_hdmi_colorimetry* %0, i32 0, i32 2
  store i8* %69, i8** %70, align 8
  %71 = load i8*, i8** @V4L2_XFER_FUNC_709, align 8
  %72 = getelementptr inbounds %struct.v4l2_hdmi_colorimetry, %struct.v4l2_hdmi_colorimetry* %0, i32 0, i32 0
  store i8* %71, i8** %72, align 8
  br label %74

73:                                               ; preds = %59
  br label %74

74:                                               ; preds = %73, %68, %63
  br label %76

75:                                               ; preds = %55
  br label %76

76:                                               ; preds = %75, %74
  %77 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %5, align 8
  %78 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 4
  switch i32 %79, label %84 [
    i32 128, label %80
    i32 129, label %83
  ]

80:                                               ; preds = %76
  %81 = load i8*, i8** @V4L2_QUANTIZATION_LIM_RANGE, align 8
  %82 = getelementptr inbounds %struct.v4l2_hdmi_colorimetry, %struct.v4l2_hdmi_colorimetry* %0, i32 0, i32 3
  store i8* %81, i8** %82, align 8
  br label %91

83:                                               ; preds = %76
  br label %91

84:                                               ; preds = %76
  %85 = load i32, i32* %10, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %84
  %88 = load i8*, i8** @V4L2_QUANTIZATION_LIM_RANGE, align 8
  %89 = getelementptr inbounds %struct.v4l2_hdmi_colorimetry, %struct.v4l2_hdmi_colorimetry* %0, i32 0, i32 3
  store i8* %88, i8** %89, align 8
  br label %90

90:                                               ; preds = %87, %84
  br label %91

91:                                               ; preds = %90, %83, %80
  br label %188

92:                                               ; preds = %41
  %93 = load i8*, i8** @V4L2_QUANTIZATION_LIM_RANGE, align 8
  %94 = getelementptr inbounds %struct.v4l2_hdmi_colorimetry, %struct.v4l2_hdmi_colorimetry* %0, i32 0, i32 3
  store i8* %93, i8** %94, align 8
  %95 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %5, align 8
  %96 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  switch i32 %97, label %186 [
    i32 138, label %98
    i32 140, label %118
    i32 139, label %125
    i32 141, label %132
  ]

98:                                               ; preds = %92
  %99 = load i32, i32* %8, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %98
  br label %187

102:                                              ; preds = %98
  %103 = load i32, i32* %9, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %102
  %106 = load i8*, i8** @V4L2_COLORSPACE_SMPTE170M, align 8
  %107 = getelementptr inbounds %struct.v4l2_hdmi_colorimetry, %struct.v4l2_hdmi_colorimetry* %0, i32 0, i32 2
  store i8* %106, i8** %107, align 8
  %108 = load i8*, i8** @V4L2_YCBCR_ENC_601, align 8
  %109 = getelementptr inbounds %struct.v4l2_hdmi_colorimetry, %struct.v4l2_hdmi_colorimetry* %0, i32 0, i32 1
  store i8* %108, i8** %109, align 8
  br label %115

110:                                              ; preds = %102
  %111 = load i8*, i8** @V4L2_COLORSPACE_REC709, align 8
  %112 = getelementptr inbounds %struct.v4l2_hdmi_colorimetry, %struct.v4l2_hdmi_colorimetry* %0, i32 0, i32 2
  store i8* %111, i8** %112, align 8
  %113 = load i8*, i8** @V4L2_YCBCR_ENC_709, align 8
  %114 = getelementptr inbounds %struct.v4l2_hdmi_colorimetry, %struct.v4l2_hdmi_colorimetry* %0, i32 0, i32 1
  store i8* %113, i8** %114, align 8
  br label %115

115:                                              ; preds = %110, %105
  %116 = load i8*, i8** @V4L2_XFER_FUNC_709, align 8
  %117 = getelementptr inbounds %struct.v4l2_hdmi_colorimetry, %struct.v4l2_hdmi_colorimetry* %0, i32 0, i32 0
  store i8* %116, i8** %117, align 8
  br label %187

118:                                              ; preds = %92
  %119 = load i8*, i8** @V4L2_COLORSPACE_SMPTE170M, align 8
  %120 = getelementptr inbounds %struct.v4l2_hdmi_colorimetry, %struct.v4l2_hdmi_colorimetry* %0, i32 0, i32 2
  store i8* %119, i8** %120, align 8
  %121 = load i8*, i8** @V4L2_YCBCR_ENC_601, align 8
  %122 = getelementptr inbounds %struct.v4l2_hdmi_colorimetry, %struct.v4l2_hdmi_colorimetry* %0, i32 0, i32 1
  store i8* %121, i8** %122, align 8
  %123 = load i8*, i8** @V4L2_XFER_FUNC_709, align 8
  %124 = getelementptr inbounds %struct.v4l2_hdmi_colorimetry, %struct.v4l2_hdmi_colorimetry* %0, i32 0, i32 0
  store i8* %123, i8** %124, align 8
  br label %187

125:                                              ; preds = %92
  %126 = load i8*, i8** @V4L2_COLORSPACE_REC709, align 8
  %127 = getelementptr inbounds %struct.v4l2_hdmi_colorimetry, %struct.v4l2_hdmi_colorimetry* %0, i32 0, i32 2
  store i8* %126, i8** %127, align 8
  %128 = load i8*, i8** @V4L2_YCBCR_ENC_709, align 8
  %129 = getelementptr inbounds %struct.v4l2_hdmi_colorimetry, %struct.v4l2_hdmi_colorimetry* %0, i32 0, i32 1
  store i8* %128, i8** %129, align 8
  %130 = load i8*, i8** @V4L2_XFER_FUNC_709, align 8
  %131 = getelementptr inbounds %struct.v4l2_hdmi_colorimetry, %struct.v4l2_hdmi_colorimetry* %0, i32 0, i32 0
  store i8* %130, i8** %131, align 8
  br label %187

132:                                              ; preds = %92
  %133 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %5, align 8
  %134 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  switch i32 %135, label %178 [
    i32 131, label %136
    i32 130, label %143
    i32 132, label %150
    i32 133, label %157
    i32 136, label %164
    i32 135, label %171
  ]

136:                                              ; preds = %132
  %137 = load i8*, i8** @V4L2_COLORSPACE_REC709, align 8
  %138 = getelementptr inbounds %struct.v4l2_hdmi_colorimetry, %struct.v4l2_hdmi_colorimetry* %0, i32 0, i32 2
  store i8* %137, i8** %138, align 8
  %139 = load i8*, i8** @V4L2_YCBCR_ENC_XV709, align 8
  %140 = getelementptr inbounds %struct.v4l2_hdmi_colorimetry, %struct.v4l2_hdmi_colorimetry* %0, i32 0, i32 1
  store i8* %139, i8** %140, align 8
  %141 = load i8*, i8** @V4L2_XFER_FUNC_709, align 8
  %142 = getelementptr inbounds %struct.v4l2_hdmi_colorimetry, %struct.v4l2_hdmi_colorimetry* %0, i32 0, i32 0
  store i8* %141, i8** %142, align 8
  br label %185

143:                                              ; preds = %132
  %144 = load i8*, i8** @V4L2_COLORSPACE_REC709, align 8
  %145 = getelementptr inbounds %struct.v4l2_hdmi_colorimetry, %struct.v4l2_hdmi_colorimetry* %0, i32 0, i32 2
  store i8* %144, i8** %145, align 8
  %146 = load i8*, i8** @V4L2_YCBCR_ENC_XV601, align 8
  %147 = getelementptr inbounds %struct.v4l2_hdmi_colorimetry, %struct.v4l2_hdmi_colorimetry* %0, i32 0, i32 1
  store i8* %146, i8** %147, align 8
  %148 = load i8*, i8** @V4L2_XFER_FUNC_709, align 8
  %149 = getelementptr inbounds %struct.v4l2_hdmi_colorimetry, %struct.v4l2_hdmi_colorimetry* %0, i32 0, i32 0
  store i8* %148, i8** %149, align 8
  br label %185

150:                                              ; preds = %132
  %151 = load i8*, i8** @V4L2_COLORSPACE_SRGB, align 8
  %152 = getelementptr inbounds %struct.v4l2_hdmi_colorimetry, %struct.v4l2_hdmi_colorimetry* %0, i32 0, i32 2
  store i8* %151, i8** %152, align 8
  %153 = load i8*, i8** @V4L2_YCBCR_ENC_601, align 8
  %154 = getelementptr inbounds %struct.v4l2_hdmi_colorimetry, %struct.v4l2_hdmi_colorimetry* %0, i32 0, i32 1
  store i8* %153, i8** %154, align 8
  %155 = load i8*, i8** @V4L2_XFER_FUNC_SRGB, align 8
  %156 = getelementptr inbounds %struct.v4l2_hdmi_colorimetry, %struct.v4l2_hdmi_colorimetry* %0, i32 0, i32 0
  store i8* %155, i8** %156, align 8
  br label %185

157:                                              ; preds = %132
  %158 = load i8*, i8** @V4L2_COLORSPACE_OPRGB, align 8
  %159 = getelementptr inbounds %struct.v4l2_hdmi_colorimetry, %struct.v4l2_hdmi_colorimetry* %0, i32 0, i32 2
  store i8* %158, i8** %159, align 8
  %160 = load i8*, i8** @V4L2_YCBCR_ENC_601, align 8
  %161 = getelementptr inbounds %struct.v4l2_hdmi_colorimetry, %struct.v4l2_hdmi_colorimetry* %0, i32 0, i32 1
  store i8* %160, i8** %161, align 8
  %162 = load i8*, i8** @V4L2_XFER_FUNC_OPRGB, align 8
  %163 = getelementptr inbounds %struct.v4l2_hdmi_colorimetry, %struct.v4l2_hdmi_colorimetry* %0, i32 0, i32 0
  store i8* %162, i8** %163, align 8
  br label %185

164:                                              ; preds = %132
  %165 = load i8*, i8** @V4L2_COLORSPACE_BT2020, align 8
  %166 = getelementptr inbounds %struct.v4l2_hdmi_colorimetry, %struct.v4l2_hdmi_colorimetry* %0, i32 0, i32 2
  store i8* %165, i8** %166, align 8
  %167 = load i8*, i8** @V4L2_YCBCR_ENC_BT2020, align 8
  %168 = getelementptr inbounds %struct.v4l2_hdmi_colorimetry, %struct.v4l2_hdmi_colorimetry* %0, i32 0, i32 1
  store i8* %167, i8** %168, align 8
  %169 = load i8*, i8** @V4L2_XFER_FUNC_709, align 8
  %170 = getelementptr inbounds %struct.v4l2_hdmi_colorimetry, %struct.v4l2_hdmi_colorimetry* %0, i32 0, i32 0
  store i8* %169, i8** %170, align 8
  br label %185

171:                                              ; preds = %132
  %172 = load i8*, i8** @V4L2_COLORSPACE_BT2020, align 8
  %173 = getelementptr inbounds %struct.v4l2_hdmi_colorimetry, %struct.v4l2_hdmi_colorimetry* %0, i32 0, i32 2
  store i8* %172, i8** %173, align 8
  %174 = load i8*, i8** @V4L2_YCBCR_ENC_BT2020_CONST_LUM, align 8
  %175 = getelementptr inbounds %struct.v4l2_hdmi_colorimetry, %struct.v4l2_hdmi_colorimetry* %0, i32 0, i32 1
  store i8* %174, i8** %175, align 8
  %176 = load i8*, i8** @V4L2_XFER_FUNC_709, align 8
  %177 = getelementptr inbounds %struct.v4l2_hdmi_colorimetry, %struct.v4l2_hdmi_colorimetry* %0, i32 0, i32 0
  store i8* %176, i8** %177, align 8
  br label %185

178:                                              ; preds = %132
  %179 = load i8*, i8** @V4L2_COLORSPACE_REC709, align 8
  %180 = getelementptr inbounds %struct.v4l2_hdmi_colorimetry, %struct.v4l2_hdmi_colorimetry* %0, i32 0, i32 2
  store i8* %179, i8** %180, align 8
  %181 = load i8*, i8** @V4L2_YCBCR_ENC_709, align 8
  %182 = getelementptr inbounds %struct.v4l2_hdmi_colorimetry, %struct.v4l2_hdmi_colorimetry* %0, i32 0, i32 1
  store i8* %181, i8** %182, align 8
  %183 = load i8*, i8** @V4L2_XFER_FUNC_709, align 8
  %184 = getelementptr inbounds %struct.v4l2_hdmi_colorimetry, %struct.v4l2_hdmi_colorimetry* %0, i32 0, i32 0
  store i8* %183, i8** %184, align 8
  br label %185

185:                                              ; preds = %178, %171, %164, %157, %150, %143, %136
  br label %187

186:                                              ; preds = %92
  br label %187

187:                                              ; preds = %186, %185, %125, %118, %115, %101
  br label %188

188:                                              ; preds = %187, %91
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
