; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sti/delta/extr_delta-v4l2.c_delta_get_frameinfo_default.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sti/delta/extr_delta-v4l2.c_delta_get_frameinfo_default.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.delta_ctx = type { %struct.delta_streaminfo }
%struct.delta_streaminfo = type { i32, i32, i32, i32, i32, i32 }
%struct.delta_frameinfo = type { i32, i32, i32, i32, i32, i8*, i8*, i32, i32, i32 }

@V4L2_PIX_FMT_NV12 = common dso_local global i32 0, align 4
@DELTA_WIDTH_ALIGNMENT = common dso_local global i32 0, align 4
@DELTA_HEIGHT_ALIGNMENT = common dso_local global i32 0, align 4
@DELTA_STREAMINFO_FLAG_CROP = common dso_local global i32 0, align 4
@DELTA_FRAMEINFO_FLAG_CROP = common dso_local global i32 0, align 4
@DELTA_STREAMINFO_FLAG_PIXELASPECT = common dso_local global i32 0, align 4
@DELTA_FRAMEINFO_FLAG_PIXELASPECT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @delta_get_frameinfo_default(%struct.delta_ctx* %0, %struct.delta_frameinfo* %1) #0 {
  %3 = alloca %struct.delta_ctx*, align 8
  %4 = alloca %struct.delta_frameinfo*, align 8
  %5 = alloca %struct.delta_streaminfo*, align 8
  store %struct.delta_ctx* %0, %struct.delta_ctx** %3, align 8
  store %struct.delta_frameinfo* %1, %struct.delta_frameinfo** %4, align 8
  %6 = load %struct.delta_ctx*, %struct.delta_ctx** %3, align 8
  %7 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %6, i32 0, i32 0
  store %struct.delta_streaminfo* %7, %struct.delta_streaminfo** %5, align 8
  %8 = load %struct.delta_frameinfo*, %struct.delta_frameinfo** %4, align 8
  %9 = call i32 @memset(%struct.delta_frameinfo* %8, i32 0, i32 56)
  %10 = load i32, i32* @V4L2_PIX_FMT_NV12, align 4
  %11 = load %struct.delta_frameinfo*, %struct.delta_frameinfo** %4, align 8
  %12 = getelementptr inbounds %struct.delta_frameinfo, %struct.delta_frameinfo* %11, i32 0, i32 4
  store i32 %10, i32* %12, align 8
  %13 = load %struct.delta_streaminfo*, %struct.delta_streaminfo** %5, align 8
  %14 = getelementptr inbounds %struct.delta_streaminfo, %struct.delta_streaminfo* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.delta_frameinfo*, %struct.delta_frameinfo** %4, align 8
  %17 = getelementptr inbounds %struct.delta_frameinfo, %struct.delta_frameinfo* %16, i32 0, i32 9
  store i32 %15, i32* %17, align 8
  %18 = load %struct.delta_streaminfo*, %struct.delta_streaminfo** %5, align 8
  %19 = getelementptr inbounds %struct.delta_streaminfo, %struct.delta_streaminfo* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.delta_frameinfo*, %struct.delta_frameinfo** %4, align 8
  %22 = getelementptr inbounds %struct.delta_frameinfo, %struct.delta_frameinfo* %21, i32 0, i32 8
  store i32 %20, i32* %22, align 4
  %23 = load %struct.delta_streaminfo*, %struct.delta_streaminfo** %5, align 8
  %24 = getelementptr inbounds %struct.delta_streaminfo, %struct.delta_streaminfo* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @DELTA_WIDTH_ALIGNMENT, align 4
  %27 = call i8* @ALIGN(i32 %25, i32 %26)
  %28 = load %struct.delta_frameinfo*, %struct.delta_frameinfo** %4, align 8
  %29 = getelementptr inbounds %struct.delta_frameinfo, %struct.delta_frameinfo* %28, i32 0, i32 6
  store i8* %27, i8** %29, align 8
  %30 = load %struct.delta_streaminfo*, %struct.delta_streaminfo** %5, align 8
  %31 = getelementptr inbounds %struct.delta_streaminfo, %struct.delta_streaminfo* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @DELTA_HEIGHT_ALIGNMENT, align 4
  %34 = call i8* @ALIGN(i32 %32, i32 %33)
  %35 = load %struct.delta_frameinfo*, %struct.delta_frameinfo** %4, align 8
  %36 = getelementptr inbounds %struct.delta_frameinfo, %struct.delta_frameinfo* %35, i32 0, i32 5
  store i8* %34, i8** %36, align 8
  %37 = load %struct.delta_frameinfo*, %struct.delta_frameinfo** %4, align 8
  %38 = getelementptr inbounds %struct.delta_frameinfo, %struct.delta_frameinfo* %37, i32 0, i32 6
  %39 = load i8*, i8** %38, align 8
  %40 = load %struct.delta_frameinfo*, %struct.delta_frameinfo** %4, align 8
  %41 = getelementptr inbounds %struct.delta_frameinfo, %struct.delta_frameinfo* %40, i32 0, i32 5
  %42 = load i8*, i8** %41, align 8
  %43 = load %struct.delta_frameinfo*, %struct.delta_frameinfo** %4, align 8
  %44 = getelementptr inbounds %struct.delta_frameinfo, %struct.delta_frameinfo* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @frame_size(i8* %39, i8* %42, i32 %45)
  %47 = load %struct.delta_frameinfo*, %struct.delta_frameinfo** %4, align 8
  %48 = getelementptr inbounds %struct.delta_frameinfo, %struct.delta_frameinfo* %47, i32 0, i32 7
  store i32 %46, i32* %48, align 8
  %49 = load %struct.delta_streaminfo*, %struct.delta_streaminfo** %5, align 8
  %50 = getelementptr inbounds %struct.delta_streaminfo, %struct.delta_streaminfo* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @DELTA_STREAMINFO_FLAG_CROP, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %66

55:                                               ; preds = %2
  %56 = load i32, i32* @DELTA_FRAMEINFO_FLAG_CROP, align 4
  %57 = load %struct.delta_frameinfo*, %struct.delta_frameinfo** %4, align 8
  %58 = getelementptr inbounds %struct.delta_frameinfo, %struct.delta_frameinfo* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 8
  %61 = load %struct.delta_streaminfo*, %struct.delta_streaminfo** %5, align 8
  %62 = getelementptr inbounds %struct.delta_streaminfo, %struct.delta_streaminfo* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.delta_frameinfo*, %struct.delta_frameinfo** %4, align 8
  %65 = getelementptr inbounds %struct.delta_frameinfo, %struct.delta_frameinfo* %64, i32 0, i32 3
  store i32 %63, i32* %65, align 4
  br label %66

66:                                               ; preds = %55, %2
  %67 = load %struct.delta_streaminfo*, %struct.delta_streaminfo** %5, align 8
  %68 = getelementptr inbounds %struct.delta_streaminfo, %struct.delta_streaminfo* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @DELTA_STREAMINFO_FLAG_PIXELASPECT, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %84

73:                                               ; preds = %66
  %74 = load i32, i32* @DELTA_FRAMEINFO_FLAG_PIXELASPECT, align 4
  %75 = load %struct.delta_frameinfo*, %struct.delta_frameinfo** %4, align 8
  %76 = getelementptr inbounds %struct.delta_frameinfo, %struct.delta_frameinfo* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = or i32 %77, %74
  store i32 %78, i32* %76, align 8
  %79 = load %struct.delta_streaminfo*, %struct.delta_streaminfo** %5, align 8
  %80 = getelementptr inbounds %struct.delta_streaminfo, %struct.delta_streaminfo* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.delta_frameinfo*, %struct.delta_frameinfo** %4, align 8
  %83 = getelementptr inbounds %struct.delta_frameinfo, %struct.delta_frameinfo* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 4
  br label %84

84:                                               ; preds = %73, %66
  %85 = load %struct.delta_streaminfo*, %struct.delta_streaminfo** %5, align 8
  %86 = getelementptr inbounds %struct.delta_streaminfo, %struct.delta_streaminfo* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.delta_frameinfo*, %struct.delta_frameinfo** %4, align 8
  %89 = getelementptr inbounds %struct.delta_frameinfo, %struct.delta_frameinfo* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 8
  ret i32 0
}

declare dso_local i32 @memset(%struct.delta_frameinfo*, i32, i32) #1

declare dso_local i8* @ALIGN(i32, i32) #1

declare dso_local i32 @frame_size(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
