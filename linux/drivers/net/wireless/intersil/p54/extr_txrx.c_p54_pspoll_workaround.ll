; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/p54/extr_txrx.c_p54_pspoll_workaround.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/p54/extr_txrx.c_p54_pspoll_workaround.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p54_common = type { i32, i32, i32 }
%struct.sk_buff = type { i64 }
%struct.ieee80211_hdr = type { i32, i32 }
%struct.ieee80211_tim_ie = type { i32 }

@WLAN_EID_TIM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.p54_common*, %struct.sk_buff*)* @p54_pspoll_workaround to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @p54_pspoll_workaround(%struct.p54_common* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.p54_common*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.ieee80211_hdr*, align 8
  %6 = alloca %struct.ieee80211_tim_ie*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.p54_common* %0, %struct.p54_common** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %11 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to i8*
  %14 = bitcast i8* %13 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %14, %struct.ieee80211_hdr** %5, align 8
  %15 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %5, align 8
  %16 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @ieee80211_is_beacon(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  br label %68

21:                                               ; preds = %2
  %22 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %23 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %21
  br label %68

27:                                               ; preds = %21
  %28 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %5, align 8
  %29 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %32 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @ether_addr_equal_64bits(i32 %30, i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %27
  br label %68

37:                                               ; preds = %27
  %38 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %39 = load i32, i32* @WLAN_EID_TIM, align 4
  %40 = call i32* @p54_find_ie(%struct.sk_buff* %38, i32 %39)
  store i32* %40, i32** %7, align 8
  %41 = load i32*, i32** %7, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %37
  br label %68

44:                                               ; preds = %37
  %45 = load i32*, i32** %7, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 1
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %8, align 4
  %48 = load i32*, i32** %7, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 2
  %50 = bitcast i32* %49 to %struct.ieee80211_tim_ie*
  store %struct.ieee80211_tim_ie* %50, %struct.ieee80211_tim_ie** %6, align 8
  %51 = load %struct.ieee80211_tim_ie*, %struct.ieee80211_tim_ie** %6, align 8
  %52 = load i32, i32* %8, align 4
  %53 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %54 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @ieee80211_check_tim(%struct.ieee80211_tim_ie* %51, i32 %52, i32 %55)
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %59 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %57, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %44
  %63 = load i32, i32* %9, align 4
  %64 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %65 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 4
  %66 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %67 = call i32 @p54_set_ps(%struct.p54_common* %66)
  br label %68

68:                                               ; preds = %20, %26, %36, %43, %62, %44
  ret void
}

declare dso_local i32 @ieee80211_is_beacon(i32) #1

declare dso_local i32 @ether_addr_equal_64bits(i32, i32) #1

declare dso_local i32* @p54_find_ie(%struct.sk_buff*, i32) #1

declare dso_local i32 @ieee80211_check_tim(%struct.ieee80211_tim_ie*, i32, i32) #1

declare dso_local i32 @p54_set_ps(%struct.p54_common*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
