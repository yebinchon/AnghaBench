; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_rcar_fdp1.c_fdp1_try_fmt_output.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_rcar_fdp1.c_fdp1_try_fmt_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fdp1_ctx = type { i32 }
%struct.fdp1_fmt = type { i32, i32, i32, i32, i32 }
%struct.v4l2_pix_format_mplane = type { i64, i64, i8*, i8*, i32, i32 }

@FDP1_OUTPUT = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_YUYV = common dso_local global i32 0, align 4
@V4L2_FIELD_NONE = common dso_local global i64 0, align 8
@V4L2_FIELD_ALTERNATE = common dso_local global i64 0, align 8
@V4L2_FIELD_INTERLACED = common dso_local global i64 0, align 8
@V4L2_COLORSPACE_DEFAULT = common dso_local global i64 0, align 8
@V4L2_COLORSPACE_SMPTE170M = common dso_local global i64 0, align 8
@FDP1_MIN_W = common dso_local global i32 0, align 4
@FDP1_MAX_W = common dso_local global i32 0, align 4
@FDP1_MIN_H = common dso_local global i32 0, align 4
@FDP1_MAX_H = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fdp1_ctx*, %struct.fdp1_fmt**, %struct.v4l2_pix_format_mplane*)* @fdp1_try_fmt_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fdp1_try_fmt_output(%struct.fdp1_ctx* %0, %struct.fdp1_fmt** %1, %struct.v4l2_pix_format_mplane* %2) #0 {
  %4 = alloca %struct.fdp1_ctx*, align 8
  %5 = alloca %struct.fdp1_fmt**, align 8
  %6 = alloca %struct.v4l2_pix_format_mplane*, align 8
  %7 = alloca %struct.fdp1_fmt*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.fdp1_ctx* %0, %struct.fdp1_ctx** %4, align 8
  store %struct.fdp1_fmt** %1, %struct.fdp1_fmt*** %5, align 8
  store %struct.v4l2_pix_format_mplane* %2, %struct.v4l2_pix_format_mplane** %6, align 8
  %10 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %6, align 8
  %11 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %10, i32 0, i32 5
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.fdp1_fmt* @fdp1_find_format(i32 %12)
  store %struct.fdp1_fmt* %13, %struct.fdp1_fmt** %7, align 8
  %14 = load %struct.fdp1_fmt*, %struct.fdp1_fmt** %7, align 8
  %15 = icmp ne %struct.fdp1_fmt* %14, null
  br i1 %15, label %16, label %23

16:                                               ; preds = %3
  %17 = load %struct.fdp1_fmt*, %struct.fdp1_fmt** %7, align 8
  %18 = getelementptr inbounds %struct.fdp1_fmt, %struct.fdp1_fmt* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @FDP1_OUTPUT, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %16, %3
  %24 = load i32, i32* @V4L2_PIX_FMT_YUYV, align 4
  %25 = call %struct.fdp1_fmt* @fdp1_find_format(i32 %24)
  store %struct.fdp1_fmt* %25, %struct.fdp1_fmt** %7, align 8
  br label %26

26:                                               ; preds = %23, %16
  %27 = load %struct.fdp1_fmt**, %struct.fdp1_fmt*** %5, align 8
  %28 = icmp ne %struct.fdp1_fmt** %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load %struct.fdp1_fmt*, %struct.fdp1_fmt** %7, align 8
  %31 = load %struct.fdp1_fmt**, %struct.fdp1_fmt*** %5, align 8
  store %struct.fdp1_fmt* %30, %struct.fdp1_fmt** %31, align 8
  br label %32

32:                                               ; preds = %29, %26
  %33 = load %struct.fdp1_fmt*, %struct.fdp1_fmt** %7, align 8
  %34 = getelementptr inbounds %struct.fdp1_fmt, %struct.fdp1_fmt* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %6, align 8
  %37 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %36, i32 0, i32 5
  store i32 %35, i32* %37, align 4
  %38 = load %struct.fdp1_fmt*, %struct.fdp1_fmt** %7, align 8
  %39 = getelementptr inbounds %struct.fdp1_fmt, %struct.fdp1_fmt* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %6, align 8
  %42 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %41, i32 0, i32 4
  store i32 %40, i32* %42, align 8
  %43 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %6, align 8
  %44 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @V4L2_FIELD_NONE, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %64

48:                                               ; preds = %32
  %49 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %6, align 8
  %50 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @V4L2_FIELD_ALTERNATE, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %64

54:                                               ; preds = %48
  %55 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %6, align 8
  %56 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @V4L2_FIELD_HAS_BOTH(i64 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %54
  %61 = load i64, i64* @V4L2_FIELD_INTERLACED, align 8
  %62 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %6, align 8
  %63 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %62, i32 0, i32 0
  store i64 %61, i64* %63, align 8
  br label %64

64:                                               ; preds = %60, %54, %48, %32
  %65 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %6, align 8
  %66 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @V4L2_COLORSPACE_DEFAULT, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %64
  %71 = load i64, i64* @V4L2_COLORSPACE_SMPTE170M, align 8
  %72 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %6, align 8
  %73 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %72, i32 0, i32 1
  store i64 %71, i64* %73, align 8
  br label %74

74:                                               ; preds = %70, %64
  %75 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %6, align 8
  %76 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %75, i32 0, i32 3
  %77 = load i8*, i8** %76, align 8
  %78 = load %struct.fdp1_fmt*, %struct.fdp1_fmt** %7, align 8
  %79 = getelementptr inbounds %struct.fdp1_fmt, %struct.fdp1_fmt* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @round_down(i8* %77, i32 %80)
  store i32 %81, i32* %8, align 4
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* @FDP1_MIN_W, align 4
  %84 = load i32, i32* @FDP1_MAX_W, align 4
  %85 = call i8* @clamp(i32 %82, i32 %83, i32 %84)
  %86 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %6, align 8
  %87 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %86, i32 0, i32 3
  store i8* %85, i8** %87, align 8
  %88 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %6, align 8
  %89 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %88, i32 0, i32 2
  %90 = load i8*, i8** %89, align 8
  %91 = load %struct.fdp1_fmt*, %struct.fdp1_fmt** %7, align 8
  %92 = getelementptr inbounds %struct.fdp1_fmt, %struct.fdp1_fmt* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @round_down(i8* %90, i32 %93)
  store i32 %94, i32* %9, align 4
  %95 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %6, align 8
  %96 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @V4L2_FIELD_ALTERNATE, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %109

100:                                              ; preds = %74
  %101 = load i32, i32* %9, align 4
  %102 = load i32, i32* @FDP1_MIN_H, align 4
  %103 = sdiv i32 %102, 2
  %104 = load i32, i32* @FDP1_MAX_H, align 4
  %105 = sdiv i32 %104, 2
  %106 = call i8* @clamp(i32 %101, i32 %103, i32 %105)
  %107 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %6, align 8
  %108 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %107, i32 0, i32 2
  store i8* %106, i8** %108, align 8
  br label %116

109:                                              ; preds = %74
  %110 = load i32, i32* %9, align 4
  %111 = load i32, i32* @FDP1_MIN_H, align 4
  %112 = load i32, i32* @FDP1_MAX_H, align 4
  %113 = call i8* @clamp(i32 %110, i32 %111, i32 %112)
  %114 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %6, align 8
  %115 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %114, i32 0, i32 2
  store i8* %113, i8** %115, align 8
  br label %116

116:                                              ; preds = %109, %100
  %117 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %6, align 8
  %118 = load %struct.fdp1_fmt*, %struct.fdp1_fmt** %7, align 8
  %119 = call i32 @fdp1_compute_stride(%struct.v4l2_pix_format_mplane* %117, %struct.fdp1_fmt* %118)
  ret void
}

declare dso_local %struct.fdp1_fmt* @fdp1_find_format(i32) #1

declare dso_local i32 @V4L2_FIELD_HAS_BOTH(i64) #1

declare dso_local i32 @round_down(i8*, i32) #1

declare dso_local i8* @clamp(i32, i32, i32) #1

declare dso_local i32 @fdp1_compute_stride(%struct.v4l2_pix_format_mplane*, %struct.fdp1_fmt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
