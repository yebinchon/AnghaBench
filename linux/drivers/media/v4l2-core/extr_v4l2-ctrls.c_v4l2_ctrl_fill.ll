; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-ctrls.c_v4l2_ctrl_fill.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-ctrls.c_v4l2_ctrl_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@V4L2_CTRL_TYPE_BOOLEAN = common dso_local global i32 0, align 4
@V4L2_CTRL_TYPE_INTEGER = common dso_local global i32 0, align 4
@V4L2_CTRL_FLAG_MODIFY_LAYOUT = common dso_local global i32 0, align 4
@V4L2_CTRL_TYPE_BUTTON = common dso_local global i32 0, align 4
@V4L2_CTRL_FLAG_WRITE_ONLY = common dso_local global i32 0, align 4
@V4L2_CTRL_FLAG_EXECUTE_ON_WRITE = common dso_local global i32 0, align 4
@V4L2_CTRL_TYPE_MENU = common dso_local global i32 0, align 4
@V4L2_CTRL_TYPE_INTEGER_MENU = common dso_local global i32 0, align 4
@V4L2_CTRL_TYPE_STRING = common dso_local global i32 0, align 4
@V4L2_CTRL_TYPE_CTRL_CLASS = common dso_local global i32 0, align 4
@V4L2_CTRL_FLAG_READ_ONLY = common dso_local global i32 0, align 4
@V4L2_CTRL_TYPE_BITMASK = common dso_local global i32 0, align 4
@V4L2_CTRL_TYPE_INTEGER64 = common dso_local global i32 0, align 4
@V4L2_CTRL_FLAG_VOLATILE = common dso_local global i32 0, align 4
@V4L2_CTRL_TYPE_U8 = common dso_local global i32 0, align 4
@V4L2_CTRL_TYPE_U16 = common dso_local global i32 0, align 4
@V4L2_CTRL_TYPE_U32 = common dso_local global i32 0, align 4
@V4L2_CTRL_TYPE_MPEG2_SLICE_PARAMS = common dso_local global i32 0, align 4
@V4L2_CTRL_TYPE_MPEG2_QUANTIZATION = common dso_local global i32 0, align 4
@V4L2_CTRL_TYPE_FWHT_PARAMS = common dso_local global i32 0, align 4
@V4L2_CTRL_TYPE_H264_SPS = common dso_local global i32 0, align 4
@V4L2_CTRL_TYPE_H264_PPS = common dso_local global i32 0, align 4
@V4L2_CTRL_TYPE_H264_SCALING_MATRIX = common dso_local global i32 0, align 4
@V4L2_CTRL_TYPE_H264_SLICE_PARAMS = common dso_local global i32 0, align 4
@V4L2_CTRL_TYPE_H264_DECODE_PARAMS = common dso_local global i32 0, align 4
@V4L2_CTRL_TYPE_VP8_FRAME_HEADER = common dso_local global i32 0, align 4
@V4L2_CTRL_FLAG_UPDATE = common dso_local global i32 0, align 4
@V4L2_CTRL_FLAG_SLIDER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @v4l2_ctrl_fill(i32 %0, i8** %1, i32* %2, i32* %3, i32* %4, i32* %5, i32* %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  store i32 %0, i32* %9, align 4
  store i8** %1, i8*** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  store i32* %7, i32** %16, align 8
  %17 = load i32, i32* %9, align 4
  %18 = call i8* @v4l2_ctrl_get_name(i32 %17)
  %19 = load i8**, i8*** %10, align 8
  store i8* %18, i8** %19, align 8
  %20 = load i32*, i32** %16, align 8
  store i32 0, i32* %20, align 4
  %21 = load i32, i32* %9, align 4
  switch i32 %21, label %161 [
    i32 325, label %22
    i32 326, label %22
    i32 314, label %22
    i32 321, label %22
    i32 270, label %22
    i32 130, label %22
    i32 268, label %22
    i32 309, label %22
    i32 306, label %22
    i32 322, label %22
    i32 242, label %22
    i32 192, label %22
    i32 226, label %22
    i32 189, label %22
    i32 286, label %22
    i32 273, label %22
    i32 174, label %22
    i32 328, label %22
    i32 333, label %22
    i32 178, label %22
    i32 267, label %22
    i32 266, label %22
    i32 277, label %22
    i32 284, label %22
    i32 280, label %22
    i32 234, label %22
    i32 233, label %22
    i32 228, label %22
    i32 201, label %22
    i32 225, label %22
    i32 211, label %22
    i32 194, label %22
    i32 188, label %22
    i32 129, label %22
    i32 263, label %22
    i32 173, label %22
    i32 147, label %22
    i32 145, label %22
    i32 149, label %22
    i32 152, label %22
    i32 144, label %22
    i32 160, label %22
    i32 164, label %22
    i32 163, label %22
    i32 161, label %22
    i32 156, label %22
    i32 155, label %22
    i32 159, label %22
    i32 165, label %22
    i32 168, label %22
    i32 167, label %22
    i32 172, label %22
    i32 142, label %28
    i32 191, label %35
    i32 190, label %35
    i32 229, label %38
    i32 180, label %38
    i32 136, label %38
    i32 279, label %38
    i32 276, label %38
    i32 318, label %38
    i32 316, label %38
    i32 298, label %38
    i32 175, label %51
    i32 241, label %51
    i32 248, label %51
    i32 247, label %51
    i32 246, label %51
    i32 245, label %51
    i32 253, label %51
    i32 244, label %51
    i32 243, label %51
    i32 249, label %51
    i32 252, label %51
    i32 250, label %51
    i32 251, label %51
    i32 230, label %51
    i32 237, label %51
    i32 236, label %51
    i32 239, label %51
    i32 238, label %51
    i32 287, label %51
    i32 319, label %51
    i32 307, label %51
    i32 315, label %51
    i32 132, label %51
    i32 281, label %51
    i32 278, label %51
    i32 209, label %51
    i32 193, label %51
    i32 222, label %51
    i32 220, label %51
    i32 219, label %51
    i32 217, label %51
    i32 210, label %51
    i32 215, label %51
    i32 221, label %51
    i32 224, label %51
    i32 212, label %51
    i32 200, label %51
    i32 199, label %51
    i32 196, label %51
    i32 195, label %51
    i32 258, label %51
    i32 260, label %51
    i32 285, label %51
    i32 140, label %51
    i32 290, label %51
    i32 289, label %51
    i32 291, label %51
    i32 294, label %51
    i32 296, label %51
    i32 138, label %51
    i32 304, label %51
    i32 134, label %51
    i32 184, label %51
    i32 186, label %51
    i32 185, label %51
    i32 301, label %51
    i32 205, label %51
    i32 207, label %51
    i32 208, label %51
    i32 204, label %51
    i32 203, label %51
    i32 202, label %51
    i32 206, label %51
    i32 256, label %54
    i32 158, label %57
    i32 157, label %57
    i32 171, label %57
    i32 169, label %57
    i32 261, label %60
    i32 320, label %60
    i32 183, label %60
    i32 182, label %60
    i32 131, label %63
    i32 310, label %63
    i32 240, label %63
    i32 274, label %63
    i32 283, label %63
    i32 257, label %63
    i32 264, label %63
    i32 265, label %63
    i32 297, label %63
    i32 275, label %63
    i32 151, label %63
    i32 303, label %63
    i32 313, label %76
    i32 282, label %82
    i32 259, label %82
    i32 337, label %82
    i32 317, label %82
    i32 292, label %82
    i32 288, label %82
    i32 293, label %82
    i32 295, label %82
    i32 255, label %85
    i32 254, label %85
    i32 231, label %92
    i32 232, label %105
    i32 176, label %118
    i32 300, label %125
    i32 299, label %128
    i32 166, label %131
    i32 197, label %134
    i32 198, label %137
    i32 227, label %140
    i32 213, label %143
    i32 218, label %146
    i32 216, label %149
    i32 214, label %152
    i32 223, label %155
    i32 187, label %158
  ]

22:                                               ; preds = %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8
  %23 = load i32, i32* @V4L2_CTRL_TYPE_BOOLEAN, align 4
  %24 = load i32*, i32** %11, align 8
  store i32 %23, i32* %24, align 4
  %25 = load i32*, i32** %12, align 8
  store i32 0, i32* %25, align 4
  %26 = load i32*, i32** %14, align 8
  store i32 1, i32* %26, align 4
  %27 = load i32*, i32** %13, align 8
  store i32 1, i32* %27, align 4
  br label %164

28:                                               ; preds = %8
  %29 = load i32, i32* @V4L2_CTRL_TYPE_INTEGER, align 4
  %30 = load i32*, i32** %11, align 8
  store i32 %29, i32* %30, align 4
  %31 = load i32, i32* @V4L2_CTRL_FLAG_MODIFY_LAYOUT, align 4
  %32 = load i32*, i32** %16, align 8
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %33, %31
  store i32 %34, i32* %32, align 4
  br label %164

35:                                               ; preds = %8, %8
  %36 = load i32, i32* @V4L2_CTRL_TYPE_INTEGER, align 4
  %37 = load i32*, i32** %11, align 8
  store i32 %36, i32* %37, align 4
  br label %164

38:                                               ; preds = %8, %8, %8, %8, %8, %8, %8, %8
  %39 = load i32, i32* @V4L2_CTRL_TYPE_BUTTON, align 4
  %40 = load i32*, i32** %11, align 8
  store i32 %39, i32* %40, align 4
  %41 = load i32, i32* @V4L2_CTRL_FLAG_WRITE_ONLY, align 4
  %42 = load i32, i32* @V4L2_CTRL_FLAG_EXECUTE_ON_WRITE, align 4
  %43 = or i32 %41, %42
  %44 = load i32*, i32** %16, align 8
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %45, %43
  store i32 %46, i32* %44, align 4
  %47 = load i32*, i32** %15, align 8
  store i32 0, i32* %47, align 4
  %48 = load i32*, i32** %14, align 8
  store i32 0, i32* %48, align 4
  %49 = load i32*, i32** %13, align 8
  store i32 0, i32* %49, align 4
  %50 = load i32*, i32** %12, align 8
  store i32 0, i32* %50, align 4
  br label %164

51:                                               ; preds = %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8
  %52 = load i32, i32* @V4L2_CTRL_TYPE_MENU, align 4
  %53 = load i32*, i32** %11, align 8
  store i32 %52, i32* %53, align 4
  br label %164

54:                                               ; preds = %8
  %55 = load i32, i32* @V4L2_CTRL_TYPE_INTEGER_MENU, align 4
  %56 = load i32*, i32** %11, align 8
  store i32 %55, i32* %56, align 4
  br label %164

57:                                               ; preds = %8, %8, %8, %8
  %58 = load i32, i32* @V4L2_CTRL_TYPE_STRING, align 4
  %59 = load i32*, i32** %11, align 8
  store i32 %58, i32* %59, align 4
  br label %164

60:                                               ; preds = %8, %8, %8, %8
  %61 = load i32, i32* @V4L2_CTRL_TYPE_INTEGER_MENU, align 4
  %62 = load i32*, i32** %11, align 8
  store i32 %61, i32* %62, align 4
  br label %164

63:                                               ; preds = %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8
  %64 = load i32, i32* @V4L2_CTRL_TYPE_CTRL_CLASS, align 4
  %65 = load i32*, i32** %11, align 8
  store i32 %64, i32* %65, align 4
  %66 = load i32, i32* @V4L2_CTRL_FLAG_READ_ONLY, align 4
  %67 = load i32, i32* @V4L2_CTRL_FLAG_WRITE_ONLY, align 4
  %68 = or i32 %66, %67
  %69 = load i32*, i32** %16, align 8
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %70, %68
  store i32 %71, i32* %69, align 4
  %72 = load i32*, i32** %15, align 8
  store i32 0, i32* %72, align 4
  %73 = load i32*, i32** %14, align 8
  store i32 0, i32* %73, align 4
  %74 = load i32*, i32** %13, align 8
  store i32 0, i32* %74, align 4
  %75 = load i32*, i32** %12, align 8
  store i32 0, i32* %75, align 4
  br label %164

76:                                               ; preds = %8
  %77 = load i32, i32* @V4L2_CTRL_TYPE_INTEGER, align 4
  %78 = load i32*, i32** %11, align 8
  store i32 %77, i32* %78, align 4
  %79 = load i32*, i32** %14, align 8
  store i32 1, i32* %79, align 4
  %80 = load i32*, i32** %12, align 8
  store i32 0, i32* %80, align 4
  %81 = load i32*, i32** %13, align 8
  store i32 16777215, i32* %81, align 4
  br label %164

82:                                               ; preds = %8, %8, %8, %8, %8, %8, %8, %8
  %83 = load i32, i32* @V4L2_CTRL_TYPE_BITMASK, align 4
  %84 = load i32*, i32** %11, align 8
  store i32 %83, i32* %84, align 4
  br label %164

85:                                               ; preds = %8, %8
  %86 = load i32, i32* @V4L2_CTRL_TYPE_INTEGER, align 4
  %87 = load i32*, i32** %11, align 8
  store i32 %86, i32* %87, align 4
  %88 = load i32, i32* @V4L2_CTRL_FLAG_READ_ONLY, align 4
  %89 = load i32*, i32** %16, align 8
  %90 = load i32, i32* %89, align 4
  %91 = or i32 %90, %88
  store i32 %91, i32* %89, align 4
  br label %164

92:                                               ; preds = %8
  %93 = load i32, i32* @V4L2_CTRL_TYPE_INTEGER64, align 4
  %94 = load i32*, i32** %11, align 8
  store i32 %93, i32* %94, align 4
  %95 = load i32, i32* @V4L2_CTRL_FLAG_VOLATILE, align 4
  %96 = load i32, i32* @V4L2_CTRL_FLAG_READ_ONLY, align 4
  %97 = or i32 %95, %96
  %98 = load i32*, i32** %16, align 8
  %99 = load i32, i32* %98, align 4
  %100 = or i32 %99, %97
  store i32 %100, i32* %98, align 4
  %101 = load i32*, i32** %15, align 8
  store i32 0, i32* %101, align 4
  %102 = load i32*, i32** %12, align 8
  store i32 0, i32* %102, align 4
  %103 = load i32*, i32** %13, align 8
  store i32 -1, i32* %103, align 4
  %104 = load i32*, i32** %14, align 8
  store i32 1, i32* %104, align 4
  br label %164

105:                                              ; preds = %8
  %106 = load i32, i32* @V4L2_CTRL_TYPE_INTEGER64, align 4
  %107 = load i32*, i32** %11, align 8
  store i32 %106, i32* %107, align 4
  %108 = load i32, i32* @V4L2_CTRL_FLAG_VOLATILE, align 4
  %109 = load i32, i32* @V4L2_CTRL_FLAG_READ_ONLY, align 4
  %110 = or i32 %108, %109
  %111 = load i32*, i32** %16, align 8
  %112 = load i32, i32* %111, align 4
  %113 = or i32 %112, %110
  store i32 %113, i32* %111, align 4
  %114 = load i32*, i32** %15, align 8
  store i32 0, i32* %114, align 4
  %115 = load i32*, i32** %12, align 8
  store i32 0, i32* %115, align 4
  %116 = load i32*, i32** %13, align 8
  store i32 -1, i32* %116, align 4
  %117 = load i32*, i32** %14, align 8
  store i32 1, i32* %117, align 4
  br label %164

118:                                              ; preds = %8
  %119 = load i32, i32* @V4L2_CTRL_TYPE_INTEGER64, align 4
  %120 = load i32*, i32** %11, align 8
  store i32 %119, i32* %120, align 4
  %121 = load i32, i32* @V4L2_CTRL_FLAG_READ_ONLY, align 4
  %122 = load i32*, i32** %16, align 8
  %123 = load i32, i32* %122, align 4
  %124 = or i32 %123, %121
  store i32 %124, i32* %122, align 4
  br label %164

125:                                              ; preds = %8
  %126 = load i32, i32* @V4L2_CTRL_TYPE_U8, align 4
  %127 = load i32*, i32** %11, align 8
  store i32 %126, i32* %127, align 4
  br label %164

128:                                              ; preds = %8
  %129 = load i32, i32* @V4L2_CTRL_TYPE_U16, align 4
  %130 = load i32*, i32** %11, align 8
  store i32 %129, i32* %130, align 4
  br label %164

131:                                              ; preds = %8
  %132 = load i32, i32* @V4L2_CTRL_TYPE_U32, align 4
  %133 = load i32*, i32** %11, align 8
  store i32 %132, i32* %133, align 4
  br label %164

134:                                              ; preds = %8
  %135 = load i32, i32* @V4L2_CTRL_TYPE_MPEG2_SLICE_PARAMS, align 4
  %136 = load i32*, i32** %11, align 8
  store i32 %135, i32* %136, align 4
  br label %164

137:                                              ; preds = %8
  %138 = load i32, i32* @V4L2_CTRL_TYPE_MPEG2_QUANTIZATION, align 4
  %139 = load i32*, i32** %11, align 8
  store i32 %138, i32* %139, align 4
  br label %164

140:                                              ; preds = %8
  %141 = load i32, i32* @V4L2_CTRL_TYPE_FWHT_PARAMS, align 4
  %142 = load i32*, i32** %11, align 8
  store i32 %141, i32* %142, align 4
  br label %164

143:                                              ; preds = %8
  %144 = load i32, i32* @V4L2_CTRL_TYPE_H264_SPS, align 4
  %145 = load i32*, i32** %11, align 8
  store i32 %144, i32* %145, align 4
  br label %164

146:                                              ; preds = %8
  %147 = load i32, i32* @V4L2_CTRL_TYPE_H264_PPS, align 4
  %148 = load i32*, i32** %11, align 8
  store i32 %147, i32* %148, align 4
  br label %164

149:                                              ; preds = %8
  %150 = load i32, i32* @V4L2_CTRL_TYPE_H264_SCALING_MATRIX, align 4
  %151 = load i32*, i32** %11, align 8
  store i32 %150, i32* %151, align 4
  br label %164

152:                                              ; preds = %8
  %153 = load i32, i32* @V4L2_CTRL_TYPE_H264_SLICE_PARAMS, align 4
  %154 = load i32*, i32** %11, align 8
  store i32 %153, i32* %154, align 4
  br label %164

155:                                              ; preds = %8
  %156 = load i32, i32* @V4L2_CTRL_TYPE_H264_DECODE_PARAMS, align 4
  %157 = load i32*, i32** %11, align 8
  store i32 %156, i32* %157, align 4
  br label %164

158:                                              ; preds = %8
  %159 = load i32, i32* @V4L2_CTRL_TYPE_VP8_FRAME_HEADER, align 4
  %160 = load i32*, i32** %11, align 8
  store i32 %159, i32* %160, align 4
  br label %164

161:                                              ; preds = %8
  %162 = load i32, i32* @V4L2_CTRL_TYPE_INTEGER, align 4
  %163 = load i32*, i32** %11, align 8
  store i32 %162, i32* %163, align 4
  br label %164

164:                                              ; preds = %161, %158, %155, %152, %149, %146, %143, %140, %137, %134, %131, %128, %125, %118, %105, %92, %85, %82, %76, %63, %60, %57, %54, %51, %38, %35, %28, %22
  %165 = load i32, i32* %9, align 4
  switch i32 %165, label %193 [
    i32 248, label %166
    i32 244, label %166
    i32 236, label %166
    i32 235, label %166
    i32 239, label %166
    i32 323, label %171
    i32 336, label %171
    i32 335, label %171
    i32 324, label %171
    i32 311, label %171
    i32 305, label %171
    i32 141, label %171
    i32 269, label %171
    i32 154, label %171
    i32 312, label %171
    i32 271, label %171
    i32 139, label %171
    i32 308, label %171
    i32 162, label %171
    i32 327, label %171
    i32 329, label %171
    i32 332, label %171
    i32 330, label %171
    i32 334, label %171
    i32 331, label %171
    i32 179, label %171
    i32 177, label %171
    i32 133, label %171
    i32 135, label %171
    i32 143, label %171
    i32 148, label %171
    i32 146, label %171
    i32 150, label %171
    i32 153, label %171
    i32 302, label %171
    i32 181, label %176
    i32 137, label %176
    i32 272, label %176
    i32 262, label %176
    i32 128, label %176
    i32 277, label %183
    i32 317, label %183
    i32 280, label %183
    i32 292, label %183
    i32 288, label %183
    i32 293, label %183
    i32 295, label %183
    i32 296, label %183
    i32 170, label %183
    i32 171, label %183
    i32 169, label %183
    i32 168, label %183
    i32 167, label %183
    i32 172, label %183
    i32 144, label %188
  ]

166:                                              ; preds = %164, %164, %164, %164, %164
  %167 = load i32, i32* @V4L2_CTRL_FLAG_UPDATE, align 4
  %168 = load i32*, i32** %16, align 8
  %169 = load i32, i32* %168, align 4
  %170 = or i32 %169, %167
  store i32 %170, i32* %168, align 4
  br label %193

171:                                              ; preds = %164, %164, %164, %164, %164, %164, %164, %164, %164, %164, %164, %164, %164, %164, %164, %164, %164, %164, %164, %164, %164, %164, %164, %164, %164, %164, %164, %164, %164, %164
  %172 = load i32, i32* @V4L2_CTRL_FLAG_SLIDER, align 4
  %173 = load i32*, i32** %16, align 8
  %174 = load i32, i32* %173, align 4
  %175 = or i32 %174, %172
  store i32 %175, i32* %173, align 4
  br label %193

176:                                              ; preds = %164, %164, %164, %164, %164
  %177 = load i32, i32* @V4L2_CTRL_FLAG_WRITE_ONLY, align 4
  %178 = load i32, i32* @V4L2_CTRL_FLAG_EXECUTE_ON_WRITE, align 4
  %179 = or i32 %177, %178
  %180 = load i32*, i32** %16, align 8
  %181 = load i32, i32* %180, align 4
  %182 = or i32 %181, %179
  store i32 %182, i32* %180, align 4
  br label %193

183:                                              ; preds = %164, %164, %164, %164, %164, %164, %164, %164, %164, %164, %164, %164, %164, %164
  %184 = load i32, i32* @V4L2_CTRL_FLAG_READ_ONLY, align 4
  %185 = load i32*, i32** %16, align 8
  %186 = load i32, i32* %185, align 4
  %187 = or i32 %186, %184
  store i32 %187, i32* %185, align 4
  br label %193

188:                                              ; preds = %164
  %189 = load i32, i32* @V4L2_CTRL_FLAG_VOLATILE, align 4
  %190 = load i32*, i32** %16, align 8
  %191 = load i32, i32* %190, align 4
  %192 = or i32 %191, %189
  store i32 %192, i32* %190, align 4
  br label %193

193:                                              ; preds = %164, %188, %183, %176, %171, %166
  ret void
}

declare dso_local i8* @v4l2_ctrl_get_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
