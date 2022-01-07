; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx18/extr_cx18-streams.c_buffer_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx18/extr_cx18-streams.c_buffer_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.videobuf_queue = type { i8*, i8*, %struct.cx18_stream* }
%struct.cx18_stream = type { %struct.cx18* }
%struct.cx18 = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@VB_MIN_BUFFERS = common dso_local global i32 0, align 4
@VB_MIN_BUFSIZE = common dso_local global i32 0, align 4
@V4L2_FIELD_INTERLACED = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.videobuf_queue*, i32*, i32*)* @buffer_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @buffer_setup(%struct.videobuf_queue* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.videobuf_queue*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.cx18_stream*, align 8
  %8 = alloca %struct.cx18*, align 8
  store %struct.videobuf_queue* %0, %struct.videobuf_queue** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load %struct.videobuf_queue*, %struct.videobuf_queue** %4, align 8
  %10 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %9, i32 0, i32 2
  %11 = load %struct.cx18_stream*, %struct.cx18_stream** %10, align 8
  store %struct.cx18_stream* %11, %struct.cx18_stream** %7, align 8
  %12 = load %struct.cx18_stream*, %struct.cx18_stream** %7, align 8
  %13 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %12, i32 0, i32 0
  %14 = load %struct.cx18*, %struct.cx18** %13, align 8
  store %struct.cx18* %14, %struct.cx18** %8, align 8
  %15 = load %struct.cx18*, %struct.cx18** %8, align 8
  %16 = getelementptr inbounds %struct.cx18, %struct.cx18* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = mul nsw i32 2, %18
  %20 = load %struct.cx18*, %struct.cx18** %8, align 8
  %21 = getelementptr inbounds %struct.cx18, %struct.cx18* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = mul nsw i32 %19, %23
  %25 = load i32*, i32** %6, align 8
  store i32 %24, i32* %25, align 4
  %26 = load i32*, i32** %5, align 8
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %3
  %30 = load i32, i32* @VB_MIN_BUFFERS, align 4
  %31 = load i32*, i32** %5, align 8
  store i32 %30, i32* %31, align 4
  br label %32

32:                                               ; preds = %29, %3
  br label %33

33:                                               ; preds = %43, %32
  %34 = load i32*, i32** %6, align 8
  %35 = load i32, i32* %34, align 4
  %36 = load i32*, i32** %5, align 8
  %37 = load i32, i32* %36, align 4
  %38 = mul i32 %35, %37
  %39 = load i32, i32* @VB_MIN_BUFFERS, align 4
  %40 = load i32, i32* @VB_MIN_BUFSIZE, align 4
  %41 = mul i32 %39, %40
  %42 = icmp ugt i32 %38, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %33
  %44 = load i32*, i32** %5, align 8
  %45 = load i32, i32* %44, align 4
  %46 = add i32 %45, -1
  store i32 %46, i32* %44, align 4
  br label %33

47:                                               ; preds = %33
  %48 = load i8*, i8** @V4L2_FIELD_INTERLACED, align 8
  %49 = load %struct.videobuf_queue*, %struct.videobuf_queue** %4, align 8
  %50 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %49, i32 0, i32 1
  store i8* %48, i8** %50, align 8
  %51 = load i8*, i8** @V4L2_FIELD_INTERLACED, align 8
  %52 = load %struct.videobuf_queue*, %struct.videobuf_queue** %4, align 8
  %53 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %52, i32 0, i32 0
  store i8* %51, i8** %53, align 8
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
