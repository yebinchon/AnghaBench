; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_usb.c_mt76u_alloc_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_usb.c_mt76u_alloc_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76_dev = type { i32, %struct.mt76_queue*, %struct.mt76_usb }
%struct.mt76_queue = type { i32, i32*, i32, i32 }
%struct.mt76_usb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@MT_RXQ_MAIN = common dso_local global i64 0, align 8
@MCU_RESP_URB_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MT_NUM_RX_ENTRIES = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mt76_dev*)* @mt76u_alloc_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt76u_alloc_rx(%struct.mt76_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mt76_dev*, align 8
  %4 = alloca %struct.mt76_usb*, align 8
  %5 = alloca %struct.mt76_queue*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mt76_dev* %0, %struct.mt76_dev** %3, align 8
  %8 = load %struct.mt76_dev*, %struct.mt76_dev** %3, align 8
  %9 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %8, i32 0, i32 2
  store %struct.mt76_usb* %9, %struct.mt76_usb** %4, align 8
  %10 = load %struct.mt76_dev*, %struct.mt76_dev** %3, align 8
  %11 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %10, i32 0, i32 1
  %12 = load %struct.mt76_queue*, %struct.mt76_queue** %11, align 8
  %13 = load i64, i64* @MT_RXQ_MAIN, align 8
  %14 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %12, i64 %13
  store %struct.mt76_queue* %14, %struct.mt76_queue** %5, align 8
  %15 = load %struct.mt76_dev*, %struct.mt76_dev** %3, align 8
  %16 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @MCU_RESP_URB_SIZE, align 4
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call i32 @devm_kmalloc(i32 %17, i32 %18, i32 %19)
  %21 = load %struct.mt76_usb*, %struct.mt76_usb** %4, align 8
  %22 = getelementptr inbounds %struct.mt76_usb, %struct.mt76_usb* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i32 %20, i32* %23, align 4
  %24 = load %struct.mt76_usb*, %struct.mt76_usb** %4, align 8
  %25 = getelementptr inbounds %struct.mt76_usb, %struct.mt76_usb* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %1
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %84

32:                                               ; preds = %1
  %33 = load %struct.mt76_queue*, %struct.mt76_queue** %5, align 8
  %34 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %33, i32 0, i32 3
  %35 = call i32 @spin_lock_init(i32* %34)
  %36 = load %struct.mt76_dev*, %struct.mt76_dev** %3, align 8
  %37 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @MT_NUM_RX_ENTRIES, align 4
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call i32* @devm_kcalloc(i32 %38, i32 %39, i32 4, i32 %40)
  %42 = load %struct.mt76_queue*, %struct.mt76_queue** %5, align 8
  %43 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %42, i32 0, i32 1
  store i32* %41, i32** %43, align 8
  %44 = load %struct.mt76_queue*, %struct.mt76_queue** %5, align 8
  %45 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %32
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %84

51:                                               ; preds = %32
  %52 = load i32, i32* @MT_NUM_RX_ENTRIES, align 4
  %53 = load %struct.mt76_queue*, %struct.mt76_queue** %5, align 8
  %54 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load i32, i32* @PAGE_SIZE, align 4
  %56 = load %struct.mt76_queue*, %struct.mt76_queue** %5, align 8
  %57 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 8
  store i32 0, i32* %6, align 4
  br label %58

58:                                               ; preds = %78, %51
  %59 = load i32, i32* %6, align 4
  %60 = load %struct.mt76_queue*, %struct.mt76_queue** %5, align 8
  %61 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp slt i32 %59, %62
  br i1 %63, label %64, label %81

64:                                               ; preds = %58
  %65 = load %struct.mt76_dev*, %struct.mt76_dev** %3, align 8
  %66 = load %struct.mt76_queue*, %struct.mt76_queue** %5, align 8
  %67 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %6, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = call i32 @mt76u_rx_urb_alloc(%struct.mt76_dev* %65, i32* %71)
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* %7, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %64
  %76 = load i32, i32* %7, align 4
  store i32 %76, i32* %2, align 4
  br label %84

77:                                               ; preds = %64
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %6, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %6, align 4
  br label %58

81:                                               ; preds = %58
  %82 = load %struct.mt76_dev*, %struct.mt76_dev** %3, align 8
  %83 = call i32 @mt76u_submit_rx_buffers(%struct.mt76_dev* %82)
  store i32 %83, i32* %2, align 4
  br label %84

84:                                               ; preds = %81, %75, %48, %29
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local i32 @devm_kmalloc(i32, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32* @devm_kcalloc(i32, i32, i32, i32) #1

declare dso_local i32 @mt76u_rx_urb_alloc(%struct.mt76_dev*, i32*) #1

declare dso_local i32 @mt76u_submit_rx_buffers(%struct.mt76_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
