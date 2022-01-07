; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_txrx.c_wil_rx_refill.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_txrx.c_wil_rx_refill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wil6210_priv = type { %struct.wil_ring, %struct.net_device* }
%struct.wil_ring = type { i32, i32, i32 }
%struct.net_device = type { i64 }

@ARPHRD_IEEE80211_RADIOTAP = common dso_local global i64 0, align 8
@WIL6210_RTAP_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Error %d in rx refill[%d]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wil6210_priv*, i32)* @wil_rx_refill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wil_rx_refill(%struct.wil6210_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.wil6210_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.wil_ring*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.wil6210_priv* %0, %struct.wil6210_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %11 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %10, i32 0, i32 1
  %12 = load %struct.net_device*, %struct.net_device** %11, align 8
  store %struct.net_device* %12, %struct.net_device** %5, align 8
  %13 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %14 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %13, i32 0, i32 0
  store %struct.wil_ring* %14, %struct.wil_ring** %6, align 8
  store i32 0, i32* %8, align 4
  %15 = load %struct.net_device*, %struct.net_device** %5, align 8
  %16 = getelementptr inbounds %struct.net_device, %struct.net_device* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @ARPHRD_IEEE80211_RADIOTAP, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* @WIL6210_RTAP_SIZE, align 4
  br label %23

22:                                               ; preds = %2
  br label %23

23:                                               ; preds = %22, %20
  %24 = phi i32 [ %21, %20 ], [ 0, %22 ]
  store i32 %24, i32* %9, align 4
  br label %25

25:                                               ; preds = %58, %23
  %26 = load %struct.wil_ring*, %struct.wil_ring** %6, align 8
  %27 = call i32 @wil_ring_next_tail(%struct.wil_ring* %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.wil_ring*, %struct.wil_ring** %6, align 8
  %30 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %28, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %25
  %34 = load i32, i32* %4, align 4
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* %4, align 4
  %36 = icmp sgt i32 %34, 0
  br label %37

37:                                               ; preds = %33, %25
  %38 = phi i1 [ false, %25 ], [ %36, %33 ]
  br i1 %38, label %39, label %62

39:                                               ; preds = %37
  %40 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %41 = load %struct.wil_ring*, %struct.wil_ring** %6, align 8
  %42 = load %struct.wil_ring*, %struct.wil_ring** %6, align 8
  %43 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @wil_vring_alloc_skb(%struct.wil6210_priv* %40, %struct.wil_ring* %41, i32 %44, i32 %45)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = call i64 @unlikely(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %39
  %51 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %52 = load i32, i32* %8, align 4
  %53 = load %struct.wil_ring*, %struct.wil_ring** %6, align 8
  %54 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @wil_err_ratelimited(%struct.wil6210_priv* %51, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %52, i32 %55)
  br label %62

57:                                               ; preds = %39
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %7, align 4
  %60 = load %struct.wil_ring*, %struct.wil_ring** %6, align 8
  %61 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  br label %25

62:                                               ; preds = %50, %37
  %63 = call i32 (...) @wmb()
  %64 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %65 = load %struct.wil_ring*, %struct.wil_ring** %6, align 8
  %66 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.wil_ring*, %struct.wil_ring** %6, align 8
  %69 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @wil_w(%struct.wil6210_priv* %64, i32 %67, i32 %70)
  %72 = load i32, i32* %8, align 4
  ret i32 %72
}

declare dso_local i32 @wil_ring_next_tail(%struct.wil_ring*) #1

declare dso_local i32 @wil_vring_alloc_skb(%struct.wil6210_priv*, %struct.wil_ring*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @wil_err_ratelimited(%struct.wil6210_priv*, i8*, i32, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @wil_w(%struct.wil6210_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
