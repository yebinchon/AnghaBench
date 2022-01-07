; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mac80211.c_mt76_rx_convert.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mac80211.c_mt76_rx_convert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sta = type { i32 }
%struct.sk_buff = type { i64 }
%struct.ieee80211_rx_status = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mt76_rx_status = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ieee80211_sta* (%struct.sk_buff*)* @mt76_rx_convert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ieee80211_sta* @mt76_rx_convert(%struct.sk_buff* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.ieee80211_rx_status*, align 8
  %4 = alloca %struct.mt76_rx_status, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %2, align 8
  %5 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %6 = call %struct.ieee80211_rx_status* @IEEE80211_SKB_RXCB(%struct.sk_buff* %5)
  store %struct.ieee80211_rx_status* %6, %struct.ieee80211_rx_status** %3, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %8 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.mt76_rx_status*
  %11 = bitcast %struct.mt76_rx_status* %4 to i8*
  %12 = bitcast %struct.mt76_rx_status* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 4 %12, i64 48, i1 false)
  %13 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %3, align 8
  %14 = call i32 @memset(%struct.ieee80211_rx_status* %13, i32 0, i32 44)
  %15 = getelementptr inbounds %struct.mt76_rx_status, %struct.mt76_rx_status* %4, i32 0, i32 11
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %3, align 8
  %18 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %17, i32 0, i32 10
  store i32 %16, i32* %18, align 4
  %19 = getelementptr inbounds %struct.mt76_rx_status, %struct.mt76_rx_status* %4, i32 0, i32 10
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %3, align 8
  %22 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %21, i32 0, i32 9
  store i32 %20, i32* %22, align 4
  %23 = getelementptr inbounds %struct.mt76_rx_status, %struct.mt76_rx_status* %4, i32 0, i32 9
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %3, align 8
  %26 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %25, i32 0, i32 8
  store i32 %24, i32* %26, align 4
  %27 = getelementptr inbounds %struct.mt76_rx_status, %struct.mt76_rx_status* %4, i32 0, i32 8
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %3, align 8
  %30 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %29, i32 0, i32 7
  store i32 %28, i32* %30, align 4
  %31 = getelementptr inbounds %struct.mt76_rx_status, %struct.mt76_rx_status* %4, i32 0, i32 7
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %3, align 8
  %34 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %33, i32 0, i32 6
  store i32 %32, i32* %34, align 4
  %35 = getelementptr inbounds %struct.mt76_rx_status, %struct.mt76_rx_status* %4, i32 0, i32 6
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %3, align 8
  %38 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %37, i32 0, i32 5
  store i32 %36, i32* %38, align 4
  %39 = getelementptr inbounds %struct.mt76_rx_status, %struct.mt76_rx_status* %4, i32 0, i32 5
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %3, align 8
  %42 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %41, i32 0, i32 4
  store i32 %40, i32* %42, align 4
  %43 = getelementptr inbounds %struct.mt76_rx_status, %struct.mt76_rx_status* %4, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %3, align 8
  %46 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 4
  %47 = getelementptr inbounds %struct.mt76_rx_status, %struct.mt76_rx_status* %4, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %3, align 8
  %50 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 4
  %51 = getelementptr inbounds %struct.mt76_rx_status, %struct.mt76_rx_status* %4, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %3, align 8
  %54 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = call i32 @BUILD_BUG_ON(i32 1)
  %56 = call i32 @BUILD_BUG_ON(i32 0)
  %57 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %3, align 8
  %58 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = getelementptr inbounds %struct.mt76_rx_status, %struct.mt76_rx_status* %4, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @memcpy(i32 %59, i32 %61, i32 4)
  %63 = getelementptr inbounds %struct.mt76_rx_status, %struct.mt76_rx_status* %4, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call %struct.ieee80211_sta* @wcid_to_sta(i32 %64)
  ret %struct.ieee80211_sta* %65
}

declare dso_local %struct.ieee80211_rx_status* @IEEE80211_SKB_RXCB(%struct.sk_buff*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @memset(%struct.ieee80211_rx_status*, i32, i32) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local %struct.ieee80211_sta* @wcid_to_sta(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
