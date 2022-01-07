; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_usb.c_mt76u_tx_queue_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_usb.c_mt76u_tx_queue_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76_dev = type { %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 (%struct.mt76_dev*, i32*, i32, %struct.mt76_wcid*, %struct.ieee80211_sta*, %struct.mt76_tx_info*)* }
%struct.mt76_tx_info = type { %struct.sk_buff* }
%struct.TYPE_4__ = type { %struct.mt76_queue* }
%struct.mt76_queue = type { i64, i32, i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { %struct.sk_buff*, i32 }
%struct.sk_buff = type { i32*, i32 }
%struct.mt76_wcid = type { i32 }
%struct.ieee80211_sta = type { i32 }

@ENOSPC = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@mt76u_complete_tx = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mt76_dev*, i32, %struct.sk_buff*, %struct.mt76_wcid*, %struct.ieee80211_sta*)* @mt76u_tx_queue_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt76u_tx_queue_skb(%struct.mt76_dev* %0, i32 %1, %struct.sk_buff* %2, %struct.mt76_wcid* %3, %struct.ieee80211_sta* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mt76_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.mt76_wcid*, align 8
  %11 = alloca %struct.ieee80211_sta*, align 8
  %12 = alloca %struct.mt76_queue*, align 8
  %13 = alloca %struct.mt76_tx_info, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.mt76_dev* %0, %struct.mt76_dev** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.sk_buff* %2, %struct.sk_buff** %9, align 8
  store %struct.mt76_wcid* %3, %struct.mt76_wcid** %10, align 8
  store %struct.ieee80211_sta* %4, %struct.ieee80211_sta** %11, align 8
  %16 = load %struct.mt76_dev*, %struct.mt76_dev** %7, align 8
  %17 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %16, i32 0, i32 1
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = load i32, i32* %8, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.mt76_queue*, %struct.mt76_queue** %22, align 8
  store %struct.mt76_queue* %23, %struct.mt76_queue** %12, align 8
  %24 = getelementptr inbounds %struct.mt76_tx_info, %struct.mt76_tx_info* %13, i32 0, i32 0
  %25 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  store %struct.sk_buff* %25, %struct.sk_buff** %24, align 8
  %26 = load %struct.mt76_queue*, %struct.mt76_queue** %12, align 8
  %27 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %14, align 8
  %29 = load %struct.mt76_queue*, %struct.mt76_queue** %12, align 8
  %30 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.mt76_queue*, %struct.mt76_queue** %12, align 8
  %33 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %31, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %5
  %37 = load i32, i32* @ENOSPC, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %6, align 4
  br label %120

39:                                               ; preds = %5
  %40 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %41 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %40, i32 0, i32 0
  store i32* null, i32** %41, align 8
  %42 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %43 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %42, i32 0, i32 1
  store i32 0, i32* %43, align 8
  %44 = load %struct.mt76_dev*, %struct.mt76_dev** %7, align 8
  %45 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %44, i32 0, i32 0
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i32 (%struct.mt76_dev*, i32*, i32, %struct.mt76_wcid*, %struct.ieee80211_sta*, %struct.mt76_tx_info*)*, i32 (%struct.mt76_dev*, i32*, i32, %struct.mt76_wcid*, %struct.ieee80211_sta*, %struct.mt76_tx_info*)** %47, align 8
  %49 = load %struct.mt76_dev*, %struct.mt76_dev** %7, align 8
  %50 = load i32, i32* %8, align 4
  %51 = load %struct.mt76_wcid*, %struct.mt76_wcid** %10, align 8
  %52 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %11, align 8
  %53 = call i32 %48(%struct.mt76_dev* %49, i32* null, i32 %50, %struct.mt76_wcid* %51, %struct.ieee80211_sta* %52, %struct.mt76_tx_info* %13)
  store i32 %53, i32* %15, align 4
  %54 = load i32, i32* %15, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %39
  %57 = load i32, i32* %15, align 4
  store i32 %57, i32* %6, align 4
  br label %120

58:                                               ; preds = %39
  %59 = load %struct.mt76_dev*, %struct.mt76_dev** %7, align 8
  %60 = getelementptr inbounds %struct.mt76_tx_info, %struct.mt76_tx_info* %13, i32 0, i32 0
  %61 = load %struct.sk_buff*, %struct.sk_buff** %60, align 8
  %62 = load %struct.mt76_queue*, %struct.mt76_queue** %12, align 8
  %63 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %62, i32 0, i32 3
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = load i64, i64* %14, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @mt76u_tx_setup_buffers(%struct.mt76_dev* %59, %struct.sk_buff* %61, i32 %68)
  store i32 %69, i32* %15, align 4
  %70 = load i32, i32* %15, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %58
  %73 = load i32, i32* %15, align 4
  store i32 %73, i32* %6, align 4
  br label %120

74:                                               ; preds = %58
  %75 = load %struct.mt76_dev*, %struct.mt76_dev** %7, align 8
  %76 = load i32, i32* @USB_DIR_OUT, align 4
  %77 = load %struct.mt76_queue*, %struct.mt76_queue** %12, align 8
  %78 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @q2ep(i32 %79)
  %81 = load %struct.mt76_queue*, %struct.mt76_queue** %12, align 8
  %82 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %81, i32 0, i32 3
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %82, align 8
  %84 = load i64, i64* %14, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @mt76u_complete_tx, align 4
  %89 = load %struct.mt76_queue*, %struct.mt76_queue** %12, align 8
  %90 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %89, i32 0, i32 3
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %90, align 8
  %92 = load i64, i64* %14, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i64 %92
  %94 = call i32 @mt76u_fill_bulk_urb(%struct.mt76_dev* %75, i32 %76, i32 %80, i32 %87, i32 %88, %struct.TYPE_6__* %93)
  %95 = load %struct.mt76_queue*, %struct.mt76_queue** %12, align 8
  %96 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = add i64 %97, 1
  %99 = load %struct.mt76_queue*, %struct.mt76_queue** %12, align 8
  %100 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = sext i32 %101 to i64
  %103 = urem i64 %98, %102
  %104 = load %struct.mt76_queue*, %struct.mt76_queue** %12, align 8
  %105 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %104, i32 0, i32 0
  store i64 %103, i64* %105, align 8
  %106 = getelementptr inbounds %struct.mt76_tx_info, %struct.mt76_tx_info* %13, i32 0, i32 0
  %107 = load %struct.sk_buff*, %struct.sk_buff** %106, align 8
  %108 = load %struct.mt76_queue*, %struct.mt76_queue** %12, align 8
  %109 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %108, i32 0, i32 3
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %109, align 8
  %111 = load i64, i64* %14, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  store %struct.sk_buff* %107, %struct.sk_buff** %113, align 8
  %114 = load %struct.mt76_queue*, %struct.mt76_queue** %12, align 8
  %115 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %115, align 8
  %118 = load i64, i64* %14, align 8
  %119 = trunc i64 %118 to i32
  store i32 %119, i32* %6, align 4
  br label %120

120:                                              ; preds = %74, %72, %56, %36
  %121 = load i32, i32* %6, align 4
  ret i32 %121
}

declare dso_local i32 @mt76u_tx_setup_buffers(%struct.mt76_dev*, %struct.sk_buff*, i32) #1

declare dso_local i32 @mt76u_fill_bulk_urb(%struct.mt76_dev*, i32, i32, i32, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @q2ep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
