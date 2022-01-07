; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2200.c_ipw_rx_queue_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2200.c_ipw_rx_queue_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw_rx_queue = type { i64, i64, i64, i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ipw_priv = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"memory allocation failed\0A\00", align 1
@RX_FREE_BUFFERS = common dso_local global i32 0, align 4
@RX_QUEUE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ipw_rx_queue* (%struct.ipw_priv*)* @ipw_rx_queue_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ipw_rx_queue* @ipw_rx_queue_alloc(%struct.ipw_priv* %0) #0 {
  %2 = alloca %struct.ipw_rx_queue*, align 8
  %3 = alloca %struct.ipw_priv*, align 8
  %4 = alloca %struct.ipw_rx_queue*, align 8
  %5 = alloca i32, align 4
  store %struct.ipw_priv* %0, %struct.ipw_priv** %3, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.ipw_rx_queue* @kzalloc(i32 48, i32 %6)
  store %struct.ipw_rx_queue* %7, %struct.ipw_rx_queue** %4, align 8
  %8 = load %struct.ipw_rx_queue*, %struct.ipw_rx_queue** %4, align 8
  %9 = icmp ne %struct.ipw_rx_queue* %8, null
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i64 @unlikely(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = call i32 @IPW_ERROR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store %struct.ipw_rx_queue* null, %struct.ipw_rx_queue** %2, align 8
  br label %54

16:                                               ; preds = %1
  %17 = load %struct.ipw_rx_queue*, %struct.ipw_rx_queue** %4, align 8
  %18 = getelementptr inbounds %struct.ipw_rx_queue, %struct.ipw_rx_queue* %17, i32 0, i32 6
  %19 = call i32 @spin_lock_init(i32* %18)
  %20 = load %struct.ipw_rx_queue*, %struct.ipw_rx_queue** %4, align 8
  %21 = getelementptr inbounds %struct.ipw_rx_queue, %struct.ipw_rx_queue* %20, i32 0, i32 5
  %22 = call i32 @INIT_LIST_HEAD(i32* %21)
  %23 = load %struct.ipw_rx_queue*, %struct.ipw_rx_queue** %4, align 8
  %24 = getelementptr inbounds %struct.ipw_rx_queue, %struct.ipw_rx_queue* %23, i32 0, i32 3
  %25 = call i32 @INIT_LIST_HEAD(i32* %24)
  store i32 0, i32* %5, align 4
  br label %26

26:                                               ; preds = %43, %16
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @RX_FREE_BUFFERS, align 4
  %29 = load i32, i32* @RX_QUEUE_SIZE, align 4
  %30 = add nsw i32 %28, %29
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %46

32:                                               ; preds = %26
  %33 = load %struct.ipw_rx_queue*, %struct.ipw_rx_queue** %4, align 8
  %34 = getelementptr inbounds %struct.ipw_rx_queue, %struct.ipw_rx_queue* %33, i32 0, i32 4
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load %struct.ipw_rx_queue*, %struct.ipw_rx_queue** %4, align 8
  %41 = getelementptr inbounds %struct.ipw_rx_queue, %struct.ipw_rx_queue* %40, i32 0, i32 3
  %42 = call i32 @list_add_tail(i32* %39, i32* %41)
  br label %43

43:                                               ; preds = %32
  %44 = load i32, i32* %5, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %5, align 4
  br label %26

46:                                               ; preds = %26
  %47 = load %struct.ipw_rx_queue*, %struct.ipw_rx_queue** %4, align 8
  %48 = getelementptr inbounds %struct.ipw_rx_queue, %struct.ipw_rx_queue* %47, i32 0, i32 1
  store i64 0, i64* %48, align 8
  %49 = load %struct.ipw_rx_queue*, %struct.ipw_rx_queue** %4, align 8
  %50 = getelementptr inbounds %struct.ipw_rx_queue, %struct.ipw_rx_queue* %49, i32 0, i32 2
  store i64 0, i64* %50, align 8
  %51 = load %struct.ipw_rx_queue*, %struct.ipw_rx_queue** %4, align 8
  %52 = getelementptr inbounds %struct.ipw_rx_queue, %struct.ipw_rx_queue* %51, i32 0, i32 0
  store i64 0, i64* %52, align 8
  %53 = load %struct.ipw_rx_queue*, %struct.ipw_rx_queue** %4, align 8
  store %struct.ipw_rx_queue* %53, %struct.ipw_rx_queue** %2, align 8
  br label %54

54:                                               ; preds = %46, %14
  %55 = load %struct.ipw_rx_queue*, %struct.ipw_rx_queue** %2, align 8
  ret %struct.ipw_rx_queue* %55
}

declare dso_local %struct.ipw_rx_queue* @kzalloc(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @IPW_ERROR(i8*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
