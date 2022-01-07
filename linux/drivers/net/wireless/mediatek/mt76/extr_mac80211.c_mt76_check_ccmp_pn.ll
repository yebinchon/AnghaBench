; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mac80211.c_mt76_check_ccmp_pn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mac80211.c_mt76_check_ccmp_pn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i64 }
%struct.mt76_rx_status = type { i32, i64, i32, %struct.mt76_wcid* }
%struct.mt76_wcid = type { i32*, i32 }
%struct.ieee80211_hdr = type { i32 }

@RX_FLAG_DECRYPTED = common dso_local global i32 0, align 4
@RX_FLAG_IV_STRIPPED = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@RX_FLAG_PN_VALIDATED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*)* @mt76_check_ccmp_pn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt76_check_ccmp_pn(%struct.sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.mt76_rx_status*, align 8
  %5 = alloca %struct.mt76_wcid*, align 8
  %6 = alloca %struct.ieee80211_hdr*, align 8
  %7 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %9 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.mt76_rx_status*
  store %struct.mt76_rx_status* %11, %struct.mt76_rx_status** %4, align 8
  %12 = load %struct.mt76_rx_status*, %struct.mt76_rx_status** %4, align 8
  %13 = getelementptr inbounds %struct.mt76_rx_status, %struct.mt76_rx_status* %12, i32 0, i32 3
  %14 = load %struct.mt76_wcid*, %struct.mt76_wcid** %13, align 8
  store %struct.mt76_wcid* %14, %struct.mt76_wcid** %5, align 8
  %15 = load %struct.mt76_rx_status*, %struct.mt76_rx_status** %4, align 8
  %16 = getelementptr inbounds %struct.mt76_rx_status, %struct.mt76_rx_status* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @RX_FLAG_DECRYPTED, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %99

22:                                               ; preds = %1
  %23 = load %struct.mt76_wcid*, %struct.mt76_wcid** %5, align 8
  %24 = icmp ne %struct.mt76_wcid* %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %22
  %26 = load %struct.mt76_wcid*, %struct.mt76_wcid** %5, align 8
  %27 = getelementptr inbounds %struct.mt76_wcid, %struct.mt76_wcid* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %25, %22
  store i32 0, i32* %2, align 4
  br label %99

31:                                               ; preds = %25
  %32 = load %struct.mt76_rx_status*, %struct.mt76_rx_status** %4, align 8
  %33 = getelementptr inbounds %struct.mt76_rx_status, %struct.mt76_rx_status* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @RX_FLAG_IV_STRIPPED, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %54, label %38

38:                                               ; preds = %31
  %39 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %40 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = inttoptr i64 %41 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %42, %struct.ieee80211_hdr** %6, align 8
  %43 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %6, align 8
  %44 = call i64 @ieee80211_is_frag(%struct.ieee80211_hdr* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %38
  %47 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %6, align 8
  %48 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @ieee80211_is_first_frag(i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %46
  store i32 0, i32* %2, align 4
  br label %99

53:                                               ; preds = %46, %38
  br label %54

54:                                               ; preds = %53, %31
  %55 = call i32 @BUILD_BUG_ON(i32 0)
  %56 = load %struct.mt76_rx_status*, %struct.mt76_rx_status** %4, align 8
  %57 = getelementptr inbounds %struct.mt76_rx_status, %struct.mt76_rx_status* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.mt76_wcid*, %struct.mt76_wcid** %5, align 8
  %60 = getelementptr inbounds %struct.mt76_wcid, %struct.mt76_wcid* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load %struct.mt76_rx_status*, %struct.mt76_rx_status** %4, align 8
  %63 = getelementptr inbounds %struct.mt76_rx_status, %struct.mt76_rx_status* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds i32, i32* %61, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @memcmp(i32 %58, i32 %66, i32 4)
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %7, align 4
  %69 = icmp sle i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %54
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %2, align 4
  br label %99

73:                                               ; preds = %54
  %74 = load %struct.mt76_wcid*, %struct.mt76_wcid** %5, align 8
  %75 = getelementptr inbounds %struct.mt76_wcid, %struct.mt76_wcid* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = load %struct.mt76_rx_status*, %struct.mt76_rx_status** %4, align 8
  %78 = getelementptr inbounds %struct.mt76_rx_status, %struct.mt76_rx_status* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = getelementptr inbounds i32, i32* %76, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.mt76_rx_status*, %struct.mt76_rx_status** %4, align 8
  %83 = getelementptr inbounds %struct.mt76_rx_status, %struct.mt76_rx_status* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @memcpy(i32 %81, i32 %84, i32 4)
  %86 = load %struct.mt76_rx_status*, %struct.mt76_rx_status** %4, align 8
  %87 = getelementptr inbounds %struct.mt76_rx_status, %struct.mt76_rx_status* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @RX_FLAG_IV_STRIPPED, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %73
  %93 = load i32, i32* @RX_FLAG_PN_VALIDATED, align 4
  %94 = load %struct.mt76_rx_status*, %struct.mt76_rx_status** %4, align 8
  %95 = getelementptr inbounds %struct.mt76_rx_status, %struct.mt76_rx_status* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = or i32 %96, %93
  store i32 %97, i32* %95, align 8
  br label %98

98:                                               ; preds = %92, %73
  store i32 0, i32* %2, align 4
  br label %99

99:                                               ; preds = %98, %70, %52, %30, %21
  %100 = load i32, i32* %2, align 4
  ret i32 %100
}

declare dso_local i64 @ieee80211_is_frag(%struct.ieee80211_hdr*) #1

declare dso_local i32 @ieee80211_is_first_frag(i32) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @memcmp(i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
