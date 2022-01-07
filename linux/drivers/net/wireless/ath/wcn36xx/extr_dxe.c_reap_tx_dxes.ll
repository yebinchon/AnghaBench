; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_dxe.c_reap_tx_dxes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_dxe.c_reap_tx_dxes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wcn36xx = type { i32, i32, i32 }
%struct.wcn36xx_dxe_ch = type { i32, %struct.wcn36xx_dxe_ctl*, %struct.wcn36xx_dxe_ctl* }
%struct.wcn36xx_dxe_ctl = type { %struct.wcn36xx_dxe_ctl*, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.ieee80211_tx_info = type { i32 }

@WCN36xx_DXE_CTRL_VLD = common dso_local global i32 0, align 4
@WCN36xx_DXE_CTRL_EOP = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_REQ_TX_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wcn36xx*, %struct.wcn36xx_dxe_ch*)* @reap_tx_dxes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reap_tx_dxes(%struct.wcn36xx* %0, %struct.wcn36xx_dxe_ch* %1) #0 {
  %3 = alloca %struct.wcn36xx*, align 8
  %4 = alloca %struct.wcn36xx_dxe_ch*, align 8
  %5 = alloca %struct.wcn36xx_dxe_ctl*, align 8
  %6 = alloca %struct.ieee80211_tx_info*, align 8
  %7 = alloca i64, align 8
  store %struct.wcn36xx* %0, %struct.wcn36xx** %3, align 8
  store %struct.wcn36xx_dxe_ch* %1, %struct.wcn36xx_dxe_ch** %4, align 8
  %8 = load %struct.wcn36xx_dxe_ch*, %struct.wcn36xx_dxe_ch** %4, align 8
  %9 = getelementptr inbounds %struct.wcn36xx_dxe_ch, %struct.wcn36xx_dxe_ch* %8, i32 0, i32 0
  %10 = load i64, i64* %7, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load %struct.wcn36xx_dxe_ch*, %struct.wcn36xx_dxe_ch** %4, align 8
  %13 = getelementptr inbounds %struct.wcn36xx_dxe_ch, %struct.wcn36xx_dxe_ch* %12, i32 0, i32 1
  %14 = load %struct.wcn36xx_dxe_ctl*, %struct.wcn36xx_dxe_ctl** %13, align 8
  store %struct.wcn36xx_dxe_ctl* %14, %struct.wcn36xx_dxe_ctl** %5, align 8
  br label %15

15:                                               ; preds = %94, %2
  %16 = load %struct.wcn36xx_dxe_ctl*, %struct.wcn36xx_dxe_ctl** %5, align 8
  %17 = getelementptr inbounds %struct.wcn36xx_dxe_ctl, %struct.wcn36xx_dxe_ctl* %16, i32 0, i32 2
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @READ_ONCE(i32 %20)
  %22 = load i32, i32* @WCN36xx_DXE_CTRL_VLD, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %15
  br label %100

26:                                               ; preds = %15
  %27 = load %struct.wcn36xx_dxe_ctl*, %struct.wcn36xx_dxe_ctl** %5, align 8
  %28 = getelementptr inbounds %struct.wcn36xx_dxe_ctl, %struct.wcn36xx_dxe_ctl* %27, i32 0, i32 1
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = icmp ne %struct.TYPE_5__* %29, null
  br i1 %30, label %31, label %90

31:                                               ; preds = %26
  %32 = load %struct.wcn36xx_dxe_ctl*, %struct.wcn36xx_dxe_ctl** %5, align 8
  %33 = getelementptr inbounds %struct.wcn36xx_dxe_ctl, %struct.wcn36xx_dxe_ctl* %32, i32 0, i32 2
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @READ_ONCE(i32 %36)
  %38 = load i32, i32* @WCN36xx_DXE_CTRL_EOP, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %90

41:                                               ; preds = %31
  %42 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %43 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.wcn36xx_dxe_ctl*, %struct.wcn36xx_dxe_ctl** %5, align 8
  %46 = getelementptr inbounds %struct.wcn36xx_dxe_ctl, %struct.wcn36xx_dxe_ctl* %45, i32 0, i32 2
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.wcn36xx_dxe_ctl*, %struct.wcn36xx_dxe_ctl** %5, align 8
  %51 = getelementptr inbounds %struct.wcn36xx_dxe_ctl, %struct.wcn36xx_dxe_ctl* %50, i32 0, i32 1
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @DMA_TO_DEVICE, align 4
  %56 = call i32 @dma_unmap_single(i32 %44, i32 %49, i32 %54, i32 %55)
  %57 = load %struct.wcn36xx_dxe_ctl*, %struct.wcn36xx_dxe_ctl** %5, align 8
  %58 = getelementptr inbounds %struct.wcn36xx_dxe_ctl, %struct.wcn36xx_dxe_ctl* %57, i32 0, i32 1
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.TYPE_5__* %59)
  store %struct.ieee80211_tx_info* %60, %struct.ieee80211_tx_info** %6, align 8
  %61 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %6, align 8
  %62 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @IEEE80211_TX_CTL_REQ_TX_STATUS, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %75, label %67

67:                                               ; preds = %41
  %68 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %69 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.wcn36xx_dxe_ctl*, %struct.wcn36xx_dxe_ctl** %5, align 8
  %72 = getelementptr inbounds %struct.wcn36xx_dxe_ctl, %struct.wcn36xx_dxe_ctl* %71, i32 0, i32 1
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %72, align 8
  %74 = call i32 @ieee80211_free_txskb(i32 %70, %struct.TYPE_5__* %73)
  br label %75

75:                                               ; preds = %67, %41
  %76 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %77 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %75
  %81 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %82 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %81, i32 0, i32 0
  store i32 0, i32* %82, align 4
  %83 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %84 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @ieee80211_wake_queues(i32 %85)
  br label %87

87:                                               ; preds = %80, %75
  %88 = load %struct.wcn36xx_dxe_ctl*, %struct.wcn36xx_dxe_ctl** %5, align 8
  %89 = getelementptr inbounds %struct.wcn36xx_dxe_ctl, %struct.wcn36xx_dxe_ctl* %88, i32 0, i32 1
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %89, align 8
  br label %90

90:                                               ; preds = %87, %31, %26
  %91 = load %struct.wcn36xx_dxe_ctl*, %struct.wcn36xx_dxe_ctl** %5, align 8
  %92 = getelementptr inbounds %struct.wcn36xx_dxe_ctl, %struct.wcn36xx_dxe_ctl* %91, i32 0, i32 0
  %93 = load %struct.wcn36xx_dxe_ctl*, %struct.wcn36xx_dxe_ctl** %92, align 8
  store %struct.wcn36xx_dxe_ctl* %93, %struct.wcn36xx_dxe_ctl** %5, align 8
  br label %94

94:                                               ; preds = %90
  %95 = load %struct.wcn36xx_dxe_ctl*, %struct.wcn36xx_dxe_ctl** %5, align 8
  %96 = load %struct.wcn36xx_dxe_ch*, %struct.wcn36xx_dxe_ch** %4, align 8
  %97 = getelementptr inbounds %struct.wcn36xx_dxe_ch, %struct.wcn36xx_dxe_ch* %96, i32 0, i32 2
  %98 = load %struct.wcn36xx_dxe_ctl*, %struct.wcn36xx_dxe_ctl** %97, align 8
  %99 = icmp ne %struct.wcn36xx_dxe_ctl* %95, %98
  br i1 %99, label %15, label %100

100:                                              ; preds = %94, %25
  %101 = load %struct.wcn36xx_dxe_ctl*, %struct.wcn36xx_dxe_ctl** %5, align 8
  %102 = load %struct.wcn36xx_dxe_ch*, %struct.wcn36xx_dxe_ch** %4, align 8
  %103 = getelementptr inbounds %struct.wcn36xx_dxe_ch, %struct.wcn36xx_dxe_ch* %102, i32 0, i32 1
  store %struct.wcn36xx_dxe_ctl* %101, %struct.wcn36xx_dxe_ctl** %103, align 8
  %104 = load %struct.wcn36xx_dxe_ch*, %struct.wcn36xx_dxe_ch** %4, align 8
  %105 = getelementptr inbounds %struct.wcn36xx_dxe_ch, %struct.wcn36xx_dxe_ch* %104, i32 0, i32 0
  %106 = load i64, i64* %7, align 8
  %107 = call i32 @spin_unlock_irqrestore(i32* %105, i64 %106)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i32, i32) #1

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.TYPE_5__*) #1

declare dso_local i32 @ieee80211_free_txskb(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @ieee80211_wake_queues(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
