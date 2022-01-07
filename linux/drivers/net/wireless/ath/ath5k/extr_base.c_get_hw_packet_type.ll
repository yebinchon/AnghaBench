; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_base.c_get_hw_packet_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_base.c_get_hw_packet_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.ieee80211_hdr = type { i32 }

@AR5K_PKT_TYPE_BEACON = common dso_local global i32 0, align 4
@AR5K_PKT_TYPE_PROBE_RESP = common dso_local global i32 0, align 4
@AR5K_PKT_TYPE_ATIM = common dso_local global i32 0, align 4
@AR5K_PKT_TYPE_PSPOLL = common dso_local global i32 0, align 4
@AR5K_PKT_TYPE_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*)* @get_hw_packet_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_hw_packet_type(%struct.sk_buff* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.ieee80211_hdr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %2, align 8
  %6 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %7 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %9, %struct.ieee80211_hdr** %3, align 8
  %10 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %3, align 8
  %11 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i64 @ieee80211_is_beacon(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* @AR5K_PKT_TYPE_BEACON, align 4
  store i32 %17, i32* %4, align 4
  br label %41

18:                                               ; preds = %1
  %19 = load i32, i32* %5, align 4
  %20 = call i64 @ieee80211_is_probe_resp(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = load i32, i32* @AR5K_PKT_TYPE_PROBE_RESP, align 4
  store i32 %23, i32* %4, align 4
  br label %40

24:                                               ; preds = %18
  %25 = load i32, i32* %5, align 4
  %26 = call i64 @ieee80211_is_atim(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load i32, i32* @AR5K_PKT_TYPE_ATIM, align 4
  store i32 %29, i32* %4, align 4
  br label %39

30:                                               ; preds = %24
  %31 = load i32, i32* %5, align 4
  %32 = call i64 @ieee80211_is_pspoll(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load i32, i32* @AR5K_PKT_TYPE_PSPOLL, align 4
  store i32 %35, i32* %4, align 4
  br label %38

36:                                               ; preds = %30
  %37 = load i32, i32* @AR5K_PKT_TYPE_NORMAL, align 4
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %36, %34
  br label %39

39:                                               ; preds = %38, %28
  br label %40

40:                                               ; preds = %39, %22
  br label %41

41:                                               ; preds = %40, %16
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i64 @ieee80211_is_beacon(i32) #1

declare dso_local i64 @ieee80211_is_probe_resp(i32) #1

declare dso_local i64 @ieee80211_is_atim(i32) #1

declare dso_local i64 @ieee80211_is_pspoll(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
