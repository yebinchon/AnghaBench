; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-fileops.c_ivtv_stop_capture.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-fileops.c_ivtv_stop_capture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ivtv_open_id = type { i64, %struct.ivtv* }
%struct.ivtv = type { %struct.ivtv_stream* }
%struct.ivtv_stream = type { i32, i32*, i32 }

@.str = private unnamed_addr constant [15 x i8] c"close() of %s\0A\00", align 1
@IVTV_F_S_STREAMING = common dso_local global i32 0, align 4
@IVTV_ENC_STREAM_TYPE_VBI = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"close stopping capture\0A\00", align 1
@IVTV_ENC_STREAM_TYPE_MPG = common dso_local global i64 0, align 8
@IVTV_F_S_APPL_IO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"close stopping embedded VBI capture\0A\00", align 1
@IVTV_DEC_STREAM_TYPE_VBI = common dso_local global i64 0, align 8
@IVTV_F_S_INTERNAL_USE = common dso_local global i32 0, align 4
@IVTV_F_S_STREAMOFF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ivtv_stop_capture(%struct.ivtv_open_id* %0, i32 %1) #0 {
  %3 = alloca %struct.ivtv_open_id*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ivtv*, align 8
  %6 = alloca %struct.ivtv_stream*, align 8
  %7 = alloca %struct.ivtv_stream*, align 8
  store %struct.ivtv_open_id* %0, %struct.ivtv_open_id** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.ivtv_open_id*, %struct.ivtv_open_id** %3, align 8
  %9 = getelementptr inbounds %struct.ivtv_open_id, %struct.ivtv_open_id* %8, i32 0, i32 1
  %10 = load %struct.ivtv*, %struct.ivtv** %9, align 8
  store %struct.ivtv* %10, %struct.ivtv** %5, align 8
  %11 = load %struct.ivtv*, %struct.ivtv** %5, align 8
  %12 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %11, i32 0, i32 0
  %13 = load %struct.ivtv_stream*, %struct.ivtv_stream** %12, align 8
  %14 = load %struct.ivtv_open_id*, %struct.ivtv_open_id** %3, align 8
  %15 = getelementptr inbounds %struct.ivtv_open_id, %struct.ivtv_open_id* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %13, i64 %16
  store %struct.ivtv_stream* %17, %struct.ivtv_stream** %6, align 8
  %18 = load %struct.ivtv_stream*, %struct.ivtv_stream** %6, align 8
  %19 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @IVTV_DEBUG_FILE(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* @IVTV_F_S_STREAMING, align 4
  %23 = load %struct.ivtv_stream*, %struct.ivtv_stream** %6, align 8
  %24 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %23, i32 0, i32 0
  %25 = call i64 @test_bit(i32 %22, i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %81

27:                                               ; preds = %2
  %28 = load %struct.ivtv*, %struct.ivtv** %5, align 8
  %29 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %28, i32 0, i32 0
  %30 = load %struct.ivtv_stream*, %struct.ivtv_stream** %29, align 8
  %31 = load i64, i64* @IVTV_ENC_STREAM_TYPE_VBI, align 8
  %32 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %30, i64 %31
  store %struct.ivtv_stream* %32, %struct.ivtv_stream** %7, align 8
  %33 = call i32 @IVTV_DEBUG_INFO(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %34 = load %struct.ivtv_open_id*, %struct.ivtv_open_id** %3, align 8
  %35 = getelementptr inbounds %struct.ivtv_open_id, %struct.ivtv_open_id* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @IVTV_ENC_STREAM_TYPE_MPG, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %55

39:                                               ; preds = %27
  %40 = load i32, i32* @IVTV_F_S_STREAMING, align 4
  %41 = load %struct.ivtv_stream*, %struct.ivtv_stream** %7, align 8
  %42 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %41, i32 0, i32 0
  %43 = call i64 @test_bit(i32 %40, i32* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %39
  %46 = load i32, i32* @IVTV_F_S_APPL_IO, align 4
  %47 = load %struct.ivtv_stream*, %struct.ivtv_stream** %7, align 8
  %48 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %47, i32 0, i32 0
  %49 = call i64 @test_bit(i32 %46, i32* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %45
  %52 = call i32 @IVTV_DEBUG_INFO(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %53 = load %struct.ivtv_stream*, %struct.ivtv_stream** %7, align 8
  %54 = call i32 @ivtv_stop_v4l2_encode_stream(%struct.ivtv_stream* %53, i32 0)
  br label %55

55:                                               ; preds = %51, %45, %39, %27
  %56 = load %struct.ivtv_open_id*, %struct.ivtv_open_id** %3, align 8
  %57 = getelementptr inbounds %struct.ivtv_open_id, %struct.ivtv_open_id* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @IVTV_DEC_STREAM_TYPE_VBI, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %67, label %61

61:                                               ; preds = %55
  %62 = load %struct.ivtv_open_id*, %struct.ivtv_open_id** %3, align 8
  %63 = getelementptr inbounds %struct.ivtv_open_id, %struct.ivtv_open_id* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @IVTV_ENC_STREAM_TYPE_VBI, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %76

67:                                               ; preds = %61, %55
  %68 = load i32, i32* @IVTV_F_S_INTERNAL_USE, align 4
  %69 = load %struct.ivtv_stream*, %struct.ivtv_stream** %6, align 8
  %70 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %69, i32 0, i32 0
  %71 = call i64 @test_bit(i32 %68, i32* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %67
  %74 = load %struct.ivtv_stream*, %struct.ivtv_stream** %6, align 8
  %75 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %74, i32 0, i32 1
  store i32* null, i32** %75, align 8
  br label %80

76:                                               ; preds = %67, %61
  %77 = load %struct.ivtv_stream*, %struct.ivtv_stream** %6, align 8
  %78 = load i32, i32* %4, align 4
  %79 = call i32 @ivtv_stop_v4l2_encode_stream(%struct.ivtv_stream* %77, i32 %78)
  br label %80

80:                                               ; preds = %76, %73
  br label %81

81:                                               ; preds = %80, %2
  %82 = load i32, i32* %4, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %95, label %84

84:                                               ; preds = %81
  %85 = load i32, i32* @IVTV_F_S_APPL_IO, align 4
  %86 = load %struct.ivtv_stream*, %struct.ivtv_stream** %6, align 8
  %87 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %86, i32 0, i32 0
  %88 = call i32 @clear_bit(i32 %85, i32* %87)
  %89 = load i32, i32* @IVTV_F_S_STREAMOFF, align 4
  %90 = load %struct.ivtv_stream*, %struct.ivtv_stream** %6, align 8
  %91 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %90, i32 0, i32 0
  %92 = call i32 @clear_bit(i32 %89, i32* %91)
  %93 = load %struct.ivtv_stream*, %struct.ivtv_stream** %6, align 8
  %94 = call i32 @ivtv_release_stream(%struct.ivtv_stream* %93)
  br label %95

95:                                               ; preds = %84, %81
  ret void
}

declare dso_local i32 @IVTV_DEBUG_FILE(i8*, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @IVTV_DEBUG_INFO(i8*) #1

declare dso_local i32 @ivtv_stop_v4l2_encode_stream(%struct.ivtv_stream*, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @ivtv_release_stream(%struct.ivtv_stream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
