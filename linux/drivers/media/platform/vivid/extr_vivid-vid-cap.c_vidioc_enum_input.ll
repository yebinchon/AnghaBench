; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-vid-cap.c_vidioc_enum_input.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-vid-cap.c_vidioc_enum_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_input = type { i64, i32, i32, i8*, i32, i8*, i32 }
%struct.vivid_dev = type { i64, i32*, i32*, i64*, i64, i64*, i32, i64, i64, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@V4L2_INPUT_TYPE_CAMERA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"Webcam %u\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"TV %u\00", align 1
@V4L2_INPUT_TYPE_TUNER = common dso_local global i32 0, align 4
@V4L2_STD_ALL = common dso_local global i8* null, align 8
@vivid_audio_inputs = common dso_local global i32 0, align 4
@V4L2_IN_CAP_STD = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"S-Video %u\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"HDMI %u\00", align 1
@V4L2_IN_CAP_DV_TIMINGS = common dso_local global i8* null, align 8
@NO_SIGNAL = common dso_local global i64 0, align 8
@V4L2_IN_ST_NO_SIGNAL = common dso_local global i32 0, align 4
@NO_LOCK = common dso_local global i64 0, align 8
@OUT_OF_RANGE = common dso_local global i64 0, align 8
@V4L2_IN_ST_NO_H_LOCK = common dso_local global i32 0, align 4
@V4L2_IN_ST_HFLIP = common dso_local global i32 0, align 4
@V4L2_IN_ST_VFLIP = common dso_local global i32 0, align 4
@V4L2_IN_ST_COLOR_KILL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vidioc_enum_input(%struct.file* %0, i8* %1, %struct.v4l2_input* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_input*, align 8
  %8 = alloca %struct.vivid_dev*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_input* %2, %struct.v4l2_input** %7, align 8
  %9 = load %struct.file*, %struct.file** %5, align 8
  %10 = call %struct.vivid_dev* @video_drvdata(%struct.file* %9)
  store %struct.vivid_dev* %10, %struct.vivid_dev** %8, align 8
  %11 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %12 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %15 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp uge i64 %13, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %274

21:                                               ; preds = %3
  %22 = load i32, i32* @V4L2_INPUT_TYPE_CAMERA, align 4
  %23 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %24 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %23, i32 0, i32 6
  store i32 %22, i32* %24, align 8
  %25 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %26 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %29 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds i32, i32* %27, i64 %30
  %32 = load i32, i32* %31, align 4
  switch i32 %32, label %180 [
    i32 128, label %33
    i32 129, label %48
    i32 132, label %82
    i32 133, label %113
  ]

33:                                               ; preds = %21
  %34 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %35 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %38 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %41 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds i32, i32* %39, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @snprintf(i32 %36, i32 4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %47 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %46, i32 0, i32 3
  store i8* null, i8** %47, align 8
  br label %180

48:                                               ; preds = %21
  %49 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %50 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %53 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %52, i32 0, i32 2
  %54 = load i32*, i32** %53, align 8
  %55 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %56 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds i32, i32* %54, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @snprintf(i32 %51, i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* @V4L2_INPUT_TYPE_TUNER, align 4
  %62 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %63 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %62, i32 0, i32 6
  store i32 %61, i32* %63, align 8
  %64 = load i8*, i8** @V4L2_STD_ALL, align 8
  %65 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %66 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %65, i32 0, i32 5
  store i8* %64, i8** %66, align 8
  %67 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %68 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %67, i32 0, i32 10
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %48
  %72 = load i32, i32* @vivid_audio_inputs, align 4
  %73 = call i32 @ARRAY_SIZE(i32 %72)
  %74 = shl i32 1, %73
  %75 = sub nsw i32 %74, 1
  %76 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %77 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 8
  br label %78

78:                                               ; preds = %71, %48
  %79 = load i8*, i8** @V4L2_IN_CAP_STD, align 8
  %80 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %81 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %80, i32 0, i32 3
  store i8* %79, i8** %81, align 8
  br label %180

82:                                               ; preds = %21
  %83 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %84 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %87 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %86, i32 0, i32 2
  %88 = load i32*, i32** %87, align 8
  %89 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %90 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = getelementptr inbounds i32, i32* %88, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @snprintf(i32 %85, i32 4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %93)
  %95 = load i8*, i8** @V4L2_STD_ALL, align 8
  %96 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %97 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %96, i32 0, i32 5
  store i8* %95, i8** %97, align 8
  %98 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %99 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %98, i32 0, i32 10
  %100 = load i32, i32* %99, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %109

102:                                              ; preds = %82
  %103 = load i32, i32* @vivid_audio_inputs, align 4
  %104 = call i32 @ARRAY_SIZE(i32 %103)
  %105 = shl i32 1, %104
  %106 = sub nsw i32 %105, 1
  %107 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %108 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %107, i32 0, i32 1
  store i32 %106, i32* %108, align 8
  br label %109

109:                                              ; preds = %102, %82
  %110 = load i8*, i8** @V4L2_IN_CAP_STD, align 8
  %111 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %112 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %111, i32 0, i32 3
  store i8* %110, i8** %112, align 8
  br label %180

113:                                              ; preds = %21
  %114 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %115 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %118 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %117, i32 0, i32 2
  %119 = load i32*, i32** %118, align 8
  %120 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %121 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = getelementptr inbounds i32, i32* %119, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @snprintf(i32 %116, i32 4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %124)
  %126 = load i8*, i8** @V4L2_IN_CAP_DV_TIMINGS, align 8
  %127 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %128 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %127, i32 0, i32 3
  store i8* %126, i8** %128, align 8
  %129 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %130 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %129, i32 0, i32 9
  %131 = load i32, i32* %130, align 8
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %144, label %133

133:                                              ; preds = %113
  %134 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %135 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %134, i32 0, i32 3
  %136 = load i64*, i64** %135, align 8
  %137 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %138 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %137, i32 0, i32 4
  %139 = load i64, i64* %138, align 8
  %140 = getelementptr inbounds i64, i64* %136, i64 %139
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @NO_SIGNAL, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %144, label %150

144:                                              ; preds = %133, %113
  %145 = load i32, i32* @V4L2_IN_ST_NO_SIGNAL, align 4
  %146 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %147 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 4
  %149 = or i32 %148, %145
  store i32 %149, i32* %147, align 4
  br label %179

150:                                              ; preds = %133
  %151 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %152 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %151, i32 0, i32 3
  %153 = load i64*, i64** %152, align 8
  %154 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %155 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %154, i32 0, i32 4
  %156 = load i64, i64* %155, align 8
  %157 = getelementptr inbounds i64, i64* %153, i64 %156
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* @NO_LOCK, align 8
  %160 = icmp eq i64 %158, %159
  br i1 %160, label %172, label %161

161:                                              ; preds = %150
  %162 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %163 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %162, i32 0, i32 3
  %164 = load i64*, i64** %163, align 8
  %165 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %166 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %165, i32 0, i32 4
  %167 = load i64, i64* %166, align 8
  %168 = getelementptr inbounds i64, i64* %164, i64 %167
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* @OUT_OF_RANGE, align 8
  %171 = icmp eq i64 %169, %170
  br i1 %171, label %172, label %178

172:                                              ; preds = %161, %150
  %173 = load i32, i32* @V4L2_IN_ST_NO_H_LOCK, align 4
  %174 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %175 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 4
  %177 = or i32 %176, %173
  store i32 %177, i32* %175, align 4
  br label %178

178:                                              ; preds = %172, %161
  br label %179

179:                                              ; preds = %178, %144
  br label %180

180:                                              ; preds = %21, %179, %109, %78, %33
  %181 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %182 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %181, i32 0, i32 8
  %183 = load i64, i64* %182, align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %191

185:                                              ; preds = %180
  %186 = load i32, i32* @V4L2_IN_ST_HFLIP, align 4
  %187 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %188 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 4
  %190 = or i32 %189, %186
  store i32 %190, i32* %188, align 4
  br label %191

191:                                              ; preds = %185, %180
  %192 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %193 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %192, i32 0, i32 7
  %194 = load i64, i64* %193, align 8
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %202

196:                                              ; preds = %191
  %197 = load i32, i32* @V4L2_IN_ST_VFLIP, align 4
  %198 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %199 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 4
  %201 = or i32 %200, %197
  store i32 %201, i32* %199, align 4
  br label %202

202:                                              ; preds = %196, %191
  %203 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %204 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %203, i32 0, i32 4
  %205 = load i64, i64* %204, align 8
  %206 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %207 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = icmp eq i64 %205, %208
  br i1 %209, label %210, label %273

210:                                              ; preds = %202
  %211 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %212 = call i64 @vivid_is_sdtv_cap(%struct.vivid_dev* %211)
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %273

214:                                              ; preds = %210
  %215 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %216 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %215, i32 0, i32 5
  %217 = load i64*, i64** %216, align 8
  %218 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %219 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %218, i32 0, i32 4
  %220 = load i64, i64* %219, align 8
  %221 = getelementptr inbounds i64, i64* %217, i64 %220
  %222 = load i64, i64* %221, align 8
  %223 = load i64, i64* @NO_SIGNAL, align 8
  %224 = icmp eq i64 %222, %223
  br i1 %224, label %225, label %231

225:                                              ; preds = %214
  %226 = load i32, i32* @V4L2_IN_ST_NO_SIGNAL, align 4
  %227 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %228 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %227, i32 0, i32 2
  %229 = load i32, i32* %228, align 4
  %230 = or i32 %229, %226
  store i32 %230, i32* %228, align 4
  br label %272

231:                                              ; preds = %214
  %232 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %233 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %232, i32 0, i32 5
  %234 = load i64*, i64** %233, align 8
  %235 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %236 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %235, i32 0, i32 4
  %237 = load i64, i64* %236, align 8
  %238 = getelementptr inbounds i64, i64* %234, i64 %237
  %239 = load i64, i64* %238, align 8
  %240 = load i64, i64* @NO_LOCK, align 8
  %241 = icmp eq i64 %239, %240
  br i1 %241, label %242, label %248

242:                                              ; preds = %231
  %243 = load i32, i32* @V4L2_IN_ST_NO_H_LOCK, align 4
  %244 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %245 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %244, i32 0, i32 2
  %246 = load i32, i32* %245, align 4
  %247 = or i32 %246, %243
  store i32 %247, i32* %245, align 4
  br label %271

248:                                              ; preds = %231
  %249 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %250 = call i64 @vivid_is_tv_cap(%struct.vivid_dev* %249)
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %252, label %270

252:                                              ; preds = %248
  %253 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %254 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %253, i32 0, i32 6
  %255 = call i32 @tpg_g_quality(i32* %254)
  switch i32 %255, label %268 [
    i32 131, label %256
    i32 130, label %262
  ]

256:                                              ; preds = %252
  %257 = load i32, i32* @V4L2_IN_ST_COLOR_KILL, align 4
  %258 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %259 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %258, i32 0, i32 2
  %260 = load i32, i32* %259, align 4
  %261 = or i32 %260, %257
  store i32 %261, i32* %259, align 4
  br label %269

262:                                              ; preds = %252
  %263 = load i32, i32* @V4L2_IN_ST_NO_H_LOCK, align 4
  %264 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %265 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %264, i32 0, i32 2
  %266 = load i32, i32* %265, align 4
  %267 = or i32 %266, %263
  store i32 %267, i32* %265, align 4
  br label %269

268:                                              ; preds = %252
  br label %269

269:                                              ; preds = %268, %262, %256
  br label %270

270:                                              ; preds = %269, %248
  br label %271

271:                                              ; preds = %270, %242
  br label %272

272:                                              ; preds = %271, %225
  br label %273

273:                                              ; preds = %272, %210, %202
  store i32 0, i32* %4, align 4
  br label %274

274:                                              ; preds = %273, %18
  %275 = load i32, i32* %4, align 4
  ret i32 %275
}

declare dso_local %struct.vivid_dev* @video_drvdata(%struct.file*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i64 @vivid_is_sdtv_cap(%struct.vivid_dev*) #1

declare dso_local i64 @vivid_is_tv_cap(%struct.vivid_dev*) #1

declare dso_local i32 @tpg_g_quality(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
