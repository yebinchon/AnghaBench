; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-jpeg/extr_jpeg-core.c_s5p_jpeg_enum_fmt_vid_out.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-jpeg/extr_jpeg-core.c_s5p_jpeg_enum_fmt_vid_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_fmtdesc = type { i32 }
%struct.s5p_jpeg_ctx = type { i64 }

@S5P_JPEG_ENCODE = common dso_local global i64 0, align 8
@sjpeg_formats = common dso_local global i32 0, align 4
@SJPEG_NUM_FORMATS = common dso_local global i32 0, align 4
@SJPEG_FMT_FLAG_ENC_OUTPUT = common dso_local global i32 0, align 4
@SJPEG_FMT_FLAG_DEC_OUTPUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_fmtdesc*)* @s5p_jpeg_enum_fmt_vid_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5p_jpeg_enum_fmt_vid_out(%struct.file* %0, i8* %1, %struct.v4l2_fmtdesc* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_fmtdesc*, align 8
  %8 = alloca %struct.s5p_jpeg_ctx*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_fmtdesc* %2, %struct.v4l2_fmtdesc** %7, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = call %struct.s5p_jpeg_ctx* @fh_to_ctx(i8* %9)
  store %struct.s5p_jpeg_ctx* %10, %struct.s5p_jpeg_ctx** %8, align 8
  %11 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %8, align 8
  %12 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @S5P_JPEG_ENCODE, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %23

16:                                               ; preds = %3
  %17 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %8, align 8
  %18 = load i32, i32* @sjpeg_formats, align 4
  %19 = load i32, i32* @SJPEG_NUM_FORMATS, align 4
  %20 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %7, align 8
  %21 = load i32, i32* @SJPEG_FMT_FLAG_ENC_OUTPUT, align 4
  %22 = call i32 @enum_fmt(%struct.s5p_jpeg_ctx* %17, i32 %18, i32 %19, %struct.v4l2_fmtdesc* %20, i32 %21)
  store i32 %22, i32* %4, align 4
  br label %30

23:                                               ; preds = %3
  %24 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %8, align 8
  %25 = load i32, i32* @sjpeg_formats, align 4
  %26 = load i32, i32* @SJPEG_NUM_FORMATS, align 4
  %27 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %7, align 8
  %28 = load i32, i32* @SJPEG_FMT_FLAG_DEC_OUTPUT, align 4
  %29 = call i32 @enum_fmt(%struct.s5p_jpeg_ctx* %24, i32 %25, i32 %26, %struct.v4l2_fmtdesc* %27, i32 %28)
  store i32 %29, i32* %4, align 4
  br label %30

30:                                               ; preds = %23, %16
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

declare dso_local %struct.s5p_jpeg_ctx* @fh_to_ctx(i8*) #1

declare dso_local i32 @enum_fmt(%struct.s5p_jpeg_ctx*, i32, i32, %struct.v4l2_fmtdesc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
