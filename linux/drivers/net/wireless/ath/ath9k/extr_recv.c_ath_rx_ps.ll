; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_recv.c_ath_rx_ps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_recv.c_ath_rx_ps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { i32, i32 }
%struct.sk_buff = type { i64 }
%struct.ieee80211_hdr = type { i32, i32 }
%struct.ath_common = type { i32 }

@PS_WAIT_FOR_BEACON = common dso_local global i32 0, align 4
@PS_WAIT_FOR_CAB = common dso_local global i32 0, align 4
@PS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"All PS CAB frames received, back to sleep\0A\00", align 1
@PS_WAIT_FOR_PSPOLL_DATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [64 x i8] c"Going back to sleep after having received PS-Poll data (0x%lx)\0A\00", align 1
@PS_WAIT_FOR_TX_ACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_softc*, %struct.sk_buff*, i32)* @ath_rx_ps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath_rx_ps(%struct.ath_softc* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca %struct.ath_softc*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ieee80211_hdr*, align 8
  %8 = alloca %struct.ath_common*, align 8
  store %struct.ath_softc* %0, %struct.ath_softc** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %10 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.ath_common* @ath9k_hw_common(i32 %11)
  store %struct.ath_common* %12, %struct.ath_common** %8, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %14 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %16, %struct.ieee80211_hdr** %7, align 8
  %17 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %18 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @PS_WAIT_FOR_BEACON, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %3
  %24 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %25 = call i64 @ath9k_check_auto_sleep(%struct.ath_softc* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %23, %3
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %32 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %33 = call i32 @ath_rx_ps_beacon(%struct.ath_softc* %31, %struct.sk_buff* %32)
  br label %119

34:                                               ; preds = %27, %23
  %35 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %36 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @PS_WAIT_FOR_CAB, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %77

41:                                               ; preds = %34
  %42 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %7, align 8
  %43 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @ieee80211_is_data(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %41
  %48 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %7, align 8
  %49 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @ieee80211_is_action(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %77

53:                                               ; preds = %47, %41
  %54 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %7, align 8
  %55 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @is_multicast_ether_addr(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %77

59:                                               ; preds = %53
  %60 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %7, align 8
  %61 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @ieee80211_has_moredata(i32 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %77, label %65

65:                                               ; preds = %59
  %66 = load i32, i32* @PS_WAIT_FOR_CAB, align 4
  %67 = load i32, i32* @PS_WAIT_FOR_BEACON, align 4
  %68 = or i32 %66, %67
  %69 = xor i32 %68, -1
  %70 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %71 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = and i32 %72, %69
  store i32 %73, i32* %71, align 4
  %74 = load %struct.ath_common*, %struct.ath_common** %8, align 8
  %75 = load i32, i32* @PS, align 4
  %76 = call i32 (%struct.ath_common*, i32, i8*, ...) @ath_dbg(%struct.ath_common* %74, i32 %75, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %118

77:                                               ; preds = %59, %53, %47, %34
  %78 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %79 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @PS_WAIT_FOR_PSPOLL_DATA, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %117

84:                                               ; preds = %77
  %85 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %7, align 8
  %86 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i64 @is_multicast_ether_addr(i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %117, label %90

90:                                               ; preds = %84
  %91 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %7, align 8
  %92 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @ieee80211_has_morefrags(i32 %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %117, label %96

96:                                               ; preds = %90
  %97 = load i32, i32* @PS_WAIT_FOR_PSPOLL_DATA, align 4
  %98 = xor i32 %97, -1
  %99 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %100 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = and i32 %101, %98
  store i32 %102, i32* %100, align 4
  %103 = load %struct.ath_common*, %struct.ath_common** %8, align 8
  %104 = load i32, i32* @PS, align 4
  %105 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %106 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @PS_WAIT_FOR_BEACON, align 4
  %109 = load i32, i32* @PS_WAIT_FOR_CAB, align 4
  %110 = or i32 %108, %109
  %111 = load i32, i32* @PS_WAIT_FOR_PSPOLL_DATA, align 4
  %112 = or i32 %110, %111
  %113 = load i32, i32* @PS_WAIT_FOR_TX_ACK, align 4
  %114 = or i32 %112, %113
  %115 = and i32 %107, %114
  %116 = call i32 (%struct.ath_common*, i32, i8*, ...) @ath_dbg(%struct.ath_common* %103, i32 %104, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), i32 %115)
  br label %117

117:                                              ; preds = %96, %90, %84, %77
  br label %118

118:                                              ; preds = %117, %65
  br label %119

119:                                              ; preds = %118, %30
  ret void
}

declare dso_local %struct.ath_common* @ath9k_hw_common(i32) #1

declare dso_local i64 @ath9k_check_auto_sleep(%struct.ath_softc*) #1

declare dso_local i32 @ath_rx_ps_beacon(%struct.ath_softc*, %struct.sk_buff*) #1

declare dso_local i64 @ieee80211_is_data(i32) #1

declare dso_local i64 @ieee80211_is_action(i32) #1

declare dso_local i64 @is_multicast_ether_addr(i32) #1

declare dso_local i32 @ieee80211_has_moredata(i32) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, ...) #1

declare dso_local i32 @ieee80211_has_morefrags(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
