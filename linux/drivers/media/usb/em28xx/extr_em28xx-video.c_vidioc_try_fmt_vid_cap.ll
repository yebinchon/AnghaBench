; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-video.c_vidioc_try_fmt_vid_cap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-video.c_vidioc_try_fmt_vid_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.em28xx_fmt = type { i32, i32 }
%struct.file = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.em28xx = type { %struct.TYPE_4__, %struct.em28xx_v4l2* }
%struct.TYPE_4__ = type { i64 }
%struct.em28xx_v4l2 = type { i64, i64 }

@format = common dso_local global %struct.em28xx_fmt* null, align 8
@.str = private unnamed_addr constant [53 x i8] c"Fourcc format (%08x) invalid. Using default (%08x).\0A\00", align 1
@V4L2_COLORSPACE_SMPTE170M = common dso_local global i32 0, align 4
@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@V4L2_FIELD_INTERLACED = common dso_local global i32 0, align 4
@V4L2_FIELD_TOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @vidioc_try_fmt_vid_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_try_fmt_vid_cap(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.v4l2_format*, align 8
  %7 = alloca %struct.em28xx*, align 8
  %8 = alloca %struct.em28xx_v4l2*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.em28xx_fmt*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %6, align 8
  %16 = load %struct.file*, %struct.file** %4, align 8
  %17 = call %struct.em28xx* @video_drvdata(%struct.file* %16)
  store %struct.em28xx* %17, %struct.em28xx** %7, align 8
  %18 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %19 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %18, i32 0, i32 1
  %20 = load %struct.em28xx_v4l2*, %struct.em28xx_v4l2** %19, align 8
  store %struct.em28xx_v4l2* %20, %struct.em28xx_v4l2** %8, align 8
  %21 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %22 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %9, align 4
  %26 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %27 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %10, align 4
  %31 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %32 = call i32 @norm_maxw(%struct.em28xx* %31)
  store i32 %32, i32* %11, align 4
  %33 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %34 = call i32 @norm_maxh(%struct.em28xx* %33)
  store i32 %34, i32* %12, align 4
  %35 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %36 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 6
  %39 = load i32, i32* %38, align 4
  %40 = call %struct.em28xx_fmt* @format_by_fourcc(i32 %39)
  store %struct.em28xx_fmt* %40, %struct.em28xx_fmt** %15, align 8
  %41 = load %struct.em28xx_fmt*, %struct.em28xx_fmt** %15, align 8
  %42 = icmp ne %struct.em28xx_fmt* %41, null
  br i1 %42, label %55, label %43

43:                                               ; preds = %3
  %44 = load %struct.em28xx_fmt*, %struct.em28xx_fmt** @format, align 8
  %45 = getelementptr inbounds %struct.em28xx_fmt, %struct.em28xx_fmt* %44, i64 0
  store %struct.em28xx_fmt* %45, %struct.em28xx_fmt** %15, align 8
  %46 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %47 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 6
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.em28xx_fmt*, %struct.em28xx_fmt** %15, align 8
  %52 = getelementptr inbounds %struct.em28xx_fmt, %struct.em28xx_fmt* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @em28xx_videodbg(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %50, i32 %53)
  br label %55

55:                                               ; preds = %43, %3
  %56 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %57 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %97

61:                                               ; preds = %55
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* %12, align 4
  %64 = mul i32 3, %63
  %65 = udiv i32 %64, 4
  %66 = icmp ugt i32 %62, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %61
  %68 = load i32, i32* %12, align 4
  br label %72

69:                                               ; preds = %61
  %70 = load i32, i32* %12, align 4
  %71 = udiv i32 %70, 2
  br label %72

72:                                               ; preds = %69, %67
  %73 = phi i32 [ %68, %67 ], [ %71, %69 ]
  store i32 %73, i32* %10, align 4
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* %11, align 4
  %76 = mul i32 3, %75
  %77 = udiv i32 %76, 4
  %78 = icmp ugt i32 %74, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %72
  %80 = load i32, i32* %11, align 4
  br label %84

81:                                               ; preds = %72
  %82 = load i32, i32* %11, align 4
  %83 = udiv i32 %82, 2
  br label %84

84:                                               ; preds = %81, %79
  %85 = phi i32 [ %80, %79 ], [ %83, %81 ]
  store i32 %85, i32* %9, align 4
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* %11, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %96

89:                                               ; preds = %84
  %90 = load i32, i32* %10, align 4
  %91 = load i32, i32* %12, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %96

93:                                               ; preds = %89
  %94 = load i32, i32* %9, align 4
  %95 = udiv i32 %94, 2
  store i32 %95, i32* %9, align 4
  br label %96

96:                                               ; preds = %93, %89, %84
  br label %101

97:                                               ; preds = %55
  %98 = load i32, i32* %11, align 4
  %99 = load i32, i32* %12, align 4
  %100 = call i32 @v4l_bound_align_image(i32* %9, i32 48, i32 %98, i32 1, i32* %10, i32 32, i32 %99, i32 1, i32 0)
  br label %101

101:                                              ; preds = %97, %96
  %102 = load i32, i32* %9, align 4
  %103 = icmp ult i32 %102, 1
  br i1 %103, label %104, label %105

104:                                              ; preds = %101
  store i32 1, i32* %9, align 4
  br label %105

105:                                              ; preds = %104, %101
  %106 = load i32, i32* %10, align 4
  %107 = icmp ult i32 %106, 1
  br i1 %107, label %108, label %109

108:                                              ; preds = %105
  store i32 1, i32* %10, align 4
  br label %109

109:                                              ; preds = %108, %105
  %110 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %111 = load i32, i32* %9, align 4
  %112 = load i32, i32* %10, align 4
  %113 = call i32 @size_to_scale(%struct.em28xx* %110, i32 %111, i32 %112, i32* %13, i32* %14)
  %114 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %115 = load i32, i32* %13, align 4
  %116 = load i32, i32* %14, align 4
  %117 = call i32 @scale_to_size(%struct.em28xx* %114, i32 %115, i32 %116, i32* %9, i32* %10)
  %118 = load i32, i32* %9, align 4
  %119 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %120 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 0
  store i32 %118, i32* %122, align 4
  %123 = load i32, i32* %10, align 4
  %124 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %125 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 1
  store i32 %123, i32* %127, align 4
  %128 = load %struct.em28xx_fmt*, %struct.em28xx_fmt** %15, align 8
  %129 = getelementptr inbounds %struct.em28xx_fmt, %struct.em28xx_fmt* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %132 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 6
  store i32 %130, i32* %134, align 4
  %135 = load i32, i32* %9, align 4
  %136 = load %struct.em28xx_fmt*, %struct.em28xx_fmt** %15, align 8
  %137 = getelementptr inbounds %struct.em28xx_fmt, %struct.em28xx_fmt* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = mul i32 %135, %138
  %140 = add i32 %139, 7
  %141 = lshr i32 %140, 3
  %142 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %143 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 2
  store i32 %141, i32* %145, align 4
  %146 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %147 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* %10, align 4
  %152 = mul i32 %150, %151
  %153 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %154 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i32 0, i32 3
  store i32 %152, i32* %156, align 4
  %157 = load i32, i32* @V4L2_COLORSPACE_SMPTE170M, align 4
  %158 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %159 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 5
  store i32 %157, i32* %161, align 4
  %162 = load %struct.em28xx_v4l2*, %struct.em28xx_v4l2** %8, align 8
  %163 = getelementptr inbounds %struct.em28xx_v4l2, %struct.em28xx_v4l2* %162, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %172

166:                                              ; preds = %109
  %167 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %168 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %169 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %170, i32 0, i32 4
  store i32 %167, i32* %171, align 4
  br label %187

172:                                              ; preds = %109
  %173 = load %struct.em28xx_v4l2*, %struct.em28xx_v4l2** %8, align 8
  %174 = getelementptr inbounds %struct.em28xx_v4l2, %struct.em28xx_v4l2* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %179

177:                                              ; preds = %172
  %178 = load i32, i32* @V4L2_FIELD_INTERLACED, align 4
  br label %181

179:                                              ; preds = %172
  %180 = load i32, i32* @V4L2_FIELD_TOP, align 4
  br label %181

181:                                              ; preds = %179, %177
  %182 = phi i32 [ %178, %177 ], [ %180, %179 ]
  %183 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %184 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %185, i32 0, i32 4
  store i32 %182, i32* %186, align 4
  br label %187

187:                                              ; preds = %181, %166
  ret i32 0
}

declare dso_local %struct.em28xx* @video_drvdata(%struct.file*) #1

declare dso_local i32 @norm_maxw(%struct.em28xx*) #1

declare dso_local i32 @norm_maxh(%struct.em28xx*) #1

declare dso_local %struct.em28xx_fmt* @format_by_fourcc(i32) #1

declare dso_local i32 @em28xx_videodbg(i8*, i32, i32) #1

declare dso_local i32 @v4l_bound_align_image(i32*, i32, i32, i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @size_to_scale(%struct.em28xx*, i32, i32, i32*, i32*) #1

declare dso_local i32 @scale_to_size(%struct.em28xx*, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
