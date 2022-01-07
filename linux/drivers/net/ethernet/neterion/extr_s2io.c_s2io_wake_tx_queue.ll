; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/neterion/extr_s2io.c_s2io_wake_tx_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/neterion/extr_s2io.c_s2io_wake_tx_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fifo_info = type { i64, i32, i32 }

@FIFO_QUEUE_STOP = common dso_local global i64 0, align 8
@FIFO_QUEUE_START = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fifo_info*, i32, i64)* @s2io_wake_tx_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s2io_wake_tx_queue(%struct.fifo_info* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.fifo_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.fifo_info* %0, %struct.fifo_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %30

9:                                                ; preds = %3
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %29

12:                                               ; preds = %9
  %13 = load %struct.fifo_info*, %struct.fifo_info** %4, align 8
  %14 = getelementptr inbounds %struct.fifo_info, %struct.fifo_info* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.fifo_info*, %struct.fifo_info** %4, align 8
  %17 = getelementptr inbounds %struct.fifo_info, %struct.fifo_info* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @__netif_subqueue_stopped(i32 %15, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %12
  %22 = load %struct.fifo_info*, %struct.fifo_info** %4, align 8
  %23 = getelementptr inbounds %struct.fifo_info, %struct.fifo_info* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.fifo_info*, %struct.fifo_info** %4, align 8
  %26 = getelementptr inbounds %struct.fifo_info, %struct.fifo_info* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @netif_wake_subqueue(i32 %24, i32 %27)
  br label %29

29:                                               ; preds = %21, %12, %9
  br label %55

30:                                               ; preds = %3
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %54

33:                                               ; preds = %30
  %34 = load %struct.fifo_info*, %struct.fifo_info** %4, align 8
  %35 = getelementptr inbounds %struct.fifo_info, %struct.fifo_info* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @FIFO_QUEUE_STOP, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %54

39:                                               ; preds = %33
  %40 = load %struct.fifo_info*, %struct.fifo_info** %4, align 8
  %41 = getelementptr inbounds %struct.fifo_info, %struct.fifo_info* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i64 @netif_queue_stopped(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %39
  %46 = load i64, i64* @FIFO_QUEUE_START, align 8
  %47 = load %struct.fifo_info*, %struct.fifo_info** %4, align 8
  %48 = getelementptr inbounds %struct.fifo_info, %struct.fifo_info* %47, i32 0, i32 0
  store i64 %46, i64* %48, align 8
  %49 = load %struct.fifo_info*, %struct.fifo_info** %4, align 8
  %50 = getelementptr inbounds %struct.fifo_info, %struct.fifo_info* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @netif_wake_queue(i32 %51)
  br label %53

53:                                               ; preds = %45, %39
  br label %54

54:                                               ; preds = %53, %33, %30
  br label %55

55:                                               ; preds = %54, %29
  ret void
}

declare dso_local i64 @__netif_subqueue_stopped(i32, i32) #1

declare dso_local i32 @netif_wake_subqueue(i32, i32) #1

declare dso_local i64 @netif_queue_stopped(i32) #1

declare dso_local i32 @netif_wake_queue(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
