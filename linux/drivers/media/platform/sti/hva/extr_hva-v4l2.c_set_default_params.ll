; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sti/hva/extr_hva-v4l2.c_set_default_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sti/hva/extr_hva-v4l2.c_set_default_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hva_ctx = type { i32, i32, i32, i32, i32, %struct.hva_streaminfo, %struct.hva_frameinfo }
%struct.hva_streaminfo = type { i8*, i8*, i32 }
%struct.hva_frameinfo = type { i32, i8*, i8*, i32, i8*, i8* }

@V4L2_PIX_FMT_NV12 = common dso_local global i32 0, align 4
@HVA_DEFAULT_WIDTH = common dso_local global i8* null, align 8
@HVA_DEFAULT_HEIGHT = common dso_local global i8* null, align 8
@HVA_WIDTH_ALIGNMENT = common dso_local global i32 0, align 4
@HVA_HEIGHT_ALIGNMENT = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_H264 = common dso_local global i32 0, align 4
@V4L2_COLORSPACE_REC709 = common dso_local global i32 0, align 4
@V4L2_XFER_FUNC_DEFAULT = common dso_local global i32 0, align 4
@V4L2_YCBCR_ENC_DEFAULT = common dso_local global i32 0, align 4
@V4L2_QUANTIZATION_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hva_ctx*)* @set_default_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_default_params(%struct.hva_ctx* %0) #0 {
  %2 = alloca %struct.hva_ctx*, align 8
  %3 = alloca %struct.hva_frameinfo*, align 8
  %4 = alloca %struct.hva_streaminfo*, align 8
  store %struct.hva_ctx* %0, %struct.hva_ctx** %2, align 8
  %5 = load %struct.hva_ctx*, %struct.hva_ctx** %2, align 8
  %6 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %5, i32 0, i32 6
  store %struct.hva_frameinfo* %6, %struct.hva_frameinfo** %3, align 8
  %7 = load %struct.hva_ctx*, %struct.hva_ctx** %2, align 8
  %8 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %7, i32 0, i32 5
  store %struct.hva_streaminfo* %8, %struct.hva_streaminfo** %4, align 8
  %9 = load i32, i32* @V4L2_PIX_FMT_NV12, align 4
  %10 = load %struct.hva_frameinfo*, %struct.hva_frameinfo** %3, align 8
  %11 = getelementptr inbounds %struct.hva_frameinfo, %struct.hva_frameinfo* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 8
  %12 = load i8*, i8** @HVA_DEFAULT_WIDTH, align 8
  %13 = load %struct.hva_frameinfo*, %struct.hva_frameinfo** %3, align 8
  %14 = getelementptr inbounds %struct.hva_frameinfo, %struct.hva_frameinfo* %13, i32 0, i32 5
  store i8* %12, i8** %14, align 8
  %15 = load i8*, i8** @HVA_DEFAULT_HEIGHT, align 8
  %16 = load %struct.hva_frameinfo*, %struct.hva_frameinfo** %3, align 8
  %17 = getelementptr inbounds %struct.hva_frameinfo, %struct.hva_frameinfo* %16, i32 0, i32 4
  store i8* %15, i8** %17, align 8
  %18 = load %struct.hva_frameinfo*, %struct.hva_frameinfo** %3, align 8
  %19 = getelementptr inbounds %struct.hva_frameinfo, %struct.hva_frameinfo* %18, i32 0, i32 5
  %20 = load i8*, i8** %19, align 8
  %21 = load i32, i32* @HVA_WIDTH_ALIGNMENT, align 4
  %22 = call i8* @ALIGN(i8* %20, i32 %21)
  %23 = load %struct.hva_frameinfo*, %struct.hva_frameinfo** %3, align 8
  %24 = getelementptr inbounds %struct.hva_frameinfo, %struct.hva_frameinfo* %23, i32 0, i32 2
  store i8* %22, i8** %24, align 8
  %25 = load %struct.hva_frameinfo*, %struct.hva_frameinfo** %3, align 8
  %26 = getelementptr inbounds %struct.hva_frameinfo, %struct.hva_frameinfo* %25, i32 0, i32 4
  %27 = load i8*, i8** %26, align 8
  %28 = load i32, i32* @HVA_HEIGHT_ALIGNMENT, align 4
  %29 = call i8* @ALIGN(i8* %27, i32 %28)
  %30 = load %struct.hva_frameinfo*, %struct.hva_frameinfo** %3, align 8
  %31 = getelementptr inbounds %struct.hva_frameinfo, %struct.hva_frameinfo* %30, i32 0, i32 1
  store i8* %29, i8** %31, align 8
  %32 = load %struct.hva_frameinfo*, %struct.hva_frameinfo** %3, align 8
  %33 = getelementptr inbounds %struct.hva_frameinfo, %struct.hva_frameinfo* %32, i32 0, i32 2
  %34 = load i8*, i8** %33, align 8
  %35 = load %struct.hva_frameinfo*, %struct.hva_frameinfo** %3, align 8
  %36 = getelementptr inbounds %struct.hva_frameinfo, %struct.hva_frameinfo* %35, i32 0, i32 1
  %37 = load i8*, i8** %36, align 8
  %38 = load %struct.hva_frameinfo*, %struct.hva_frameinfo** %3, align 8
  %39 = getelementptr inbounds %struct.hva_frameinfo, %struct.hva_frameinfo* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @frame_size(i8* %34, i8* %37, i32 %40)
  %42 = load %struct.hva_frameinfo*, %struct.hva_frameinfo** %3, align 8
  %43 = getelementptr inbounds %struct.hva_frameinfo, %struct.hva_frameinfo* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 8
  %44 = load i32, i32* @V4L2_PIX_FMT_H264, align 4
  %45 = load %struct.hva_streaminfo*, %struct.hva_streaminfo** %4, align 8
  %46 = getelementptr inbounds %struct.hva_streaminfo, %struct.hva_streaminfo* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 8
  %47 = load i8*, i8** @HVA_DEFAULT_WIDTH, align 8
  %48 = load %struct.hva_streaminfo*, %struct.hva_streaminfo** %4, align 8
  %49 = getelementptr inbounds %struct.hva_streaminfo, %struct.hva_streaminfo* %48, i32 0, i32 1
  store i8* %47, i8** %49, align 8
  %50 = load i8*, i8** @HVA_DEFAULT_HEIGHT, align 8
  %51 = load %struct.hva_streaminfo*, %struct.hva_streaminfo** %4, align 8
  %52 = getelementptr inbounds %struct.hva_streaminfo, %struct.hva_streaminfo* %51, i32 0, i32 0
  store i8* %50, i8** %52, align 8
  %53 = load i32, i32* @V4L2_COLORSPACE_REC709, align 4
  %54 = load %struct.hva_ctx*, %struct.hva_ctx** %2, align 8
  %55 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %54, i32 0, i32 4
  store i32 %53, i32* %55, align 8
  %56 = load i32, i32* @V4L2_XFER_FUNC_DEFAULT, align 4
  %57 = load %struct.hva_ctx*, %struct.hva_ctx** %2, align 8
  %58 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %57, i32 0, i32 3
  store i32 %56, i32* %58, align 4
  %59 = load i32, i32* @V4L2_YCBCR_ENC_DEFAULT, align 4
  %60 = load %struct.hva_ctx*, %struct.hva_ctx** %2, align 8
  %61 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 8
  %62 = load i32, i32* @V4L2_QUANTIZATION_DEFAULT, align 4
  %63 = load %struct.hva_ctx*, %struct.hva_ctx** %2, align 8
  %64 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  %65 = load %struct.hva_streaminfo*, %struct.hva_streaminfo** %4, align 8
  %66 = getelementptr inbounds %struct.hva_streaminfo, %struct.hva_streaminfo* %65, i32 0, i32 1
  %67 = load i8*, i8** %66, align 8
  %68 = load %struct.hva_streaminfo*, %struct.hva_streaminfo** %4, align 8
  %69 = getelementptr inbounds %struct.hva_streaminfo, %struct.hva_streaminfo* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = call i32 @estimated_stream_size(i8* %67, i8* %70)
  %72 = load %struct.hva_ctx*, %struct.hva_ctx** %2, align 8
  %73 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  ret void
}

declare dso_local i8* @ALIGN(i8*, i32) #1

declare dso_local i32 @frame_size(i8*, i8*, i32) #1

declare dso_local i32 @estimated_stream_size(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
