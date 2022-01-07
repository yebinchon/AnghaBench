; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7615/extr_mcu.c_mt7615_mcu_bss_info_basic_header.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7615/extr_mcu.c_mt7615_mcu_bss_info_basic_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_vif = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.mt7615_vif = type { i32 }
%struct.bss_info_basic = type { i32, i32, i32, i32, i32, i8*, i32, i8*, i8* }

@BSS_INFO_BASIC = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_vif*, i32*, i32, i32, i32)* @mt7615_mcu_bss_info_basic_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt7615_mcu_bss_info_basic_header(%struct.ieee80211_vif* %0, i32* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.mt7615_vif*, align 8
  %12 = alloca %struct.bss_info_basic*, align 8
  store %struct.ieee80211_vif* %0, %struct.ieee80211_vif** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %14 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.mt7615_vif*
  store %struct.mt7615_vif* %16, %struct.mt7615_vif** %11, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = bitcast i32* %17 to %struct.bss_info_basic*
  store %struct.bss_info_basic* %18, %struct.bss_info_basic** %12, align 8
  %19 = load i32, i32* @BSS_INFO_BASIC, align 4
  %20 = call i8* @cpu_to_le16(i32 %19)
  %21 = load %struct.bss_info_basic*, %struct.bss_info_basic** %12, align 8
  %22 = getelementptr inbounds %struct.bss_info_basic, %struct.bss_info_basic* %21, i32 0, i32 8
  store i8* %20, i8** %22, align 8
  %23 = call i8* @cpu_to_le16(i32 56)
  %24 = load %struct.bss_info_basic*, %struct.bss_info_basic** %12, align 8
  %25 = getelementptr inbounds %struct.bss_info_basic, %struct.bss_info_basic* %24, i32 0, i32 7
  store i8* %23, i8** %25, align 8
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @cpu_to_le32(i32 %26)
  %28 = load %struct.bss_info_basic*, %struct.bss_info_basic** %12, align 8
  %29 = getelementptr inbounds %struct.bss_info_basic, %struct.bss_info_basic* %28, i32 0, i32 6
  store i32 %27, i32* %29, align 8
  %30 = load i32, i32* %10, align 4
  %31 = load %struct.bss_info_basic*, %struct.bss_info_basic** %12, align 8
  %32 = getelementptr inbounds %struct.bss_info_basic, %struct.bss_info_basic* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %34 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i8* @cpu_to_le16(i32 %36)
  %38 = load %struct.bss_info_basic*, %struct.bss_info_basic** %12, align 8
  %39 = getelementptr inbounds %struct.bss_info_basic, %struct.bss_info_basic* %38, i32 0, i32 5
  store i8* %37, i8** %39, align 8
  %40 = load %struct.bss_info_basic*, %struct.bss_info_basic** %12, align 8
  %41 = getelementptr inbounds %struct.bss_info_basic, %struct.bss_info_basic* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %44 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @ETH_ALEN, align 4
  %48 = call i32 @memcpy(i32 %42, i32 %46, i32 %47)
  %49 = load %struct.mt7615_vif*, %struct.mt7615_vif** %11, align 8
  %50 = getelementptr inbounds %struct.mt7615_vif, %struct.mt7615_vif* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.bss_info_basic*, %struct.bss_info_basic** %12, align 8
  %53 = getelementptr inbounds %struct.bss_info_basic, %struct.bss_info_basic* %52, i32 0, i32 3
  store i32 %51, i32* %53, align 4
  %54 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %55 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.bss_info_basic*, %struct.bss_info_basic** %12, align 8
  %59 = getelementptr inbounds %struct.bss_info_basic, %struct.bss_info_basic* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 8
  %60 = load i32, i32* %9, align 4
  %61 = load %struct.bss_info_basic*, %struct.bss_info_basic** %12, align 8
  %62 = getelementptr inbounds %struct.bss_info_basic, %struct.bss_info_basic* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  ret void
}

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
