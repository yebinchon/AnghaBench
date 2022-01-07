; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mt76x02_util.c_mt76x02_vif_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mt76x02_util.c_mt76x02_vif_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76x02_dev = type { i32 }
%struct.ieee80211_vif = type { %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { i64 }
%struct.mt76x02_vif = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.mt76_txq = type { %struct.TYPE_3__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mt76x02_dev*, %struct.ieee80211_vif*, i32)* @mt76x02_vif_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt76x02_vif_init(%struct.mt76x02_dev* %0, %struct.ieee80211_vif* %1, i32 %2) #0 {
  %4 = alloca %struct.mt76x02_dev*, align 8
  %5 = alloca %struct.ieee80211_vif*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mt76x02_vif*, align 8
  %8 = alloca %struct.mt76_txq*, align 8
  store %struct.mt76x02_dev* %0, %struct.mt76x02_dev** %4, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %10 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.mt76x02_vif*
  store %struct.mt76x02_vif* %12, %struct.mt76x02_vif** %7, align 8
  %13 = load %struct.mt76x02_vif*, %struct.mt76x02_vif** %7, align 8
  %14 = call i32 @memset(%struct.mt76x02_vif* %13, i32 0, i32 12)
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.mt76x02_vif*, %struct.mt76x02_vif** %7, align 8
  %17 = getelementptr inbounds %struct.mt76x02_vif, %struct.mt76x02_vif* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @MT_VIF_WCID(i32 %18)
  %20 = load %struct.mt76x02_vif*, %struct.mt76x02_vif** %7, align 8
  %21 = getelementptr inbounds %struct.mt76x02_vif, %struct.mt76x02_vif* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  store i32 %19, i32* %22, align 4
  %23 = load %struct.mt76x02_vif*, %struct.mt76x02_vif** %7, align 8
  %24 = getelementptr inbounds %struct.mt76x02_vif, %struct.mt76x02_vif* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  store i32 -1, i32* %25, align 4
  %26 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %27 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to %struct.mt76_txq*
  store %struct.mt76_txq* %31, %struct.mt76_txq** %8, align 8
  %32 = load %struct.mt76x02_vif*, %struct.mt76x02_vif** %7, align 8
  %33 = getelementptr inbounds %struct.mt76x02_vif, %struct.mt76x02_vif* %32, i32 0, i32 1
  %34 = load %struct.mt76_txq*, %struct.mt76_txq** %8, align 8
  %35 = getelementptr inbounds %struct.mt76_txq, %struct.mt76_txq* %34, i32 0, i32 0
  store %struct.TYPE_3__* %33, %struct.TYPE_3__** %35, align 8
  %36 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %37 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %36, i32 0, i32 0
  %38 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %39 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = call i32 @mt76_txq_init(i32* %37, %struct.TYPE_4__* %40)
  ret void
}

declare dso_local i32 @memset(%struct.mt76x02_vif*, i32, i32) #1

declare dso_local i32 @MT_VIF_WCID(i32) #1

declare dso_local i32 @mt76_txq_init(i32*, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
