; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_hw_queue.c_hl_hw_queue_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_hw_queue.c_hl_hw_queue_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_device = type { %struct.hl_hw_queue* }
%struct.hl_hw_queue = type { i64, i64, i64, i32 }

@HL_MAX_QUEUES = common dso_local global i32 0, align 4
@QUEUE_TYPE_CPU = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hl_hw_queue_reset(%struct.hl_device* %0, i32 %1) #0 {
  %3 = alloca %struct.hl_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hl_hw_queue*, align 8
  %6 = alloca i32, align 4
  store %struct.hl_device* %0, %struct.hl_device** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %7 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %8 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %7, i32 0, i32 0
  %9 = load %struct.hl_hw_queue*, %struct.hl_hw_queue** %8, align 8
  store %struct.hl_hw_queue* %9, %struct.hl_hw_queue** %5, align 8
  br label %10

10:                                               ; preds = %34, %2
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @HL_MAX_QUEUES, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %39

14:                                               ; preds = %10
  %15 = load %struct.hl_hw_queue*, %struct.hl_hw_queue** %5, align 8
  %16 = getelementptr inbounds %struct.hl_hw_queue, %struct.hl_hw_queue* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %14
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %19
  %23 = load %struct.hl_hw_queue*, %struct.hl_hw_queue** %5, align 8
  %24 = getelementptr inbounds %struct.hl_hw_queue, %struct.hl_hw_queue* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @QUEUE_TYPE_CPU, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22, %14
  br label %34

29:                                               ; preds = %22, %19
  %30 = load %struct.hl_hw_queue*, %struct.hl_hw_queue** %5, align 8
  %31 = getelementptr inbounds %struct.hl_hw_queue, %struct.hl_hw_queue* %30, i32 0, i32 1
  store i64 0, i64* %31, align 8
  %32 = load %struct.hl_hw_queue*, %struct.hl_hw_queue** %5, align 8
  %33 = getelementptr inbounds %struct.hl_hw_queue, %struct.hl_hw_queue* %32, i32 0, i32 2
  store i64 0, i64* %33, align 8
  br label %34

34:                                               ; preds = %29, %28
  %35 = load i32, i32* %6, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %6, align 4
  %37 = load %struct.hl_hw_queue*, %struct.hl_hw_queue** %5, align 8
  %38 = getelementptr inbounds %struct.hl_hw_queue, %struct.hl_hw_queue* %37, i32 1
  store %struct.hl_hw_queue* %38, %struct.hl_hw_queue** %5, align 8
  br label %10

39:                                               ; preds = %10
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
