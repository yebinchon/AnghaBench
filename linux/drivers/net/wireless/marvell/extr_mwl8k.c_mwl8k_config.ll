; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/extr_mwl8k.c_mwl8k_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/extr_mwl8k.c_mwl8k_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.mwl8k_priv*, %struct.ieee80211_conf }
%struct.mwl8k_priv = type { i64 }
%struct.ieee80211_conf = type { i32, i32 }

@IEEE80211_CONF_IDLE = common dso_local global i32 0, align 4
@IEEE80211_CONF_CHANGE_CHANNEL = common dso_local global i32 0, align 4
@IEEE80211_CONF_CHANGE_POWER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, i32)* @mwl8k_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwl8k_config(%struct.ieee80211_hw* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ieee80211_conf*, align 8
  %7 = alloca %struct.mwl8k_priv*, align 8
  %8 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %10 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %9, i32 0, i32 1
  store %struct.ieee80211_conf* %10, %struct.ieee80211_conf** %6, align 8
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %12 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %11, i32 0, i32 0
  %13 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %12, align 8
  store %struct.mwl8k_priv* %13, %struct.mwl8k_priv** %7, align 8
  %14 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %15 = call i32 @mwl8k_fw_lock(%struct.ieee80211_hw* %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* %8, align 4
  store i32 %19, i32* %3, align 4
  br label %99

20:                                               ; preds = %2
  %21 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %6, align 8
  %22 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @IEEE80211_CONF_IDLE, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %20
  %28 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %29 = call i32 @mwl8k_cmd_radio_disable(%struct.ieee80211_hw* %28)
  store i32 %29, i32* %8, align 4
  br label %33

30:                                               ; preds = %20
  %31 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %32 = call i32 @mwl8k_cmd_radio_enable(%struct.ieee80211_hw* %31)
  store i32 %32, i32* %8, align 4
  br label %33

33:                                               ; preds = %30, %27
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  br label %95

37:                                               ; preds = %33
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @IEEE80211_CONF_CHANGE_CHANNEL, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %37
  %43 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %44 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %6, align 8
  %45 = call i32 @mwl8k_cmd_set_rf_channel(%struct.ieee80211_hw* %43, %struct.ieee80211_conf* %44)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  br label %95

49:                                               ; preds = %42
  br label %50

50:                                               ; preds = %49, %37
  %51 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %6, align 8
  %52 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp sgt i32 %53, 18
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %6, align 8
  %57 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %56, i32 0, i32 1
  store i32 18, i32* %57, align 4
  br label %58

58:                                               ; preds = %55, %50
  %59 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %7, align 8
  %60 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %82

63:                                               ; preds = %58
  %64 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %6, align 8
  %65 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @IEEE80211_CONF_CHANGE_POWER, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %81

70:                                               ; preds = %63
  %71 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %72 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %6, align 8
  %73 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %6, align 8
  %74 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @mwl8k_cmd_tx_power(%struct.ieee80211_hw* %71, %struct.ieee80211_conf* %72, i32 %75)
  store i32 %76, i32* %8, align 4
  %77 = load i32, i32* %8, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %70
  br label %95

80:                                               ; preds = %70
  br label %81

81:                                               ; preds = %80, %63
  br label %94

82:                                               ; preds = %58
  %83 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %84 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %6, align 8
  %85 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @mwl8k_cmd_rf_tx_power(%struct.ieee80211_hw* %83, i32 %86)
  store i32 %87, i32* %8, align 4
  %88 = load i32, i32* %8, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %82
  br label %95

91:                                               ; preds = %82
  %92 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %93 = call i32 @mwl8k_cmd_mimo_config(%struct.ieee80211_hw* %92, i32 7, i32 7)
  store i32 %93, i32* %8, align 4
  br label %94

94:                                               ; preds = %91, %81
  br label %95

95:                                               ; preds = %94, %90, %79, %48, %36
  %96 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %97 = call i32 @mwl8k_fw_unlock(%struct.ieee80211_hw* %96)
  %98 = load i32, i32* %8, align 4
  store i32 %98, i32* %3, align 4
  br label %99

99:                                               ; preds = %95, %18
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local i32 @mwl8k_fw_lock(%struct.ieee80211_hw*) #1

declare dso_local i32 @mwl8k_cmd_radio_disable(%struct.ieee80211_hw*) #1

declare dso_local i32 @mwl8k_cmd_radio_enable(%struct.ieee80211_hw*) #1

declare dso_local i32 @mwl8k_cmd_set_rf_channel(%struct.ieee80211_hw*, %struct.ieee80211_conf*) #1

declare dso_local i32 @mwl8k_cmd_tx_power(%struct.ieee80211_hw*, %struct.ieee80211_conf*, i32) #1

declare dso_local i32 @mwl8k_cmd_rf_tx_power(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @mwl8k_cmd_mimo_config(%struct.ieee80211_hw*, i32, i32) #1

declare dso_local i32 @mwl8k_fw_unlock(%struct.ieee80211_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
