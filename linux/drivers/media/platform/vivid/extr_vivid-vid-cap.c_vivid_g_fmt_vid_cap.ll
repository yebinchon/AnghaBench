; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-vid-cap.c_vivid_g_fmt_vid_cap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-vid-cap.c_vivid_g_fmt_vid_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.v4l2_pix_format_mplane }
%struct.v4l2_pix_format_mplane = type { i32, i32, %struct.TYPE_7__*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i64, i32 }
%struct.vivid_dev = type { %struct.TYPE_8__*, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i64, i32, i32*, i64*, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@TGP_COLOR_ENC_HSV = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vivid_g_fmt_vid_cap(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.v4l2_format*, align 8
  %7 = alloca %struct.vivid_dev*, align 8
  %8 = alloca %struct.v4l2_pix_format_mplane*, align 8
  %9 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %6, align 8
  %10 = load %struct.file*, %struct.file** %4, align 8
  %11 = call %struct.vivid_dev* @video_drvdata(%struct.file* %10)
  store %struct.vivid_dev* %11, %struct.vivid_dev** %7, align 8
  %12 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %13 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  store %struct.v4l2_pix_format_mplane* %14, %struct.v4l2_pix_format_mplane** %8, align 8
  %15 = load %struct.vivid_dev*, %struct.vivid_dev** %7, align 8
  %16 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %20 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %19, i32 0, i32 10
  store i32 %18, i32* %20, align 4
  %21 = load %struct.vivid_dev*, %struct.vivid_dev** %7, align 8
  %22 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %26 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load %struct.vivid_dev*, %struct.vivid_dev** %7, align 8
  %28 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %31 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %30, i32 0, i32 9
  store i32 %29, i32* %31, align 8
  %32 = load %struct.vivid_dev*, %struct.vivid_dev** %7, align 8
  %33 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %32, i32 0, i32 0
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %38 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %37, i32 0, i32 8
  store i32 %36, i32* %38, align 4
  %39 = load %struct.vivid_dev*, %struct.vivid_dev** %7, align 8
  %40 = call i32 @vivid_colorspace_cap(%struct.vivid_dev* %39)
  %41 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %42 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %41, i32 0, i32 7
  store i32 %40, i32* %42, align 8
  %43 = load %struct.vivid_dev*, %struct.vivid_dev** %7, align 8
  %44 = call i32 @vivid_xfer_func_cap(%struct.vivid_dev* %43)
  %45 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %46 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %45, i32 0, i32 6
  store i32 %44, i32* %46, align 4
  %47 = load %struct.vivid_dev*, %struct.vivid_dev** %7, align 8
  %48 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %47, i32 0, i32 0
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @TGP_COLOR_ENC_HSV, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %3
  %55 = load %struct.vivid_dev*, %struct.vivid_dev** %7, align 8
  %56 = call i32 @vivid_hsv_enc_cap(%struct.vivid_dev* %55)
  %57 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %58 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %57, i32 0, i32 5
  store i32 %56, i32* %58, align 8
  br label %64

59:                                               ; preds = %3
  %60 = load %struct.vivid_dev*, %struct.vivid_dev** %7, align 8
  %61 = call i32 @vivid_ycbcr_enc_cap(%struct.vivid_dev* %60)
  %62 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %63 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %62, i32 0, i32 4
  store i32 %61, i32* %63, align 4
  br label %64

64:                                               ; preds = %59, %54
  %65 = load %struct.vivid_dev*, %struct.vivid_dev** %7, align 8
  %66 = call i32 @vivid_quantization_cap(%struct.vivid_dev* %65)
  %67 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %68 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %67, i32 0, i32 3
  store i32 %66, i32* %68, align 8
  %69 = load %struct.vivid_dev*, %struct.vivid_dev** %7, align 8
  %70 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %69, i32 0, i32 0
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %75 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 4
  store i32 0, i32* %9, align 4
  br label %76

76:                                               ; preds = %130, %64
  %77 = load i32, i32* %9, align 4
  %78 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %79 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = icmp ult i32 %77, %80
  br i1 %81, label %82, label %133

82:                                               ; preds = %76
  %83 = load %struct.vivid_dev*, %struct.vivid_dev** %7, align 8
  %84 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %83, i32 0, i32 1
  %85 = load i32, i32* %9, align 4
  %86 = call i32 @tpg_g_bytesperline(i32* %84, i32 %85)
  %87 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %88 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %87, i32 0, i32 2
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %88, align 8
  %90 = load i32, i32* %9, align 4
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 1
  store i32 %86, i32* %93, align 8
  %94 = load %struct.vivid_dev*, %struct.vivid_dev** %7, align 8
  %95 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %94, i32 0, i32 1
  %96 = load i32, i32* %9, align 4
  %97 = call i32 @tpg_g_line_width(i32* %95, i32 %96)
  %98 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %99 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = mul nsw i32 %97, %100
  %102 = load %struct.vivid_dev*, %struct.vivid_dev** %7, align 8
  %103 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %102, i32 0, i32 0
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 2
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* %9, align 4
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = sdiv i32 %101, %110
  %112 = sext i32 %111 to i64
  %113 = load %struct.vivid_dev*, %struct.vivid_dev** %7, align 8
  %114 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %113, i32 0, i32 0
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 3
  %117 = load i64*, i64** %116, align 8
  %118 = load i32, i32* %9, align 4
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds i64, i64* %117, i64 %119
  %121 = load i64, i64* %120, align 8
  %122 = add nsw i64 %112, %121
  %123 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %124 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %123, i32 0, i32 2
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %124, align 8
  %126 = load i32, i32* %9, align 4
  %127 = zext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 0
  store i64 %122, i64* %129, align 8
  br label %130

130:                                              ; preds = %82
  %131 = load i32, i32* %9, align 4
  %132 = add i32 %131, 1
  store i32 %132, i32* %9, align 4
  br label %76

133:                                              ; preds = %76
  ret i32 0
}

declare dso_local %struct.vivid_dev* @video_drvdata(%struct.file*) #1

declare dso_local i32 @vivid_colorspace_cap(%struct.vivid_dev*) #1

declare dso_local i32 @vivid_xfer_func_cap(%struct.vivid_dev*) #1

declare dso_local i32 @vivid_hsv_enc_cap(%struct.vivid_dev*) #1

declare dso_local i32 @vivid_ycbcr_enc_cap(%struct.vivid_dev*) #1

declare dso_local i32 @vivid_quantization_cap(%struct.vivid_dev*) #1

declare dso_local i32 @tpg_g_bytesperline(i32*, i32) #1

declare dso_local i32 @tpg_g_line_width(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
