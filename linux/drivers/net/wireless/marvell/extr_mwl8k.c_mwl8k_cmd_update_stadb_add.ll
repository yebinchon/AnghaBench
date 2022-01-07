; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/extr_mwl8k.c_mwl8k_cmd_update_stadb_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/extr_mwl8k.c_mwl8k_cmd_update_stadb_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 }
%struct.ieee80211_vif = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.ieee80211_sta = type { i32*, %struct.TYPE_13__, i32 }
%struct.TYPE_13__ = type { i32, i32, i32, %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.mwl8k_cmd_update_stadb = type { %struct.TYPE_14__, %struct.peer_capability_info, i32, i32 }
%struct.TYPE_14__ = type { i8*, i8* }
%struct.peer_capability_info = type { i32, i32, i32, i64, i32, i32, i8*, i32, i8*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MWL8K_CMD_UPDATE_STADB = common dso_local global i32 0, align 4
@MWL8K_STA_DB_MODIFY_ENTRY = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@MWL8K_PEER_TYPE_ACCESSPOINT = common dso_local global i32 0, align 4
@NL80211_BAND_2GHZ = common dso_local global i64 0, align 8
@NL80211_BAND_5GHZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.ieee80211_vif*, %struct.ieee80211_sta*)* @mwl8k_cmd_update_stadb_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwl8k_cmd_update_stadb_add(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_sta* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.ieee80211_sta*, align 8
  %8 = alloca %struct.mwl8k_cmd_update_stadb*, align 8
  %9 = alloca %struct.peer_capability_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store %struct.ieee80211_sta* %2, %struct.ieee80211_sta** %7, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.mwl8k_cmd_update_stadb* @kzalloc(i32 88, i32 %12)
  store %struct.mwl8k_cmd_update_stadb* %13, %struct.mwl8k_cmd_update_stadb** %8, align 8
  %14 = load %struct.mwl8k_cmd_update_stadb*, %struct.mwl8k_cmd_update_stadb** %8, align 8
  %15 = icmp eq %struct.mwl8k_cmd_update_stadb* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %137

19:                                               ; preds = %3
  %20 = load i32, i32* @MWL8K_CMD_UPDATE_STADB, align 4
  %21 = call i8* @cpu_to_le16(i32 %20)
  %22 = load %struct.mwl8k_cmd_update_stadb*, %struct.mwl8k_cmd_update_stadb** %8, align 8
  %23 = getelementptr inbounds %struct.mwl8k_cmd_update_stadb, %struct.mwl8k_cmd_update_stadb* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 1
  store i8* %21, i8** %24, align 8
  %25 = call i8* @cpu_to_le16(i32 88)
  %26 = load %struct.mwl8k_cmd_update_stadb*, %struct.mwl8k_cmd_update_stadb** %8, align 8
  %27 = getelementptr inbounds %struct.mwl8k_cmd_update_stadb, %struct.mwl8k_cmd_update_stadb* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 0
  store i8* %25, i8** %28, align 8
  %29 = load i32, i32* @MWL8K_STA_DB_MODIFY_ENTRY, align 4
  %30 = call i32 @cpu_to_le32(i32 %29)
  %31 = load %struct.mwl8k_cmd_update_stadb*, %struct.mwl8k_cmd_update_stadb** %8, align 8
  %32 = getelementptr inbounds %struct.mwl8k_cmd_update_stadb, %struct.mwl8k_cmd_update_stadb* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 4
  %33 = load %struct.mwl8k_cmd_update_stadb*, %struct.mwl8k_cmd_update_stadb** %8, align 8
  %34 = getelementptr inbounds %struct.mwl8k_cmd_update_stadb, %struct.mwl8k_cmd_update_stadb* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %37 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @ETH_ALEN, align 4
  %40 = call i32 @memcpy(i32 %35, i32 %38, i32 %39)
  %41 = load %struct.mwl8k_cmd_update_stadb*, %struct.mwl8k_cmd_update_stadb** %8, align 8
  %42 = getelementptr inbounds %struct.mwl8k_cmd_update_stadb, %struct.mwl8k_cmd_update_stadb* %41, i32 0, i32 1
  store %struct.peer_capability_info* %42, %struct.peer_capability_info** %9, align 8
  %43 = load i32, i32* @MWL8K_PEER_TYPE_ACCESSPOINT, align 4
  %44 = load %struct.peer_capability_info*, %struct.peer_capability_info** %9, align 8
  %45 = getelementptr inbounds %struct.peer_capability_info, %struct.peer_capability_info* %44, i32 0, i32 9
  store i32 %43, i32* %45, align 8
  %46 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %47 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i8* @cpu_to_le16(i32 %49)
  %51 = load %struct.peer_capability_info*, %struct.peer_capability_info** %9, align 8
  %52 = getelementptr inbounds %struct.peer_capability_info, %struct.peer_capability_info* %51, i32 0, i32 8
  store i8* %50, i8** %52, align 8
  %53 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %54 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.peer_capability_info*, %struct.peer_capability_info** %9, align 8
  %58 = getelementptr inbounds %struct.peer_capability_info, %struct.peer_capability_info* %57, i32 0, i32 7
  store i32 %56, i32* %58, align 8
  %59 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %60 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i8* @cpu_to_le16(i32 %62)
  %64 = load %struct.peer_capability_info*, %struct.peer_capability_info** %9, align 8
  %65 = getelementptr inbounds %struct.peer_capability_info, %struct.peer_capability_info* %64, i32 0, i32 6
  store i8* %63, i8** %65, align 8
  %66 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %67 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = and i32 %69, 3
  %71 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %72 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = and i32 %74, 7
  %76 = shl i32 %75, 2
  %77 = or i32 %70, %76
  %78 = load %struct.peer_capability_info*, %struct.peer_capability_info** %9, align 8
  %79 = getelementptr inbounds %struct.peer_capability_info, %struct.peer_capability_info* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 8
  %80 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %81 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %96

89:                                               ; preds = %19
  %90 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %91 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %94 = getelementptr inbounds i32, i32* %92, i64 %93
  %95 = load i32, i32* %94, align 4
  store i32 %95, i32* %10, align 4
  br label %104

96:                                               ; preds = %19
  %97 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %98 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %101 = getelementptr inbounds i32, i32* %99, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = shl i32 %102, 5
  store i32 %103, i32* %10, align 4
  br label %104

104:                                              ; preds = %96, %89
  %105 = load %struct.peer_capability_info*, %struct.peer_capability_info** %9, align 8
  %106 = getelementptr inbounds %struct.peer_capability_info, %struct.peer_capability_info* %105, i32 0, i32 5
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %10, align 4
  %109 = call i32 @legacy_rate_mask_to_array(i32 %107, i32 %108)
  %110 = load %struct.peer_capability_info*, %struct.peer_capability_info** %9, align 8
  %111 = getelementptr inbounds %struct.peer_capability_info, %struct.peer_capability_info* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %114 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 3
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @memcpy(i32 %112, i32 %117, i32 16)
  %119 = load %struct.peer_capability_info*, %struct.peer_capability_info** %9, align 8
  %120 = getelementptr inbounds %struct.peer_capability_info, %struct.peer_capability_info* %119, i32 0, i32 1
  store i32 1, i32* %120, align 4
  %121 = load %struct.peer_capability_info*, %struct.peer_capability_info** %9, align 8
  %122 = getelementptr inbounds %struct.peer_capability_info, %struct.peer_capability_info* %121, i32 0, i32 3
  store i64 0, i64* %122, align 8
  %123 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %124 = load %struct.mwl8k_cmd_update_stadb*, %struct.mwl8k_cmd_update_stadb** %8, align 8
  %125 = getelementptr inbounds %struct.mwl8k_cmd_update_stadb, %struct.mwl8k_cmd_update_stadb* %124, i32 0, i32 0
  %126 = call i32 @mwl8k_post_cmd(%struct.ieee80211_hw* %123, %struct.TYPE_14__* %125)
  store i32 %126, i32* %11, align 4
  %127 = load i32, i32* %11, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %133, label %129

129:                                              ; preds = %104
  %130 = load %struct.peer_capability_info*, %struct.peer_capability_info** %9, align 8
  %131 = getelementptr inbounds %struct.peer_capability_info, %struct.peer_capability_info* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  store i32 %132, i32* %11, align 4
  br label %133

133:                                              ; preds = %129, %104
  %134 = load %struct.mwl8k_cmd_update_stadb*, %struct.mwl8k_cmd_update_stadb** %8, align 8
  %135 = call i32 @kfree(%struct.mwl8k_cmd_update_stadb* %134)
  %136 = load i32, i32* %11, align 4
  store i32 %136, i32* %4, align 4
  br label %137

137:                                              ; preds = %133, %16
  %138 = load i32, i32* %4, align 4
  ret i32 %138
}

declare dso_local %struct.mwl8k_cmd_update_stadb* @kzalloc(i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @legacy_rate_mask_to_array(i32, i32) #1

declare dso_local i32 @mwl8k_post_cmd(%struct.ieee80211_hw*, %struct.TYPE_14__*) #1

declare dso_local i32 @kfree(%struct.mwl8k_cmd_update_stadb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
