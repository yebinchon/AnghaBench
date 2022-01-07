; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/s2255/extr_s2255drv.c_vidioc_s_fmt_vid_cap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/s2255/extr_s2255drv.c_vidioc_s_fmt_vid_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64, i32, i32 }
%struct.s2255_vc = type { i64, i64, i32, %struct.s2255_mode, %struct.s2255_fmt*, %struct.TYPE_6__, i32, i32, %struct.vb2_queue }
%struct.s2255_mode = type { i64, i32, i32, i64 }
%struct.s2255_fmt = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.vb2_queue = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"queue busy\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@V4L2_MODE_HIGHQUALITY = common dso_local global i32 0, align 4
@SCALE_4CIFSI = common dso_local global i64 0, align 8
@SCALE_4CIFS = common dso_local global i64 0, align 8
@SCALE_2CIFS = common dso_local global i64 0, align 8
@SCALE_1CIFS = common dso_local global i64 0, align 8
@MASK_COLOR = common dso_local global i32 0, align 4
@COLOR_Y8 = common dso_local global i32 0, align 4
@COLOR_JPG = common dso_local global i32 0, align 4
@COLOR_YUVPL = common dso_local global i32 0, align 4
@COLOR_YUVPK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @vidioc_s_fmt_vid_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_s_fmt_vid_cap(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_format*, align 8
  %8 = alloca %struct.s2255_vc*, align 8
  %9 = alloca %struct.s2255_fmt*, align 8
  %10 = alloca %struct.vb2_queue*, align 8
  %11 = alloca %struct.s2255_mode, align 8
  %12 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %7, align 8
  %13 = load %struct.file*, %struct.file** %5, align 8
  %14 = call %struct.s2255_vc* @video_drvdata(%struct.file* %13)
  store %struct.s2255_vc* %14, %struct.s2255_vc** %8, align 8
  %15 = load %struct.s2255_vc*, %struct.s2255_vc** %8, align 8
  %16 = getelementptr inbounds %struct.s2255_vc, %struct.s2255_vc* %15, i32 0, i32 8
  store %struct.vb2_queue* %16, %struct.vb2_queue** %10, align 8
  %17 = load %struct.file*, %struct.file** %5, align 8
  %18 = load %struct.s2255_vc*, %struct.s2255_vc** %8, align 8
  %19 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %20 = call i32 @vidioc_try_fmt_vid_cap(%struct.file* %17, %struct.s2255_vc* %18, %struct.v4l2_format* %19)
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %12, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i32, i32* %12, align 4
  store i32 %24, i32* %4, align 4
  br label %209

25:                                               ; preds = %3
  %26 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %27 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = call %struct.s2255_fmt* @format_by_fourcc(i32 %30)
  store %struct.s2255_fmt* %31, %struct.s2255_fmt** %9, align 8
  %32 = load %struct.s2255_fmt*, %struct.s2255_fmt** %9, align 8
  %33 = icmp eq %struct.s2255_fmt* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %25
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %209

37:                                               ; preds = %25
  %38 = load %struct.vb2_queue*, %struct.vb2_queue** %10, align 8
  %39 = call i64 @vb2_is_busy(%struct.vb2_queue* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %37
  %42 = load %struct.s2255_vc*, %struct.s2255_vc** %8, align 8
  %43 = getelementptr inbounds %struct.s2255_vc, %struct.s2255_vc* %42, i32 0, i32 7
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @dprintk(i32 %44, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %46 = load i32, i32* @EBUSY, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %209

48:                                               ; preds = %37
  %49 = load %struct.s2255_vc*, %struct.s2255_vc** %8, align 8
  %50 = getelementptr inbounds %struct.s2255_vc, %struct.s2255_vc* %49, i32 0, i32 3
  %51 = bitcast %struct.s2255_mode* %11 to i8*
  %52 = bitcast %struct.s2255_mode* %50 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %51, i8* align 8 %52, i64 24, i1 false)
  %53 = load %struct.s2255_fmt*, %struct.s2255_fmt** %9, align 8
  %54 = load %struct.s2255_vc*, %struct.s2255_vc** %8, align 8
  %55 = getelementptr inbounds %struct.s2255_vc, %struct.s2255_vc* %54, i32 0, i32 4
  store %struct.s2255_fmt* %53, %struct.s2255_fmt** %55, align 8
  %56 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %57 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.s2255_vc*, %struct.s2255_vc** %8, align 8
  %62 = getelementptr inbounds %struct.s2255_vc, %struct.s2255_vc* %61, i32 0, i32 0
  store i64 %60, i64* %62, align 8
  %63 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %64 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.s2255_vc*, %struct.s2255_vc** %8, align 8
  %69 = getelementptr inbounds %struct.s2255_vc, %struct.s2255_vc* %68, i32 0, i32 1
  store i64 %67, i64* %69, align 8
  %70 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %71 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.s2255_vc*, %struct.s2255_vc** %8, align 8
  %76 = getelementptr inbounds %struct.s2255_vc, %struct.s2255_vc* %75, i32 0, i32 6
  store i32 %74, i32* %76, align 4
  %77 = load %struct.s2255_vc*, %struct.s2255_vc** %8, align 8
  %78 = getelementptr inbounds %struct.s2255_vc, %struct.s2255_vc* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.s2255_vc*, %struct.s2255_vc** %8, align 8
  %81 = call i64 @norm_minw(%struct.s2255_vc* %80)
  %82 = icmp sgt i64 %79, %81
  br i1 %82, label %83, label %109

83:                                               ; preds = %48
  %84 = load %struct.s2255_vc*, %struct.s2255_vc** %8, align 8
  %85 = getelementptr inbounds %struct.s2255_vc, %struct.s2255_vc* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.s2255_vc*, %struct.s2255_vc** %8, align 8
  %88 = call i64 @norm_minh(%struct.s2255_vc* %87)
  %89 = icmp sgt i64 %86, %88
  br i1 %89, label %90, label %105

90:                                               ; preds = %83
  %91 = load %struct.s2255_vc*, %struct.s2255_vc** %8, align 8
  %92 = getelementptr inbounds %struct.s2255_vc, %struct.s2255_vc* %91, i32 0, i32 5
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @V4L2_MODE_HIGHQUALITY, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %90
  %99 = load i64, i64* @SCALE_4CIFSI, align 8
  %100 = getelementptr inbounds %struct.s2255_mode, %struct.s2255_mode* %11, i32 0, i32 0
  store i64 %99, i64* %100, align 8
  br label %104

101:                                              ; preds = %90
  %102 = load i64, i64* @SCALE_4CIFS, align 8
  %103 = getelementptr inbounds %struct.s2255_mode, %struct.s2255_mode* %11, i32 0, i32 0
  store i64 %102, i64* %103, align 8
  br label %104

104:                                              ; preds = %101, %98
  br label %108

105:                                              ; preds = %83
  %106 = load i64, i64* @SCALE_2CIFS, align 8
  %107 = getelementptr inbounds %struct.s2255_mode, %struct.s2255_mode* %11, i32 0, i32 0
  store i64 %106, i64* %107, align 8
  br label %108

108:                                              ; preds = %105, %104
  br label %112

109:                                              ; preds = %48
  %110 = load i64, i64* @SCALE_1CIFS, align 8
  %111 = getelementptr inbounds %struct.s2255_mode, %struct.s2255_mode* %11, i32 0, i32 0
  store i64 %110, i64* %111, align 8
  br label %112

112:                                              ; preds = %109, %108
  %113 = load %struct.s2255_vc*, %struct.s2255_vc** %8, align 8
  %114 = getelementptr inbounds %struct.s2255_vc, %struct.s2255_vc* %113, i32 0, i32 4
  %115 = load %struct.s2255_fmt*, %struct.s2255_fmt** %114, align 8
  %116 = getelementptr inbounds %struct.s2255_fmt, %struct.s2255_fmt* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  switch i32 %117, label %156 [
    i32 133, label %118
    i32 132, label %128
    i32 131, label %128
    i32 129, label %145
    i32 128, label %155
    i32 130, label %155
  ]

118:                                              ; preds = %112
  %119 = load i32, i32* @MASK_COLOR, align 4
  %120 = xor i32 %119, -1
  %121 = getelementptr inbounds %struct.s2255_mode, %struct.s2255_mode* %11, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = and i32 %122, %120
  store i32 %123, i32* %121, align 8
  %124 = load i32, i32* @COLOR_Y8, align 4
  %125 = getelementptr inbounds %struct.s2255_mode, %struct.s2255_mode* %11, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = or i32 %126, %124
  store i32 %127, i32* %125, align 8
  br label %166

128:                                              ; preds = %112, %112
  %129 = load i32, i32* @MASK_COLOR, align 4
  %130 = xor i32 %129, -1
  %131 = getelementptr inbounds %struct.s2255_mode, %struct.s2255_mode* %11, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = and i32 %132, %130
  store i32 %133, i32* %131, align 8
  %134 = load i32, i32* @COLOR_JPG, align 4
  %135 = getelementptr inbounds %struct.s2255_mode, %struct.s2255_mode* %11, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = or i32 %136, %134
  store i32 %137, i32* %135, align 8
  %138 = load %struct.s2255_vc*, %struct.s2255_vc** %8, align 8
  %139 = getelementptr inbounds %struct.s2255_vc, %struct.s2255_vc* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = shl i32 %140, 8
  %142 = getelementptr inbounds %struct.s2255_mode, %struct.s2255_mode* %11, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = or i32 %143, %141
  store i32 %144, i32* %142, align 8
  br label %166

145:                                              ; preds = %112
  %146 = load i32, i32* @MASK_COLOR, align 4
  %147 = xor i32 %146, -1
  %148 = getelementptr inbounds %struct.s2255_mode, %struct.s2255_mode* %11, i32 0, i32 1
  %149 = load i32, i32* %148, align 8
  %150 = and i32 %149, %147
  store i32 %150, i32* %148, align 8
  %151 = load i32, i32* @COLOR_YUVPL, align 4
  %152 = getelementptr inbounds %struct.s2255_mode, %struct.s2255_mode* %11, i32 0, i32 1
  %153 = load i32, i32* %152, align 8
  %154 = or i32 %153, %151
  store i32 %154, i32* %152, align 8
  br label %166

155:                                              ; preds = %112, %112
  br label %156

156:                                              ; preds = %112, %155
  %157 = load i32, i32* @MASK_COLOR, align 4
  %158 = xor i32 %157, -1
  %159 = getelementptr inbounds %struct.s2255_mode, %struct.s2255_mode* %11, i32 0, i32 1
  %160 = load i32, i32* %159, align 8
  %161 = and i32 %160, %158
  store i32 %161, i32* %159, align 8
  %162 = load i32, i32* @COLOR_YUVPK, align 4
  %163 = getelementptr inbounds %struct.s2255_mode, %struct.s2255_mode* %11, i32 0, i32 1
  %164 = load i32, i32* %163, align 8
  %165 = or i32 %164, %162
  store i32 %165, i32* %163, align 8
  br label %166

166:                                              ; preds = %156, %145, %128, %118
  %167 = getelementptr inbounds %struct.s2255_mode, %struct.s2255_mode* %11, i32 0, i32 1
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* @MASK_COLOR, align 4
  %170 = and i32 %168, %169
  %171 = load %struct.s2255_vc*, %struct.s2255_vc** %8, align 8
  %172 = getelementptr inbounds %struct.s2255_vc, %struct.s2255_vc* %171, i32 0, i32 3
  %173 = getelementptr inbounds %struct.s2255_mode, %struct.s2255_mode* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* @MASK_COLOR, align 4
  %176 = and i32 %174, %175
  %177 = icmp ne i32 %170, %176
  br i1 %177, label %178, label %180

178:                                              ; preds = %166
  %179 = getelementptr inbounds %struct.s2255_mode, %struct.s2255_mode* %11, i32 0, i32 2
  store i32 1, i32* %179, align 4
  br label %202

180:                                              ; preds = %166
  %181 = getelementptr inbounds %struct.s2255_mode, %struct.s2255_mode* %11, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = load %struct.s2255_vc*, %struct.s2255_vc** %8, align 8
  %184 = getelementptr inbounds %struct.s2255_vc, %struct.s2255_vc* %183, i32 0, i32 3
  %185 = getelementptr inbounds %struct.s2255_mode, %struct.s2255_mode* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = icmp ne i64 %182, %186
  br i1 %187, label %188, label %190

188:                                              ; preds = %180
  %189 = getelementptr inbounds %struct.s2255_mode, %struct.s2255_mode* %11, i32 0, i32 2
  store i32 1, i32* %189, align 4
  br label %201

190:                                              ; preds = %180
  %191 = getelementptr inbounds %struct.s2255_mode, %struct.s2255_mode* %11, i32 0, i32 3
  %192 = load i64, i64* %191, align 8
  %193 = load %struct.s2255_vc*, %struct.s2255_vc** %8, align 8
  %194 = getelementptr inbounds %struct.s2255_vc, %struct.s2255_vc* %193, i32 0, i32 3
  %195 = getelementptr inbounds %struct.s2255_mode, %struct.s2255_mode* %194, i32 0, i32 3
  %196 = load i64, i64* %195, align 8
  %197 = icmp ne i64 %192, %196
  br i1 %197, label %198, label %200

198:                                              ; preds = %190
  %199 = getelementptr inbounds %struct.s2255_mode, %struct.s2255_mode* %11, i32 0, i32 2
  store i32 1, i32* %199, align 4
  br label %200

200:                                              ; preds = %198, %190
  br label %201

201:                                              ; preds = %200, %188
  br label %202

202:                                              ; preds = %201, %178
  %203 = load %struct.s2255_vc*, %struct.s2255_vc** %8, align 8
  %204 = getelementptr inbounds %struct.s2255_vc, %struct.s2255_vc* %203, i32 0, i32 3
  %205 = bitcast %struct.s2255_mode* %204 to i8*
  %206 = bitcast %struct.s2255_mode* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %205, i8* align 8 %206, i64 24, i1 false)
  %207 = load %struct.s2255_vc*, %struct.s2255_vc** %8, align 8
  %208 = call i32 @s2255_set_mode(%struct.s2255_vc* %207, %struct.s2255_mode* %11)
  store i32 0, i32* %4, align 4
  br label %209

209:                                              ; preds = %202, %41, %34, %23
  %210 = load i32, i32* %4, align 4
  ret i32 %210
}

declare dso_local %struct.s2255_vc* @video_drvdata(%struct.file*) #1

declare dso_local i32 @vidioc_try_fmt_vid_cap(%struct.file*, %struct.s2255_vc*, %struct.v4l2_format*) #1

declare dso_local %struct.s2255_fmt* @format_by_fourcc(i32) #1

declare dso_local i64 @vb2_is_busy(%struct.vb2_queue*) #1

declare dso_local i32 @dprintk(i32, i32, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @norm_minw(%struct.s2255_vc*) #1

declare dso_local i64 @norm_minh(%struct.s2255_vc*) #1

declare dso_local i32 @s2255_set_mode(%struct.s2255_vc*, %struct.s2255_mode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
