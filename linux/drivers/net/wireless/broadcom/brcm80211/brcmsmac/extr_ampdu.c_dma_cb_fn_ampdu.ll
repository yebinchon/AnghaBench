; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_ampdu.c_dma_cb_fn_ampdu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_ampdu.c_dma_cb_fn_ampdu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sta = type { i32 }
%struct.ieee80211_tx_info = type { i32, %struct.ieee80211_sta** }

@IEEE80211_TX_CTL_AMPDU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @dma_cb_fn_ampdu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dma_cb_fn_ampdu(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ieee80211_sta*, align 8
  %6 = alloca %struct.ieee80211_tx_info*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.ieee80211_sta*
  store %struct.ieee80211_sta* %8, %struct.ieee80211_sta** %5, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to %struct.ieee80211_tx_info*
  store %struct.ieee80211_tx_info* %10, %struct.ieee80211_tx_info** %6, align 8
  %11 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %6, align 8
  %12 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @IEEE80211_TX_CTL_AMPDU, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %33

17:                                               ; preds = %2
  %18 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %6, align 8
  %19 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %18, i32 0, i32 1
  %20 = load %struct.ieee80211_sta**, %struct.ieee80211_sta*** %19, align 8
  %21 = getelementptr inbounds %struct.ieee80211_sta*, %struct.ieee80211_sta** %20, i64 0
  %22 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %21, align 8
  %23 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %5, align 8
  %24 = icmp eq %struct.ieee80211_sta* %22, %23
  br i1 %24, label %28, label %25

25:                                               ; preds = %17
  %26 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %5, align 8
  %27 = icmp eq %struct.ieee80211_sta* %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %25, %17
  %29 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %6, align 8
  %30 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %29, i32 0, i32 1
  %31 = load %struct.ieee80211_sta**, %struct.ieee80211_sta*** %30, align 8
  %32 = getelementptr inbounds %struct.ieee80211_sta*, %struct.ieee80211_sta** %31, i64 0
  store %struct.ieee80211_sta* null, %struct.ieee80211_sta** %32, align 8
  br label %33

33:                                               ; preds = %28, %25, %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
