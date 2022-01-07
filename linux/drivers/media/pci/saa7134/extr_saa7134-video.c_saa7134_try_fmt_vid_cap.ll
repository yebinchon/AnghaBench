; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-video.c_saa7134_try_fmt_vid_cap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-video.c_saa7134_try_fmt_vid_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.saa7134_dev = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.saa7134_format = type { i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@V4L2_FIELD_ANY = common dso_local global i32 0, align 4
@V4L2_FIELD_INTERLACED = common dso_local global i32 0, align 4
@V4L2_COLORSPACE_SMPTE170M = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @saa7134_try_fmt_vid_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @saa7134_try_fmt_vid_cap(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_format*, align 8
  %8 = alloca %struct.saa7134_dev*, align 8
  %9 = alloca %struct.saa7134_format*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %7, align 8
  %13 = load %struct.file*, %struct.file** %5, align 8
  %14 = call %struct.saa7134_dev* @video_drvdata(%struct.file* %13)
  store %struct.saa7134_dev* %14, %struct.saa7134_dev** %8, align 8
  %15 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %16 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 6
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.saa7134_format* @format_by_fourcc(i32 %19)
  store %struct.saa7134_format* %20, %struct.saa7134_format** %9, align 8
  %21 = load %struct.saa7134_format*, %struct.saa7134_format** %9, align 8
  %22 = icmp eq %struct.saa7134_format* null, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %195

26:                                               ; preds = %3
  %27 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %28 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %10, align 4
  %32 = load %struct.saa7134_dev*, %struct.saa7134_dev** %8, align 8
  %33 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = mul nsw i32 %35, 4
  %37 = load %struct.saa7134_dev*, %struct.saa7134_dev** %8, align 8
  %38 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @min(i32 %36, i32 %40)
  store i32 %41, i32* %11, align 4
  %42 = load %struct.saa7134_dev*, %struct.saa7134_dev** %8, align 8
  %43 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = mul nsw i32 %45, 4
  %47 = load %struct.saa7134_dev*, %struct.saa7134_dev** %8, align 8
  %48 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @min(i32 %46, i32 %50)
  store i32 %51, i32* %12, align 4
  %52 = load i32, i32* @V4L2_FIELD_ANY, align 4
  %53 = load i32, i32* %10, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %69

55:                                               ; preds = %26
  %56 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %57 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %12, align 4
  %62 = udiv i32 %61, 2
  %63 = icmp ugt i32 %60, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %55
  %65 = load i32, i32* @V4L2_FIELD_INTERLACED, align 4
  br label %67

66:                                               ; preds = %55
  br label %67

67:                                               ; preds = %66, %64
  %68 = phi i32 [ %65, %64 ], [ 129, %66 ]
  store i32 %68, i32* %10, align 4
  br label %69

69:                                               ; preds = %67, %26
  %70 = load i32, i32* %10, align 4
  switch i32 %70, label %74 [
    i32 128, label %71
    i32 129, label %71
  ]

71:                                               ; preds = %69, %69
  %72 = load i32, i32* %12, align 4
  %73 = udiv i32 %72, 2
  store i32 %73, i32* %12, align 4
  br label %76

74:                                               ; preds = %69
  %75 = load i32, i32* @V4L2_FIELD_INTERLACED, align 4
  store i32 %75, i32* %10, align 4
  br label %76

76:                                               ; preds = %74, %71
  %77 = load i32, i32* %10, align 4
  %78 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %79 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  store i32 %77, i32* %81, align 4
  %82 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %83 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = icmp slt i32 %86, 48
  br i1 %87, label %88, label %93

88:                                               ; preds = %76
  %89 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %90 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 2
  store i32 48, i32* %92, align 4
  br label %93

93:                                               ; preds = %88, %76
  %94 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %95 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = icmp ult i32 %98, 32
  br i1 %99, label %100, label %105

100:                                              ; preds = %93
  %101 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %102 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 1
  store i32 32, i32* %104, align 4
  br label %105

105:                                              ; preds = %100, %93
  %106 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %107 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* %11, align 4
  %112 = icmp ugt i32 %110, %111
  br i1 %112, label %113, label %119

113:                                              ; preds = %105
  %114 = load i32, i32* %11, align 4
  %115 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %116 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 2
  store i32 %114, i32* %118, align 4
  br label %119

119:                                              ; preds = %113, %105
  %120 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %121 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* %12, align 4
  %126 = icmp ugt i32 %124, %125
  br i1 %126, label %127, label %133

127:                                              ; preds = %119
  %128 = load i32, i32* %12, align 4
  %129 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %130 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 1
  store i32 %128, i32* %132, align 4
  br label %133

133:                                              ; preds = %127, %119
  %134 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %135 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = and i32 %138, -4
  store i32 %139, i32* %137, align 4
  %140 = load %struct.saa7134_format*, %struct.saa7134_format** %9, align 8
  %141 = getelementptr inbounds %struct.saa7134_format, %struct.saa7134_format* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %154

144:                                              ; preds = %133
  %145 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %146 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %151 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 3
  store i32 %149, i32* %153, align 4
  br label %169

154:                                              ; preds = %133
  %155 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %156 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.saa7134_format*, %struct.saa7134_format** %9, align 8
  %161 = getelementptr inbounds %struct.saa7134_format, %struct.saa7134_format* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = mul nsw i32 %159, %162
  %164 = sdiv i32 %163, 8
  %165 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %166 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 3
  store i32 %164, i32* %168, align 4
  br label %169

169:                                              ; preds = %154, %144
  %170 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %171 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %176 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 4
  %180 = mul i32 %174, %179
  %181 = load %struct.saa7134_format*, %struct.saa7134_format** %9, align 8
  %182 = getelementptr inbounds %struct.saa7134_format, %struct.saa7134_format* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = mul i32 %180, %183
  %185 = udiv i32 %184, 8
  %186 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %187 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %188, i32 0, i32 4
  store i32 %185, i32* %189, align 4
  %190 = load i32, i32* @V4L2_COLORSPACE_SMPTE170M, align 4
  %191 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %192 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %193, i32 0, i32 5
  store i32 %190, i32* %194, align 4
  store i32 0, i32* %4, align 4
  br label %195

195:                                              ; preds = %169, %23
  %196 = load i32, i32* %4, align 4
  ret i32 %196
}

declare dso_local %struct.saa7134_dev* @video_drvdata(%struct.file*) #1

declare dso_local %struct.saa7134_format* @format_by_fourcc(i32) #1

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
