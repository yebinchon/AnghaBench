; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sti/hva/extr_hva-h264.c_hva_h264_encode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sti/hva/extr_hva-h264.c_hva_h264_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hva_ctx = type { i32, i64 }
%struct.hva_frame = type { i32 }
%struct.hva_stream = type { i32, i32, i64 }
%struct.hva_h264_ctx = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.hva_h264_task = type { i32 }

@H264_ENC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hva_ctx*, %struct.hva_frame*, %struct.hva_stream*)* @hva_h264_encode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hva_h264_encode(%struct.hva_ctx* %0, %struct.hva_frame* %1, %struct.hva_stream* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hva_ctx*, align 8
  %6 = alloca %struct.hva_frame*, align 8
  %7 = alloca %struct.hva_stream*, align 8
  %8 = alloca %struct.hva_h264_ctx*, align 8
  %9 = alloca %struct.hva_h264_task*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.hva_ctx* %0, %struct.hva_ctx** %5, align 8
  store %struct.hva_frame* %1, %struct.hva_frame** %6, align 8
  store %struct.hva_stream* %2, %struct.hva_stream** %7, align 8
  %12 = load %struct.hva_ctx*, %struct.hva_ctx** %5, align 8
  %13 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.hva_h264_ctx*
  store %struct.hva_h264_ctx* %15, %struct.hva_h264_ctx** %8, align 8
  %16 = load %struct.hva_h264_ctx*, %struct.hva_h264_ctx** %8, align 8
  %17 = getelementptr inbounds %struct.hva_h264_ctx, %struct.hva_h264_ctx* %16, i32 0, i32 2
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.hva_h264_task*
  store %struct.hva_h264_task* %21, %struct.hva_h264_task** %9, align 8
  store i64 0, i64* %10, align 8
  store i32 0, i32* %11, align 4
  %22 = load %struct.hva_ctx*, %struct.hva_ctx** %5, align 8
  %23 = load %struct.hva_h264_task*, %struct.hva_h264_task** %9, align 8
  %24 = load %struct.hva_frame*, %struct.hva_frame** %6, align 8
  %25 = load %struct.hva_stream*, %struct.hva_stream** %7, align 8
  %26 = call i32 @hva_h264_prepare_task(%struct.hva_ctx* %22, %struct.hva_h264_task* %23, %struct.hva_frame* %24, %struct.hva_stream* %25)
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %3
  br label %78

30:                                               ; preds = %3
  %31 = load %struct.hva_ctx*, %struct.hva_ctx** %5, align 8
  %32 = load i32, i32* @H264_ENC, align 4
  %33 = load %struct.hva_h264_ctx*, %struct.hva_h264_ctx** %8, align 8
  %34 = getelementptr inbounds %struct.hva_h264_ctx, %struct.hva_h264_ctx* %33, i32 0, i32 2
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = call i32 @hva_hw_execute_task(%struct.hva_ctx* %31, i32 %32, %struct.TYPE_2__* %35)
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %30
  br label %78

40:                                               ; preds = %30
  %41 = load %struct.hva_ctx*, %struct.hva_ctx** %5, align 8
  %42 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 8
  %45 = load %struct.hva_h264_task*, %struct.hva_h264_task** %9, align 8
  %46 = call i64 @hva_h264_get_stream_size(%struct.hva_h264_task* %45)
  %47 = load %struct.hva_stream*, %struct.hva_stream** %7, align 8
  %48 = getelementptr inbounds %struct.hva_stream, %struct.hva_stream* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = sext i32 %49 to i64
  %51 = add nsw i64 %50, %46
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %48, align 8
  %53 = load %struct.hva_h264_task*, %struct.hva_h264_task** %9, align 8
  %54 = call i64 @hva_h264_get_stuffing_bytes(%struct.hva_h264_task* %53)
  store i64 %54, i64* %10, align 8
  %55 = load i64, i64* %10, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %70

57:                                               ; preds = %40
  %58 = load %struct.hva_ctx*, %struct.hva_ctx** %5, align 8
  %59 = load i64, i64* %10, align 8
  %60 = load %struct.hva_stream*, %struct.hva_stream** %7, align 8
  %61 = getelementptr inbounds %struct.hva_stream, %struct.hva_stream* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = inttoptr i64 %62 to i32*
  %64 = load %struct.hva_stream*, %struct.hva_stream** %7, align 8
  %65 = getelementptr inbounds %struct.hva_stream, %struct.hva_stream* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.hva_stream*, %struct.hva_stream** %7, align 8
  %68 = getelementptr inbounds %struct.hva_stream, %struct.hva_stream* %67, i32 0, i32 0
  %69 = call i32 @hva_h264_fill_data_nal(%struct.hva_ctx* %58, i64 %59, i32* %63, i32 %66, i32* %68)
  br label %70

70:                                               ; preds = %57, %40
  %71 = load %struct.hva_h264_ctx*, %struct.hva_h264_ctx** %8, align 8
  %72 = getelementptr inbounds %struct.hva_h264_ctx, %struct.hva_h264_ctx* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.hva_h264_ctx*, %struct.hva_h264_ctx** %8, align 8
  %75 = getelementptr inbounds %struct.hva_h264_ctx, %struct.hva_h264_ctx* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @swap(i32 %73, i32 %76)
  store i32 0, i32* %4, align 4
  br label %82

78:                                               ; preds = %39, %29
  %79 = load %struct.hva_stream*, %struct.hva_stream** %7, align 8
  %80 = getelementptr inbounds %struct.hva_stream, %struct.hva_stream* %79, i32 0, i32 0
  store i32 0, i32* %80, align 8
  %81 = load i32, i32* %11, align 4
  store i32 %81, i32* %4, align 4
  br label %82

82:                                               ; preds = %78, %70
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local i32 @hva_h264_prepare_task(%struct.hva_ctx*, %struct.hva_h264_task*, %struct.hva_frame*, %struct.hva_stream*) #1

declare dso_local i32 @hva_hw_execute_task(%struct.hva_ctx*, i32, %struct.TYPE_2__*) #1

declare dso_local i64 @hva_h264_get_stream_size(%struct.hva_h264_task*) #1

declare dso_local i64 @hva_h264_get_stuffing_bytes(%struct.hva_h264_task*) #1

declare dso_local i32 @hva_h264_fill_data_nal(%struct.hva_ctx*, i64, i32*, i32, i32*) #1

declare dso_local i32 @swap(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
