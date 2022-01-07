; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/extr_mwl8k.c_mwl8k_cmd_set_new_stn_del.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/extr_mwl8k.c_mwl8k_cmd_set_new_stn_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.mwl8k_priv* }
%struct.mwl8k_priv = type { i32, %struct.mwl8k_ampdu_stream* }
%struct.mwl8k_ampdu_stream = type { i64, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.mwl8k_cmd_set_new_stn = type { %struct.TYPE_4__, i8*, i32 }
%struct.TYPE_4__ = type { i8*, i8* }

@MWL8K_NUM_AMPDU_STREAMS = common dso_local global i32 0, align 4
@AMPDU_NO_STREAM = common dso_local global i64 0, align 8
@ETH_ALEN = common dso_local global i32 0, align 4
@AMPDU_STREAM_ACTIVE = common dso_local global i64 0, align 8
@AMPDU_STREAM_NEW = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MWL8K_CMD_SET_NEW_STN = common dso_local global i32 0, align 4
@MWL8K_STA_ACTION_REMOVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.ieee80211_vif*, i32*)* @mwl8k_cmd_set_new_stn_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwl8k_cmd_set_new_stn_del(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.mwl8k_cmd_set_new_stn*, align 8
  %9 = alloca %struct.mwl8k_priv*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.mwl8k_ampdu_stream*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store i32* %2, i32** %7, align 8
  %14 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %15 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %14, i32 0, i32 0
  %16 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %15, align 8
  store %struct.mwl8k_priv* %16, %struct.mwl8k_priv** %9, align 8
  %17 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %9, align 8
  %18 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %17, i32 0, i32 0
  %19 = call i32 @spin_lock(i32* %18)
  store i32 0, i32* %11, align 4
  br label %20

20:                                               ; preds = %79, %3
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* @MWL8K_NUM_AMPDU_STREAMS, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %82

24:                                               ; preds = %20
  %25 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %9, align 8
  %26 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %25, i32 0, i32 1
  %27 = load %struct.mwl8k_ampdu_stream*, %struct.mwl8k_ampdu_stream** %26, align 8
  %28 = load i32, i32* %11, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.mwl8k_ampdu_stream, %struct.mwl8k_ampdu_stream* %27, i64 %29
  store %struct.mwl8k_ampdu_stream* %30, %struct.mwl8k_ampdu_stream** %13, align 8
  %31 = load %struct.mwl8k_ampdu_stream*, %struct.mwl8k_ampdu_stream** %13, align 8
  %32 = getelementptr inbounds %struct.mwl8k_ampdu_stream, %struct.mwl8k_ampdu_stream* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @AMPDU_NO_STREAM, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %78

36:                                               ; preds = %24
  %37 = load %struct.mwl8k_ampdu_stream*, %struct.mwl8k_ampdu_stream** %13, align 8
  %38 = getelementptr inbounds %struct.mwl8k_ampdu_stream, %struct.mwl8k_ampdu_stream* %37, i32 0, i32 2
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32*, i32** %7, align 8
  %43 = load i32, i32* @ETH_ALEN, align 4
  %44 = call i64 @memcmp(i32 %41, i32* %42, i32 %43)
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %77

46:                                               ; preds = %36
  %47 = load %struct.mwl8k_ampdu_stream*, %struct.mwl8k_ampdu_stream** %13, align 8
  %48 = getelementptr inbounds %struct.mwl8k_ampdu_stream, %struct.mwl8k_ampdu_stream* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @AMPDU_STREAM_ACTIVE, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %65

52:                                               ; preds = %46
  %53 = load %struct.mwl8k_ampdu_stream*, %struct.mwl8k_ampdu_stream** %13, align 8
  %54 = getelementptr inbounds %struct.mwl8k_ampdu_stream, %struct.mwl8k_ampdu_stream* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  store i32 %55, i32* %12, align 4
  %56 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %9, align 8
  %57 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %56, i32 0, i32 0
  %58 = call i32 @spin_unlock(i32* %57)
  %59 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %60 = load i32, i32* %12, align 4
  %61 = call i32 @mwl8k_destroy_ba(%struct.ieee80211_hw* %59, i32 %60)
  %62 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %9, align 8
  %63 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %62, i32 0, i32 0
  %64 = call i32 @spin_lock(i32* %63)
  br label %76

65:                                               ; preds = %46
  %66 = load %struct.mwl8k_ampdu_stream*, %struct.mwl8k_ampdu_stream** %13, align 8
  %67 = getelementptr inbounds %struct.mwl8k_ampdu_stream, %struct.mwl8k_ampdu_stream* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @AMPDU_STREAM_NEW, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %65
  %72 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %73 = load %struct.mwl8k_ampdu_stream*, %struct.mwl8k_ampdu_stream** %13, align 8
  %74 = call i32 @mwl8k_remove_stream(%struct.ieee80211_hw* %72, %struct.mwl8k_ampdu_stream* %73)
  br label %75

75:                                               ; preds = %71, %65
  br label %76

76:                                               ; preds = %75, %52
  br label %77

77:                                               ; preds = %76, %36
  br label %78

78:                                               ; preds = %77, %24
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %11, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %11, align 4
  br label %20

82:                                               ; preds = %20
  %83 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %9, align 8
  %84 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %83, i32 0, i32 0
  %85 = call i32 @spin_unlock(i32* %84)
  %86 = load i32, i32* @GFP_KERNEL, align 4
  %87 = call %struct.mwl8k_cmd_set_new_stn* @kzalloc(i32 32, i32 %86)
  store %struct.mwl8k_cmd_set_new_stn* %87, %struct.mwl8k_cmd_set_new_stn** %8, align 8
  %88 = load %struct.mwl8k_cmd_set_new_stn*, %struct.mwl8k_cmd_set_new_stn** %8, align 8
  %89 = icmp eq %struct.mwl8k_cmd_set_new_stn* %88, null
  br i1 %89, label %90, label %93

90:                                               ; preds = %82
  %91 = load i32, i32* @ENOMEM, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %4, align 4
  br label %121

93:                                               ; preds = %82
  %94 = load i32, i32* @MWL8K_CMD_SET_NEW_STN, align 4
  %95 = call i8* @cpu_to_le16(i32 %94)
  %96 = load %struct.mwl8k_cmd_set_new_stn*, %struct.mwl8k_cmd_set_new_stn** %8, align 8
  %97 = getelementptr inbounds %struct.mwl8k_cmd_set_new_stn, %struct.mwl8k_cmd_set_new_stn* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 1
  store i8* %95, i8** %98, align 8
  %99 = call i8* @cpu_to_le16(i32 32)
  %100 = load %struct.mwl8k_cmd_set_new_stn*, %struct.mwl8k_cmd_set_new_stn** %8, align 8
  %101 = getelementptr inbounds %struct.mwl8k_cmd_set_new_stn, %struct.mwl8k_cmd_set_new_stn* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  store i8* %99, i8** %102, align 8
  %103 = load %struct.mwl8k_cmd_set_new_stn*, %struct.mwl8k_cmd_set_new_stn** %8, align 8
  %104 = getelementptr inbounds %struct.mwl8k_cmd_set_new_stn, %struct.mwl8k_cmd_set_new_stn* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = load i32*, i32** %7, align 8
  %107 = load i32, i32* @ETH_ALEN, align 4
  %108 = call i32 @memcpy(i32 %105, i32* %106, i32 %107)
  %109 = load i32, i32* @MWL8K_STA_ACTION_REMOVE, align 4
  %110 = call i8* @cpu_to_le16(i32 %109)
  %111 = load %struct.mwl8k_cmd_set_new_stn*, %struct.mwl8k_cmd_set_new_stn** %8, align 8
  %112 = getelementptr inbounds %struct.mwl8k_cmd_set_new_stn, %struct.mwl8k_cmd_set_new_stn* %111, i32 0, i32 1
  store i8* %110, i8** %112, align 8
  %113 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %114 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %115 = load %struct.mwl8k_cmd_set_new_stn*, %struct.mwl8k_cmd_set_new_stn** %8, align 8
  %116 = getelementptr inbounds %struct.mwl8k_cmd_set_new_stn, %struct.mwl8k_cmd_set_new_stn* %115, i32 0, i32 0
  %117 = call i32 @mwl8k_post_pervif_cmd(%struct.ieee80211_hw* %113, %struct.ieee80211_vif* %114, %struct.TYPE_4__* %116)
  store i32 %117, i32* %10, align 4
  %118 = load %struct.mwl8k_cmd_set_new_stn*, %struct.mwl8k_cmd_set_new_stn** %8, align 8
  %119 = call i32 @kfree(%struct.mwl8k_cmd_set_new_stn* %118)
  %120 = load i32, i32* %10, align 4
  store i32 %120, i32* %4, align 4
  br label %121

121:                                              ; preds = %93, %90
  %122 = load i32, i32* %4, align 4
  ret i32 %122
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @memcmp(i32, i32*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @mwl8k_destroy_ba(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @mwl8k_remove_stream(%struct.ieee80211_hw*, %struct.mwl8k_ampdu_stream*) #1

declare dso_local %struct.mwl8k_cmd_set_new_stn* @kzalloc(i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @mwl8k_post_pervif_cmd(%struct.ieee80211_hw*, %struct.ieee80211_vif*, %struct.TYPE_4__*) #1

declare dso_local i32 @kfree(%struct.mwl8k_cmd_set_new_stn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
