; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/extr_mwl8k.c_mwl8k_cmd_set_new_stn_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/extr_mwl8k.c_mwl8k_cmd_set_new_stn_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_sta = type { i32, i32*, %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { i32, i32, i32, %struct.TYPE_10__, i64 }
%struct.TYPE_10__ = type { i32* }
%struct.mwl8k_cmd_set_new_stn = type { i32, i32, %struct.TYPE_12__, i8*, i32*, i32, i8*, i8*, i32, i8* }
%struct.TYPE_12__ = type { i8*, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MWL8K_CMD_SET_NEW_STN = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@MWL8K_STA_ACTION_ADD = common dso_local global i32 0, align 4
@NL80211_BAND_2GHZ = common dso_local global i64 0, align 8
@NL80211_BAND_5GHZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.ieee80211_vif*, %struct.ieee80211_sta*)* @mwl8k_cmd_set_new_stn_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwl8k_cmd_set_new_stn_add(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_sta* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.ieee80211_sta*, align 8
  %8 = alloca %struct.mwl8k_cmd_set_new_stn*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store %struct.ieee80211_sta* %2, %struct.ieee80211_sta** %7, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.mwl8k_cmd_set_new_stn* @kzalloc(i32 80, i32 %11)
  store %struct.mwl8k_cmd_set_new_stn* %12, %struct.mwl8k_cmd_set_new_stn** %8, align 8
  %13 = load %struct.mwl8k_cmd_set_new_stn*, %struct.mwl8k_cmd_set_new_stn** %8, align 8
  %14 = icmp eq %struct.mwl8k_cmd_set_new_stn* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %163

18:                                               ; preds = %3
  %19 = load i32, i32* @MWL8K_CMD_SET_NEW_STN, align 4
  %20 = call i8* @cpu_to_le16(i32 %19)
  %21 = load %struct.mwl8k_cmd_set_new_stn*, %struct.mwl8k_cmd_set_new_stn** %8, align 8
  %22 = getelementptr inbounds %struct.mwl8k_cmd_set_new_stn, %struct.mwl8k_cmd_set_new_stn* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 1
  store i8* %20, i8** %23, align 8
  %24 = call i8* @cpu_to_le16(i32 80)
  %25 = load %struct.mwl8k_cmd_set_new_stn*, %struct.mwl8k_cmd_set_new_stn** %8, align 8
  %26 = getelementptr inbounds %struct.mwl8k_cmd_set_new_stn, %struct.mwl8k_cmd_set_new_stn* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  store i8* %24, i8** %27, align 8
  %28 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %29 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i8* @cpu_to_le16(i32 %30)
  %32 = load %struct.mwl8k_cmd_set_new_stn*, %struct.mwl8k_cmd_set_new_stn** %8, align 8
  %33 = getelementptr inbounds %struct.mwl8k_cmd_set_new_stn, %struct.mwl8k_cmd_set_new_stn* %32, i32 0, i32 9
  store i8* %31, i8** %33, align 8
  %34 = load %struct.mwl8k_cmd_set_new_stn*, %struct.mwl8k_cmd_set_new_stn** %8, align 8
  %35 = getelementptr inbounds %struct.mwl8k_cmd_set_new_stn, %struct.mwl8k_cmd_set_new_stn* %34, i32 0, i32 8
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %38 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @ETH_ALEN, align 4
  %41 = call i32 @memcpy(i32 %36, i32 %39, i32 %40)
  %42 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %43 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i8* @cpu_to_le16(i32 %44)
  %46 = load %struct.mwl8k_cmd_set_new_stn*, %struct.mwl8k_cmd_set_new_stn** %8, align 8
  %47 = getelementptr inbounds %struct.mwl8k_cmd_set_new_stn, %struct.mwl8k_cmd_set_new_stn* %46, i32 0, i32 7
  store i8* %45, i8** %47, align 8
  %48 = load i32, i32* @MWL8K_STA_ACTION_ADD, align 4
  %49 = call i8* @cpu_to_le16(i32 %48)
  %50 = load %struct.mwl8k_cmd_set_new_stn*, %struct.mwl8k_cmd_set_new_stn** %8, align 8
  %51 = getelementptr inbounds %struct.mwl8k_cmd_set_new_stn, %struct.mwl8k_cmd_set_new_stn* %50, i32 0, i32 6
  store i8* %49, i8** %51, align 8
  %52 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %53 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %68

61:                                               ; preds = %18
  %62 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %63 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %66 = getelementptr inbounds i32, i32* %64, i64 %65
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %9, align 4
  br label %76

68:                                               ; preds = %18
  %69 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %70 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %73 = getelementptr inbounds i32, i32* %71, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = shl i32 %74, 5
  store i32 %75, i32* %9, align 4
  br label %76

76:                                               ; preds = %68, %61
  %77 = load i32, i32* %9, align 4
  %78 = call i32 @cpu_to_le32(i32 %77)
  %79 = load %struct.mwl8k_cmd_set_new_stn*, %struct.mwl8k_cmd_set_new_stn** %8, align 8
  %80 = getelementptr inbounds %struct.mwl8k_cmd_set_new_stn, %struct.mwl8k_cmd_set_new_stn* %79, i32 0, i32 5
  store i32 %78, i32* %80, align 8
  %81 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %82 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 4
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %154

86:                                               ; preds = %76
  %87 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %88 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 3
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.mwl8k_cmd_set_new_stn*, %struct.mwl8k_cmd_set_new_stn** %8, align 8
  %95 = getelementptr inbounds %struct.mwl8k_cmd_set_new_stn, %struct.mwl8k_cmd_set_new_stn* %94, i32 0, i32 4
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 0
  store i32 %93, i32* %97, align 4
  %98 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %99 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 3
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 1
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.mwl8k_cmd_set_new_stn*, %struct.mwl8k_cmd_set_new_stn** %8, align 8
  %106 = getelementptr inbounds %struct.mwl8k_cmd_set_new_stn, %struct.mwl8k_cmd_set_new_stn* %105, i32 0, i32 4
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 1
  store i32 %104, i32* %108, align 4
  %109 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %110 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 3
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 2
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.mwl8k_cmd_set_new_stn*, %struct.mwl8k_cmd_set_new_stn** %8, align 8
  %117 = getelementptr inbounds %struct.mwl8k_cmd_set_new_stn, %struct.mwl8k_cmd_set_new_stn* %116, i32 0, i32 4
  %118 = load i32*, i32** %117, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 2
  store i32 %115, i32* %119, align 4
  %120 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %121 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 3
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 3
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.mwl8k_cmd_set_new_stn*, %struct.mwl8k_cmd_set_new_stn** %8, align 8
  %128 = getelementptr inbounds %struct.mwl8k_cmd_set_new_stn, %struct.mwl8k_cmd_set_new_stn* %127, i32 0, i32 4
  %129 = load i32*, i32** %128, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 3
  store i32 %126, i32* %130, align 4
  %131 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %132 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %131, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = call i8* @cpu_to_le16(i32 %134)
  %136 = load %struct.mwl8k_cmd_set_new_stn*, %struct.mwl8k_cmd_set_new_stn** %8, align 8
  %137 = getelementptr inbounds %struct.mwl8k_cmd_set_new_stn, %struct.mwl8k_cmd_set_new_stn* %136, i32 0, i32 3
  store i8* %135, i8** %137, align 8
  %138 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %139 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %138, i32 0, i32 2
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = and i32 %141, 3
  %143 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %144 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %143, i32 0, i32 2
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  %147 = and i32 %146, 7
  %148 = shl i32 %147, 2
  %149 = or i32 %142, %148
  %150 = load %struct.mwl8k_cmd_set_new_stn*, %struct.mwl8k_cmd_set_new_stn** %8, align 8
  %151 = getelementptr inbounds %struct.mwl8k_cmd_set_new_stn, %struct.mwl8k_cmd_set_new_stn* %150, i32 0, i32 0
  store i32 %149, i32* %151, align 8
  %152 = load %struct.mwl8k_cmd_set_new_stn*, %struct.mwl8k_cmd_set_new_stn** %8, align 8
  %153 = getelementptr inbounds %struct.mwl8k_cmd_set_new_stn, %struct.mwl8k_cmd_set_new_stn* %152, i32 0, i32 1
  store i32 1, i32* %153, align 4
  br label %154

154:                                              ; preds = %86, %76
  %155 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %156 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %157 = load %struct.mwl8k_cmd_set_new_stn*, %struct.mwl8k_cmd_set_new_stn** %8, align 8
  %158 = getelementptr inbounds %struct.mwl8k_cmd_set_new_stn, %struct.mwl8k_cmd_set_new_stn* %157, i32 0, i32 2
  %159 = call i32 @mwl8k_post_pervif_cmd(%struct.ieee80211_hw* %155, %struct.ieee80211_vif* %156, %struct.TYPE_12__* %158)
  store i32 %159, i32* %10, align 4
  %160 = load %struct.mwl8k_cmd_set_new_stn*, %struct.mwl8k_cmd_set_new_stn** %8, align 8
  %161 = call i32 @kfree(%struct.mwl8k_cmd_set_new_stn* %160)
  %162 = load i32, i32* %10, align 4
  store i32 %162, i32* %4, align 4
  br label %163

163:                                              ; preds = %154, %15
  %164 = load i32, i32* %4, align 4
  ret i32 %164
}

declare dso_local %struct.mwl8k_cmd_set_new_stn* @kzalloc(i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @mwl8k_post_pervif_cmd(%struct.ieee80211_hw*, %struct.ieee80211_vif*, %struct.TYPE_12__*) #1

declare dso_local i32 @kfree(%struct.mwl8k_cmd_set_new_stn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
