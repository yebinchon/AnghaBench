; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7615/extr_dma.c_mt7615_init_mcu_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7615/extr_dma.c_mt7615_init_mcu_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7615_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.mt76_sw_queue = type { %struct.mt76_queue*, i32 }
%struct.mt76_queue = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MT_TX_RING_BASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mt7615_dev*, %struct.mt76_sw_queue*, i32, i32)* @mt7615_init_mcu_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt7615_init_mcu_queue(%struct.mt7615_dev* %0, %struct.mt76_sw_queue* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mt7615_dev*, align 8
  %7 = alloca %struct.mt76_sw_queue*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mt76_queue*, align 8
  %11 = alloca i32, align 4
  store %struct.mt7615_dev* %0, %struct.mt7615_dev** %6, align 8
  store %struct.mt76_sw_queue* %1, %struct.mt76_sw_queue** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.mt7615_dev*, %struct.mt7615_dev** %6, align 8
  %13 = getelementptr inbounds %struct.mt7615_dev, %struct.mt7615_dev* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.mt76_queue* @devm_kzalloc(i32 %15, i32 4, i32 %16)
  store %struct.mt76_queue* %17, %struct.mt76_queue** %10, align 8
  %18 = load %struct.mt76_queue*, %struct.mt76_queue** %10, align 8
  %19 = icmp ne %struct.mt76_queue* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %4
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %41

23:                                               ; preds = %4
  %24 = load %struct.mt7615_dev*, %struct.mt7615_dev** %6, align 8
  %25 = load %struct.mt76_queue*, %struct.mt76_queue** %10, align 8
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @MT_TX_RING_BASE, align 4
  %29 = call i32 @mt76_queue_alloc(%struct.mt7615_dev* %24, %struct.mt76_queue* %25, i32 %26, i32 %27, i32 0, i32 %28)
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %23
  %33 = load i32, i32* %11, align 4
  store i32 %33, i32* %5, align 4
  br label %41

34:                                               ; preds = %23
  %35 = load %struct.mt76_sw_queue*, %struct.mt76_sw_queue** %7, align 8
  %36 = getelementptr inbounds %struct.mt76_sw_queue, %struct.mt76_sw_queue* %35, i32 0, i32 1
  %37 = call i32 @INIT_LIST_HEAD(i32* %36)
  %38 = load %struct.mt76_queue*, %struct.mt76_queue** %10, align 8
  %39 = load %struct.mt76_sw_queue*, %struct.mt76_sw_queue** %7, align 8
  %40 = getelementptr inbounds %struct.mt76_sw_queue, %struct.mt76_sw_queue* %39, i32 0, i32 0
  store %struct.mt76_queue* %38, %struct.mt76_queue** %40, align 8
  store i32 0, i32* %5, align 4
  br label %41

41:                                               ; preds = %34, %32, %20
  %42 = load i32, i32* %5, align 4
  ret i32 %42
}

declare dso_local %struct.mt76_queue* @devm_kzalloc(i32, i32, i32) #1

declare dso_local i32 @mt76_queue_alloc(%struct.mt7615_dev*, %struct.mt76_queue*, i32, i32, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
