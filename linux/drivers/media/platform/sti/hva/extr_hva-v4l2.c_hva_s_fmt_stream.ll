; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sti/hva/extr_hva-v4l2.c_hva_s_fmt_stream.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sti/hva/extr_hva-v4l2.c_hva_s_fmt_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }
%struct.hva_ctx = type { i32, %struct.TYPE_6__, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.device = type { i32 }
%struct.vb2_queue = type { i32 }

@.str = private unnamed_addr constant [50 x i8] c"%s V4L2 S_FMT (CAPTURE): unsupported format %.4s\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"%s V4L2 S_FMT (CAPTURE): queue busy\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@HVA_FLAG_STREAMINFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @hva_s_fmt_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hva_s_fmt_stream(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_format*, align 8
  %8 = alloca %struct.hva_ctx*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca %struct.vb2_queue*, align 8
  %11 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %7, align 8
  %12 = load %struct.file*, %struct.file** %5, align 8
  %13 = getelementptr inbounds %struct.file, %struct.file* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.hva_ctx* @fh_to_ctx(i32 %14)
  store %struct.hva_ctx* %15, %struct.hva_ctx** %8, align 8
  %16 = load %struct.hva_ctx*, %struct.hva_ctx** %8, align 8
  %17 = call %struct.device* @ctx_to_dev(%struct.hva_ctx* %16)
  store %struct.device* %17, %struct.device** %9, align 8
  %18 = load %struct.file*, %struct.file** %5, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %21 = call i32 @hva_try_fmt_stream(%struct.file* %18, i8* %19, %struct.v4l2_format* %20)
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %36

24:                                               ; preds = %3
  %25 = load %struct.device*, %struct.device** %9, align 8
  %26 = load %struct.hva_ctx*, %struct.hva_ctx** %8, align 8
  %27 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %30 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = bitcast i32* %32 to i8*
  %34 = call i32 (%struct.device*, i8*, i32, ...) @dev_dbg(%struct.device* %25, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %28, i8* %33)
  %35 = load i32, i32* %11, align 4
  store i32 %35, i32* %4, align 4
  br label %93

36:                                               ; preds = %3
  %37 = load %struct.hva_ctx*, %struct.hva_ctx** %8, align 8
  %38 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %37, i32 0, i32 4
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %42 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call %struct.vb2_queue* @v4l2_m2m_get_vq(i32 %40, i32 %43)
  store %struct.vb2_queue* %44, %struct.vb2_queue** %10, align 8
  %45 = load %struct.vb2_queue*, %struct.vb2_queue** %10, align 8
  %46 = call i64 @vb2_is_streaming(%struct.vb2_queue* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %36
  %49 = load %struct.device*, %struct.device** %9, align 8
  %50 = load %struct.hva_ctx*, %struct.hva_ctx** %8, align 8
  %51 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = call i32 (%struct.device*, i8*, i32, ...) @dev_dbg(%struct.device* %49, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* @EBUSY, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %4, align 4
  br label %93

56:                                               ; preds = %36
  %57 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %58 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.hva_ctx*, %struct.hva_ctx** %8, align 8
  %63 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 4
  %64 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %65 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.hva_ctx*, %struct.hva_ctx** %8, align 8
  %70 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 2
  store i32 %68, i32* %71, align 4
  %72 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %73 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.hva_ctx*, %struct.hva_ctx** %8, align 8
  %78 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 1
  store i32 %76, i32* %79, align 4
  %80 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %81 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.hva_ctx*, %struct.hva_ctx** %8, align 8
  %86 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  store i32 %84, i32* %87, align 4
  %88 = load i32, i32* @HVA_FLAG_STREAMINFO, align 4
  %89 = load %struct.hva_ctx*, %struct.hva_ctx** %8, align 8
  %90 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = or i32 %91, %88
  store i32 %92, i32* %90, align 4
  store i32 0, i32* %4, align 4
  br label %93

93:                                               ; preds = %56, %48, %24
  %94 = load i32, i32* %4, align 4
  ret i32 %94
}

declare dso_local %struct.hva_ctx* @fh_to_ctx(i32) #1

declare dso_local %struct.device* @ctx_to_dev(%struct.hva_ctx*) #1

declare dso_local i32 @hva_try_fmt_stream(%struct.file*, i8*, %struct.v4l2_format*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, ...) #1

declare dso_local %struct.vb2_queue* @v4l2_m2m_get_vq(i32, i32) #1

declare dso_local i64 @vb2_is_streaming(%struct.vb2_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
