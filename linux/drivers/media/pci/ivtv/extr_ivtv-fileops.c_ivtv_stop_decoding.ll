; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-fileops.c_ivtv_stop_decoding.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-fileops.c_ivtv_stop_decoding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ivtv_open_id = type { i64, i64, %struct.ivtv* }
%struct.ivtv = type { i64, i32, i64, %struct.ivtv_stream* }
%struct.ivtv_stream = type { i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"close() of %s\0A\00", align 1
@IVTV_DEC_STREAM_TYPE_YUV = common dso_local global i64 0, align 8
@IVTV_F_I_DECODING_YUV = common dso_local global i32 0, align 4
@IVTV_F_S_STREAMING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"close stopping decode\0A\00", align 1
@OUT_NONE = common dso_local global i8* null, align 8
@IVTV_F_S_APPL_IO = common dso_local global i32 0, align 4
@IVTV_F_S_STREAMOFF = common dso_local global i32 0, align 4
@OUT_UDMA_YUV = common dso_local global i64 0, align 8
@IVTV_F_I_DEC_PAUSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ivtv_open_id*, i32, i32)* @ivtv_stop_decoding to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ivtv_stop_decoding(%struct.ivtv_open_id* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ivtv_open_id*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ivtv*, align 8
  %8 = alloca %struct.ivtv_stream*, align 8
  store %struct.ivtv_open_id* %0, %struct.ivtv_open_id** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.ivtv_open_id*, %struct.ivtv_open_id** %4, align 8
  %10 = getelementptr inbounds %struct.ivtv_open_id, %struct.ivtv_open_id* %9, i32 0, i32 2
  %11 = load %struct.ivtv*, %struct.ivtv** %10, align 8
  store %struct.ivtv* %11, %struct.ivtv** %7, align 8
  %12 = load %struct.ivtv*, %struct.ivtv** %7, align 8
  %13 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %12, i32 0, i32 3
  %14 = load %struct.ivtv_stream*, %struct.ivtv_stream** %13, align 8
  %15 = load %struct.ivtv_open_id*, %struct.ivtv_open_id** %4, align 8
  %16 = getelementptr inbounds %struct.ivtv_open_id, %struct.ivtv_open_id* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %14, i64 %17
  store %struct.ivtv_stream* %18, %struct.ivtv_stream** %8, align 8
  %19 = load %struct.ivtv_stream*, %struct.ivtv_stream** %8, align 8
  %20 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @IVTV_DEBUG_FILE(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load %struct.ivtv_open_id*, %struct.ivtv_open_id** %4, align 8
  %24 = getelementptr inbounds %struct.ivtv_open_id, %struct.ivtv_open_id* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @IVTV_DEC_STREAM_TYPE_YUV, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %37

28:                                               ; preds = %3
  %29 = load i32, i32* @IVTV_F_I_DECODING_YUV, align 4
  %30 = load %struct.ivtv*, %struct.ivtv** %7, align 8
  %31 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %30, i32 0, i32 1
  %32 = call i64 @test_bit(i32 %29, i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load %struct.ivtv*, %struct.ivtv** %7, align 8
  %36 = call i32 @ivtv_yuv_close(%struct.ivtv* %35)
  br label %37

37:                                               ; preds = %34, %28, %3
  %38 = load i32, i32* @IVTV_F_S_STREAMING, align 4
  %39 = load %struct.ivtv_stream*, %struct.ivtv_stream** %8, align 8
  %40 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %39, i32 0, i32 0
  %41 = call i64 @test_bit(i32 %38, i32* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %37
  %44 = call i32 @IVTV_DEBUG_INFO(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %45 = load %struct.ivtv_stream*, %struct.ivtv_stream** %8, align 8
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @ivtv_stop_v4l2_decode_stream(%struct.ivtv_stream* %45, i32 %46, i32 %47)
  %49 = load i8*, i8** @OUT_NONE, align 8
  %50 = ptrtoint i8* %49 to i64
  %51 = load %struct.ivtv*, %struct.ivtv** %7, align 8
  %52 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %51, i32 0, i32 0
  store i64 %50, i64* %52, align 8
  br label %53

53:                                               ; preds = %43, %37
  %54 = load i32, i32* @IVTV_F_S_APPL_IO, align 4
  %55 = load %struct.ivtv_stream*, %struct.ivtv_stream** %8, align 8
  %56 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %55, i32 0, i32 0
  %57 = call i32 @clear_bit(i32 %54, i32* %56)
  %58 = load i32, i32* @IVTV_F_S_STREAMOFF, align 4
  %59 = load %struct.ivtv_stream*, %struct.ivtv_stream** %8, align 8
  %60 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %59, i32 0, i32 0
  %61 = call i32 @clear_bit(i32 %58, i32* %60)
  %62 = load %struct.ivtv*, %struct.ivtv** %7, align 8
  %63 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @OUT_UDMA_YUV, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %77

67:                                               ; preds = %53
  %68 = load %struct.ivtv_open_id*, %struct.ivtv_open_id** %4, align 8
  %69 = getelementptr inbounds %struct.ivtv_open_id, %struct.ivtv_open_id* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %67
  %73 = load i8*, i8** @OUT_NONE, align 8
  %74 = ptrtoint i8* %73 to i64
  %75 = load %struct.ivtv*, %struct.ivtv** %7, align 8
  %76 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %75, i32 0, i32 0
  store i64 %74, i64* %76, align 8
  br label %77

77:                                               ; preds = %72, %67, %53
  %78 = load %struct.ivtv*, %struct.ivtv** %7, align 8
  %79 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %78, i32 0, i32 2
  store i64 0, i64* %79, align 8
  %80 = load i32, i32* @IVTV_F_I_DEC_PAUSED, align 4
  %81 = load %struct.ivtv*, %struct.ivtv** %7, align 8
  %82 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %81, i32 0, i32 1
  %83 = call i32 @clear_bit(i32 %80, i32* %82)
  %84 = load %struct.ivtv_stream*, %struct.ivtv_stream** %8, align 8
  %85 = call i32 @ivtv_release_stream(%struct.ivtv_stream* %84)
  ret void
}

declare dso_local i32 @IVTV_DEBUG_FILE(i8*, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @ivtv_yuv_close(%struct.ivtv*) #1

declare dso_local i32 @IVTV_DEBUG_INFO(i8*) #1

declare dso_local i32 @ivtv_stop_v4l2_decode_stream(%struct.ivtv_stream*, i32, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @ivtv_release_stream(%struct.ivtv_stream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
