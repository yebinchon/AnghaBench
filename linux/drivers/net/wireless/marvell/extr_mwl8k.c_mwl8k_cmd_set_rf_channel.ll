; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/extr_mwl8k.c_mwl8k_cmd_set_rf_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/extr_mwl8k.c_mwl8k_cmd_set_rf_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.mwl8k_priv* }
%struct.mwl8k_priv = type { i64, %struct.ieee80211_channel*, i64 }
%struct.ieee80211_channel = type { i64, i32 }
%struct.ieee80211_conf = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.ieee80211_channel* }
%struct.mwl8k_cmd_set_rf_channel = type { %struct.TYPE_3__, i32, i32, i8* }
%struct.TYPE_3__ = type { i8*, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MWL8K_CMD_SET_RF_CHANNEL = common dso_local global i32 0, align 4
@MWL8K_CMD_SET = common dso_local global i32 0, align 4
@NL80211_BAND_2GHZ = common dso_local global i64 0, align 8
@NL80211_BAND_5GHZ = common dso_local global i64 0, align 8
@NL80211_CHAN_NO_HT = common dso_local global i32 0, align 4
@NL80211_CHAN_HT20 = common dso_local global i32 0, align 4
@NL80211_CHAN_HT40MINUS = common dso_local global i32 0, align 4
@NL80211_CHAN_HT40PLUS = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.ieee80211_conf*)* @mwl8k_cmd_set_rf_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwl8k_cmd_set_rf_channel(%struct.ieee80211_hw* %0, %struct.ieee80211_conf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca %struct.ieee80211_conf*, align 8
  %6 = alloca %struct.ieee80211_channel*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mwl8k_cmd_set_rf_channel*, align 8
  %9 = alloca %struct.mwl8k_priv*, align 8
  %10 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store %struct.ieee80211_conf* %1, %struct.ieee80211_conf** %5, align 8
  %11 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %5, align 8
  %12 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %13, align 8
  store %struct.ieee80211_channel* %14, %struct.ieee80211_channel** %6, align 8
  %15 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %5, align 8
  %16 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %15, i32 0, i32 0
  %17 = call i32 @cfg80211_get_chandef_type(%struct.TYPE_4__* %16)
  store i32 %17, i32* %7, align 4
  %18 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %19 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %18, i32 0, i32 0
  %20 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %19, align 8
  store %struct.mwl8k_priv* %20, %struct.mwl8k_priv** %9, align 8
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.mwl8k_cmd_set_rf_channel* @kzalloc(i32 32, i32 %21)
  store %struct.mwl8k_cmd_set_rf_channel* %22, %struct.mwl8k_cmd_set_rf_channel** %8, align 8
  %23 = load %struct.mwl8k_cmd_set_rf_channel*, %struct.mwl8k_cmd_set_rf_channel** %8, align 8
  %24 = icmp eq %struct.mwl8k_cmd_set_rf_channel* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %2
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %150

28:                                               ; preds = %2
  %29 = load i32, i32* @MWL8K_CMD_SET_RF_CHANNEL, align 4
  %30 = call i8* @cpu_to_le16(i32 %29)
  %31 = load %struct.mwl8k_cmd_set_rf_channel*, %struct.mwl8k_cmd_set_rf_channel** %8, align 8
  %32 = getelementptr inbounds %struct.mwl8k_cmd_set_rf_channel, %struct.mwl8k_cmd_set_rf_channel* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  store i8* %30, i8** %33, align 8
  %34 = call i8* @cpu_to_le16(i32 32)
  %35 = load %struct.mwl8k_cmd_set_rf_channel*, %struct.mwl8k_cmd_set_rf_channel** %8, align 8
  %36 = getelementptr inbounds %struct.mwl8k_cmd_set_rf_channel, %struct.mwl8k_cmd_set_rf_channel* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  store i8* %34, i8** %37, align 8
  %38 = load i32, i32* @MWL8K_CMD_SET, align 4
  %39 = call i8* @cpu_to_le16(i32 %38)
  %40 = load %struct.mwl8k_cmd_set_rf_channel*, %struct.mwl8k_cmd_set_rf_channel** %8, align 8
  %41 = getelementptr inbounds %struct.mwl8k_cmd_set_rf_channel, %struct.mwl8k_cmd_set_rf_channel* %40, i32 0, i32 3
  store i8* %39, i8** %41, align 8
  %42 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %43 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.mwl8k_cmd_set_rf_channel*, %struct.mwl8k_cmd_set_rf_channel** %8, align 8
  %46 = getelementptr inbounds %struct.mwl8k_cmd_set_rf_channel, %struct.mwl8k_cmd_set_rf_channel* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 4
  %47 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %48 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %28
  %53 = call i32 @cpu_to_le32(i32 1)
  %54 = load %struct.mwl8k_cmd_set_rf_channel*, %struct.mwl8k_cmd_set_rf_channel** %8, align 8
  %55 = getelementptr inbounds %struct.mwl8k_cmd_set_rf_channel, %struct.mwl8k_cmd_set_rf_channel* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = or i32 %56, %53
  store i32 %57, i32* %55, align 8
  br label %71

58:                                               ; preds = %28
  %59 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %60 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %70

64:                                               ; preds = %58
  %65 = call i32 @cpu_to_le32(i32 4)
  %66 = load %struct.mwl8k_cmd_set_rf_channel*, %struct.mwl8k_cmd_set_rf_channel** %8, align 8
  %67 = getelementptr inbounds %struct.mwl8k_cmd_set_rf_channel, %struct.mwl8k_cmd_set_rf_channel* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = or i32 %68, %65
  store i32 %69, i32* %67, align 8
  br label %70

70:                                               ; preds = %64, %58
  br label %71

71:                                               ; preds = %70, %52
  %72 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %9, align 8
  %73 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %113, label %76

76:                                               ; preds = %71
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* @NL80211_CHAN_NO_HT, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %84, label %80

80:                                               ; preds = %76
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* @NL80211_CHAN_HT20, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %90

84:                                               ; preds = %80, %76
  %85 = call i32 @cpu_to_le32(i32 128)
  %86 = load %struct.mwl8k_cmd_set_rf_channel*, %struct.mwl8k_cmd_set_rf_channel** %8, align 8
  %87 = getelementptr inbounds %struct.mwl8k_cmd_set_rf_channel, %struct.mwl8k_cmd_set_rf_channel* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = or i32 %88, %85
  store i32 %89, i32* %87, align 8
  br label %112

90:                                               ; preds = %80
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* @NL80211_CHAN_HT40MINUS, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %100

94:                                               ; preds = %90
  %95 = call i32 @cpu_to_le32(i32 6400)
  %96 = load %struct.mwl8k_cmd_set_rf_channel*, %struct.mwl8k_cmd_set_rf_channel** %8, align 8
  %97 = getelementptr inbounds %struct.mwl8k_cmd_set_rf_channel, %struct.mwl8k_cmd_set_rf_channel* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = or i32 %98, %95
  store i32 %99, i32* %97, align 8
  br label %111

100:                                              ; preds = %90
  %101 = load i32, i32* %7, align 4
  %102 = load i32, i32* @NL80211_CHAN_HT40PLUS, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %110

104:                                              ; preds = %100
  %105 = call i32 @cpu_to_le32(i32 2304)
  %106 = load %struct.mwl8k_cmd_set_rf_channel*, %struct.mwl8k_cmd_set_rf_channel** %8, align 8
  %107 = getelementptr inbounds %struct.mwl8k_cmd_set_rf_channel, %struct.mwl8k_cmd_set_rf_channel* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = or i32 %108, %105
  store i32 %109, i32* %107, align 8
  br label %110

110:                                              ; preds = %104, %100
  br label %111

111:                                              ; preds = %110, %94
  br label %112

112:                                              ; preds = %111, %84
  br label %119

113:                                              ; preds = %71
  %114 = call i32 @cpu_to_le32(i32 128)
  %115 = load %struct.mwl8k_cmd_set_rf_channel*, %struct.mwl8k_cmd_set_rf_channel** %8, align 8
  %116 = getelementptr inbounds %struct.mwl8k_cmd_set_rf_channel, %struct.mwl8k_cmd_set_rf_channel* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = or i32 %117, %114
  store i32 %118, i32* %116, align 8
  br label %119

119:                                              ; preds = %113, %112
  %120 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %9, align 8
  %121 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %120, i32 0, i32 2
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %142

124:                                              ; preds = %119
  %125 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %9, align 8
  %126 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %135

129:                                              ; preds = %124
  %130 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %9, align 8
  %131 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %9, align 8
  %132 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %131, i32 0, i32 1
  %133 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %132, align 8
  %134 = call i32 @mwl8k_update_survey(%struct.mwl8k_priv* %130, %struct.ieee80211_channel* %133)
  br label %135

135:                                              ; preds = %129, %124
  %136 = load i64, i64* @jiffies, align 8
  %137 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %9, align 8
  %138 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %137, i32 0, i32 0
  store i64 %136, i64* %138, align 8
  %139 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %140 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %9, align 8
  %141 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %140, i32 0, i32 1
  store %struct.ieee80211_channel* %139, %struct.ieee80211_channel** %141, align 8
  br label %142

142:                                              ; preds = %135, %119
  %143 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %144 = load %struct.mwl8k_cmd_set_rf_channel*, %struct.mwl8k_cmd_set_rf_channel** %8, align 8
  %145 = getelementptr inbounds %struct.mwl8k_cmd_set_rf_channel, %struct.mwl8k_cmd_set_rf_channel* %144, i32 0, i32 0
  %146 = call i32 @mwl8k_post_cmd(%struct.ieee80211_hw* %143, %struct.TYPE_3__* %145)
  store i32 %146, i32* %10, align 4
  %147 = load %struct.mwl8k_cmd_set_rf_channel*, %struct.mwl8k_cmd_set_rf_channel** %8, align 8
  %148 = call i32 @kfree(%struct.mwl8k_cmd_set_rf_channel* %147)
  %149 = load i32, i32* %10, align 4
  store i32 %149, i32* %3, align 4
  br label %150

150:                                              ; preds = %142, %25
  %151 = load i32, i32* %3, align 4
  ret i32 %151
}

declare dso_local i32 @cfg80211_get_chandef_type(%struct.TYPE_4__*) #1

declare dso_local %struct.mwl8k_cmd_set_rf_channel* @kzalloc(i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @mwl8k_update_survey(%struct.mwl8k_priv*, %struct.ieee80211_channel*) #1

declare dso_local i32 @mwl8k_post_cmd(%struct.ieee80211_hw*, %struct.TYPE_3__*) #1

declare dso_local i32 @kfree(%struct.mwl8k_cmd_set_rf_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
