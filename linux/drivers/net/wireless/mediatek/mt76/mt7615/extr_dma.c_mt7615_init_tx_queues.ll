; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7615/extr_dma.c_mt7615_init_tx_queues.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7615/extr_dma.c_mt7615_init_tx_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7615_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.mt76_sw_queue*, i32 }
%struct.mt76_sw_queue = type { %struct.mt76_queue*, i32 }
%struct.mt76_queue = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MT_TX_RING_BASE = common dso_local global i32 0, align 4
@MT_TXQ_MCU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mt7615_dev*, i32)* @mt7615_init_tx_queues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt7615_init_tx_queues(%struct.mt7615_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mt7615_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mt76_sw_queue*, align 8
  %7 = alloca %struct.mt76_queue*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mt7615_dev* %0, %struct.mt7615_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.mt7615_dev*, %struct.mt7615_dev** %4, align 8
  %11 = getelementptr inbounds %struct.mt7615_dev, %struct.mt7615_dev* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.mt76_queue* @devm_kzalloc(i32 %13, i32 4, i32 %14)
  store %struct.mt76_queue* %15, %struct.mt76_queue** %7, align 8
  %16 = load %struct.mt76_queue*, %struct.mt76_queue** %7, align 8
  %17 = icmp ne %struct.mt76_queue* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %54

21:                                               ; preds = %2
  %22 = load %struct.mt7615_dev*, %struct.mt7615_dev** %4, align 8
  %23 = load %struct.mt76_queue*, %struct.mt76_queue** %7, align 8
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @MT_TX_RING_BASE, align 4
  %26 = call i32 @mt76_queue_alloc(%struct.mt7615_dev* %22, %struct.mt76_queue* %23, i32 0, i32 %24, i32 0, i32 %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %21
  %30 = load i32, i32* %8, align 4
  store i32 %30, i32* %3, align 4
  br label %54

31:                                               ; preds = %21
  store i32 0, i32* %9, align 4
  br label %32

32:                                               ; preds = %50, %31
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* @MT_TXQ_MCU, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %53

36:                                               ; preds = %32
  %37 = load %struct.mt7615_dev*, %struct.mt7615_dev** %4, align 8
  %38 = getelementptr inbounds %struct.mt7615_dev, %struct.mt7615_dev* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load %struct.mt76_sw_queue*, %struct.mt76_sw_queue** %39, align 8
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.mt76_sw_queue, %struct.mt76_sw_queue* %40, i64 %42
  store %struct.mt76_sw_queue* %43, %struct.mt76_sw_queue** %6, align 8
  %44 = load %struct.mt76_sw_queue*, %struct.mt76_sw_queue** %6, align 8
  %45 = getelementptr inbounds %struct.mt76_sw_queue, %struct.mt76_sw_queue* %44, i32 0, i32 1
  %46 = call i32 @INIT_LIST_HEAD(i32* %45)
  %47 = load %struct.mt76_queue*, %struct.mt76_queue** %7, align 8
  %48 = load %struct.mt76_sw_queue*, %struct.mt76_sw_queue** %6, align 8
  %49 = getelementptr inbounds %struct.mt76_sw_queue, %struct.mt76_sw_queue* %48, i32 0, i32 0
  store %struct.mt76_queue* %47, %struct.mt76_queue** %49, align 8
  br label %50

50:                                               ; preds = %36
  %51 = load i32, i32* %9, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %9, align 4
  br label %32

53:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %53, %29, %18
  %55 = load i32, i32* %3, align 4
  ret i32 %55
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
