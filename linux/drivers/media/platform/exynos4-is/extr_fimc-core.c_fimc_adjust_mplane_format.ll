; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-core.c_fimc_adjust_mplane_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-core.c_fimc_adjust_mplane_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fimc_fmt = type { i32, i32, i32*, i32 }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, %struct.v4l2_plane_pix_format*, i32, i32, i32 }
%struct.v4l2_plane_pix_format = type { i32, i32 }

@V4L2_COLORSPACE_JPEG = common dso_local global i32 0, align 4
@V4L2_FIELD_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fimc_adjust_mplane_format(%struct.fimc_fmt* %0, i32 %1, i32 %2, %struct.v4l2_pix_format_mplane* %3) #0 {
  %5 = alloca %struct.fimc_fmt*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.v4l2_pix_format_mplane*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.v4l2_plane_pix_format*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.fimc_fmt* %0, %struct.fimc_fmt** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.v4l2_pix_format_mplane* %3, %struct.v4l2_pix_format_mplane** %8, align 8
  store i32 0, i32* %9, align 4
  %15 = load i32, i32* @V4L2_COLORSPACE_JPEG, align 4
  %16 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %17 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %16, i32 0, i32 6
  store i32 %15, i32* %17, align 8
  %18 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %19 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %20 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %19, i32 0, i32 5
  store i32 %18, i32* %20, align 4
  %21 = load %struct.fimc_fmt*, %struct.fimc_fmt** %5, align 8
  %22 = getelementptr inbounds %struct.fimc_fmt, %struct.fimc_fmt* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %25 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load %struct.fimc_fmt*, %struct.fimc_fmt** %5, align 8
  %27 = getelementptr inbounds %struct.fimc_fmt, %struct.fimc_fmt* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %30 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %29, i32 0, i32 4
  store i32 %28, i32* %30, align 8
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %33 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %36 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 8
  store i32 0, i32* %10, align 4
  br label %37

37:                                               ; preds = %160, %4
  %38 = load i32, i32* %10, align 4
  %39 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %40 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp slt i32 %38, %41
  br i1 %42, label %43, label %163

43:                                               ; preds = %37
  %44 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %45 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %44, i32 0, i32 3
  %46 = load %struct.v4l2_plane_pix_format*, %struct.v4l2_plane_pix_format** %45, align 8
  %47 = load i32, i32* %10, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.v4l2_plane_pix_format, %struct.v4l2_plane_pix_format* %46, i64 %48
  store %struct.v4l2_plane_pix_format* %49, %struct.v4l2_plane_pix_format** %11, align 8
  %50 = load %struct.v4l2_plane_pix_format*, %struct.v4l2_plane_pix_format** %11, align 8
  %51 = getelementptr inbounds %struct.v4l2_plane_pix_format, %struct.v4l2_plane_pix_format* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %12, align 4
  %53 = load %struct.fimc_fmt*, %struct.fimc_fmt** %5, align 8
  %54 = getelementptr inbounds %struct.fimc_fmt, %struct.fimc_fmt* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = icmp sgt i32 %55, 1
  br i1 %56, label %57, label %70

57:                                               ; preds = %43
  %58 = load i32, i32* %12, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %66, label %60

60:                                               ; preds = %57
  %61 = load i32, i32* %12, align 4
  %62 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %63 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = icmp slt i32 %61, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %60, %57
  %67 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %68 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  store i32 %69, i32* %12, align 4
  br label %70

70:                                               ; preds = %66, %60, %43
  %71 = load %struct.fimc_fmt*, %struct.fimc_fmt** %5, align 8
  %72 = getelementptr inbounds %struct.fimc_fmt, %struct.fimc_fmt* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = icmp eq i32 %73, 1
  br i1 %74, label %75, label %104

75:                                               ; preds = %70
  %76 = load i32, i32* %12, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %93, label %78

78:                                               ; preds = %75
  %79 = load i32, i32* %12, align 4
  %80 = mul nsw i32 %79, 8
  %81 = load %struct.fimc_fmt*, %struct.fimc_fmt** %5, align 8
  %82 = getelementptr inbounds %struct.fimc_fmt, %struct.fimc_fmt* %81, i32 0, i32 2
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %10, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = sdiv i32 %80, %87
  %89 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %90 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = icmp slt i32 %88, %91
  br i1 %92, label %93, label %104

93:                                               ; preds = %78, %75
  %94 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %95 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.fimc_fmt*, %struct.fimc_fmt** %5, align 8
  %98 = getelementptr inbounds %struct.fimc_fmt, %struct.fimc_fmt* %97, i32 0, i32 2
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 0
  %101 = load i32, i32* %100, align 4
  %102 = mul nsw i32 %96, %101
  %103 = sdiv i32 %102, 8
  store i32 %103, i32* %12, align 4
  br label %104

104:                                              ; preds = %93, %78, %70
  %105 = load i32, i32* %10, align 4
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %104
  %108 = load i32, i32* %12, align 4
  store i32 %108, i32* %9, align 4
  br label %121

109:                                              ; preds = %104
  %110 = load i32, i32* %10, align 4
  %111 = icmp eq i32 %110, 1
  br i1 %111, label %112, label %120

112:                                              ; preds = %109
  %113 = load %struct.fimc_fmt*, %struct.fimc_fmt** %5, align 8
  %114 = getelementptr inbounds %struct.fimc_fmt, %struct.fimc_fmt* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = icmp eq i32 %115, 3
  br i1 %116, label %117, label %120

117:                                              ; preds = %112
  %118 = load i32, i32* %9, align 4
  %119 = sdiv i32 %118, 2
  store i32 %119, i32* %9, align 4
  br label %120

120:                                              ; preds = %117, %112, %109
  br label %121

121:                                              ; preds = %120, %107
  %122 = load i32, i32* %9, align 4
  %123 = load %struct.v4l2_plane_pix_format*, %struct.v4l2_plane_pix_format** %11, align 8
  %124 = getelementptr inbounds %struct.v4l2_plane_pix_format, %struct.v4l2_plane_pix_format* %123, i32 0, i32 0
  store i32 %122, i32* %124, align 4
  %125 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %126 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %129 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = mul nsw i32 %127, %130
  %132 = load %struct.fimc_fmt*, %struct.fimc_fmt** %5, align 8
  %133 = getelementptr inbounds %struct.fimc_fmt, %struct.fimc_fmt* %132, i32 0, i32 2
  %134 = load i32*, i32** %133, align 8
  %135 = load i32, i32* %10, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = mul nsw i32 %131, %138
  %140 = sdiv i32 %139, 8
  store i32 %140, i32* %13, align 4
  %141 = load %struct.fimc_fmt*, %struct.fimc_fmt** %5, align 8
  %142 = call i64 @tiled_fmt(%struct.fimc_fmt* %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %152

144:                                              ; preds = %121
  %145 = load %struct.v4l2_plane_pix_format*, %struct.v4l2_plane_pix_format** %11, align 8
  %146 = getelementptr inbounds %struct.v4l2_plane_pix_format, %struct.v4l2_plane_pix_format* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = mul nsw i32 %147, 32
  store i32 %148, i32* %14, align 4
  %149 = load i32, i32* %13, align 4
  %150 = load i32, i32* %14, align 4
  %151 = call i32 @roundup(i32 %149, i32 %150)
  store i32 %151, i32* %13, align 4
  br label %152

152:                                              ; preds = %144, %121
  %153 = load i32, i32* %13, align 4
  %154 = load %struct.v4l2_plane_pix_format*, %struct.v4l2_plane_pix_format** %11, align 8
  %155 = getelementptr inbounds %struct.v4l2_plane_pix_format, %struct.v4l2_plane_pix_format* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @max(i32 %153, i32 %156)
  %158 = load %struct.v4l2_plane_pix_format*, %struct.v4l2_plane_pix_format** %11, align 8
  %159 = getelementptr inbounds %struct.v4l2_plane_pix_format, %struct.v4l2_plane_pix_format* %158, i32 0, i32 1
  store i32 %157, i32* %159, align 4
  br label %160

160:                                              ; preds = %152
  %161 = load i32, i32* %10, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %10, align 4
  br label %37

163:                                              ; preds = %37
  ret void
}

declare dso_local i64 @tiled_fmt(%struct.fimc_fmt*) #1

declare dso_local i32 @roundup(i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
