; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx18/extr_cx18-ioctl.c_cx18_vb_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx18/extr_cx18-ioctl.c_cx18_vb_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.videobuf_queue = type { i32 }
%struct.cx18_open_id = type { i64, %struct.cx18* }
%struct.cx18 = type { %struct.cx18_stream* }
%struct.cx18_stream = type { i32, %struct.videobuf_queue }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.videobuf_queue* (%struct.cx18_open_id*)* @cx18_vb_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.videobuf_queue* @cx18_vb_queue(%struct.cx18_open_id* %0) #0 {
  %2 = alloca %struct.cx18_open_id*, align 8
  %3 = alloca %struct.videobuf_queue*, align 8
  %4 = alloca %struct.cx18*, align 8
  %5 = alloca %struct.cx18_stream*, align 8
  store %struct.cx18_open_id* %0, %struct.cx18_open_id** %2, align 8
  store %struct.videobuf_queue* null, %struct.videobuf_queue** %3, align 8
  %6 = load %struct.cx18_open_id*, %struct.cx18_open_id** %2, align 8
  %7 = getelementptr inbounds %struct.cx18_open_id, %struct.cx18_open_id* %6, i32 0, i32 1
  %8 = load %struct.cx18*, %struct.cx18** %7, align 8
  store %struct.cx18* %8, %struct.cx18** %4, align 8
  %9 = load %struct.cx18*, %struct.cx18** %4, align 8
  %10 = getelementptr inbounds %struct.cx18, %struct.cx18* %9, i32 0, i32 0
  %11 = load %struct.cx18_stream*, %struct.cx18_stream** %10, align 8
  %12 = load %struct.cx18_open_id*, %struct.cx18_open_id** %2, align 8
  %13 = getelementptr inbounds %struct.cx18_open_id, %struct.cx18_open_id* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %11, i64 %14
  store %struct.cx18_stream* %15, %struct.cx18_stream** %5, align 8
  %16 = load %struct.cx18_stream*, %struct.cx18_stream** %5, align 8
  %17 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %23 [
    i32 128, label %19
    i32 129, label %22
  ]

19:                                               ; preds = %1
  %20 = load %struct.cx18_stream*, %struct.cx18_stream** %5, align 8
  %21 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %20, i32 0, i32 1
  store %struct.videobuf_queue* %21, %struct.videobuf_queue** %3, align 8
  br label %24

22:                                               ; preds = %1
  br label %24

23:                                               ; preds = %1
  br label %24

24:                                               ; preds = %23, %22, %19
  %25 = load %struct.videobuf_queue*, %struct.videobuf_queue** %3, align 8
  ret %struct.videobuf_queue* %25
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
