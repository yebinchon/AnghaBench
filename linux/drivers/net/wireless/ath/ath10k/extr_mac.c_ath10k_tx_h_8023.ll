; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_tx_h_8023.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_tx_h_8023.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.ieee80211_hdr = type { i32 }
%struct.rfc1042_hdr = type { i32 }
%struct.ethhdr = type { i32, i32*, i32* }

@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*)* @ath10k_tx_h_8023 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath10k_tx_h_8023(%struct.sk_buff* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.ieee80211_hdr*, align 8
  %4 = alloca %struct.rfc1042_hdr*, align 8
  %5 = alloca %struct.ethhdr*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %2, align 8
  %11 = load i32, i32* @ETH_ALEN, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %7, align 8
  %14 = alloca i32, i64 %12, align 16
  store i64 %12, i64* %8, align 8
  %15 = load i32, i32* @ETH_ALEN, align 4
  %16 = zext i32 %15 to i64
  %17 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %9, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to i8*
  %22 = bitcast i8* %21 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %22, %struct.ieee80211_hdr** %3, align 8
  %23 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %3, align 8
  %24 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @ieee80211_hdrlen(i32 %25)
  store i64 %26, i64* %6, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %28 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to i8*
  %31 = load i64, i64* %6, align 8
  %32 = getelementptr i8, i8* %30, i64 %31
  %33 = bitcast i8* %32 to %struct.rfc1042_hdr*
  store %struct.rfc1042_hdr* %33, %struct.rfc1042_hdr** %4, align 8
  %34 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %3, align 8
  %35 = call i32* @ieee80211_get_DA(%struct.ieee80211_hdr* %34)
  %36 = call i32 @ether_addr_copy(i32* %14, i32* %35)
  %37 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %3, align 8
  %38 = call i32* @ieee80211_get_SA(%struct.ieee80211_hdr* %37)
  %39 = call i32 @ether_addr_copy(i32* %17, i32* %38)
  %40 = load %struct.rfc1042_hdr*, %struct.rfc1042_hdr** %4, align 8
  %41 = getelementptr inbounds %struct.rfc1042_hdr, %struct.rfc1042_hdr* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %10, align 4
  %43 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %44 = load i64, i64* %6, align 8
  %45 = add i64 %44, 4
  %46 = call i32 @skb_pull(%struct.sk_buff* %43, i64 %45)
  %47 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %48 = call i32 @skb_push(%struct.sk_buff* %47, i32 24)
  %49 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %50 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = inttoptr i64 %51 to i8*
  %53 = bitcast i8* %52 to %struct.ethhdr*
  store %struct.ethhdr* %53, %struct.ethhdr** %5, align 8
  %54 = load %struct.ethhdr*, %struct.ethhdr** %5, align 8
  %55 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %54, i32 0, i32 2
  %56 = load i32*, i32** %55, align 8
  %57 = call i32 @ether_addr_copy(i32* %56, i32* %14)
  %58 = load %struct.ethhdr*, %struct.ethhdr** %5, align 8
  %59 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = call i32 @ether_addr_copy(i32* %60, i32* %17)
  %62 = load i32, i32* %10, align 4
  %63 = load %struct.ethhdr*, %struct.ethhdr** %5, align 8
  %64 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  %65 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %65)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @ieee80211_hdrlen(i32) #2

declare dso_local i32 @ether_addr_copy(i32*, i32*) #2

declare dso_local i32* @ieee80211_get_DA(%struct.ieee80211_hdr*) #2

declare dso_local i32* @ieee80211_get_SA(%struct.ieee80211_hdr*) #2

declare dso_local i32 @skb_pull(%struct.sk_buff*, i64) #2

declare dso_local i32 @skb_push(%struct.sk_buff*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
