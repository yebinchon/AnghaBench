; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_hw_queue.c_hw_queue_fini.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_hw_queue.c_hw_queue_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.hl_device*, i32, i8*, i32)*, i32 (%struct.hl_device*, i32, i8*)* }
%struct.hl_hw_queue = type { i64, i32, i64, i32, i32 }

@QUEUE_TYPE_INT = common dso_local global i64 0, align 8
@QUEUE_TYPE_CPU = common dso_local global i64 0, align 8
@HL_QUEUE_SIZE_IN_BYTES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hl_device*, %struct.hl_hw_queue*)* @hw_queue_fini to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hw_queue_fini(%struct.hl_device* %0, %struct.hl_hw_queue* %1) #0 {
  %3 = alloca %struct.hl_device*, align 8
  %4 = alloca %struct.hl_hw_queue*, align 8
  store %struct.hl_device* %0, %struct.hl_device** %3, align 8
  store %struct.hl_hw_queue* %1, %struct.hl_hw_queue** %4, align 8
  %5 = load %struct.hl_hw_queue*, %struct.hl_hw_queue** %4, align 8
  %6 = getelementptr inbounds %struct.hl_hw_queue, %struct.hl_hw_queue* %5, i32 0, i32 4
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %56

10:                                               ; preds = %2
  %11 = load %struct.hl_hw_queue*, %struct.hl_hw_queue** %4, align 8
  %12 = getelementptr inbounds %struct.hl_hw_queue, %struct.hl_hw_queue* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @QUEUE_TYPE_INT, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  br label %56

17:                                               ; preds = %10
  %18 = load %struct.hl_hw_queue*, %struct.hl_hw_queue** %4, align 8
  %19 = getelementptr inbounds %struct.hl_hw_queue, %struct.hl_hw_queue* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @kfree(i32 %20)
  %22 = load %struct.hl_hw_queue*, %struct.hl_hw_queue** %4, align 8
  %23 = getelementptr inbounds %struct.hl_hw_queue, %struct.hl_hw_queue* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @QUEUE_TYPE_CPU, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %40

27:                                               ; preds = %17
  %28 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %29 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32 (%struct.hl_device*, i32, i8*)*, i32 (%struct.hl_device*, i32, i8*)** %31, align 8
  %33 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %34 = load i32, i32* @HL_QUEUE_SIZE_IN_BYTES, align 4
  %35 = load %struct.hl_hw_queue*, %struct.hl_hw_queue** %4, align 8
  %36 = getelementptr inbounds %struct.hl_hw_queue, %struct.hl_hw_queue* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to i8*
  %39 = call i32 %32(%struct.hl_device* %33, i32 %34, i8* %38)
  br label %56

40:                                               ; preds = %17
  %41 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %42 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32 (%struct.hl_device*, i32, i8*, i32)*, i32 (%struct.hl_device*, i32, i8*, i32)** %44, align 8
  %46 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %47 = load i32, i32* @HL_QUEUE_SIZE_IN_BYTES, align 4
  %48 = load %struct.hl_hw_queue*, %struct.hl_hw_queue** %4, align 8
  %49 = getelementptr inbounds %struct.hl_hw_queue, %struct.hl_hw_queue* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = inttoptr i64 %50 to i8*
  %52 = load %struct.hl_hw_queue*, %struct.hl_hw_queue** %4, align 8
  %53 = getelementptr inbounds %struct.hl_hw_queue, %struct.hl_hw_queue* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call i32 %45(%struct.hl_device* %46, i32 %47, i8* %51, i32 %54)
  br label %56

56:                                               ; preds = %9, %16, %40, %27
  ret void
}

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
