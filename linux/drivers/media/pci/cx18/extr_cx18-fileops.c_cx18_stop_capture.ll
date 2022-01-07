; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx18/extr_cx18-fileops.c_cx18_stop_capture.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx18/extr_cx18-fileops.c_cx18_stop_capture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx18_open_id = type { i64, %struct.cx18* }
%struct.cx18 = type { %struct.cx18_stream* }
%struct.cx18_stream = type { i32, i32, i32 }

@CX18_ENC_STREAM_TYPE_VBI = common dso_local global i64 0, align 8
@CX18_ENC_STREAM_TYPE_IDX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"close() of %s\0A\00", align 1
@CX18_F_S_STREAMING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"close stopping capture\0A\00", align 1
@CX18_ENC_STREAM_TYPE_MPG = common dso_local global i64 0, align 8
@CX18_F_S_APPL_IO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"close stopping embedded VBI capture\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"close stopping IDX capture\0A\00", align 1
@CX18_F_S_INTERNAL_USE = common dso_local global i32 0, align 4
@CX18_F_S_STREAMOFF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cx18_stop_capture(%struct.cx18_open_id* %0, i32 %1) #0 {
  %3 = alloca %struct.cx18_open_id*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cx18*, align 8
  %6 = alloca %struct.cx18_stream*, align 8
  %7 = alloca %struct.cx18_stream*, align 8
  %8 = alloca %struct.cx18_stream*, align 8
  store %struct.cx18_open_id* %0, %struct.cx18_open_id** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.cx18_open_id*, %struct.cx18_open_id** %3, align 8
  %10 = getelementptr inbounds %struct.cx18_open_id, %struct.cx18_open_id* %9, i32 0, i32 1
  %11 = load %struct.cx18*, %struct.cx18** %10, align 8
  store %struct.cx18* %11, %struct.cx18** %5, align 8
  %12 = load %struct.cx18*, %struct.cx18** %5, align 8
  %13 = getelementptr inbounds %struct.cx18, %struct.cx18* %12, i32 0, i32 0
  %14 = load %struct.cx18_stream*, %struct.cx18_stream** %13, align 8
  %15 = load %struct.cx18_open_id*, %struct.cx18_open_id** %3, align 8
  %16 = getelementptr inbounds %struct.cx18_open_id, %struct.cx18_open_id* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %14, i64 %17
  store %struct.cx18_stream* %18, %struct.cx18_stream** %6, align 8
  %19 = load %struct.cx18*, %struct.cx18** %5, align 8
  %20 = getelementptr inbounds %struct.cx18, %struct.cx18* %19, i32 0, i32 0
  %21 = load %struct.cx18_stream*, %struct.cx18_stream** %20, align 8
  %22 = load i64, i64* @CX18_ENC_STREAM_TYPE_VBI, align 8
  %23 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %21, i64 %22
  store %struct.cx18_stream* %23, %struct.cx18_stream** %7, align 8
  %24 = load %struct.cx18*, %struct.cx18** %5, align 8
  %25 = getelementptr inbounds %struct.cx18, %struct.cx18* %24, i32 0, i32 0
  %26 = load %struct.cx18_stream*, %struct.cx18_stream** %25, align 8
  %27 = load i64, i64* @CX18_ENC_STREAM_TYPE_IDX, align 8
  %28 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %26, i64 %27
  store %struct.cx18_stream* %28, %struct.cx18_stream** %8, align 8
  %29 = load %struct.cx18_stream*, %struct.cx18_stream** %6, align 8
  %30 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @CX18_DEBUG_IOCTL(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* @CX18_F_S_STREAMING, align 4
  %34 = load %struct.cx18_stream*, %struct.cx18_stream** %6, align 8
  %35 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %34, i32 0, i32 1
  %36 = call i64 @test_bit(i32 %33, i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %92

38:                                               ; preds = %2
  %39 = call i32 @CX18_DEBUG_INFO(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %40 = load %struct.cx18_open_id*, %struct.cx18_open_id** %3, align 8
  %41 = getelementptr inbounds %struct.cx18_open_id, %struct.cx18_open_id* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @CX18_ENC_STREAM_TYPE_MPG, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %72

45:                                               ; preds = %38
  %46 = load i32, i32* @CX18_F_S_STREAMING, align 4
  %47 = load %struct.cx18_stream*, %struct.cx18_stream** %7, align 8
  %48 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %47, i32 0, i32 1
  %49 = call i64 @test_bit(i32 %46, i32* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %61

51:                                               ; preds = %45
  %52 = load i32, i32* @CX18_F_S_APPL_IO, align 4
  %53 = load %struct.cx18_stream*, %struct.cx18_stream** %7, align 8
  %54 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %53, i32 0, i32 1
  %55 = call i64 @test_bit(i32 %52, i32* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %51
  %58 = call i32 @CX18_DEBUG_INFO(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %59 = load %struct.cx18_stream*, %struct.cx18_stream** %7, align 8
  %60 = call i32 @cx18_stop_v4l2_encode_stream(%struct.cx18_stream* %59, i32 0)
  br label %61

61:                                               ; preds = %57, %51, %45
  %62 = load i32, i32* @CX18_F_S_STREAMING, align 4
  %63 = load %struct.cx18_stream*, %struct.cx18_stream** %8, align 8
  %64 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %63, i32 0, i32 1
  %65 = call i64 @test_bit(i32 %62, i32* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %61
  %68 = call i32 @CX18_DEBUG_INFO(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %69 = load %struct.cx18_stream*, %struct.cx18_stream** %8, align 8
  %70 = call i32 @cx18_stop_v4l2_encode_stream(%struct.cx18_stream* %69, i32 0)
  br label %71

71:                                               ; preds = %67, %61
  br label %72

72:                                               ; preds = %71, %38
  %73 = load %struct.cx18_open_id*, %struct.cx18_open_id** %3, align 8
  %74 = getelementptr inbounds %struct.cx18_open_id, %struct.cx18_open_id* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @CX18_ENC_STREAM_TYPE_VBI, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %87

78:                                               ; preds = %72
  %79 = load i32, i32* @CX18_F_S_INTERNAL_USE, align 4
  %80 = load %struct.cx18_stream*, %struct.cx18_stream** %6, align 8
  %81 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %80, i32 0, i32 1
  %82 = call i64 @test_bit(i32 %79, i32* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %78
  %85 = load %struct.cx18_stream*, %struct.cx18_stream** %6, align 8
  %86 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %85, i32 0, i32 0
  store i32 -1, i32* %86, align 4
  br label %91

87:                                               ; preds = %78, %72
  %88 = load %struct.cx18_stream*, %struct.cx18_stream** %6, align 8
  %89 = load i32, i32* %4, align 4
  %90 = call i32 @cx18_stop_v4l2_encode_stream(%struct.cx18_stream* %88, i32 %89)
  br label %91

91:                                               ; preds = %87, %84
  br label %92

92:                                               ; preds = %91, %2
  %93 = load i32, i32* %4, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %106, label %95

95:                                               ; preds = %92
  %96 = load i32, i32* @CX18_F_S_APPL_IO, align 4
  %97 = load %struct.cx18_stream*, %struct.cx18_stream** %6, align 8
  %98 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %97, i32 0, i32 1
  %99 = call i32 @clear_bit(i32 %96, i32* %98)
  %100 = load i32, i32* @CX18_F_S_STREAMOFF, align 4
  %101 = load %struct.cx18_stream*, %struct.cx18_stream** %6, align 8
  %102 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %101, i32 0, i32 1
  %103 = call i32 @clear_bit(i32 %100, i32* %102)
  %104 = load %struct.cx18_stream*, %struct.cx18_stream** %6, align 8
  %105 = call i32 @cx18_release_stream(%struct.cx18_stream* %104)
  br label %106

106:                                              ; preds = %95, %92
  ret void
}

declare dso_local i32 @CX18_DEBUG_IOCTL(i8*, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @CX18_DEBUG_INFO(i8*) #1

declare dso_local i32 @cx18_stop_v4l2_encode_stream(%struct.cx18_stream*, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @cx18_release_stream(%struct.cx18_stream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
