; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sti/delta/extr_delta-v4l2.c_set_default_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sti/delta/extr_delta-v4l2.c_set_default_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.delta_ctx = type { i32, %struct.delta_streaminfo, %struct.delta_streaminfo }
%struct.delta_streaminfo = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i8*, i8*, i32 }
%struct.delta_frameinfo = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i8*, i8*, i32 }

@V4L2_PIX_FMT_NV12 = common dso_local global i32 0, align 4
@DELTA_DEFAULT_WIDTH = common dso_local global i8* null, align 8
@DELTA_DEFAULT_HEIGHT = common dso_local global i8* null, align 8
@DELTA_WIDTH_ALIGNMENT = common dso_local global i32 0, align 4
@DELTA_HEIGHT_ALIGNMENT = common dso_local global i32 0, align 4
@V4L2_FIELD_NONE = common dso_local global i8* null, align 8
@V4L2_COLORSPACE_REC709 = common dso_local global i8* null, align 8
@V4L2_XFER_FUNC_DEFAULT = common dso_local global i8* null, align 8
@V4L2_YCBCR_ENC_DEFAULT = common dso_local global i8* null, align 8
@V4L2_QUANTIZATION_DEFAULT = common dso_local global i8* null, align 8
@DELTA_DEFAULT_STREAMFORMAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.delta_ctx*)* @set_default_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_default_params(%struct.delta_ctx* %0) #0 {
  %2 = alloca %struct.delta_ctx*, align 8
  %3 = alloca %struct.delta_frameinfo*, align 8
  %4 = alloca %struct.delta_streaminfo*, align 8
  store %struct.delta_ctx* %0, %struct.delta_ctx** %2, align 8
  %5 = load %struct.delta_ctx*, %struct.delta_ctx** %2, align 8
  %6 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %5, i32 0, i32 2
  %7 = bitcast %struct.delta_streaminfo* %6 to %struct.delta_frameinfo*
  store %struct.delta_frameinfo* %7, %struct.delta_frameinfo** %3, align 8
  %8 = load %struct.delta_ctx*, %struct.delta_ctx** %2, align 8
  %9 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %8, i32 0, i32 1
  store %struct.delta_streaminfo* %9, %struct.delta_streaminfo** %4, align 8
  %10 = load %struct.delta_frameinfo*, %struct.delta_frameinfo** %3, align 8
  %11 = bitcast %struct.delta_frameinfo* %10 to %struct.delta_streaminfo*
  %12 = call i32 @memset(%struct.delta_streaminfo* %11, i32 0, i32 88)
  %13 = load i32, i32* @V4L2_PIX_FMT_NV12, align 4
  %14 = load %struct.delta_frameinfo*, %struct.delta_frameinfo** %3, align 8
  %15 = getelementptr inbounds %struct.delta_frameinfo, %struct.delta_frameinfo* %14, i32 0, i32 8
  store i32 %13, i32* %15, align 4
  %16 = load i8*, i8** @DELTA_DEFAULT_WIDTH, align 8
  %17 = load %struct.delta_frameinfo*, %struct.delta_frameinfo** %3, align 8
  %18 = getelementptr inbounds %struct.delta_frameinfo, %struct.delta_frameinfo* %17, i32 0, i32 1
  store i8* %16, i8** %18, align 8
  %19 = load i8*, i8** @DELTA_DEFAULT_HEIGHT, align 8
  %20 = load %struct.delta_frameinfo*, %struct.delta_frameinfo** %3, align 8
  %21 = getelementptr inbounds %struct.delta_frameinfo, %struct.delta_frameinfo* %20, i32 0, i32 0
  store i8* %19, i8** %21, align 8
  %22 = load %struct.delta_frameinfo*, %struct.delta_frameinfo** %3, align 8
  %23 = getelementptr inbounds %struct.delta_frameinfo, %struct.delta_frameinfo* %22, i32 0, i32 1
  %24 = load i8*, i8** %23, align 8
  %25 = load i32, i32* @DELTA_WIDTH_ALIGNMENT, align 4
  %26 = call i8* @ALIGN(i8* %24, i32 %25)
  %27 = load %struct.delta_frameinfo*, %struct.delta_frameinfo** %3, align 8
  %28 = getelementptr inbounds %struct.delta_frameinfo, %struct.delta_frameinfo* %27, i32 0, i32 10
  store i8* %26, i8** %28, align 8
  %29 = load %struct.delta_frameinfo*, %struct.delta_frameinfo** %3, align 8
  %30 = getelementptr inbounds %struct.delta_frameinfo, %struct.delta_frameinfo* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = load i32, i32* @DELTA_HEIGHT_ALIGNMENT, align 4
  %33 = call i8* @ALIGN(i8* %31, i32 %32)
  %34 = load %struct.delta_frameinfo*, %struct.delta_frameinfo** %3, align 8
  %35 = getelementptr inbounds %struct.delta_frameinfo, %struct.delta_frameinfo* %34, i32 0, i32 9
  store i8* %33, i8** %35, align 8
  %36 = load %struct.delta_frameinfo*, %struct.delta_frameinfo** %3, align 8
  %37 = getelementptr inbounds %struct.delta_frameinfo, %struct.delta_frameinfo* %36, i32 0, i32 10
  %38 = load i8*, i8** %37, align 8
  %39 = load %struct.delta_frameinfo*, %struct.delta_frameinfo** %3, align 8
  %40 = getelementptr inbounds %struct.delta_frameinfo, %struct.delta_frameinfo* %39, i32 0, i32 9
  %41 = load i8*, i8** %40, align 8
  %42 = load %struct.delta_frameinfo*, %struct.delta_frameinfo** %3, align 8
  %43 = getelementptr inbounds %struct.delta_frameinfo, %struct.delta_frameinfo* %42, i32 0, i32 8
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @frame_size(i8* %38, i8* %41, i32 %44)
  %46 = load %struct.delta_frameinfo*, %struct.delta_frameinfo** %3, align 8
  %47 = getelementptr inbounds %struct.delta_frameinfo, %struct.delta_frameinfo* %46, i32 0, i32 11
  store i32 %45, i32* %47, align 8
  %48 = load i8*, i8** @V4L2_FIELD_NONE, align 8
  %49 = load %struct.delta_frameinfo*, %struct.delta_frameinfo** %3, align 8
  %50 = getelementptr inbounds %struct.delta_frameinfo, %struct.delta_frameinfo* %49, i32 0, i32 6
  store i8* %48, i8** %50, align 8
  %51 = load i8*, i8** @V4L2_COLORSPACE_REC709, align 8
  %52 = load %struct.delta_frameinfo*, %struct.delta_frameinfo** %3, align 8
  %53 = getelementptr inbounds %struct.delta_frameinfo, %struct.delta_frameinfo* %52, i32 0, i32 5
  store i8* %51, i8** %53, align 8
  %54 = load i8*, i8** @V4L2_XFER_FUNC_DEFAULT, align 8
  %55 = load %struct.delta_frameinfo*, %struct.delta_frameinfo** %3, align 8
  %56 = getelementptr inbounds %struct.delta_frameinfo, %struct.delta_frameinfo* %55, i32 0, i32 4
  store i8* %54, i8** %56, align 8
  %57 = load i8*, i8** @V4L2_YCBCR_ENC_DEFAULT, align 8
  %58 = load %struct.delta_frameinfo*, %struct.delta_frameinfo** %3, align 8
  %59 = getelementptr inbounds %struct.delta_frameinfo, %struct.delta_frameinfo* %58, i32 0, i32 3
  store i8* %57, i8** %59, align 8
  %60 = load i8*, i8** @V4L2_QUANTIZATION_DEFAULT, align 8
  %61 = load %struct.delta_frameinfo*, %struct.delta_frameinfo** %3, align 8
  %62 = getelementptr inbounds %struct.delta_frameinfo, %struct.delta_frameinfo* %61, i32 0, i32 2
  store i8* %60, i8** %62, align 8
  %63 = load %struct.delta_streaminfo*, %struct.delta_streaminfo** %4, align 8
  %64 = call i32 @memset(%struct.delta_streaminfo* %63, i32 0, i32 88)
  %65 = load i32, i32* @DELTA_DEFAULT_STREAMFORMAT, align 4
  %66 = load %struct.delta_streaminfo*, %struct.delta_streaminfo** %4, align 8
  %67 = getelementptr inbounds %struct.delta_streaminfo, %struct.delta_streaminfo* %66, i32 0, i32 7
  store i32 %65, i32* %67, align 8
  %68 = load i8*, i8** @DELTA_DEFAULT_WIDTH, align 8
  %69 = load %struct.delta_streaminfo*, %struct.delta_streaminfo** %4, align 8
  %70 = getelementptr inbounds %struct.delta_streaminfo, %struct.delta_streaminfo* %69, i32 0, i32 1
  store i8* %68, i8** %70, align 8
  %71 = load i8*, i8** @DELTA_DEFAULT_HEIGHT, align 8
  %72 = load %struct.delta_streaminfo*, %struct.delta_streaminfo** %4, align 8
  %73 = getelementptr inbounds %struct.delta_streaminfo, %struct.delta_streaminfo* %72, i32 0, i32 0
  store i8* %71, i8** %73, align 8
  %74 = load i8*, i8** @V4L2_FIELD_NONE, align 8
  %75 = load %struct.delta_streaminfo*, %struct.delta_streaminfo** %4, align 8
  %76 = getelementptr inbounds %struct.delta_streaminfo, %struct.delta_streaminfo* %75, i32 0, i32 6
  store i8* %74, i8** %76, align 8
  %77 = load i8*, i8** @V4L2_COLORSPACE_REC709, align 8
  %78 = load %struct.delta_streaminfo*, %struct.delta_streaminfo** %4, align 8
  %79 = getelementptr inbounds %struct.delta_streaminfo, %struct.delta_streaminfo* %78, i32 0, i32 5
  store i8* %77, i8** %79, align 8
  %80 = load i8*, i8** @V4L2_XFER_FUNC_DEFAULT, align 8
  %81 = load %struct.delta_streaminfo*, %struct.delta_streaminfo** %4, align 8
  %82 = getelementptr inbounds %struct.delta_streaminfo, %struct.delta_streaminfo* %81, i32 0, i32 4
  store i8* %80, i8** %82, align 8
  %83 = load i8*, i8** @V4L2_YCBCR_ENC_DEFAULT, align 8
  %84 = load %struct.delta_streaminfo*, %struct.delta_streaminfo** %4, align 8
  %85 = getelementptr inbounds %struct.delta_streaminfo, %struct.delta_streaminfo* %84, i32 0, i32 3
  store i8* %83, i8** %85, align 8
  %86 = load i8*, i8** @V4L2_QUANTIZATION_DEFAULT, align 8
  %87 = load %struct.delta_streaminfo*, %struct.delta_streaminfo** %4, align 8
  %88 = getelementptr inbounds %struct.delta_streaminfo, %struct.delta_streaminfo* %87, i32 0, i32 2
  store i8* %86, i8** %88, align 8
  %89 = load %struct.delta_streaminfo*, %struct.delta_streaminfo** %4, align 8
  %90 = getelementptr inbounds %struct.delta_streaminfo, %struct.delta_streaminfo* %89, i32 0, i32 1
  %91 = load i8*, i8** %90, align 8
  %92 = load %struct.delta_streaminfo*, %struct.delta_streaminfo** %4, align 8
  %93 = getelementptr inbounds %struct.delta_streaminfo, %struct.delta_streaminfo* %92, i32 0, i32 0
  %94 = load i8*, i8** %93, align 8
  %95 = call i32 @estimated_au_size(i8* %91, i8* %94)
  %96 = load %struct.delta_ctx*, %struct.delta_ctx** %2, align 8
  %97 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 8
  ret void
}

declare dso_local i32 @memset(%struct.delta_streaminfo*, i32, i32) #1

declare dso_local i8* @ALIGN(i8*, i32) #1

declare dso_local i32 @frame_size(i8*, i8*, i32) #1

declare dso_local i32 @estimated_au_size(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
