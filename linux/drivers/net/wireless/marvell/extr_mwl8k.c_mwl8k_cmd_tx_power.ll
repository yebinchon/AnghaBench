; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/extr_mwl8k.c_mwl8k_cmd_tx_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/extr_mwl8k.c_mwl8k_cmd_tx_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_conf = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.ieee80211_channel* }
%struct.ieee80211_channel = type { i64, i16 }
%struct.mwl8k_cmd_tx_power = type { %struct.TYPE_3__, i8**, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_3__ = type { i8*, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MWL8K_CMD_TX_POWER = common dso_local global i16 0, align 2
@MWL8K_CMD_SET_LIST = common dso_local global i16 0, align 2
@NL80211_BAND_2GHZ = common dso_local global i64 0, align 8
@NL80211_BAND_5GHZ = common dso_local global i64 0, align 8
@NL80211_CHAN_NO_HT = common dso_local global i32 0, align 4
@NL80211_CHAN_HT20 = common dso_local global i32 0, align 4
@NL80211_CHAN_HT40MINUS = common dso_local global i32 0, align 4
@NL80211_CHAN_HT40PLUS = common dso_local global i32 0, align 4
@MWL8K_TX_POWER_LEVEL_TOTAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.ieee80211_conf*, i16)* @mwl8k_cmd_tx_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwl8k_cmd_tx_power(%struct.ieee80211_hw* %0, %struct.ieee80211_conf* %1, i16 zeroext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca %struct.ieee80211_conf*, align 8
  %7 = alloca i16, align 2
  %8 = alloca %struct.ieee80211_channel*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mwl8k_cmd_tx_power*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store %struct.ieee80211_conf* %1, %struct.ieee80211_conf** %6, align 8
  store i16 %2, i16* %7, align 2
  %13 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %6, align 8
  %14 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %15, align 8
  store %struct.ieee80211_channel* %16, %struct.ieee80211_channel** %8, align 8
  %17 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %6, align 8
  %18 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %17, i32 0, i32 0
  %19 = call i32 @cfg80211_get_chandef_type(%struct.TYPE_4__* %18)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.mwl8k_cmd_tx_power* @kzalloc(i32 64, i32 %20)
  store %struct.mwl8k_cmd_tx_power* %21, %struct.mwl8k_cmd_tx_power** %10, align 8
  %22 = load %struct.mwl8k_cmd_tx_power*, %struct.mwl8k_cmd_tx_power** %10, align 8
  %23 = icmp eq %struct.mwl8k_cmd_tx_power* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %125

27:                                               ; preds = %3
  %28 = load i16, i16* @MWL8K_CMD_TX_POWER, align 2
  %29 = call i8* @cpu_to_le16(i16 zeroext %28)
  %30 = load %struct.mwl8k_cmd_tx_power*, %struct.mwl8k_cmd_tx_power** %10, align 8
  %31 = getelementptr inbounds %struct.mwl8k_cmd_tx_power, %struct.mwl8k_cmd_tx_power* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  store i8* %29, i8** %32, align 8
  %33 = call i8* @cpu_to_le16(i16 zeroext 64)
  %34 = load %struct.mwl8k_cmd_tx_power*, %struct.mwl8k_cmd_tx_power** %10, align 8
  %35 = getelementptr inbounds %struct.mwl8k_cmd_tx_power, %struct.mwl8k_cmd_tx_power* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  store i8* %33, i8** %36, align 8
  %37 = load i16, i16* @MWL8K_CMD_SET_LIST, align 2
  %38 = call i8* @cpu_to_le16(i16 zeroext %37)
  %39 = load %struct.mwl8k_cmd_tx_power*, %struct.mwl8k_cmd_tx_power** %10, align 8
  %40 = getelementptr inbounds %struct.mwl8k_cmd_tx_power, %struct.mwl8k_cmd_tx_power* %39, i32 0, i32 6
  store i8* %38, i8** %40, align 8
  %41 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %42 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %27
  %47 = call i8* @cpu_to_le16(i16 zeroext 1)
  %48 = load %struct.mwl8k_cmd_tx_power*, %struct.mwl8k_cmd_tx_power** %10, align 8
  %49 = getelementptr inbounds %struct.mwl8k_cmd_tx_power, %struct.mwl8k_cmd_tx_power* %48, i32 0, i32 5
  store i8* %47, i8** %49, align 8
  br label %61

50:                                               ; preds = %27
  %51 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %52 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %50
  %57 = call i8* @cpu_to_le16(i16 zeroext 4)
  %58 = load %struct.mwl8k_cmd_tx_power*, %struct.mwl8k_cmd_tx_power** %10, align 8
  %59 = getelementptr inbounds %struct.mwl8k_cmd_tx_power, %struct.mwl8k_cmd_tx_power* %58, i32 0, i32 5
  store i8* %57, i8** %59, align 8
  br label %60

60:                                               ; preds = %56, %50
  br label %61

61:                                               ; preds = %60, %46
  %62 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %63 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %62, i32 0, i32 1
  %64 = load i16, i16* %63, align 8
  %65 = call i8* @cpu_to_le16(i16 zeroext %64)
  %66 = load %struct.mwl8k_cmd_tx_power*, %struct.mwl8k_cmd_tx_power** %10, align 8
  %67 = getelementptr inbounds %struct.mwl8k_cmd_tx_power, %struct.mwl8k_cmd_tx_power* %66, i32 0, i32 4
  store i8* %65, i8** %67, align 8
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* @NL80211_CHAN_NO_HT, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %75, label %71

71:                                               ; preds = %61
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* @NL80211_CHAN_HT20, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %71, %61
  %76 = call i8* @cpu_to_le16(i16 zeroext 2)
  %77 = load %struct.mwl8k_cmd_tx_power*, %struct.mwl8k_cmd_tx_power** %10, align 8
  %78 = getelementptr inbounds %struct.mwl8k_cmd_tx_power, %struct.mwl8k_cmd_tx_power* %77, i32 0, i32 3
  store i8* %76, i8** %78, align 8
  br label %100

79:                                               ; preds = %71
  %80 = call i8* @cpu_to_le16(i16 zeroext 4)
  %81 = load %struct.mwl8k_cmd_tx_power*, %struct.mwl8k_cmd_tx_power** %10, align 8
  %82 = getelementptr inbounds %struct.mwl8k_cmd_tx_power, %struct.mwl8k_cmd_tx_power* %81, i32 0, i32 3
  store i8* %80, i8** %82, align 8
  %83 = load i32, i32* %9, align 4
  %84 = load i32, i32* @NL80211_CHAN_HT40MINUS, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %90

86:                                               ; preds = %79
  %87 = call i8* @cpu_to_le16(i16 zeroext 3)
  %88 = load %struct.mwl8k_cmd_tx_power*, %struct.mwl8k_cmd_tx_power** %10, align 8
  %89 = getelementptr inbounds %struct.mwl8k_cmd_tx_power, %struct.mwl8k_cmd_tx_power* %88, i32 0, i32 2
  store i8* %87, i8** %89, align 8
  br label %99

90:                                               ; preds = %79
  %91 = load i32, i32* %9, align 4
  %92 = load i32, i32* @NL80211_CHAN_HT40PLUS, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %98

94:                                               ; preds = %90
  %95 = call i8* @cpu_to_le16(i16 zeroext 1)
  %96 = load %struct.mwl8k_cmd_tx_power*, %struct.mwl8k_cmd_tx_power** %10, align 8
  %97 = getelementptr inbounds %struct.mwl8k_cmd_tx_power, %struct.mwl8k_cmd_tx_power* %96, i32 0, i32 2
  store i8* %95, i8** %97, align 8
  br label %98

98:                                               ; preds = %94, %90
  br label %99

99:                                               ; preds = %98, %86
  br label %100

100:                                              ; preds = %99, %75
  store i32 0, i32* %12, align 4
  br label %101

101:                                              ; preds = %114, %100
  %102 = load i32, i32* %12, align 4
  %103 = load i32, i32* @MWL8K_TX_POWER_LEVEL_TOTAL, align 4
  %104 = icmp slt i32 %102, %103
  br i1 %104, label %105, label %117

105:                                              ; preds = %101
  %106 = load i16, i16* %7, align 2
  %107 = call i8* @cpu_to_le16(i16 zeroext %106)
  %108 = load %struct.mwl8k_cmd_tx_power*, %struct.mwl8k_cmd_tx_power** %10, align 8
  %109 = getelementptr inbounds %struct.mwl8k_cmd_tx_power, %struct.mwl8k_cmd_tx_power* %108, i32 0, i32 1
  %110 = load i8**, i8*** %109, align 8
  %111 = load i32, i32* %12, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8*, i8** %110, i64 %112
  store i8* %107, i8** %113, align 8
  br label %114

114:                                              ; preds = %105
  %115 = load i32, i32* %12, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %12, align 4
  br label %101

117:                                              ; preds = %101
  %118 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %119 = load %struct.mwl8k_cmd_tx_power*, %struct.mwl8k_cmd_tx_power** %10, align 8
  %120 = getelementptr inbounds %struct.mwl8k_cmd_tx_power, %struct.mwl8k_cmd_tx_power* %119, i32 0, i32 0
  %121 = call i32 @mwl8k_post_cmd(%struct.ieee80211_hw* %118, %struct.TYPE_3__* %120)
  store i32 %121, i32* %11, align 4
  %122 = load %struct.mwl8k_cmd_tx_power*, %struct.mwl8k_cmd_tx_power** %10, align 8
  %123 = call i32 @kfree(%struct.mwl8k_cmd_tx_power* %122)
  %124 = load i32, i32* %11, align 4
  store i32 %124, i32* %4, align 4
  br label %125

125:                                              ; preds = %117, %24
  %126 = load i32, i32* %4, align 4
  ret i32 %126
}

declare dso_local i32 @cfg80211_get_chandef_type(%struct.TYPE_4__*) #1

declare dso_local %struct.mwl8k_cmd_tx_power* @kzalloc(i32, i32) #1

declare dso_local i8* @cpu_to_le16(i16 zeroext) #1

declare dso_local i32 @mwl8k_post_cmd(%struct.ieee80211_hw*, %struct.TYPE_3__*) #1

declare dso_local i32 @kfree(%struct.mwl8k_cmd_tx_power*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
