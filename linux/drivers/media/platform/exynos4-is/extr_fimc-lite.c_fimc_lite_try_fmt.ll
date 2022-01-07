; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-lite.c_fimc_lite_try_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-lite.c_fimc_lite_try_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fimc_lite = type { %struct.TYPE_3__, %struct.flite_drvdata* }
%struct.TYPE_3__ = type { %struct.fimc_fmt* }
%struct.fimc_fmt = type { i32, i32*, i32, i32, i32 }
%struct.flite_drvdata = type { i32, i32, i32 }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@FMT_FLAGS_YUV = common dso_local global i32 0, align 4
@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fimc_lite*, %struct.v4l2_pix_format_mplane*, %struct.fimc_fmt**)* @fimc_lite_try_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fimc_lite_try_fmt(%struct.fimc_lite* %0, %struct.v4l2_pix_format_mplane* %1, %struct.fimc_fmt** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fimc_lite*, align 8
  %6 = alloca %struct.v4l2_pix_format_mplane*, align 8
  %7 = alloca %struct.fimc_fmt**, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.flite_drvdata*, align 8
  %10 = alloca %struct.fimc_fmt*, align 8
  %11 = alloca %struct.fimc_fmt*, align 8
  store %struct.fimc_lite* %0, %struct.fimc_lite** %5, align 8
  store %struct.v4l2_pix_format_mplane* %1, %struct.v4l2_pix_format_mplane** %6, align 8
  store %struct.fimc_fmt** %2, %struct.fimc_fmt*** %7, align 8
  %12 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %6, align 8
  %13 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %12, i32 0, i32 6
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i64 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %8, align 4
  %18 = load %struct.fimc_lite*, %struct.fimc_lite** %5, align 8
  %19 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %18, i32 0, i32 1
  %20 = load %struct.flite_drvdata*, %struct.flite_drvdata** %19, align 8
  store %struct.flite_drvdata* %20, %struct.flite_drvdata** %9, align 8
  %21 = load %struct.fimc_lite*, %struct.fimc_lite** %5, align 8
  %22 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load %struct.fimc_fmt*, %struct.fimc_fmt** %23, align 8
  store %struct.fimc_fmt* %24, %struct.fimc_fmt** %10, align 8
  %25 = load %struct.fimc_fmt*, %struct.fimc_fmt** %10, align 8
  %26 = icmp eq %struct.fimc_fmt* %25, null
  %27 = zext i1 %26 to i32
  %28 = call i64 @WARN_ON(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %3
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %159

33:                                               ; preds = %3
  %34 = load %struct.fimc_fmt*, %struct.fimc_fmt** %10, align 8
  %35 = getelementptr inbounds %struct.fimc_fmt, %struct.fimc_fmt* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @FMT_FLAGS_YUV, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %33
  %41 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %6, align 8
  %42 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %41, i32 0, i32 4
  %43 = load %struct.fimc_fmt*, %struct.fimc_fmt** %10, align 8
  %44 = getelementptr inbounds %struct.fimc_fmt, %struct.fimc_fmt* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call %struct.fimc_fmt* @fimc_lite_find_format(i32* %42, i32* null, i32 %45, i32 0)
  store %struct.fimc_fmt* %46, %struct.fimc_fmt** %11, align 8
  br label %49

47:                                               ; preds = %33
  %48 = load %struct.fimc_fmt*, %struct.fimc_fmt** %10, align 8
  store %struct.fimc_fmt* %48, %struct.fimc_fmt** %11, align 8
  br label %49

49:                                               ; preds = %47, %40
  %50 = load %struct.fimc_fmt*, %struct.fimc_fmt** %11, align 8
  %51 = icmp eq %struct.fimc_fmt* %50, null
  %52 = zext i1 %51 to i32
  %53 = call i64 @WARN_ON(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %49
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %4, align 4
  br label %159

58:                                               ; preds = %49
  %59 = load %struct.fimc_fmt**, %struct.fimc_fmt*** %7, align 8
  %60 = icmp ne %struct.fimc_fmt** %59, null
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load %struct.fimc_fmt*, %struct.fimc_fmt** %11, align 8
  %63 = load %struct.fimc_fmt**, %struct.fimc_fmt*** %7, align 8
  store %struct.fimc_fmt* %62, %struct.fimc_fmt** %63, align 8
  br label %64

64:                                               ; preds = %61, %58
  %65 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %6, align 8
  %66 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %65, i32 0, i32 0
  %67 = load %struct.flite_drvdata*, %struct.flite_drvdata** %9, align 8
  %68 = getelementptr inbounds %struct.flite_drvdata, %struct.flite_drvdata* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.flite_drvdata*, %struct.flite_drvdata** %9, align 8
  %71 = getelementptr inbounds %struct.flite_drvdata, %struct.flite_drvdata* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i64 @ffs(i32 %72)
  %74 = sub nsw i64 %73, 1
  %75 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %6, align 8
  %76 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %75, i32 0, i32 1
  %77 = load %struct.flite_drvdata*, %struct.flite_drvdata** %9, align 8
  %78 = getelementptr inbounds %struct.flite_drvdata, %struct.flite_drvdata* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @v4l_bound_align_image(i32* %66, i32 8, i32 %69, i64 %74, i32* %76, i32 0, i32 %79, i32 0, i32 0)
  %81 = load i32, i32* %8, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %96, label %83

83:                                               ; preds = %64
  %84 = load i32, i32* %8, align 4
  %85 = mul nsw i32 %84, 8
  %86 = load %struct.fimc_fmt*, %struct.fimc_fmt** %11, align 8
  %87 = getelementptr inbounds %struct.fimc_fmt, %struct.fimc_fmt* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 0
  %90 = load i32, i32* %89, align 4
  %91 = sdiv i32 %85, %90
  %92 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %6, align 8
  %93 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = icmp slt i32 %91, %94
  br i1 %95, label %96, label %112

96:                                               ; preds = %83, %64
  %97 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %6, align 8
  %98 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.fimc_fmt*, %struct.fimc_fmt** %11, align 8
  %101 = getelementptr inbounds %struct.fimc_fmt, %struct.fimc_fmt* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 0
  %104 = load i32, i32* %103, align 4
  %105 = mul nsw i32 %99, %104
  %106 = sdiv i32 %105, 8
  %107 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %6, align 8
  %108 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %107, i32 0, i32 6
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i64 0
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  store i32 %106, i32* %111, align 4
  br label %112

112:                                              ; preds = %96, %83
  %113 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %6, align 8
  %114 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %113, i32 0, i32 6
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i64 0
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %140

120:                                              ; preds = %112
  %121 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %6, align 8
  %122 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %6, align 8
  %125 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = mul nsw i32 %123, %126
  %128 = load %struct.fimc_fmt*, %struct.fimc_fmt** %11, align 8
  %129 = getelementptr inbounds %struct.fimc_fmt, %struct.fimc_fmt* %128, i32 0, i32 1
  %130 = load i32*, i32** %129, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 0
  %132 = load i32, i32* %131, align 4
  %133 = mul nsw i32 %127, %132
  %134 = sdiv i32 %133, 8
  %135 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %6, align 8
  %136 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %135, i32 0, i32 6
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i64 0
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 1
  store i32 %134, i32* %139, align 4
  br label %140

140:                                              ; preds = %120, %112
  %141 = load %struct.fimc_fmt*, %struct.fimc_fmt** %11, align 8
  %142 = getelementptr inbounds %struct.fimc_fmt, %struct.fimc_fmt* %141, i32 0, i32 4
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %6, align 8
  %145 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %144, i32 0, i32 5
  store i32 %143, i32* %145, align 4
  %146 = load %struct.fimc_fmt*, %struct.fimc_fmt** %11, align 8
  %147 = getelementptr inbounds %struct.fimc_fmt, %struct.fimc_fmt* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %6, align 8
  %150 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %149, i32 0, i32 4
  store i32 %148, i32* %150, align 8
  %151 = load %struct.fimc_fmt*, %struct.fimc_fmt** %11, align 8
  %152 = getelementptr inbounds %struct.fimc_fmt, %struct.fimc_fmt* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %6, align 8
  %155 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %154, i32 0, i32 3
  store i32 %153, i32* %155, align 4
  %156 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %157 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %6, align 8
  %158 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %157, i32 0, i32 2
  store i32 %156, i32* %158, align 8
  store i32 0, i32* %4, align 4
  br label %159

159:                                              ; preds = %140, %55, %30
  %160 = load i32, i32* %4, align 4
  ret i32 %160
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local %struct.fimc_fmt* @fimc_lite_find_format(i32*, i32*, i32, i32) #1

declare dso_local i32 @v4l_bound_align_image(i32*, i32, i32, i64, i32*, i32, i32, i32, i32) #1

declare dso_local i64 @ffs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
