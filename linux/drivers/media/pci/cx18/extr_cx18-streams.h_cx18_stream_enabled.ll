; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx18/extr_cx18-streams.h_cx18_stream_enabled.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx18/extr_cx18-streams.h_cx18_stream_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx18_stream = type { i64, %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i64* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64 }

@CX18_ENC_STREAM_TYPE_IDX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cx18_stream*)* @cx18_stream_enabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx18_stream_enabled(%struct.cx18_stream* %0) #0 {
  %2 = alloca %struct.cx18_stream*, align 8
  store %struct.cx18_stream* %0, %struct.cx18_stream** %2, align 8
  %3 = load %struct.cx18_stream*, %struct.cx18_stream** %2, align 8
  %4 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %3, i32 0, i32 3
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %38, label %8

8:                                                ; preds = %1
  %9 = load %struct.cx18_stream*, %struct.cx18_stream** %2, align 8
  %10 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %9, i32 0, i32 2
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = icmp ne %struct.TYPE_5__* %11, null
  br i1 %12, label %13, label %20

13:                                               ; preds = %8
  %14 = load %struct.cx18_stream*, %struct.cx18_stream** %2, align 8
  %15 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %14, i32 0, i32 2
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %38, label %20

20:                                               ; preds = %13, %8
  %21 = load %struct.cx18_stream*, %struct.cx18_stream** %2, align 8
  %22 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @CX18_ENC_STREAM_TYPE_IDX, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %36

26:                                               ; preds = %20
  %27 = load %struct.cx18_stream*, %struct.cx18_stream** %2, align 8
  %28 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %27, i32 0, i32 1
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i64*, i64** %30, align 8
  %32 = load i64, i64* @CX18_ENC_STREAM_TYPE_IDX, align 8
  %33 = getelementptr inbounds i64, i64* %31, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br label %36

36:                                               ; preds = %26, %20
  %37 = phi i1 [ false, %20 ], [ %35, %26 ]
  br label %38

38:                                               ; preds = %36, %13, %1
  %39 = phi i1 [ true, %13 ], [ true, %1 ], [ %37, %36 ]
  %40 = zext i1 %39 to i32
  ret i32 %40
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
