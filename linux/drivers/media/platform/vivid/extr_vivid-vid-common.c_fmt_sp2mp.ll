; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-vid-common.c_fmt_sp2mp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-vid-common.c_fmt_sp2mp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_format = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.v4l2_pix_format, %struct.v4l2_pix_format_mplane }
%struct.v4l2_pix_format = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.v4l2_plane_pix_format* }
%struct.v4l2_plane_pix_format = type { i32, i32, i32 }

@V4L2_BUF_TYPE_VIDEO_OUTPUT = common dso_local global i64 0, align 8
@V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE = common dso_local global i64 0, align 8
@V4L2_CAP_VIDEO_CAPTURE_MPLANE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fmt_sp2mp(%struct.v4l2_format* %0, %struct.v4l2_format* %1) #0 {
  %3 = alloca %struct.v4l2_format*, align 8
  %4 = alloca %struct.v4l2_format*, align 8
  %5 = alloca %struct.v4l2_pix_format_mplane*, align 8
  %6 = alloca %struct.v4l2_plane_pix_format*, align 8
  %7 = alloca %struct.v4l2_pix_format*, align 8
  %8 = alloca i32, align 4
  store %struct.v4l2_format* %0, %struct.v4l2_format** %3, align 8
  store %struct.v4l2_format* %1, %struct.v4l2_format** %4, align 8
  %9 = load %struct.v4l2_format*, %struct.v4l2_format** %4, align 8
  %10 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  store %struct.v4l2_pix_format_mplane* %11, %struct.v4l2_pix_format_mplane** %5, align 8
  %12 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %5, align 8
  %13 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %12, i32 0, i32 11
  %14 = load %struct.v4l2_plane_pix_format*, %struct.v4l2_plane_pix_format** %13, align 8
  %15 = getelementptr inbounds %struct.v4l2_plane_pix_format, %struct.v4l2_plane_pix_format* %14, i64 0
  store %struct.v4l2_plane_pix_format* %15, %struct.v4l2_plane_pix_format** %6, align 8
  %16 = load %struct.v4l2_format*, %struct.v4l2_format** %3, align 8
  %17 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store %struct.v4l2_pix_format* %18, %struct.v4l2_pix_format** %7, align 8
  %19 = load %struct.v4l2_format*, %struct.v4l2_format** %3, align 8
  %20 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_OUTPUT, align 8
  %23 = icmp eq i64 %21, %22
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %8, align 4
  %25 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %5, align 8
  %26 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %25, i32 0, i32 10
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @memset(i32 %27, i32 0, i32 4)
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %2
  %32 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE, align 8
  br label %35

33:                                               ; preds = %2
  %34 = load i64, i64* @V4L2_CAP_VIDEO_CAPTURE_MPLANE, align 8
  br label %35

35:                                               ; preds = %33, %31
  %36 = phi i64 [ %32, %31 ], [ %34, %33 ]
  %37 = load %struct.v4l2_format*, %struct.v4l2_format** %4, align 8
  %38 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  %39 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %7, align 8
  %40 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %39, i32 0, i32 10
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %5, align 8
  %43 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %42, i32 0, i32 9
  store i32 %41, i32* %43, align 4
  %44 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %7, align 8
  %45 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %44, i32 0, i32 9
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %5, align 8
  %48 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %47, i32 0, i32 8
  store i32 %46, i32* %48, align 8
  %49 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %7, align 8
  %50 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %49, i32 0, i32 8
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %5, align 8
  %53 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %52, i32 0, i32 7
  store i32 %51, i32* %53, align 4
  %54 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %7, align 8
  %55 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %54, i32 0, i32 7
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %5, align 8
  %58 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %57, i32 0, i32 6
  store i32 %56, i32* %58, align 8
  %59 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %7, align 8
  %60 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %59, i32 0, i32 6
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %5, align 8
  %63 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %62, i32 0, i32 5
  store i32 %61, i32* %63, align 4
  %64 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %7, align 8
  %65 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %64, i32 0, i32 5
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %5, align 8
  %68 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %67, i32 0, i32 4
  store i32 %66, i32* %68, align 8
  %69 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %7, align 8
  %70 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %5, align 8
  %73 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %72, i32 0, i32 3
  store i32 %71, i32* %73, align 4
  %74 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %7, align 8
  %75 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %5, align 8
  %78 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 8
  %79 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %5, align 8
  %80 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %79, i32 0, i32 0
  store i32 1, i32* %80, align 8
  %81 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %7, align 8
  %82 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %5, align 8
  %85 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 4
  %86 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %7, align 8
  %87 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.v4l2_plane_pix_format*, %struct.v4l2_plane_pix_format** %6, align 8
  %90 = getelementptr inbounds %struct.v4l2_plane_pix_format, %struct.v4l2_plane_pix_format* %89, i32 0, i32 2
  store i32 %88, i32* %90, align 4
  %91 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %7, align 8
  %92 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.v4l2_plane_pix_format*, %struct.v4l2_plane_pix_format** %6, align 8
  %95 = getelementptr inbounds %struct.v4l2_plane_pix_format, %struct.v4l2_plane_pix_format* %94, i32 0, i32 1
  store i32 %93, i32* %95, align 4
  %96 = load %struct.v4l2_plane_pix_format*, %struct.v4l2_plane_pix_format** %6, align 8
  %97 = getelementptr inbounds %struct.v4l2_plane_pix_format, %struct.v4l2_plane_pix_format* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @memset(i32 %98, i32 0, i32 4)
  ret void
}

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
