; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_cfg80211.c_wil_del_rx_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_cfg80211.c_wil_del_rx_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wil_sta_info = type { %struct.TYPE_3__, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { %struct.wil_tid_crypto_rx_single* }
%struct.wil_tid_crypto_rx_single = type { i32 }
%struct.TYPE_4__ = type { %struct.wil_tid_crypto_rx_single* }

@WIL_STA_TID_NUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32, %struct.wil_sta_info*)* @wil_del_rx_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wil_del_rx_key(i64 %0, i32 %1, %struct.wil_sta_info* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.wil_sta_info*, align 8
  %7 = alloca %struct.wil_tid_crypto_rx_single*, align 8
  %8 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.wil_sta_info* %2, %struct.wil_sta_info** %6, align 8
  %9 = load %struct.wil_sta_info*, %struct.wil_sta_info** %6, align 8
  %10 = icmp ne %struct.wil_sta_info* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %3
  br label %46

12:                                               ; preds = %3
  %13 = load i32, i32* %5, align 4
  switch i32 %13, label %45 [
    i32 129, label %14
    i32 128, label %36
  ]

14:                                               ; preds = %12
  store i32 0, i32* %8, align 4
  br label %15

15:                                               ; preds = %32, %14
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @WIL_STA_TID_NUM, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %35

19:                                               ; preds = %15
  %20 = load %struct.wil_sta_info*, %struct.wil_sta_info** %6, align 8
  %21 = getelementptr inbounds %struct.wil_sta_info, %struct.wil_sta_info* %20, i32 0, i32 1
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = load i32, i32* %8, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load %struct.wil_tid_crypto_rx_single*, %struct.wil_tid_crypto_rx_single** %26, align 8
  %28 = load i64, i64* %4, align 8
  %29 = getelementptr inbounds %struct.wil_tid_crypto_rx_single, %struct.wil_tid_crypto_rx_single* %27, i64 %28
  store %struct.wil_tid_crypto_rx_single* %29, %struct.wil_tid_crypto_rx_single** %7, align 8
  %30 = load %struct.wil_tid_crypto_rx_single*, %struct.wil_tid_crypto_rx_single** %7, align 8
  %31 = getelementptr inbounds %struct.wil_tid_crypto_rx_single, %struct.wil_tid_crypto_rx_single* %30, i32 0, i32 0
  store i32 0, i32* %31, align 4
  br label %32

32:                                               ; preds = %19
  %33 = load i32, i32* %8, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %8, align 4
  br label %15

35:                                               ; preds = %15
  br label %46

36:                                               ; preds = %12
  %37 = load %struct.wil_sta_info*, %struct.wil_sta_info** %6, align 8
  %38 = getelementptr inbounds %struct.wil_sta_info, %struct.wil_sta_info* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load %struct.wil_tid_crypto_rx_single*, %struct.wil_tid_crypto_rx_single** %39, align 8
  %41 = load i64, i64* %4, align 8
  %42 = getelementptr inbounds %struct.wil_tid_crypto_rx_single, %struct.wil_tid_crypto_rx_single* %40, i64 %41
  store %struct.wil_tid_crypto_rx_single* %42, %struct.wil_tid_crypto_rx_single** %7, align 8
  %43 = load %struct.wil_tid_crypto_rx_single*, %struct.wil_tid_crypto_rx_single** %7, align 8
  %44 = getelementptr inbounds %struct.wil_tid_crypto_rx_single, %struct.wil_tid_crypto_rx_single* %43, i32 0, i32 0
  store i32 0, i32* %44, align 4
  br label %46

45:                                               ; preds = %12
  br label %46

46:                                               ; preds = %11, %45, %36, %35
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
