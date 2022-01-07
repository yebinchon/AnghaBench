; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-vid-out.c_vivid_g_fmt_vid_out.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-vid-out.c_vivid_g_fmt_vid_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.v4l2_pix_format_mplane }
%struct.v4l2_pix_format_mplane = type { i32, i32, %struct.TYPE_6__*, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i64 }
%struct.vivid_dev = type { i32*, i32, i32, i32, i32, i32, %struct.TYPE_5__, %struct.vivid_fmt* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.vivid_fmt = type { i32, i32, i32*, i64*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vivid_g_fmt_vid_out(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.v4l2_format*, align 8
  %7 = alloca %struct.vivid_dev*, align 8
  %8 = alloca %struct.v4l2_pix_format_mplane*, align 8
  %9 = alloca %struct.vivid_fmt*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %6, align 8
  %12 = load %struct.file*, %struct.file** %4, align 8
  %13 = call %struct.vivid_dev* @video_drvdata(%struct.file* %12)
  store %struct.vivid_dev* %13, %struct.vivid_dev** %7, align 8
  %14 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %15 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  store %struct.v4l2_pix_format_mplane* %16, %struct.v4l2_pix_format_mplane** %8, align 8
  %17 = load %struct.vivid_dev*, %struct.vivid_dev** %7, align 8
  %18 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %17, i32 0, i32 7
  %19 = load %struct.vivid_fmt*, %struct.vivid_fmt** %18, align 8
  store %struct.vivid_fmt* %19, %struct.vivid_fmt** %9, align 8
  %20 = load %struct.vivid_dev*, %struct.vivid_dev** %7, align 8
  %21 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %20, i32 0, i32 6
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %25 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %24, i32 0, i32 9
  store i32 %23, i32* %25, align 8
  %26 = load %struct.vivid_dev*, %struct.vivid_dev** %7, align 8
  %27 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %26, i32 0, i32 6
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %31 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load %struct.vivid_dev*, %struct.vivid_dev** %7, align 8
  %33 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %36 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %35, i32 0, i32 8
  store i32 %34, i32* %36, align 4
  %37 = load %struct.vivid_fmt*, %struct.vivid_fmt** %9, align 8
  %38 = getelementptr inbounds %struct.vivid_fmt, %struct.vivid_fmt* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %41 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %40, i32 0, i32 7
  store i32 %39, i32* %41, align 8
  %42 = load %struct.vivid_dev*, %struct.vivid_dev** %7, align 8
  %43 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %46 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %45, i32 0, i32 6
  store i32 %44, i32* %46, align 4
  %47 = load %struct.vivid_dev*, %struct.vivid_dev** %7, align 8
  %48 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %51 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %50, i32 0, i32 5
  store i32 %49, i32* %51, align 8
  %52 = load %struct.vivid_dev*, %struct.vivid_dev** %7, align 8
  %53 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %56 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %55, i32 0, i32 4
  store i32 %54, i32* %56, align 4
  %57 = load %struct.vivid_dev*, %struct.vivid_dev** %7, align 8
  %58 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %61 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %60, i32 0, i32 3
  store i32 %59, i32* %61, align 8
  %62 = load %struct.vivid_fmt*, %struct.vivid_fmt** %9, align 8
  %63 = getelementptr inbounds %struct.vivid_fmt, %struct.vivid_fmt* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %66 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  store i32 0, i32* %10, align 4
  br label %67

67:                                               ; preds = %116, %3
  %68 = load i32, i32* %10, align 4
  %69 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %70 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = icmp ult i32 %68, %71
  br i1 %72, label %73, label %119

73:                                               ; preds = %67
  %74 = load %struct.vivid_dev*, %struct.vivid_dev** %7, align 8
  %75 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %10, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %82 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %81, i32 0, i32 2
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %82, align 8
  %84 = load i32, i32* %10, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  store i32 %80, i32* %87, align 8
  %88 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %89 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %88, i32 0, i32 2
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %89, align 8
  %91 = load i32, i32* %10, align 4
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %97 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = mul i32 %95, %98
  %100 = zext i32 %99 to i64
  %101 = load %struct.vivid_fmt*, %struct.vivid_fmt** %9, align 8
  %102 = getelementptr inbounds %struct.vivid_fmt, %struct.vivid_fmt* %101, i32 0, i32 3
  %103 = load i64*, i64** %102, align 8
  %104 = load i32, i32* %10, align 4
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds i64, i64* %103, i64 %105
  %107 = load i64, i64* %106, align 8
  %108 = add nsw i64 %100, %107
  %109 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %110 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %109, i32 0, i32 2
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %110, align 8
  %112 = load i32, i32* %10, align 4
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 1
  store i64 %108, i64* %115, align 8
  br label %116

116:                                              ; preds = %73
  %117 = load i32, i32* %10, align 4
  %118 = add i32 %117, 1
  store i32 %118, i32* %10, align 4
  br label %67

119:                                              ; preds = %67
  %120 = load %struct.vivid_fmt*, %struct.vivid_fmt** %9, align 8
  %121 = getelementptr inbounds %struct.vivid_fmt, %struct.vivid_fmt* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  store i32 %122, i32* %10, align 4
  br label %123

123:                                              ; preds = %158, %119
  %124 = load i32, i32* %10, align 4
  %125 = load %struct.vivid_fmt*, %struct.vivid_fmt** %9, align 8
  %126 = getelementptr inbounds %struct.vivid_fmt, %struct.vivid_fmt* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = icmp ult i32 %124, %127
  br i1 %128, label %129, label %161

129:                                              ; preds = %123
  %130 = load %struct.vivid_dev*, %struct.vivid_dev** %7, align 8
  %131 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %130, i32 0, i32 0
  %132 = load i32*, i32** %131, align 8
  %133 = load i32, i32* %10, align 4
  %134 = zext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  %136 = load i32, i32* %135, align 4
  store i32 %136, i32* %11, align 4
  %137 = load i32, i32* %11, align 4
  %138 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %139 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = mul i32 %137, %140
  %142 = load %struct.vivid_fmt*, %struct.vivid_fmt** %9, align 8
  %143 = getelementptr inbounds %struct.vivid_fmt, %struct.vivid_fmt* %142, i32 0, i32 2
  %144 = load i32*, i32** %143, align 8
  %145 = load i32, i32* %10, align 4
  %146 = zext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %144, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = udiv i32 %141, %148
  %150 = zext i32 %149 to i64
  %151 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %152 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %151, i32 0, i32 2
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i64 0
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = add nsw i64 %156, %150
  store i64 %157, i64* %155, align 8
  br label %158

158:                                              ; preds = %129
  %159 = load i32, i32* %10, align 4
  %160 = add i32 %159, 1
  store i32 %160, i32* %10, align 4
  br label %123

161:                                              ; preds = %123
  ret i32 0
}

declare dso_local %struct.vivid_dev* @video_drvdata(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
