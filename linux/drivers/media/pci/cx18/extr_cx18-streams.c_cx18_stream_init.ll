; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx18/extr_cx18-streams.c_cx18_stream_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx18/extr_cx18-streams.c_cx18_stream_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.cx18 = type { i32*, %struct.TYPE_6__, i32, %struct.TYPE_5__*, i32*, %struct.cx18_stream* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.cx18_stream = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_8__, %struct.TYPE_8__, %struct.TYPE_8__, %struct.TYPE_8__, i32, i32, i32, i32, i32, i32, i32, %struct.cx18*, i32* }
%struct.TYPE_8__ = type { i32 }

@cx18_stream_info = common dso_local global %struct.TYPE_7__* null, align 8
@CX18_INVALID_TASK_HANDLE = common dso_local global i32 0, align 4
@cx18_out_work_handler = common dso_local global i32 0, align 4
@cx18_vb_timeout = common dso_local global i32 0, align 4
@CX18_ENC_STREAM_TYPE_YUV = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@cx18_videobuf_qops = common dso_local global i32 0, align 4
@V4L2_FIELD_INTERLACED = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_HM12 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cx18*, i32)* @cx18_stream_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cx18_stream_init(%struct.cx18* %0, i32 %1) #0 {
  %3 = alloca %struct.cx18*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cx18_stream*, align 8
  store %struct.cx18* %0, %struct.cx18** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.cx18*, %struct.cx18** %3, align 8
  %7 = getelementptr inbounds %struct.cx18, %struct.cx18* %6, i32 0, i32 5
  %8 = load %struct.cx18_stream*, %struct.cx18_stream** %7, align 8
  %9 = load i32, i32* %4, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %8, i64 %10
  store %struct.cx18_stream* %11, %struct.cx18_stream** %5, align 8
  %12 = load %struct.cx18_stream*, %struct.cx18_stream** %5, align 8
  %13 = call i32 @memset(%struct.cx18_stream* %12, i32 0, i32 120)
  %14 = load %struct.cx18_stream*, %struct.cx18_stream** %5, align 8
  %15 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %14, i32 0, i32 27
  store i32* null, i32** %15, align 8
  %16 = load %struct.cx18*, %struct.cx18** %3, align 8
  %17 = load %struct.cx18_stream*, %struct.cx18_stream** %5, align 8
  %18 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %17, i32 0, i32 26
  store %struct.cx18* %16, %struct.cx18** %18, align 8
  %19 = load i32, i32* %4, align 4
  %20 = load %struct.cx18_stream*, %struct.cx18_stream** %5, align 8
  %21 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cx18_stream_info, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.cx18_stream*, %struct.cx18_stream** %5, align 8
  %29 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %28, i32 0, i32 25
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @CX18_INVALID_TASK_HANDLE, align 4
  %31 = load %struct.cx18_stream*, %struct.cx18_stream** %5, align 8
  %32 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %31, i32 0, i32 24
  store i32 %30, i32* %32, align 8
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cx18_stream_info, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.cx18_stream*, %struct.cx18_stream** %5, align 8
  %40 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %39, i32 0, i32 23
  store i32 %38, i32* %40, align 4
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cx18_stream_info, align 8
  %42 = load i32, i32* %4, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.cx18_stream*, %struct.cx18_stream** %5, align 8
  %48 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %47, i32 0, i32 22
  store i32 %46, i32* %48, align 8
  %49 = load %struct.cx18*, %struct.cx18** %3, align 8
  %50 = getelementptr inbounds %struct.cx18, %struct.cx18* %49, i32 0, i32 4
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %4, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.cx18_stream*, %struct.cx18_stream** %5, align 8
  %57 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %56, i32 0, i32 21
  store i32 %55, i32* %57, align 4
  %58 = load %struct.cx18*, %struct.cx18** %3, align 8
  %59 = getelementptr inbounds %struct.cx18, %struct.cx18* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %4, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.cx18_stream*, %struct.cx18_stream** %5, align 8
  %66 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  %67 = load %struct.cx18_stream*, %struct.cx18_stream** %5, align 8
  %68 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %67, i32 0, i32 20
  %69 = call i32 @INIT_LIST_HEAD(i32* %68)
  %70 = load %struct.cx18_stream*, %struct.cx18_stream** %5, align 8
  %71 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %70, i32 0, i32 2
  store i32 1, i32* %71, align 8
  %72 = load %struct.cx18_stream*, %struct.cx18_stream** %5, align 8
  %73 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.cx18_stream*, %struct.cx18_stream** %5, align 8
  %76 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = mul nsw i32 %74, %77
  %79 = load %struct.cx18_stream*, %struct.cx18_stream** %5, align 8
  %80 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %79, i32 0, i32 3
  store i32 %78, i32* %80, align 4
  %81 = load %struct.cx18_stream*, %struct.cx18_stream** %5, align 8
  %82 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %81, i32 0, i32 19
  %83 = call i32 @init_waitqueue_head(i32* %82)
  %84 = load %struct.cx18_stream*, %struct.cx18_stream** %5, align 8
  %85 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %84, i32 0, i32 4
  store i32 -1, i32* %85, align 8
  %86 = load %struct.cx18_stream*, %struct.cx18_stream** %5, align 8
  %87 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %86, i32 0, i32 18
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = call i32 @spin_lock_init(i32* %88)
  %90 = load %struct.cx18_stream*, %struct.cx18_stream** %5, align 8
  %91 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %90, i32 0, i32 18
  %92 = call i32 @cx18_queue_init(%struct.TYPE_8__* %91)
  %93 = load %struct.cx18_stream*, %struct.cx18_stream** %5, align 8
  %94 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %93, i32 0, i32 17
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 0
  %96 = call i32 @spin_lock_init(i32* %95)
  %97 = load %struct.cx18_stream*, %struct.cx18_stream** %5, align 8
  %98 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %97, i32 0, i32 17
  %99 = call i32 @cx18_queue_init(%struct.TYPE_8__* %98)
  %100 = load %struct.cx18_stream*, %struct.cx18_stream** %5, align 8
  %101 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %100, i32 0, i32 16
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 0
  %103 = call i32 @spin_lock_init(i32* %102)
  %104 = load %struct.cx18_stream*, %struct.cx18_stream** %5, align 8
  %105 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %104, i32 0, i32 16
  %106 = call i32 @cx18_queue_init(%struct.TYPE_8__* %105)
  %107 = load %struct.cx18_stream*, %struct.cx18_stream** %5, align 8
  %108 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %107, i32 0, i32 15
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 0
  %110 = call i32 @spin_lock_init(i32* %109)
  %111 = load %struct.cx18_stream*, %struct.cx18_stream** %5, align 8
  %112 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %111, i32 0, i32 15
  %113 = call i32 @cx18_queue_init(%struct.TYPE_8__* %112)
  %114 = load %struct.cx18_stream*, %struct.cx18_stream** %5, align 8
  %115 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %114, i32 0, i32 14
  %116 = load i32, i32* @cx18_out_work_handler, align 4
  %117 = call i32 @INIT_WORK(i32* %115, i32 %116)
  %118 = load %struct.cx18_stream*, %struct.cx18_stream** %5, align 8
  %119 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %118, i32 0, i32 13
  %120 = call i32 @INIT_LIST_HEAD(i32* %119)
  %121 = load %struct.cx18_stream*, %struct.cx18_stream** %5, align 8
  %122 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %121, i32 0, i32 12
  %123 = load i32, i32* @cx18_vb_timeout, align 4
  %124 = call i32 @timer_setup(i32* %122, i32 %123, i32 0)
  %125 = load %struct.cx18_stream*, %struct.cx18_stream** %5, align 8
  %126 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %125, i32 0, i32 11
  %127 = call i32 @spin_lock_init(i32* %126)
  %128 = load i32, i32* %4, align 4
  %129 = load i32, i32* @CX18_ENC_STREAM_TYPE_YUV, align 4
  %130 = icmp eq i32 %128, %129
  br i1 %130, label %131, label %166

131:                                              ; preds = %2
  %132 = load %struct.cx18_stream*, %struct.cx18_stream** %5, align 8
  %133 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %132, i32 0, i32 8
  %134 = call i32 @spin_lock_init(i32* %133)
  %135 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 4
  %136 = load %struct.cx18_stream*, %struct.cx18_stream** %5, align 8
  %137 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %136, i32 0, i32 10
  store i32 %135, i32* %137, align 8
  %138 = load %struct.cx18_stream*, %struct.cx18_stream** %5, align 8
  %139 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %138, i32 0, i32 9
  %140 = load %struct.cx18*, %struct.cx18** %3, align 8
  %141 = getelementptr inbounds %struct.cx18, %struct.cx18* %140, i32 0, i32 3
  %142 = load %struct.TYPE_5__*, %struct.TYPE_5__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 0
  %144 = load %struct.cx18_stream*, %struct.cx18_stream** %5, align 8
  %145 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %144, i32 0, i32 8
  %146 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 4
  %147 = load i32, i32* @V4L2_FIELD_INTERLACED, align 4
  %148 = load %struct.cx18_stream*, %struct.cx18_stream** %5, align 8
  %149 = load %struct.cx18*, %struct.cx18** %3, align 8
  %150 = getelementptr inbounds %struct.cx18, %struct.cx18* %149, i32 0, i32 2
  %151 = call i32 @videobuf_queue_vmalloc_init(i32* %139, i32* @cx18_videobuf_qops, i32* %143, i32* %145, i32 %146, i32 %147, i32 4, %struct.cx18_stream* %148, i32* %150)
  %152 = load i32, i32* @V4L2_PIX_FMT_HM12, align 4
  %153 = load %struct.cx18_stream*, %struct.cx18_stream** %5, align 8
  %154 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %153, i32 0, i32 7
  store i32 %152, i32* %154, align 4
  %155 = load %struct.cx18*, %struct.cx18** %3, align 8
  %156 = getelementptr inbounds %struct.cx18, %struct.cx18* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = mul nsw i32 %158, 720
  %160 = mul nsw i32 %159, 3
  %161 = sdiv i32 %160, 2
  %162 = load %struct.cx18_stream*, %struct.cx18_stream** %5, align 8
  %163 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %162, i32 0, i32 5
  store i32 %161, i32* %163, align 4
  %164 = load %struct.cx18_stream*, %struct.cx18_stream** %5, align 8
  %165 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %164, i32 0, i32 6
  store i32 720, i32* %165, align 8
  br label %166

166:                                              ; preds = %131, %2
  ret void
}

declare dso_local i32 @memset(%struct.cx18_stream*, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @cx18_queue_init(%struct.TYPE_8__*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @videobuf_queue_vmalloc_init(i32*, i32*, i32*, i32*, i32, i32, i32, %struct.cx18_stream*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
