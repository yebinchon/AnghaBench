; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx18/extr_cx18-fileops.c_cx18_v4l2_mmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx18/extr_cx18-fileops.c_cx18_v4l2_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.cx18_open_id* }
%struct.cx18_open_id = type { i64, %struct.cx18* }
%struct.cx18 = type { i32, %struct.cx18_stream* }
%struct.cx18_stream = type { i64, i32, i32, i32 }
%struct.vm_area_struct = type { i32 }

@CX18_F_S_STREAMOFF = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i64 0, align 8
@CX18_ENC_STREAM_TYPE_YUV = common dso_local global i64 0, align 8
@CX18_F_S_STREAMING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Could not start capture for %s (%d)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Encoder mmap started capture\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx18_v4l2_mmap(%struct.file* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca %struct.cx18_open_id*, align 8
  %7 = alloca %struct.cx18*, align 8
  %8 = alloca %struct.cx18_stream*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %5, align 8
  %11 = load %struct.file*, %struct.file** %4, align 8
  %12 = getelementptr inbounds %struct.file, %struct.file* %11, i32 0, i32 0
  %13 = load %struct.cx18_open_id*, %struct.cx18_open_id** %12, align 8
  store %struct.cx18_open_id* %13, %struct.cx18_open_id** %6, align 8
  %14 = load %struct.cx18_open_id*, %struct.cx18_open_id** %6, align 8
  %15 = getelementptr inbounds %struct.cx18_open_id, %struct.cx18_open_id* %14, i32 0, i32 1
  %16 = load %struct.cx18*, %struct.cx18** %15, align 8
  store %struct.cx18* %16, %struct.cx18** %7, align 8
  %17 = load %struct.cx18*, %struct.cx18** %7, align 8
  %18 = getelementptr inbounds %struct.cx18, %struct.cx18* %17, i32 0, i32 1
  %19 = load %struct.cx18_stream*, %struct.cx18_stream** %18, align 8
  %20 = load %struct.cx18_open_id*, %struct.cx18_open_id** %6, align 8
  %21 = getelementptr inbounds %struct.cx18_open_id, %struct.cx18_open_id* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %19, i64 %22
  store %struct.cx18_stream* %23, %struct.cx18_stream** %8, align 8
  %24 = load i32, i32* @CX18_F_S_STREAMOFF, align 4
  %25 = load %struct.cx18_stream*, %struct.cx18_stream** %8, align 8
  %26 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %25, i32 0, i32 3
  %27 = call i32 @test_bit(i32 %24, i32* %26)
  store i32 %27, i32* %9, align 4
  %28 = load %struct.cx18_stream*, %struct.cx18_stream** %8, align 8
  %29 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %74

33:                                               ; preds = %2
  %34 = load %struct.cx18_open_id*, %struct.cx18_open_id** %6, align 8
  %35 = getelementptr inbounds %struct.cx18_open_id, %struct.cx18_open_id* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @CX18_ENC_STREAM_TYPE_YUV, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %74

39:                                               ; preds = %33
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %69, label %42

42:                                               ; preds = %39
  %43 = load i32, i32* @CX18_F_S_STREAMING, align 4
  %44 = load %struct.cx18_stream*, %struct.cx18_stream** %8, align 8
  %45 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %44, i32 0, i32 3
  %46 = call i32 @test_bit(i32 %43, i32* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %69, label %48

48:                                               ; preds = %42
  %49 = load %struct.cx18*, %struct.cx18** %7, align 8
  %50 = getelementptr inbounds %struct.cx18, %struct.cx18* %49, i32 0, i32 0
  %51 = call i32 @mutex_lock(i32* %50)
  %52 = load %struct.cx18_open_id*, %struct.cx18_open_id** %6, align 8
  %53 = call i32 @cx18_start_capture(%struct.cx18_open_id* %52)
  store i32 %53, i32* %10, align 4
  %54 = load %struct.cx18*, %struct.cx18** %7, align 8
  %55 = getelementptr inbounds %struct.cx18, %struct.cx18* %54, i32 0, i32 0
  %56 = call i32 @mutex_unlock(i32* %55)
  %57 = load i32, i32* %10, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %48
  %60 = load %struct.cx18_stream*, %struct.cx18_stream** %8, align 8
  %61 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %10, align 4
  %64 = call i32 @CX18_DEBUG_INFO(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %62, i32 %63)
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %3, align 4
  br label %77

67:                                               ; preds = %48
  %68 = call i32 @CX18_DEBUG_FILE(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %69

69:                                               ; preds = %67, %42, %39
  %70 = load %struct.cx18_stream*, %struct.cx18_stream** %8, align 8
  %71 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %70, i32 0, i32 1
  %72 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %73 = call i32 @videobuf_mmap_mapper(i32* %71, %struct.vm_area_struct* %72)
  store i32 %73, i32* %3, align 4
  br label %77

74:                                               ; preds = %33, %2
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %74, %69, %59
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @cx18_start_capture(%struct.cx18_open_id*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @CX18_DEBUG_INFO(i8*, i32, i32) #1

declare dso_local i32 @CX18_DEBUG_FILE(i8*) #1

declare dso_local i32 @videobuf_mmap_mapper(i32*, %struct.vm_area_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
