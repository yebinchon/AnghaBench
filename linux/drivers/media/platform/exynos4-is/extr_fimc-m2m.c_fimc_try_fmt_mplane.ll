; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-m2m.c_fimc_try_fmt_mplane.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-m2m.c_fimc_try_fmt_mplane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fimc_ctx = type { %struct.fimc_dev* }
%struct.fimc_dev = type { %struct.fimc_variant* }
%struct.fimc_variant = type { i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.v4l2_format = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.v4l2_pix_format_mplane }
%struct.v4l2_pix_format_mplane = type { i64, i32, i32, i32 }
%struct.fimc_fmt = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Pixel format lookup failed\00", align 1
@V4L2_FIELD_ANY = common dso_local global i64 0, align 8
@V4L2_FIELD_NONE = common dso_local global i64 0, align 8
@V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fimc_ctx*, %struct.v4l2_format*)* @fimc_try_fmt_mplane to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fimc_try_fmt_mplane(%struct.fimc_ctx* %0, %struct.v4l2_format* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fimc_ctx*, align 8
  %5 = alloca %struct.v4l2_format*, align 8
  %6 = alloca %struct.fimc_dev*, align 8
  %7 = alloca %struct.fimc_variant*, align 8
  %8 = alloca %struct.v4l2_pix_format_mplane*, align 8
  %9 = alloca %struct.fimc_fmt*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.fimc_ctx* %0, %struct.fimc_ctx** %4, align 8
  store %struct.v4l2_format* %1, %struct.v4l2_format** %5, align 8
  %13 = load %struct.fimc_ctx*, %struct.fimc_ctx** %4, align 8
  %14 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %13, i32 0, i32 0
  %15 = load %struct.fimc_dev*, %struct.fimc_dev** %14, align 8
  store %struct.fimc_dev* %15, %struct.fimc_dev** %6, align 8
  %16 = load %struct.fimc_dev*, %struct.fimc_dev** %6, align 8
  %17 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %16, i32 0, i32 0
  %18 = load %struct.fimc_variant*, %struct.fimc_variant** %17, align 8
  store %struct.fimc_variant* %18, %struct.fimc_variant** %7, align 8
  %19 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %20 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  store %struct.v4l2_pix_format_mplane* %21, %struct.v4l2_pix_format_mplane** %8, align 8
  %22 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %23 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @IS_M2M(i64 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %2
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %144

30:                                               ; preds = %2
  %31 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %32 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %31, i32 0, i32 3
  %33 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %34 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @get_m2m_fmt_flags(i64 %35)
  %37 = call %struct.fimc_fmt* @fimc_find_format(i32* %32, i32* null, i32 %36, i32 0)
  store %struct.fimc_fmt* %37, %struct.fimc_fmt** %9, align 8
  %38 = load %struct.fimc_fmt*, %struct.fimc_fmt** %9, align 8
  %39 = icmp eq %struct.fimc_fmt* %38, null
  %40 = zext i1 %39 to i32
  %41 = call i64 @WARN(i32 %40, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %30
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %144

46:                                               ; preds = %30
  %47 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %48 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @V4L2_FIELD_ANY, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %46
  %53 = load i64, i64* @V4L2_FIELD_NONE, align 8
  %54 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %55 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %54, i32 0, i32 0
  store i64 %53, i64* %55, align 8
  br label %66

56:                                               ; preds = %46
  %57 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %58 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @V4L2_FIELD_NONE, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %56
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %3, align 4
  br label %144

65:                                               ; preds = %56
  br label %66

66:                                               ; preds = %65, %52
  %67 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %68 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %83

72:                                               ; preds = %66
  %73 = load %struct.fimc_variant*, %struct.fimc_variant** %7, align 8
  %74 = getelementptr inbounds %struct.fimc_variant, %struct.fimc_variant* %73, i32 0, i32 3
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %10, align 4
  %78 = load %struct.fimc_variant*, %struct.fimc_variant** %7, align 8
  %79 = getelementptr inbounds %struct.fimc_variant, %struct.fimc_variant* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @ffs(i32 %80)
  %82 = sub nsw i32 %81, 1
  store i32 %82, i32* %11, align 4
  br label %94

83:                                               ; preds = %66
  %84 = load %struct.fimc_variant*, %struct.fimc_variant** %7, align 8
  %85 = getelementptr inbounds %struct.fimc_variant, %struct.fimc_variant* %84, i32 0, i32 3
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  store i32 %88, i32* %10, align 4
  %89 = load %struct.fimc_variant*, %struct.fimc_variant** %7, align 8
  %90 = getelementptr inbounds %struct.fimc_variant, %struct.fimc_variant* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @ffs(i32 %91)
  %93 = sub nsw i32 %92, 1
  store i32 %93, i32* %11, align 4
  br label %94

94:                                               ; preds = %83, %72
  %95 = load %struct.fimc_fmt*, %struct.fimc_fmt** %9, align 8
  %96 = call i64 @tiled_fmt(%struct.fimc_fmt* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %94
  store i32 6, i32* %11, align 4
  store i32 5, i32* %12, align 4
  br label %119

99:                                               ; preds = %94
  %100 = load %struct.fimc_variant*, %struct.fimc_variant** %7, align 8
  %101 = getelementptr inbounds %struct.fimc_variant, %struct.fimc_variant* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = icmp eq i32 %102, 1
  br i1 %103, label %104, label %112

104:                                              ; preds = %99
  %105 = load %struct.fimc_fmt*, %struct.fimc_fmt** %9, align 8
  %106 = getelementptr inbounds %struct.fimc_fmt, %struct.fimc_fmt* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i64 @fimc_fmt_is_rgb(i32 %107)
  %109 = icmp ne i64 %108, 0
  %110 = zext i1 %109 to i64
  %111 = select i1 %109, i32 0, i32 1
  store i32 %111, i32* %12, align 4
  br label %118

112:                                              ; preds = %99
  %113 = load %struct.fimc_variant*, %struct.fimc_variant** %7, align 8
  %114 = getelementptr inbounds %struct.fimc_variant, %struct.fimc_variant* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @ffs(i32 %115)
  %117 = sub nsw i32 %116, 1
  store i32 %117, i32* %12, align 4
  br label %118

118:                                              ; preds = %112, %104
  br label %119

119:                                              ; preds = %118, %98
  %120 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %121 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %120, i32 0, i32 2
  %122 = load i32, i32* %10, align 4
  %123 = load i32, i32* %11, align 4
  %124 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %125 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %124, i32 0, i32 1
  %126 = load %struct.fimc_variant*, %struct.fimc_variant** %7, align 8
  %127 = getelementptr inbounds %struct.fimc_variant, %struct.fimc_variant* %126, i32 0, i32 3
  %128 = load %struct.TYPE_3__*, %struct.TYPE_3__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* %12, align 4
  %132 = call i32 @v4l_bound_align_image(i32* %121, i32 16, i32 %122, i32 %123, i32* %125, i32 8, i32 %130, i32 %131, i32 0)
  %133 = load %struct.fimc_fmt*, %struct.fimc_fmt** %9, align 8
  %134 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %135 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %138 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %141 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 0
  %143 = call i32 @fimc_adjust_mplane_format(%struct.fimc_fmt* %133, i32 %136, i32 %139, %struct.v4l2_pix_format_mplane* %142)
  store i32 0, i32* %3, align 4
  br label %144

144:                                              ; preds = %119, %62, %43, %27
  %145 = load i32, i32* %3, align 4
  ret i32 %145
}

declare dso_local i32 @IS_M2M(i64) #1

declare dso_local %struct.fimc_fmt* @fimc_find_format(i32*, i32*, i32, i32) #1

declare dso_local i32 @get_m2m_fmt_flags(i64) #1

declare dso_local i64 @WARN(i32, i8*) #1

declare dso_local i32 @ffs(i32) #1

declare dso_local i64 @tiled_fmt(%struct.fimc_fmt*) #1

declare dso_local i64 @fimc_fmt_is_rgb(i32) #1

declare dso_local i32 @v4l_bound_align_image(i32*, i32, i32, i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @fimc_adjust_mplane_format(%struct.fimc_fmt*, i32, i32, %struct.v4l2_pix_format_mplane*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
