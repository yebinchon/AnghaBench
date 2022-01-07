; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx18/extr_cx18-streams.c_cx18_find_handle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx18/extr_cx18-streams.c_cx18_find_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx18 = type { %struct.cx18_stream* }
%struct.cx18_stream = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@CX18_MAX_STREAMS = common dso_local global i32 0, align 4
@CX18_INVALID_TASK_HANDLE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @cx18_find_handle(%struct.cx18* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.cx18*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cx18_stream*, align 8
  store %struct.cx18* %0, %struct.cx18** %3, align 8
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %33, %1
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @CX18_MAX_STREAMS, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %36

10:                                               ; preds = %6
  %11 = load %struct.cx18*, %struct.cx18** %3, align 8
  %12 = getelementptr inbounds %struct.cx18, %struct.cx18* %11, i32 0, i32 0
  %13 = load %struct.cx18_stream*, %struct.cx18_stream** %12, align 8
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %13, i64 %15
  store %struct.cx18_stream* %16, %struct.cx18_stream** %5, align 8
  %17 = load %struct.cx18_stream*, %struct.cx18_stream** %5, align 8
  %18 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %10
  %23 = load %struct.cx18_stream*, %struct.cx18_stream** %5, align 8
  %24 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @CX18_INVALID_TASK_HANDLE, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %22
  %29 = load %struct.cx18_stream*, %struct.cx18_stream** %5, align 8
  %30 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %2, align 8
  br label %38

32:                                               ; preds = %22, %10
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %4, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %4, align 4
  br label %6

36:                                               ; preds = %6
  %37 = load i64, i64* @CX18_INVALID_TASK_HANDLE, align 8
  store i64 %37, i64* %2, align 8
  br label %38

38:                                               ; preds = %36, %28
  %39 = load i64, i64* %2, align 8
  ret i64 %39
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
