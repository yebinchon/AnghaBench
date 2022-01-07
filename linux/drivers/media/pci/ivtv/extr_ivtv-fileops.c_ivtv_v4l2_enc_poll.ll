; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-fileops.c_ivtv_v4l2_enc_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-fileops.c_ivtv_v4l2_enc_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.ivtv_open_id = type { i64, %struct.TYPE_6__, %struct.ivtv* }
%struct.TYPE_6__ = type { i32 }
%struct.ivtv = type { i32, %struct.ivtv_stream* }
%struct.ivtv_stream = type { i64, %struct.TYPE_5__, %struct.TYPE_4__, i32, i32, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64 }

@IVTV_F_S_STREAMOFF = common dso_local global i32 0, align 4
@IVTV_F_S_STREAMING = common dso_local global i32 0, align 4
@IVTV_ENC_STREAM_TYPE_RAD = common dso_local global i64 0, align 8
@EPOLLIN = common dso_local global i32 0, align 4
@EPOLLRDNORM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Could not start capture for %s (%d)\0A\00", align 1
@EPOLLERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Encoder poll started capture\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"Encoder poll\0A\00", align 1
@EPOLLPRI = common dso_local global i32 0, align 4
@EPOLLHUP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ivtv_v4l2_enc_poll(%struct.file* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ivtv_open_id*, align 8
  %8 = alloca %struct.ivtv*, align 8
  %9 = alloca %struct.ivtv_stream*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store i32* %1, i32** %5, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = call i32 @poll_requested_events(i32* %13)
  store i32 %14, i32* %6, align 4
  %15 = load %struct.file*, %struct.file** %4, align 8
  %16 = getelementptr inbounds %struct.file, %struct.file* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.ivtv_open_id* @fh2id(i32 %17)
  store %struct.ivtv_open_id* %18, %struct.ivtv_open_id** %7, align 8
  %19 = load %struct.ivtv_open_id*, %struct.ivtv_open_id** %7, align 8
  %20 = getelementptr inbounds %struct.ivtv_open_id, %struct.ivtv_open_id* %19, i32 0, i32 2
  %21 = load %struct.ivtv*, %struct.ivtv** %20, align 8
  store %struct.ivtv* %21, %struct.ivtv** %8, align 8
  %22 = load %struct.ivtv*, %struct.ivtv** %8, align 8
  %23 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %22, i32 0, i32 1
  %24 = load %struct.ivtv_stream*, %struct.ivtv_stream** %23, align 8
  %25 = load %struct.ivtv_open_id*, %struct.ivtv_open_id** %7, align 8
  %26 = getelementptr inbounds %struct.ivtv_open_id, %struct.ivtv_open_id* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %24, i64 %27
  store %struct.ivtv_stream* %28, %struct.ivtv_stream** %9, align 8
  %29 = load i32, i32* @IVTV_F_S_STREAMOFF, align 4
  %30 = load %struct.ivtv_stream*, %struct.ivtv_stream** %9, align 8
  %31 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %30, i32 0, i32 5
  %32 = call i32 @test_bit(i32 %29, i32* %31)
  store i32 %32, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %74, label %35

35:                                               ; preds = %2
  %36 = load i32, i32* @IVTV_F_S_STREAMING, align 4
  %37 = load %struct.ivtv_stream*, %struct.ivtv_stream** %9, align 8
  %38 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %37, i32 0, i32 5
  %39 = call i32 @test_bit(i32 %36, i32* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %74, label %41

41:                                               ; preds = %35
  %42 = load %struct.ivtv_stream*, %struct.ivtv_stream** %9, align 8
  %43 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @IVTV_ENC_STREAM_TYPE_RAD, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %74

47:                                               ; preds = %41
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @EPOLLIN, align 4
  %50 = load i32, i32* @EPOLLRDNORM, align 4
  %51 = or i32 %49, %50
  %52 = and i32 %48, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %74

54:                                               ; preds = %47
  %55 = load %struct.ivtv*, %struct.ivtv** %8, align 8
  %56 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %55, i32 0, i32 0
  %57 = call i32 @mutex_lock(i32* %56)
  %58 = load %struct.ivtv_open_id*, %struct.ivtv_open_id** %7, align 8
  %59 = call i32 @ivtv_start_capture(%struct.ivtv_open_id* %58)
  store i32 %59, i32* %12, align 4
  %60 = load %struct.ivtv*, %struct.ivtv** %8, align 8
  %61 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %60, i32 0, i32 0
  %62 = call i32 @mutex_unlock(i32* %61)
  %63 = load i32, i32* %12, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %54
  %66 = load %struct.ivtv_stream*, %struct.ivtv_stream** %9, align 8
  %67 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %12, align 4
  %70 = call i32 @IVTV_DEBUG_INFO(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %68, i32 %69)
  %71 = load i32, i32* @EPOLLERR, align 4
  store i32 %71, i32* %3, align 4
  br label %123

72:                                               ; preds = %54
  %73 = call i32 @IVTV_DEBUG_FILE(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %74

74:                                               ; preds = %72, %47, %41, %35, %2
  %75 = call i32 @IVTV_DEBUG_HI_FILE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %76 = load %struct.file*, %struct.file** %4, align 8
  %77 = load %struct.ivtv_stream*, %struct.ivtv_stream** %9, align 8
  %78 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %77, i32 0, i32 3
  %79 = load i32*, i32** %5, align 8
  %80 = call i32 @poll_wait(%struct.file* %76, i32* %78, i32* %79)
  %81 = load %struct.ivtv_open_id*, %struct.ivtv_open_id** %7, align 8
  %82 = getelementptr inbounds %struct.ivtv_open_id, %struct.ivtv_open_id* %81, i32 0, i32 1
  %83 = call i64 @v4l2_event_pending(%struct.TYPE_6__* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %74
  %86 = load i32, i32* @EPOLLPRI, align 4
  %87 = load i32, i32* %11, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %11, align 4
  br label %96

89:                                               ; preds = %74
  %90 = load %struct.file*, %struct.file** %4, align 8
  %91 = load %struct.ivtv_open_id*, %struct.ivtv_open_id** %7, align 8
  %92 = getelementptr inbounds %struct.ivtv_open_id, %struct.ivtv_open_id* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = load i32*, i32** %5, align 8
  %95 = call i32 @poll_wait(%struct.file* %90, i32* %93, i32* %94)
  br label %96

96:                                               ; preds = %89, %85
  %97 = load %struct.ivtv_stream*, %struct.ivtv_stream** %9, align 8
  %98 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %108, label %102

102:                                              ; preds = %96
  %103 = load %struct.ivtv_stream*, %struct.ivtv_stream** %9, align 8
  %104 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %102, %96
  %109 = load i32, i32* %11, align 4
  %110 = load i32, i32* @EPOLLIN, align 4
  %111 = or i32 %109, %110
  %112 = load i32, i32* @EPOLLRDNORM, align 4
  %113 = or i32 %111, %112
  store i32 %113, i32* %3, align 4
  br label %123

114:                                              ; preds = %102
  %115 = load i32, i32* %10, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %114
  %118 = load i32, i32* %11, align 4
  %119 = load i32, i32* @EPOLLHUP, align 4
  %120 = or i32 %118, %119
  store i32 %120, i32* %3, align 4
  br label %123

121:                                              ; preds = %114
  %122 = load i32, i32* %11, align 4
  store i32 %122, i32* %3, align 4
  br label %123

123:                                              ; preds = %121, %117, %108, %65
  %124 = load i32, i32* %3, align 4
  ret i32 %124
}

declare dso_local i32 @poll_requested_events(i32*) #1

declare dso_local %struct.ivtv_open_id* @fh2id(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ivtv_start_capture(%struct.ivtv_open_id*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @IVTV_DEBUG_INFO(i8*, i32, i32) #1

declare dso_local i32 @IVTV_DEBUG_FILE(i8*) #1

declare dso_local i32 @IVTV_DEBUG_HI_FILE(i8*) #1

declare dso_local i32 @poll_wait(%struct.file*, i32*, i32*) #1

declare dso_local i64 @v4l2_event_pending(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
