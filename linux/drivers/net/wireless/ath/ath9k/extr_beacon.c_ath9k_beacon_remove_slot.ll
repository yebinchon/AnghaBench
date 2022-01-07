; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_beacon.c_ath9k_beacon_remove_slot.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_beacon.c_ath9k_beacon_remove_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32** }
%struct.ieee80211_vif = type { i64 }
%struct.ath_common = type { i32 }
%struct.ath_vif = type { i64, %struct.ath_buf* }
%struct.ath_buf = type { i32, i64, %struct.sk_buff* }
%struct.sk_buff = type { i32 }

@CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Removing interface at beacon slot: %d\0A\00", align 1
@DMA_TO_DEVICE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath9k_beacon_remove_slot(%struct.ath_softc* %0, %struct.ieee80211_vif* %1) #0 {
  %3 = alloca %struct.ath_softc*, align 8
  %4 = alloca %struct.ieee80211_vif*, align 8
  %5 = alloca %struct.ath_common*, align 8
  %6 = alloca %struct.ath_vif*, align 8
  %7 = alloca %struct.ath_buf*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  store %struct.ath_softc* %0, %struct.ath_softc** %3, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %4, align 8
  %9 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %10 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.ath_common* @ath9k_hw_common(i32 %11)
  store %struct.ath_common* %12, %struct.ath_common** %5, align 8
  %13 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %14 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to i8*
  %17 = bitcast i8* %16 to %struct.ath_vif*
  store %struct.ath_vif* %17, %struct.ath_vif** %6, align 8
  %18 = load %struct.ath_vif*, %struct.ath_vif** %6, align 8
  %19 = getelementptr inbounds %struct.ath_vif, %struct.ath_vif* %18, i32 0, i32 1
  %20 = load %struct.ath_buf*, %struct.ath_buf** %19, align 8
  store %struct.ath_buf* %20, %struct.ath_buf** %7, align 8
  %21 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %22 = load i32, i32* @CONFIG, align 4
  %23 = load %struct.ath_vif*, %struct.ath_vif** %6, align 8
  %24 = getelementptr inbounds %struct.ath_vif, %struct.ath_vif* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @ath_dbg(%struct.ath_common* %21, i32 %22, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i64 %25)
  %27 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %28 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %27, i32 0, i32 0
  %29 = call i32 @tasklet_disable(i32* %28)
  %30 = load %struct.ath_buf*, %struct.ath_buf** %7, align 8
  %31 = icmp ne %struct.ath_buf* %30, null
  br i1 %31, label %32, label %58

32:                                               ; preds = %2
  %33 = load %struct.ath_buf*, %struct.ath_buf** %7, align 8
  %34 = getelementptr inbounds %struct.ath_buf, %struct.ath_buf* %33, i32 0, i32 2
  %35 = load %struct.sk_buff*, %struct.sk_buff** %34, align 8
  %36 = icmp ne %struct.sk_buff* %35, null
  br i1 %36, label %37, label %58

37:                                               ; preds = %32
  %38 = load %struct.ath_buf*, %struct.ath_buf** %7, align 8
  %39 = getelementptr inbounds %struct.ath_buf, %struct.ath_buf* %38, i32 0, i32 2
  %40 = load %struct.sk_buff*, %struct.sk_buff** %39, align 8
  store %struct.sk_buff* %40, %struct.sk_buff** %8, align 8
  %41 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %42 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.ath_buf*, %struct.ath_buf** %7, align 8
  %45 = getelementptr inbounds %struct.ath_buf, %struct.ath_buf* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %48 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @DMA_TO_DEVICE, align 4
  %51 = call i32 @dma_unmap_single(i32 %43, i64 %46, i32 %49, i32 %50)
  %52 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %53 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %52)
  %54 = load %struct.ath_buf*, %struct.ath_buf** %7, align 8
  %55 = getelementptr inbounds %struct.ath_buf, %struct.ath_buf* %54, i32 0, i32 2
  store %struct.sk_buff* null, %struct.sk_buff** %55, align 8
  %56 = load %struct.ath_buf*, %struct.ath_buf** %7, align 8
  %57 = getelementptr inbounds %struct.ath_buf, %struct.ath_buf* %56, i32 0, i32 1
  store i64 0, i64* %57, align 8
  br label %58

58:                                               ; preds = %37, %32, %2
  %59 = load %struct.ath_vif*, %struct.ath_vif** %6, align 8
  %60 = getelementptr inbounds %struct.ath_vif, %struct.ath_vif* %59, i32 0, i32 1
  store %struct.ath_buf* null, %struct.ath_buf** %60, align 8
  %61 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %62 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  %64 = load i32**, i32*** %63, align 8
  %65 = load %struct.ath_vif*, %struct.ath_vif** %6, align 8
  %66 = getelementptr inbounds %struct.ath_vif, %struct.ath_vif* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds i32*, i32** %64, i64 %67
  store i32* null, i32** %68, align 8
  %69 = load %struct.ath_buf*, %struct.ath_buf** %7, align 8
  %70 = getelementptr inbounds %struct.ath_buf, %struct.ath_buf* %69, i32 0, i32 0
  %71 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %72 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = call i32 @list_add_tail(i32* %70, i32* %73)
  %75 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %76 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %75, i32 0, i32 0
  %77 = call i32 @tasklet_enable(i32* %76)
  ret void
}

declare dso_local %struct.ath_common* @ath9k_hw_common(i32) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, i64) #1

declare dso_local i32 @tasklet_disable(i32*) #1

declare dso_local i32 @dma_unmap_single(i32, i64, i32, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @tasklet_enable(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
