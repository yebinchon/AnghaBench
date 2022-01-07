; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx18/extr_cx18-fileops.c_cx18_v4l2_enc_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx18/extr_cx18-fileops.c_cx18_v4l2_enc_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.cx18_open_id = type { i64, i32, %struct.cx18* }
%struct.cx18 = type { i32, %struct.cx18_stream* }
%struct.cx18_stream = type { i64, %struct.TYPE_2__, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@CX18_F_S_STREAMOFF = common dso_local global i32 0, align 4
@CX18_F_S_STREAMING = common dso_local global i32 0, align 4
@EPOLLIN = common dso_local global i32 0, align 4
@EPOLLRDNORM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Could not start capture for %s (%d)\0A\00", align 1
@EPOLLERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Encoder poll started capture\0A\00", align 1
@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i64 0, align 8
@CX18_ENC_STREAM_TYPE_YUV = common dso_local global i64 0, align 8
@EPOLLPRI = common dso_local global i32 0, align 4
@EPOLLHUP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"Encoder poll\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx18_v4l2_enc_poll(%struct.file* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cx18_open_id*, align 8
  %8 = alloca %struct.cx18*, align 8
  %9 = alloca %struct.cx18_stream*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store i32* %1, i32** %5, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = call i32 @poll_requested_events(i32* %14)
  store i32 %15, i32* %6, align 4
  %16 = load %struct.file*, %struct.file** %4, align 8
  %17 = call %struct.cx18_open_id* @file2id(%struct.file* %16)
  store %struct.cx18_open_id* %17, %struct.cx18_open_id** %7, align 8
  %18 = load %struct.cx18_open_id*, %struct.cx18_open_id** %7, align 8
  %19 = getelementptr inbounds %struct.cx18_open_id, %struct.cx18_open_id* %18, i32 0, i32 2
  %20 = load %struct.cx18*, %struct.cx18** %19, align 8
  store %struct.cx18* %20, %struct.cx18** %8, align 8
  %21 = load %struct.cx18*, %struct.cx18** %8, align 8
  %22 = getelementptr inbounds %struct.cx18, %struct.cx18* %21, i32 0, i32 1
  %23 = load %struct.cx18_stream*, %struct.cx18_stream** %22, align 8
  %24 = load %struct.cx18_open_id*, %struct.cx18_open_id** %7, align 8
  %25 = getelementptr inbounds %struct.cx18_open_id, %struct.cx18_open_id* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %23, i64 %26
  store %struct.cx18_stream* %27, %struct.cx18_stream** %9, align 8
  %28 = load i32, i32* @CX18_F_S_STREAMOFF, align 4
  %29 = load %struct.cx18_stream*, %struct.cx18_stream** %9, align 8
  %30 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %29, i32 0, i32 5
  %31 = call i32 @test_bit(i32 %28, i32* %30)
  store i32 %31, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %67, label %34

34:                                               ; preds = %2
  %35 = load i32, i32* @CX18_F_S_STREAMING, align 4
  %36 = load %struct.cx18_stream*, %struct.cx18_stream** %9, align 8
  %37 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %36, i32 0, i32 5
  %38 = call i32 @test_bit(i32 %35, i32* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %67, label %40

40:                                               ; preds = %34
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @EPOLLIN, align 4
  %43 = load i32, i32* @EPOLLRDNORM, align 4
  %44 = or i32 %42, %43
  %45 = and i32 %41, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %67

47:                                               ; preds = %40
  %48 = load %struct.cx18*, %struct.cx18** %8, align 8
  %49 = getelementptr inbounds %struct.cx18, %struct.cx18* %48, i32 0, i32 0
  %50 = call i32 @mutex_lock(i32* %49)
  %51 = load %struct.cx18_open_id*, %struct.cx18_open_id** %7, align 8
  %52 = call i32 @cx18_start_capture(%struct.cx18_open_id* %51)
  store i32 %52, i32* %12, align 4
  %53 = load %struct.cx18*, %struct.cx18** %8, align 8
  %54 = getelementptr inbounds %struct.cx18, %struct.cx18* %53, i32 0, i32 0
  %55 = call i32 @mutex_unlock(i32* %54)
  %56 = load i32, i32* %12, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %47
  %59 = load %struct.cx18_stream*, %struct.cx18_stream** %9, align 8
  %60 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %12, align 4
  %63 = call i32 @CX18_DEBUG_INFO(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %61, i32 %62)
  %64 = load i32, i32* @EPOLLERR, align 4
  store i32 %64, i32* %3, align 4
  br label %145

65:                                               ; preds = %47
  %66 = call i32 @CX18_DEBUG_FILE(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %67

67:                                               ; preds = %65, %40, %34, %2
  %68 = load %struct.cx18_stream*, %struct.cx18_stream** %9, align 8
  %69 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %108

73:                                               ; preds = %67
  %74 = load %struct.cx18_open_id*, %struct.cx18_open_id** %7, align 8
  %75 = getelementptr inbounds %struct.cx18_open_id, %struct.cx18_open_id* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @CX18_ENC_STREAM_TYPE_YUV, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %108

79:                                               ; preds = %73
  %80 = load %struct.file*, %struct.file** %4, align 8
  %81 = load %struct.cx18_stream*, %struct.cx18_stream** %9, align 8
  %82 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %81, i32 0, i32 3
  %83 = load i32*, i32** %5, align 8
  %84 = call i32 @videobuf_poll_stream(%struct.file* %80, i32* %82, i32* %83)
  store i32 %84, i32* %13, align 4
  %85 = load %struct.cx18_open_id*, %struct.cx18_open_id** %7, align 8
  %86 = getelementptr inbounds %struct.cx18_open_id, %struct.cx18_open_id* %85, i32 0, i32 1
  %87 = call i64 @v4l2_event_pending(i32* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %79
  %90 = load i32, i32* @EPOLLPRI, align 4
  %91 = load i32, i32* %11, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %11, align 4
  br label %93

93:                                               ; preds = %89, %79
  %94 = load i32, i32* %10, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %104

96:                                               ; preds = %93
  %97 = load i32, i32* %13, align 4
  %98 = load i32, i32* @EPOLLERR, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %104

100:                                              ; preds = %96
  %101 = load i32, i32* %11, align 4
  %102 = load i32, i32* @EPOLLHUP, align 4
  %103 = or i32 %101, %102
  store i32 %103, i32* %3, align 4
  br label %145

104:                                              ; preds = %96, %93
  %105 = load i32, i32* %11, align 4
  %106 = load i32, i32* %13, align 4
  %107 = or i32 %105, %106
  store i32 %107, i32* %3, align 4
  br label %145

108:                                              ; preds = %73, %67
  %109 = call i32 @CX18_DEBUG_HI_FILE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %110 = load %struct.cx18_open_id*, %struct.cx18_open_id** %7, align 8
  %111 = getelementptr inbounds %struct.cx18_open_id, %struct.cx18_open_id* %110, i32 0, i32 1
  %112 = call i64 @v4l2_event_pending(i32* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %108
  %115 = load i32, i32* @EPOLLPRI, align 4
  %116 = load i32, i32* %11, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* %11, align 4
  br label %124

118:                                              ; preds = %108
  %119 = load %struct.file*, %struct.file** %4, align 8
  %120 = load %struct.cx18_stream*, %struct.cx18_stream** %9, align 8
  %121 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %120, i32 0, i32 2
  %122 = load i32*, i32** %5, align 8
  %123 = call i32 @poll_wait(%struct.file* %119, i32* %121, i32* %122)
  br label %124

124:                                              ; preds = %118, %114
  %125 = load %struct.cx18_stream*, %struct.cx18_stream** %9, align 8
  %126 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 0
  %128 = call i64 @atomic_read(i32* %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %136

130:                                              ; preds = %124
  %131 = load i32, i32* %11, align 4
  %132 = load i32, i32* @EPOLLIN, align 4
  %133 = or i32 %131, %132
  %134 = load i32, i32* @EPOLLRDNORM, align 4
  %135 = or i32 %133, %134
  store i32 %135, i32* %3, align 4
  br label %145

136:                                              ; preds = %124
  %137 = load i32, i32* %10, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %143

139:                                              ; preds = %136
  %140 = load i32, i32* %11, align 4
  %141 = load i32, i32* @EPOLLHUP, align 4
  %142 = or i32 %140, %141
  store i32 %142, i32* %3, align 4
  br label %145

143:                                              ; preds = %136
  %144 = load i32, i32* %11, align 4
  store i32 %144, i32* %3, align 4
  br label %145

145:                                              ; preds = %143, %139, %130, %104, %100, %58
  %146 = load i32, i32* %3, align 4
  ret i32 %146
}

declare dso_local i32 @poll_requested_events(i32*) #1

declare dso_local %struct.cx18_open_id* @file2id(%struct.file*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @cx18_start_capture(%struct.cx18_open_id*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @CX18_DEBUG_INFO(i8*, i32, i32) #1

declare dso_local i32 @CX18_DEBUG_FILE(i8*) #1

declare dso_local i32 @videobuf_poll_stream(%struct.file*, i32*, i32*) #1

declare dso_local i64 @v4l2_event_pending(i32*) #1

declare dso_local i32 @CX18_DEBUG_HI_FILE(i8*) #1

declare dso_local i32 @poll_wait(%struct.file*, i32*, i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
