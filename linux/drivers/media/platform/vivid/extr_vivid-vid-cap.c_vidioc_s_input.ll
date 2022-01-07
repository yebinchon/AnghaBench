; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-vid-cap.c_vidioc_s_input.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-vid-cap.c_vidioc_s_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.vivid_dev = type { i64, i32, i32*, i32, i32*, i32*, i32*, i32*, i64, i64, i64, i64, i64, i64, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { %struct.v4l2_bt_timings }
%struct.v4l2_bt_timings = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@V4L2_STD_ALL = common dso_local global i64 0, align 8
@VIVID_CS_SRGB = common dso_local global i32 0, align 4
@VIVID_CS_170M = common dso_local global i32 0, align 4
@V4L2_DV_FL_IS_CE_VIDEO = common dso_local global i32 0, align 4
@VIVID_CS_709 = common dso_local global i32 0, align 4
@SELECTED_DV_TIMINGS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vidioc_s_input(%struct.file* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.vivid_dev*, align 8
  %9 = alloca %struct.v4l2_bt_timings*, align 8
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.file*, %struct.file** %5, align 8
  %12 = call %struct.vivid_dev* @video_drvdata(%struct.file* %11)
  store %struct.vivid_dev* %12, %struct.vivid_dev** %8, align 8
  %13 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %14 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %13, i32 0, i32 19
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %17 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  store %struct.v4l2_bt_timings* %20, %struct.v4l2_bt_timings** %9, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %23 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = icmp uge i32 %21, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %3
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %306

29:                                               ; preds = %3
  %30 = load i32, i32* %7, align 4
  %31 = zext i32 %30 to i64
  %32 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %33 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %31, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  store i32 0, i32* %4, align 4
  br label %306

37:                                               ; preds = %29
  %38 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %39 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %38, i32 0, i32 18
  %40 = call i64 @vb2_is_busy(i32* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %37
  %43 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %44 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %43, i32 0, i32 17
  %45 = call i64 @vb2_is_busy(i32* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %42, %37
  %48 = load i32, i32* @EBUSY, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %306

50:                                               ; preds = %42
  %51 = load i32, i32* %7, align 4
  %52 = zext i32 %51 to i64
  %53 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %54 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %53, i32 0, i32 0
  store i64 %52, i64* %54, align 8
  %55 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %56 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %55, i32 0, i32 15
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  store i64 0, i64* %57, align 8
  %58 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %59 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %58, i32 0, i32 2
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %7, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = icmp eq i32 %64, 129
  br i1 %65, label %75, label %66

66:                                               ; preds = %50
  %67 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %68 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %67, i32 0, i32 2
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %7, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = icmp eq i32 %73, 130
  br i1 %74, label %75, label %92

75:                                               ; preds = %66, %50
  %76 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %77 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %76, i32 0, i32 2
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %7, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = icmp eq i32 %82, 129
  %84 = zext i1 %83 to i64
  %85 = select i1 %83, i32 0, i32 1
  %86 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %87 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %86, i32 0, i32 3
  store i32 %85, i32* %87, align 8
  %88 = load i64, i64* @V4L2_STD_ALL, align 8
  %89 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %90 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %89, i32 0, i32 15
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  store i64 %88, i64* %91, align 8
  br label %92

92:                                               ; preds = %75, %66
  %93 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %94 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %93, i32 0, i32 15
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %98 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %97, i32 0, i32 16
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  store i64 %96, i64* %99, align 8
  %100 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %101 = call i32 @vivid_update_format_cap(%struct.vivid_dev* %100, i32 0)
  %102 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %103 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %102, i32 0, i32 13
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %166

106:                                              ; preds = %92
  %107 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %108 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %107, i32 0, i32 2
  %109 = load i32*, i32** %108, align 8
  %110 = load i32, i32* %7, align 4
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = load i32, i32* %112, align 4
  switch i32 %113, label %165 [
    i32 128, label %114
    i32 129, label %120
    i32 130, label %120
    i32 131, label %126
  ]

114:                                              ; preds = %106
  %115 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %116 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %115, i32 0, i32 13
  %117 = load i64, i64* %116, align 8
  %118 = load i32, i32* @VIVID_CS_SRGB, align 4
  %119 = call i32 @v4l2_ctrl_s_ctrl(i64 %117, i32 %118)
  br label %165

120:                                              ; preds = %106, %106
  %121 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %122 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %121, i32 0, i32 13
  %123 = load i64, i64* %122, align 8
  %124 = load i32, i32* @VIVID_CS_170M, align 4
  %125 = call i32 @v4l2_ctrl_s_ctrl(i64 %123, i32 %124)
  br label %165

126:                                              ; preds = %106
  %127 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %9, align 8
  %128 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @V4L2_DV_FL_IS_CE_VIDEO, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %158

133:                                              ; preds = %126
  %134 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %135 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %134, i32 0, i32 14
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = icmp eq i32 %137, 720
  br i1 %138, label %139, label %151

139:                                              ; preds = %133
  %140 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %141 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %140, i32 0, i32 14
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = icmp sle i32 %143, 576
  br i1 %144, label %145, label %151

145:                                              ; preds = %139
  %146 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %147 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %146, i32 0, i32 13
  %148 = load i64, i64* %147, align 8
  %149 = load i32, i32* @VIVID_CS_170M, align 4
  %150 = call i32 @v4l2_ctrl_s_ctrl(i64 %148, i32 %149)
  br label %157

151:                                              ; preds = %139, %133
  %152 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %153 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %152, i32 0, i32 13
  %154 = load i64, i64* %153, align 8
  %155 = load i32, i32* @VIVID_CS_709, align 4
  %156 = call i32 @v4l2_ctrl_s_ctrl(i64 %154, i32 %155)
  br label %157

157:                                              ; preds = %151, %145
  br label %164

158:                                              ; preds = %126
  %159 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %160 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %159, i32 0, i32 13
  %161 = load i64, i64* %160, align 8
  %162 = load i32, i32* @VIVID_CS_SRGB, align 4
  %163 = call i32 @v4l2_ctrl_s_ctrl(i64 %161, i32 %162)
  br label %164

164:                                              ; preds = %158, %157
  br label %165

165:                                              ; preds = %106, %164, %120, %114
  br label %166

166:                                              ; preds = %165, %92
  %167 = load i32, i32* %7, align 4
  %168 = mul i32 128, %167
  %169 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %170 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %169, i32 0, i32 4
  %171 = load i32*, i32** %170, align 8
  %172 = load i32, i32* %7, align 4
  %173 = zext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %171, i64 %173
  %175 = load i32, i32* %174, align 4
  %176 = add i32 %168, %175
  store i32 %176, i32* %10, align 4
  %177 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %178 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %177, i32 0, i32 12
  %179 = load i64, i64* %178, align 8
  %180 = load i32, i32* %7, align 4
  %181 = mul i32 128, %180
  %182 = load i32, i32* %7, align 4
  %183 = mul i32 128, %182
  %184 = add i32 255, %183
  %185 = load i32, i32* %7, align 4
  %186 = mul i32 128, %185
  %187 = add i32 128, %186
  %188 = call i32 @v4l2_ctrl_modify_range(i64 %179, i32 %181, i32 %184, i32 1, i32 %187)
  %189 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %190 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %189, i32 0, i32 12
  %191 = load i64, i64* %190, align 8
  %192 = load i32, i32* %10, align 4
  %193 = call i32 @v4l2_ctrl_s_ctrl(i64 %191, i32 %192)
  %194 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %195 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %194, i32 0, i32 11
  %196 = load i64, i64* %195, align 8
  %197 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %198 = call i32 @vivid_is_hdmi_cap(%struct.vivid_dev* %197)
  %199 = call i32 @v4l2_ctrl_activate(i64 %196, i32 %198)
  %200 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %201 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %200, i32 0, i32 10
  %202 = load i64, i64* %201, align 8
  %203 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %204 = call i32 @vivid_is_hdmi_cap(%struct.vivid_dev* %203)
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %217

206:                                              ; preds = %166
  %207 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %208 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %207, i32 0, i32 5
  %209 = load i32*, i32** %208, align 8
  %210 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %211 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %210, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = getelementptr inbounds i32, i32* %209, i64 %212
  %214 = load i32, i32* %213, align 4
  %215 = load i32, i32* @SELECTED_DV_TIMINGS, align 4
  %216 = icmp eq i32 %214, %215
  br label %217

217:                                              ; preds = %206, %166
  %218 = phi i1 [ false, %166 ], [ %216, %206 ]
  %219 = zext i1 %218 to i32
  %220 = call i32 @v4l2_ctrl_activate(i64 %202, i32 %219)
  %221 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %222 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %221, i32 0, i32 9
  %223 = load i64, i64* %222, align 8
  %224 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %225 = call i32 @vivid_is_sdtv_cap(%struct.vivid_dev* %224)
  %226 = call i32 @v4l2_ctrl_activate(i64 %223, i32 %225)
  %227 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %228 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %227, i32 0, i32 8
  %229 = load i64, i64* %228, align 8
  %230 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %231 = call i32 @vivid_is_sdtv_cap(%struct.vivid_dev* %230)
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %243

233:                                              ; preds = %217
  %234 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %235 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %234, i32 0, i32 6
  %236 = load i32*, i32** %235, align 8
  %237 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %238 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %237, i32 0, i32 0
  %239 = load i64, i64* %238, align 8
  %240 = getelementptr inbounds i32, i32* %236, i64 %239
  %241 = load i32, i32* %240, align 4
  %242 = icmp ne i32 %241, 0
  br label %243

243:                                              ; preds = %233, %217
  %244 = phi i1 [ false, %217 ], [ %242, %233 ]
  %245 = zext i1 %244 to i32
  %246 = call i32 @v4l2_ctrl_activate(i64 %229, i32 %245)
  %247 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %248 = call i32 @vivid_is_hdmi_cap(%struct.vivid_dev* %247)
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %275

250:                                              ; preds = %243
  %251 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %252 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %251, i32 0, i32 11
  %253 = load i64, i64* %252, align 8
  %254 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %255 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %254, i32 0, i32 5
  %256 = load i32*, i32** %255, align 8
  %257 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %258 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %257, i32 0, i32 0
  %259 = load i64, i64* %258, align 8
  %260 = getelementptr inbounds i32, i32* %256, i64 %259
  %261 = load i32, i32* %260, align 4
  %262 = call i32 @v4l2_ctrl_s_ctrl(i64 %253, i32 %261)
  %263 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %264 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %263, i32 0, i32 10
  %265 = load i64, i64* %264, align 8
  %266 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %267 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %266, i32 0, i32 7
  %268 = load i32*, i32** %267, align 8
  %269 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %270 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %269, i32 0, i32 0
  %271 = load i64, i64* %270, align 8
  %272 = getelementptr inbounds i32, i32* %268, i64 %271
  %273 = load i32, i32* %272, align 4
  %274 = call i32 @v4l2_ctrl_s_ctrl(i64 %265, i32 %273)
  br label %305

275:                                              ; preds = %243
  %276 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %277 = call i32 @vivid_is_sdtv_cap(%struct.vivid_dev* %276)
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %304

279:                                              ; preds = %275
  %280 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %281 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %280, i32 0, i32 9
  %282 = load i64, i64* %281, align 8
  %283 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %284 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %283, i32 0, i32 6
  %285 = load i32*, i32** %284, align 8
  %286 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %287 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %286, i32 0, i32 0
  %288 = load i64, i64* %287, align 8
  %289 = getelementptr inbounds i32, i32* %285, i64 %288
  %290 = load i32, i32* %289, align 4
  %291 = call i32 @v4l2_ctrl_s_ctrl(i64 %282, i32 %290)
  %292 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %293 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %292, i32 0, i32 8
  %294 = load i64, i64* %293, align 8
  %295 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %296 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %295, i32 0, i32 6
  %297 = load i32*, i32** %296, align 8
  %298 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %299 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %298, i32 0, i32 0
  %300 = load i64, i64* %299, align 8
  %301 = getelementptr inbounds i32, i32* %297, i64 %300
  %302 = load i32, i32* %301, align 4
  %303 = call i32 @v4l2_ctrl_s_ctrl(i64 %294, i32 %302)
  br label %304

304:                                              ; preds = %279, %275
  br label %305

305:                                              ; preds = %304, %250
  store i32 0, i32* %4, align 4
  br label %306

306:                                              ; preds = %305, %47, %36, %26
  %307 = load i32, i32* %4, align 4
  ret i32 %307
}

declare dso_local %struct.vivid_dev* @video_drvdata(%struct.file*) #1

declare dso_local i64 @vb2_is_busy(i32*) #1

declare dso_local i32 @vivid_update_format_cap(%struct.vivid_dev*, i32) #1

declare dso_local i32 @v4l2_ctrl_s_ctrl(i64, i32) #1

declare dso_local i32 @v4l2_ctrl_modify_range(i64, i32, i32, i32, i32) #1

declare dso_local i32 @v4l2_ctrl_activate(i64, i32) #1

declare dso_local i32 @vivid_is_hdmi_cap(%struct.vivid_dev*) #1

declare dso_local i32 @vivid_is_sdtv_cap(%struct.vivid_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
