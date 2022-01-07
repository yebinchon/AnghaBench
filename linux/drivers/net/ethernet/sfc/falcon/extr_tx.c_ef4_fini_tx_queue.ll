; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_tx.c_ef4_fini_tx_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_tx.c_ef4_fini_tx_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ef4_tx_queue = type { i64, i64, i64, i32, i32, %struct.ef4_tx_buffer*, i32, %struct.TYPE_2__* }
%struct.ef4_tx_buffer = type { i32 }
%struct.TYPE_2__ = type { i32 }

@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"shutting down TX queue %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ef4_fini_tx_queue(%struct.ef4_tx_queue* %0) #0 {
  %2 = alloca %struct.ef4_tx_queue*, align 8
  %3 = alloca %struct.ef4_tx_buffer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ef4_tx_queue* %0, %struct.ef4_tx_queue** %2, align 8
  %6 = load %struct.ef4_tx_queue*, %struct.ef4_tx_queue** %2, align 8
  %7 = getelementptr inbounds %struct.ef4_tx_queue, %struct.ef4_tx_queue* %6, i32 0, i32 7
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = load i32, i32* @drv, align 4
  %10 = load %struct.ef4_tx_queue*, %struct.ef4_tx_queue** %2, align 8
  %11 = getelementptr inbounds %struct.ef4_tx_queue, %struct.ef4_tx_queue* %10, i32 0, i32 7
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.ef4_tx_queue*, %struct.ef4_tx_queue** %2, align 8
  %16 = getelementptr inbounds %struct.ef4_tx_queue, %struct.ef4_tx_queue* %15, i32 0, i32 6
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @netif_dbg(%struct.TYPE_2__* %8, i32 %9, i32 %14, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load %struct.ef4_tx_queue*, %struct.ef4_tx_queue** %2, align 8
  %20 = getelementptr inbounds %struct.ef4_tx_queue, %struct.ef4_tx_queue* %19, i32 0, i32 5
  %21 = load %struct.ef4_tx_buffer*, %struct.ef4_tx_buffer** %20, align 8
  %22 = icmp ne %struct.ef4_tx_buffer* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %1
  br label %59

24:                                               ; preds = %1
  br label %25

25:                                               ; preds = %33, %24
  %26 = load %struct.ef4_tx_queue*, %struct.ef4_tx_queue** %2, align 8
  %27 = getelementptr inbounds %struct.ef4_tx_queue, %struct.ef4_tx_queue* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.ef4_tx_queue*, %struct.ef4_tx_queue** %2, align 8
  %30 = getelementptr inbounds %struct.ef4_tx_queue, %struct.ef4_tx_queue* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %28, %31
  br i1 %32, label %33, label %52

33:                                               ; preds = %25
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %34 = load %struct.ef4_tx_queue*, %struct.ef4_tx_queue** %2, align 8
  %35 = getelementptr inbounds %struct.ef4_tx_queue, %struct.ef4_tx_queue* %34, i32 0, i32 5
  %36 = load %struct.ef4_tx_buffer*, %struct.ef4_tx_buffer** %35, align 8
  %37 = load %struct.ef4_tx_queue*, %struct.ef4_tx_queue** %2, align 8
  %38 = getelementptr inbounds %struct.ef4_tx_queue, %struct.ef4_tx_queue* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.ef4_tx_queue*, %struct.ef4_tx_queue** %2, align 8
  %41 = getelementptr inbounds %struct.ef4_tx_queue, %struct.ef4_tx_queue* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = and i64 %39, %42
  %44 = getelementptr inbounds %struct.ef4_tx_buffer, %struct.ef4_tx_buffer* %36, i64 %43
  store %struct.ef4_tx_buffer* %44, %struct.ef4_tx_buffer** %3, align 8
  %45 = load %struct.ef4_tx_queue*, %struct.ef4_tx_queue** %2, align 8
  %46 = load %struct.ef4_tx_buffer*, %struct.ef4_tx_buffer** %3, align 8
  %47 = call i32 @ef4_dequeue_buffer(%struct.ef4_tx_queue* %45, %struct.ef4_tx_buffer* %46, i32* %4, i32* %5)
  %48 = load %struct.ef4_tx_queue*, %struct.ef4_tx_queue** %2, align 8
  %49 = getelementptr inbounds %struct.ef4_tx_queue, %struct.ef4_tx_queue* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = add i64 %50, 1
  store i64 %51, i64* %49, align 8
  br label %25

52:                                               ; preds = %25
  %53 = load %struct.ef4_tx_queue*, %struct.ef4_tx_queue** %2, align 8
  %54 = getelementptr inbounds %struct.ef4_tx_queue, %struct.ef4_tx_queue* %53, i32 0, i32 3
  store i32 0, i32* %54, align 8
  %55 = load %struct.ef4_tx_queue*, %struct.ef4_tx_queue** %2, align 8
  %56 = getelementptr inbounds %struct.ef4_tx_queue, %struct.ef4_tx_queue* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @netdev_tx_reset_queue(i32 %57)
  br label %59

59:                                               ; preds = %52, %23
  ret void
}

declare dso_local i32 @netif_dbg(%struct.TYPE_2__*, i32, i32, i8*, i32) #1

declare dso_local i32 @ef4_dequeue_buffer(%struct.ef4_tx_queue*, %struct.ef4_tx_buffer*, i32*, i32*) #1

declare dso_local i32 @netdev_tx_reset_queue(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
