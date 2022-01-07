; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/carl9170/extr_debug.c_carl9170_debugfs_format_frame.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/carl9170/extr_debug.c_carl9170_debugfs_format_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar9170 = type { i32 }
%struct.sk_buff = type { i64 }
%struct._carl9170_tx_superframe = type { %struct.TYPE_4__, %struct.TYPE_3__, i64 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.ieee80211_tx_info = type { i64 }
%struct.carl9170_tx_info = type { i64 }
%struct.ieee80211_hdr = type { i32 }

@.str = private unnamed_addr constant [58 x i8] c"%s %p, c:%2x, DA:%pM, sq:%4d, mc:%.4x, pc:%.8x, to:%d ms\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ar9170*, %struct.sk_buff*, i8*, i8*, i32*, i32)* @carl9170_debugfs_format_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @carl9170_debugfs_format_frame(%struct.ar9170* %0, %struct.sk_buff* %1, i8* %2, i8* %3, i32* %4, i32 %5) #0 {
  %7 = alloca %struct.ar9170*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct._carl9170_tx_superframe*, align 8
  %14 = alloca %struct.ieee80211_tx_info*, align 8
  %15 = alloca %struct.carl9170_tx_info*, align 8
  %16 = alloca %struct.ieee80211_hdr*, align 8
  store %struct.ar9170* %0, %struct.ar9170** %7, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  %17 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %18 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to i8*
  %21 = bitcast i8* %20 to %struct._carl9170_tx_superframe*
  store %struct._carl9170_tx_superframe* %21, %struct._carl9170_tx_superframe** %13, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %23 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %22)
  store %struct.ieee80211_tx_info* %23, %struct.ieee80211_tx_info** %14, align 8
  %24 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %14, align 8
  %25 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to i8*
  %28 = bitcast i8* %27 to %struct.carl9170_tx_info*
  store %struct.carl9170_tx_info* %28, %struct.carl9170_tx_info** %15, align 8
  %29 = load %struct._carl9170_tx_superframe*, %struct._carl9170_tx_superframe** %13, align 8
  %30 = getelementptr inbounds %struct._carl9170_tx_superframe, %struct._carl9170_tx_superframe* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to i8*
  %33 = bitcast i8* %32 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %33, %struct.ieee80211_hdr** %16, align 8
  %34 = load i8*, i8** %10, align 8
  %35 = load i32*, i32** %11, align 8
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %12, align 4
  %38 = load i8*, i8** %9, align 8
  %39 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %40 = load %struct._carl9170_tx_superframe*, %struct._carl9170_tx_superframe** %13, align 8
  %41 = getelementptr inbounds %struct._carl9170_tx_superframe, %struct._carl9170_tx_superframe* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %16, align 8
  %45 = call i32 @ieee80211_get_DA(%struct.ieee80211_hdr* %44)
  %46 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %16, align 8
  %47 = call i32 @get_seq_h(%struct.ieee80211_hdr* %46)
  %48 = load %struct._carl9170_tx_superframe*, %struct._carl9170_tx_superframe** %13, align 8
  %49 = getelementptr inbounds %struct._carl9170_tx_superframe, %struct._carl9170_tx_superframe* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @le16_to_cpu(i32 %51)
  %53 = load %struct._carl9170_tx_superframe*, %struct._carl9170_tx_superframe** %13, align 8
  %54 = getelementptr inbounds %struct._carl9170_tx_superframe, %struct._carl9170_tx_superframe* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @le32_to_cpu(i32 %56)
  %58 = load i64, i64* @jiffies, align 8
  %59 = load %struct.carl9170_tx_info*, %struct.carl9170_tx_info** %15, align 8
  %60 = getelementptr inbounds %struct.carl9170_tx_info, %struct.carl9170_tx_info* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = sub nsw i64 %58, %61
  %63 = call i32 @jiffies_to_msecs(i64 %62)
  %64 = call i32 @ADD(i8* %34, i32 %36, i32 %37, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i8* %38, %struct.sk_buff* %39, i32 %43, i32 %45, i32 %47, i32 %52, i32 %57, i32 %63)
  ret void
}

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @ADD(i8*, i32, i32, i8*, i8*, %struct.sk_buff*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ieee80211_get_DA(%struct.ieee80211_hdr*) #1

declare dso_local i32 @get_seq_h(%struct.ieee80211_hdr*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @jiffies_to_msecs(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
