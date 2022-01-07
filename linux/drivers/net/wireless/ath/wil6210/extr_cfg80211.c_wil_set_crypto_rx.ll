; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_cfg80211.c_wil_set_crypto_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_cfg80211.c_wil_set_crypto_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wil_sta_info = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { %struct.wil_tid_crypto_rx_single* }
%struct.wil_tid_crypto_rx_single = type { i32, i32 }
%struct.TYPE_3__ = type { %struct.wil_tid_crypto_rx_single* }
%struct.key_params = type { i32 }

@WIL_STA_TID_NUM = common dso_local global i32 0, align 4
@IEEE80211_GCMP_PN_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wil_set_crypto_rx(i64 %0, i32 %1, %struct.wil_sta_info* %2, %struct.key_params* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.wil_sta_info*, align 8
  %8 = alloca %struct.key_params*, align 8
  %9 = alloca %struct.wil_tid_crypto_rx_single*, align 8
  %10 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.wil_sta_info* %2, %struct.wil_sta_info** %7, align 8
  store %struct.key_params* %3, %struct.key_params** %8, align 8
  %11 = load %struct.wil_sta_info*, %struct.wil_sta_info** %7, align 8
  %12 = icmp ne %struct.wil_sta_info* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %4
  br label %88

14:                                               ; preds = %4
  %15 = load i32, i32* %6, align 4
  switch i32 %15, label %87 [
    i32 128, label %16
    i32 130, label %16
    i32 129, label %58
  ]

16:                                               ; preds = %14, %14
  store i32 0, i32* %10, align 4
  br label %17

17:                                               ; preds = %54, %16
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* @WIL_STA_TID_NUM, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %57

21:                                               ; preds = %17
  %22 = load %struct.wil_sta_info*, %struct.wil_sta_info** %7, align 8
  %23 = getelementptr inbounds %struct.wil_sta_info, %struct.wil_sta_info* %22, i32 0, i32 1
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = load i32, i32* %10, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load %struct.wil_tid_crypto_rx_single*, %struct.wil_tid_crypto_rx_single** %28, align 8
  %30 = load i64, i64* %5, align 8
  %31 = getelementptr inbounds %struct.wil_tid_crypto_rx_single, %struct.wil_tid_crypto_rx_single* %29, i64 %30
  store %struct.wil_tid_crypto_rx_single* %31, %struct.wil_tid_crypto_rx_single** %9, align 8
  %32 = load %struct.key_params*, %struct.key_params** %8, align 8
  %33 = getelementptr inbounds %struct.key_params, %struct.key_params* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %21
  %37 = load %struct.wil_tid_crypto_rx_single*, %struct.wil_tid_crypto_rx_single** %9, align 8
  %38 = getelementptr inbounds %struct.wil_tid_crypto_rx_single, %struct.wil_tid_crypto_rx_single* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.key_params*, %struct.key_params** %8, align 8
  %41 = getelementptr inbounds %struct.key_params, %struct.key_params* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @IEEE80211_GCMP_PN_LEN, align 4
  %44 = call i32 @memcpy(i32 %39, i32 %42, i32 %43)
  br label %51

45:                                               ; preds = %21
  %46 = load %struct.wil_tid_crypto_rx_single*, %struct.wil_tid_crypto_rx_single** %9, align 8
  %47 = getelementptr inbounds %struct.wil_tid_crypto_rx_single, %struct.wil_tid_crypto_rx_single* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @IEEE80211_GCMP_PN_LEN, align 4
  %50 = call i32 @memset(i32 %48, i32 0, i32 %49)
  br label %51

51:                                               ; preds = %45, %36
  %52 = load %struct.wil_tid_crypto_rx_single*, %struct.wil_tid_crypto_rx_single** %9, align 8
  %53 = getelementptr inbounds %struct.wil_tid_crypto_rx_single, %struct.wil_tid_crypto_rx_single* %52, i32 0, i32 0
  store i32 1, i32* %53, align 4
  br label %54

54:                                               ; preds = %51
  %55 = load i32, i32* %10, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %10, align 4
  br label %17

57:                                               ; preds = %17
  br label %88

58:                                               ; preds = %14
  %59 = load %struct.wil_sta_info*, %struct.wil_sta_info** %7, align 8
  %60 = getelementptr inbounds %struct.wil_sta_info, %struct.wil_sta_info* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load %struct.wil_tid_crypto_rx_single*, %struct.wil_tid_crypto_rx_single** %61, align 8
  %63 = load i64, i64* %5, align 8
  %64 = getelementptr inbounds %struct.wil_tid_crypto_rx_single, %struct.wil_tid_crypto_rx_single* %62, i64 %63
  store %struct.wil_tid_crypto_rx_single* %64, %struct.wil_tid_crypto_rx_single** %9, align 8
  %65 = load %struct.key_params*, %struct.key_params** %8, align 8
  %66 = getelementptr inbounds %struct.key_params, %struct.key_params* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %78

69:                                               ; preds = %58
  %70 = load %struct.wil_tid_crypto_rx_single*, %struct.wil_tid_crypto_rx_single** %9, align 8
  %71 = getelementptr inbounds %struct.wil_tid_crypto_rx_single, %struct.wil_tid_crypto_rx_single* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.key_params*, %struct.key_params** %8, align 8
  %74 = getelementptr inbounds %struct.key_params, %struct.key_params* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @IEEE80211_GCMP_PN_LEN, align 4
  %77 = call i32 @memcpy(i32 %72, i32 %75, i32 %76)
  br label %84

78:                                               ; preds = %58
  %79 = load %struct.wil_tid_crypto_rx_single*, %struct.wil_tid_crypto_rx_single** %9, align 8
  %80 = getelementptr inbounds %struct.wil_tid_crypto_rx_single, %struct.wil_tid_crypto_rx_single* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @IEEE80211_GCMP_PN_LEN, align 4
  %83 = call i32 @memset(i32 %81, i32 0, i32 %82)
  br label %84

84:                                               ; preds = %78, %69
  %85 = load %struct.wil_tid_crypto_rx_single*, %struct.wil_tid_crypto_rx_single** %9, align 8
  %86 = getelementptr inbounds %struct.wil_tid_crypto_rx_single, %struct.wil_tid_crypto_rx_single* %85, i32 0, i32 0
  store i32 1, i32* %86, align 4
  br label %88

87:                                               ; preds = %14
  br label %88

88:                                               ; preds = %13, %87, %84, %57
  ret void
}

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
