; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos-gsc/extr_gsc-core.c_gsc_g_fmt_mplane.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos-gsc/extr_gsc-core.c_gsc_g_fmt_mplane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gsc_ctx = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.v4l2_pix_format_mplane }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, %struct.TYPE_6__*, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.gsc_frame = type { i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32*, i32 }

@V4L2_FIELD_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gsc_g_fmt_mplane(%struct.gsc_ctx* %0, %struct.v4l2_format* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gsc_ctx*, align 8
  %5 = alloca %struct.v4l2_format*, align 8
  %6 = alloca %struct.gsc_frame*, align 8
  %7 = alloca %struct.v4l2_pix_format_mplane*, align 8
  %8 = alloca i32, align 4
  store %struct.gsc_ctx* %0, %struct.gsc_ctx** %4, align 8
  store %struct.v4l2_format* %1, %struct.v4l2_format** %5, align 8
  %9 = load %struct.gsc_ctx*, %struct.gsc_ctx** %4, align 8
  %10 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %11 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.gsc_frame* @ctx_get_frame(%struct.gsc_ctx* %9, i32 %12)
  store %struct.gsc_frame* %13, %struct.gsc_frame** %6, align 8
  %14 = load %struct.gsc_frame*, %struct.gsc_frame** %6, align 8
  %15 = call i64 @IS_ERR(%struct.gsc_frame* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load %struct.gsc_frame*, %struct.gsc_frame** %6, align 8
  %19 = call i32 @PTR_ERR(%struct.gsc_frame* %18)
  store i32 %19, i32* %3, align 4
  br label %107

20:                                               ; preds = %2
  %21 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %22 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  store %struct.v4l2_pix_format_mplane* %23, %struct.v4l2_pix_format_mplane** %7, align 8
  %24 = load %struct.gsc_frame*, %struct.gsc_frame** %6, align 8
  %25 = getelementptr inbounds %struct.gsc_frame, %struct.gsc_frame* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %7, align 8
  %28 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load %struct.gsc_frame*, %struct.gsc_frame** %6, align 8
  %30 = getelementptr inbounds %struct.gsc_frame, %struct.gsc_frame* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %7, align 8
  %33 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %35 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %7, align 8
  %36 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %35, i32 0, i32 6
  store i32 %34, i32* %36, align 8
  %37 = load %struct.gsc_frame*, %struct.gsc_frame** %6, align 8
  %38 = getelementptr inbounds %struct.gsc_frame, %struct.gsc_frame* %37, i32 0, i32 2
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %7, align 8
  %43 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %42, i32 0, i32 5
  store i32 %41, i32* %43, align 4
  %44 = load %struct.gsc_frame*, %struct.gsc_frame** %6, align 8
  %45 = getelementptr inbounds %struct.gsc_frame, %struct.gsc_frame* %44, i32 0, i32 2
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %7, align 8
  %50 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 8
  %51 = load %struct.gsc_ctx*, %struct.gsc_ctx** %4, align 8
  %52 = getelementptr inbounds %struct.gsc_ctx, %struct.gsc_ctx* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %7, align 8
  %55 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %54, i32 0, i32 4
  store i32 %53, i32* %55, align 8
  store i32 0, i32* %8, align 4
  br label %56

56:                                               ; preds = %103, %20
  %57 = load i32, i32* %8, align 4
  %58 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %7, align 8
  %59 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = icmp slt i32 %57, %60
  br i1 %61, label %62, label %106

62:                                               ; preds = %56
  %63 = load %struct.gsc_frame*, %struct.gsc_frame** %6, align 8
  %64 = getelementptr inbounds %struct.gsc_frame, %struct.gsc_frame* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.gsc_frame*, %struct.gsc_frame** %6, align 8
  %67 = getelementptr inbounds %struct.gsc_frame, %struct.gsc_frame* %66, i32 0, i32 2
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %8, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = mul nsw i32 %65, %74
  %76 = sdiv i32 %75, 8
  %77 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %7, align 8
  %78 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %77, i32 0, i32 3
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  %80 = load i32, i32* %8, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  store i32 %76, i32* %83, align 4
  %84 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %7, align 8
  %85 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %84, i32 0, i32 3
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %85, align 8
  %87 = load i32, i32* %8, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.gsc_frame*, %struct.gsc_frame** %6, align 8
  %93 = getelementptr inbounds %struct.gsc_frame, %struct.gsc_frame* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = mul nsw i32 %91, %94
  %96 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %7, align 8
  %97 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %96, i32 0, i32 3
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %97, align 8
  %99 = load i32, i32* %8, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 1
  store i32 %95, i32* %102, align 4
  br label %103

103:                                              ; preds = %62
  %104 = load i32, i32* %8, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %8, align 4
  br label %56

106:                                              ; preds = %56
  store i32 0, i32* %3, align 4
  br label %107

107:                                              ; preds = %106, %17
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

declare dso_local %struct.gsc_frame* @ctx_get_frame(%struct.gsc_ctx*, i32) #1

declare dso_local i64 @IS_ERR(%struct.gsc_frame*) #1

declare dso_local i32 @PTR_ERR(%struct.gsc_frame*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
