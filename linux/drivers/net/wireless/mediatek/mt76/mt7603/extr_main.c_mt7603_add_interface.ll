; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7603/extr_main.c_mt7603_add_interface.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7603/extr_main.c_mt7603_add_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.mt7603_dev* }
%struct.mt7603_dev = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32, i32* }
%struct.ieee80211_vif = type { i64, %struct.TYPE_8__*, i64, i64 }
%struct.TYPE_8__ = type { i64 }
%struct.mt7603_vif = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.mt76_txq = type { %struct.TYPE_6__* }

@ETH_ALEN = common dso_local global i32 0, align 4
@MT7603_MAX_INTERFACES = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@MT_MAC_ADDR1_VALID = common dso_local global i32 0, align 4
@NL80211_IFTYPE_AP = common dso_local global i64 0, align 8
@MT_BSSID1_VALID = common dso_local global i32 0, align 4
@MT7603_WTBL_RESERVED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.ieee80211_vif*)* @mt7603_add_interface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt7603_add_interface(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.ieee80211_vif*, align 8
  %5 = alloca %struct.mt7603_vif*, align 8
  %6 = alloca %struct.mt7603_dev*, align 8
  %7 = alloca %struct.mt76_txq*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %4, align 8
  %12 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %13 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.mt7603_vif*
  store %struct.mt7603_vif* %15, %struct.mt7603_vif** %5, align 8
  %16 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %17 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %16, i32 0, i32 0
  %18 = load %struct.mt7603_dev*, %struct.mt7603_dev** %17, align 8
  store %struct.mt7603_dev* %18, %struct.mt7603_dev** %6, align 8
  %19 = load i32, i32* @ETH_ALEN, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %8, align 8
  %22 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %9, align 8
  store i32 0, i32* %11, align 4
  %23 = load %struct.mt7603_dev*, %struct.mt7603_dev** %6, align 8
  %24 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = call i32 @mutex_lock(i32* %25)
  %27 = load %struct.mt7603_dev*, %struct.mt7603_dev** %6, align 8
  %28 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = xor i32 %29, -1
  %31 = call i32 @ffs(i32 %30)
  %32 = sub nsw i32 %31, 1
  %33 = load %struct.mt7603_vif*, %struct.mt7603_vif** %5, align 8
  %34 = getelementptr inbounds %struct.mt7603_vif, %struct.mt7603_vif* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load %struct.mt7603_vif*, %struct.mt7603_vif** %5, align 8
  %36 = getelementptr inbounds %struct.mt7603_vif, %struct.mt7603_vif* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @MT7603_MAX_INTERFACES, align 4
  %39 = icmp sge i32 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %2
  %41 = load i32, i32* @ENOSPC, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %11, align 4
  br label %156

43:                                               ; preds = %2
  %44 = load %struct.mt7603_dev*, %struct.mt7603_dev** %6, align 8
  %45 = load %struct.mt7603_vif*, %struct.mt7603_vif** %5, align 8
  %46 = getelementptr inbounds %struct.mt7603_vif, %struct.mt7603_vif* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @MT_MAC_ADDR0(i32 %47)
  %49 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %50 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @get_unaligned_le32(i64 %51)
  %53 = call i32 @mt76_wr(%struct.mt7603_dev* %44, i32 %48, i32 %52)
  %54 = load %struct.mt7603_dev*, %struct.mt7603_dev** %6, align 8
  %55 = load %struct.mt7603_vif*, %struct.mt7603_vif** %5, align 8
  %56 = getelementptr inbounds %struct.mt7603_vif, %struct.mt7603_vif* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @MT_MAC_ADDR1(i32 %57)
  %59 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %60 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %61, 4
  %63 = call i32 @get_unaligned_le16(i64 %62)
  %64 = load i32, i32* @MT_MAC_ADDR1_VALID, align 4
  %65 = or i32 %63, %64
  %66 = call i32 @mt76_wr(%struct.mt7603_dev* %54, i32 %58, i32 %65)
  %67 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %68 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %96

72:                                               ; preds = %43
  %73 = load %struct.mt7603_dev*, %struct.mt7603_dev** %6, align 8
  %74 = load %struct.mt7603_vif*, %struct.mt7603_vif** %5, align 8
  %75 = getelementptr inbounds %struct.mt7603_vif, %struct.mt7603_vif* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @MT_BSSID0(i32 %76)
  %78 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %79 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @get_unaligned_le32(i64 %80)
  %82 = call i32 @mt76_wr(%struct.mt7603_dev* %73, i32 %77, i32 %81)
  %83 = load %struct.mt7603_dev*, %struct.mt7603_dev** %6, align 8
  %84 = load %struct.mt7603_vif*, %struct.mt7603_vif** %5, align 8
  %85 = getelementptr inbounds %struct.mt7603_vif, %struct.mt7603_vif* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @MT_BSSID1(i32 %86)
  %88 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %89 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = add nsw i64 %90, 4
  %92 = call i32 @get_unaligned_le16(i64 %91)
  %93 = load i32, i32* @MT_BSSID1_VALID, align 4
  %94 = or i32 %92, %93
  %95 = call i32 @mt76_wr(%struct.mt7603_dev* %83, i32 %87, i32 %94)
  br label %96

96:                                               ; preds = %72, %43
  %97 = load i32, i32* @MT7603_WTBL_RESERVED, align 4
  %98 = sub nsw i32 %97, 1
  %99 = load %struct.mt7603_vif*, %struct.mt7603_vif** %5, align 8
  %100 = getelementptr inbounds %struct.mt7603_vif, %struct.mt7603_vif* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = sub nsw i32 %98, %101
  store i32 %102, i32* %10, align 4
  %103 = load %struct.mt7603_vif*, %struct.mt7603_vif** %5, align 8
  %104 = getelementptr inbounds %struct.mt7603_vif, %struct.mt7603_vif* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @BIT(i32 %105)
  %107 = load %struct.mt7603_dev*, %struct.mt7603_dev** %6, align 8
  %108 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = or i32 %109, %106
  store i32 %110, i32* %108, align 8
  %111 = load i32, i32* %10, align 4
  %112 = load %struct.mt7603_vif*, %struct.mt7603_vif** %5, align 8
  %113 = getelementptr inbounds %struct.mt7603_vif, %struct.mt7603_vif* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 0
  store i32 %111, i32* %115, align 4
  %116 = load %struct.mt7603_vif*, %struct.mt7603_vif** %5, align 8
  %117 = getelementptr inbounds %struct.mt7603_vif, %struct.mt7603_vif* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 1
  store i32 -1, i32* %119, align 4
  %120 = call i32 @eth_broadcast_addr(i32* %22)
  %121 = load %struct.mt7603_dev*, %struct.mt7603_dev** %6, align 8
  %122 = load i32, i32* %10, align 4
  %123 = load %struct.mt7603_vif*, %struct.mt7603_vif** %5, align 8
  %124 = getelementptr inbounds %struct.mt7603_vif, %struct.mt7603_vif* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @mt7603_wtbl_init(%struct.mt7603_dev* %121, i32 %122, i32 %125, i32* %22)
  %127 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %128 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %127, i32 0, i32 1
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = inttoptr i64 %131 to %struct.mt76_txq*
  store %struct.mt76_txq* %132, %struct.mt76_txq** %7, align 8
  %133 = load %struct.mt7603_vif*, %struct.mt7603_vif** %5, align 8
  %134 = getelementptr inbounds %struct.mt7603_vif, %struct.mt7603_vif* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 0
  %136 = load %struct.mt76_txq*, %struct.mt76_txq** %7, align 8
  %137 = getelementptr inbounds %struct.mt76_txq, %struct.mt76_txq* %136, i32 0, i32 0
  store %struct.TYPE_6__* %135, %struct.TYPE_6__** %137, align 8
  %138 = load %struct.mt7603_dev*, %struct.mt7603_dev** %6, align 8
  %139 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %138, i32 0, i32 0
  %140 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %141 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %140, i32 0, i32 1
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** %141, align 8
  %143 = call i32 @mt76_txq_init(%struct.TYPE_7__* %139, %struct.TYPE_8__* %142)
  %144 = load %struct.mt7603_dev*, %struct.mt7603_dev** %6, align 8
  %145 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 1
  %147 = load i32*, i32** %146, align 8
  %148 = load i32, i32* %10, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %147, i64 %149
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.mt7603_vif*, %struct.mt7603_vif** %5, align 8
  %153 = getelementptr inbounds %struct.mt7603_vif, %struct.mt7603_vif* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i32 0, i32 0
  %155 = call i32 @rcu_assign_pointer(i32 %151, %struct.TYPE_6__* %154)
  br label %156

156:                                              ; preds = %96, %40
  %157 = load %struct.mt7603_dev*, %struct.mt7603_dev** %6, align 8
  %158 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i32 0, i32 0
  %160 = call i32 @mutex_unlock(i32* %159)
  %161 = load i32, i32* %11, align 4
  %162 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %162)
  ret i32 %161
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local i32 @ffs(i32) #2

declare dso_local i32 @mt76_wr(%struct.mt7603_dev*, i32, i32) #2

declare dso_local i32 @MT_MAC_ADDR0(i32) #2

declare dso_local i32 @get_unaligned_le32(i64) #2

declare dso_local i32 @MT_MAC_ADDR1(i32) #2

declare dso_local i32 @get_unaligned_le16(i64) #2

declare dso_local i32 @MT_BSSID0(i32) #2

declare dso_local i32 @MT_BSSID1(i32) #2

declare dso_local i32 @BIT(i32) #2

declare dso_local i32 @eth_broadcast_addr(i32*) #2

declare dso_local i32 @mt7603_wtbl_init(%struct.mt7603_dev*, i32, i32, i32*) #2

declare dso_local i32 @mt76_txq_init(%struct.TYPE_7__*, %struct.TYPE_8__*) #2

declare dso_local i32 @rcu_assign_pointer(i32, %struct.TYPE_6__*) #2

declare dso_local i32 @mutex_unlock(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
