; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/alacritech/extr_slicoss.c_slic_free_stat_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/alacritech/extr_slicoss.c_slic_free_stat_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slic_device = type { %struct.TYPE_2__*, %struct.slic_stat_queue }
%struct.TYPE_2__ = type { i32 }
%struct.slic_stat_queue = type { i64*, i64*, i64*, i32 }

@SLIC_NUM_STAT_DESC_ARRAYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.slic_device*)* @slic_free_stat_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @slic_free_stat_queue(%struct.slic_device* %0) #0 {
  %2 = alloca %struct.slic_device*, align 8
  %3 = alloca %struct.slic_stat_queue*, align 8
  %4 = alloca i32, align 4
  store %struct.slic_device* %0, %struct.slic_device** %2, align 8
  %5 = load %struct.slic_device*, %struct.slic_device** %2, align 8
  %6 = getelementptr inbounds %struct.slic_device, %struct.slic_device* %5, i32 0, i32 1
  store %struct.slic_stat_queue* %6, %struct.slic_stat_queue** %3, align 8
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %50, %1
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @SLIC_NUM_STAT_DESC_ARRAYS, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %53

11:                                               ; preds = %7
  %12 = load %struct.slic_device*, %struct.slic_device** %2, align 8
  %13 = getelementptr inbounds %struct.slic_device, %struct.slic_device* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.slic_stat_queue*, %struct.slic_stat_queue** %3, align 8
  %17 = getelementptr inbounds %struct.slic_stat_queue, %struct.slic_stat_queue* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.slic_stat_queue*, %struct.slic_stat_queue** %3, align 8
  %20 = getelementptr inbounds %struct.slic_stat_queue, %struct.slic_stat_queue* %19, i32 0, i32 2
  %21 = load i64*, i64** %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i64, i64* %21, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.slic_stat_queue*, %struct.slic_stat_queue** %3, align 8
  %27 = getelementptr inbounds %struct.slic_stat_queue, %struct.slic_stat_queue* %26, i32 0, i32 0
  %28 = load i64*, i64** %27, align 8
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i64, i64* %28, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = sub nsw i64 %25, %32
  %34 = load %struct.slic_stat_queue*, %struct.slic_stat_queue** %3, align 8
  %35 = getelementptr inbounds %struct.slic_stat_queue, %struct.slic_stat_queue* %34, i32 0, i32 1
  %36 = load i64*, i64** %35, align 8
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i64, i64* %36, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.slic_stat_queue*, %struct.slic_stat_queue** %3, align 8
  %42 = getelementptr inbounds %struct.slic_stat_queue, %struct.slic_stat_queue* %41, i32 0, i32 0
  %43 = load i64*, i64** %42, align 8
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i64, i64* %43, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = sub nsw i64 %40, %47
  %49 = call i32 @dma_free_coherent(i32* %15, i32 %18, i64 %33, i64 %48)
  br label %50

50:                                               ; preds = %11
  %51 = load i32, i32* %4, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %4, align 4
  br label %7

53:                                               ; preds = %7
  ret void
}

declare dso_local i32 @dma_free_coherent(i32*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
