; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_phy.c_ath5k_hw_txpower.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_phy.c_ath5k_hw_txpower.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_hw = type { i32, %struct.TYPE_2__, %struct.ieee80211_channel* }
%struct.TYPE_2__ = type { i32, i64, i32 }
%struct.ieee80211_channel = type { i64, i64 }
%struct.ath5k_rate_pcal_info = type { i32 }

@AR5K_TUNE_MAX_TXPOWER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"invalid tx power: %u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@AR5K_PWRTABLE_PWR_TO_PCDAC = common dso_local global i32 0, align 4
@AR5K_PWRTABLE_LINEAR_PCDAC = common dso_local global i32 0, align 4
@AR5K_PWRTABLE_PWR_TO_PDADC = common dso_local global i32 0, align 4
@AR5K_TUNE_TPC_TXPOWER = common dso_local global i64 0, align 8
@AR5K_PHY_TXPOWER_RATE1 = common dso_local global i32 0, align 4
@AR5K_PHY_TXPOWER_RATE2 = common dso_local global i32 0, align 4
@AR5K_PHY_TXPOWER_RATE3 = common dso_local global i32 0, align 4
@AR5K_PHY_TXPOWER_RATE4 = common dso_local global i32 0, align 4
@AR5K_PHY_TXPOWER_RATE_MAX_TPC_ENABLE = common dso_local global i32 0, align 4
@AR5K_PHY_TXPOWER_RATE_MAX = common dso_local global i32 0, align 4
@AR5K_TPC_ACK = common dso_local global i32 0, align 4
@AR5K_TPC_CTS = common dso_local global i32 0, align 4
@AR5K_TPC_CHIRP = common dso_local global i32 0, align 4
@AR5K_TPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath5k_hw*, %struct.ieee80211_channel*, i32)* @ath5k_hw_txpower to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath5k_hw_txpower(%struct.ath5k_hw* %0, %struct.ieee80211_channel* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath5k_hw*, align 8
  %6 = alloca %struct.ieee80211_channel*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ath5k_rate_pcal_info, align 4
  %9 = alloca %struct.ieee80211_channel*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %5, align 8
  store %struct.ieee80211_channel* %1, %struct.ieee80211_channel** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %15 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %14, i32 0, i32 2
  %16 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %15, align 8
  store %struct.ieee80211_channel* %16, %struct.ieee80211_channel** %9, align 8
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @AR5K_TUNE_MAX_TXPOWER, align 4
  %19 = icmp sgt i32 %17, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %3
  %21 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @ATH5K_ERR(%struct.ath5k_hw* %21, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %178

26:                                               ; preds = %3
  %27 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %28 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %29 = call i32 @ath5k_eeprom_mode_from_channel(%struct.ath5k_hw* %27, %struct.ieee80211_channel* %28)
  store i32 %29, i32* %10, align 4
  %30 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %31 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  switch i32 %32, label %40 [
    i32 131, label %33
    i32 130, label %34
    i32 129, label %36
    i32 133, label %38
    i32 128, label %38
    i32 135, label %38
    i32 134, label %38
    i32 132, label %38
  ]

33:                                               ; preds = %26
  store i32 0, i32* %4, align 4
  br label %178

34:                                               ; preds = %26
  %35 = load i32, i32* @AR5K_PWRTABLE_PWR_TO_PCDAC, align 4
  store i32 %35, i32* %11, align 4
  br label %43

36:                                               ; preds = %26
  %37 = load i32, i32* @AR5K_PWRTABLE_LINEAR_PCDAC, align 4
  store i32 %37, i32* %11, align 4
  br label %43

38:                                               ; preds = %26, %26, %26, %26, %26
  %39 = load i32, i32* @AR5K_PWRTABLE_PWR_TO_PDADC, align 4
  store i32 %39, i32* %11, align 4
  br label %43

40:                                               ; preds = %26
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %178

43:                                               ; preds = %38, %36, %34
  %44 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %45 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %65

49:                                               ; preds = %43
  %50 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %51 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %9, align 8
  %54 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %52, %55
  br i1 %56, label %65, label %57

57:                                               ; preds = %49
  %58 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %59 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %9, align 8
  %62 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %60, %63
  br i1 %64, label %65, label %91

65:                                               ; preds = %57, %49, %43
  %66 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %67 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  store i32 %69, i32* %13, align 4
  %70 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %71 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %70, i32 0, i32 1
  %72 = call i32 @memset(%struct.TYPE_2__* %71, i32 0, i32 24)
  %73 = load i64, i64* @AR5K_TUNE_TPC_TXPOWER, align 8
  %74 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %75 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  store i64 %73, i64* %76, align 8
  %77 = load i32, i32* %13, align 4
  %78 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %79 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  store i32 %77, i32* %80, align 8
  %81 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %82 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %83 = load i32, i32* %10, align 4
  %84 = load i32, i32* %11, align 4
  %85 = call i32 @ath5k_setup_channel_powertable(%struct.ath5k_hw* %81, %struct.ieee80211_channel* %82, i32 %83, i32 %84)
  store i32 %85, i32* %12, align 4
  %86 = load i32, i32* %12, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %65
  %89 = load i32, i32* %12, align 4
  store i32 %89, i32* %4, align 4
  br label %178

90:                                               ; preds = %65
  br label %91

91:                                               ; preds = %90, %57
  %92 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %93 = load i32, i32* %10, align 4
  %94 = load i32, i32* %11, align 4
  %95 = call i32 @ath5k_write_channel_powertable(%struct.ath5k_hw* %92, i32 %93, i32 %94)
  %96 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %97 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %98 = call i32 @ath5k_get_max_ctl_power(%struct.ath5k_hw* %96, %struct.ieee80211_channel* %97)
  %99 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %100 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %101 = call i32 @ath5k_get_rate_pcal_data(%struct.ath5k_hw* %99, %struct.ieee80211_channel* %100, %struct.ath5k_rate_pcal_info* %8)
  %102 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %103 = load i32, i32* %7, align 4
  %104 = load i32, i32* %10, align 4
  %105 = call i32 @ath5k_setup_rate_powertable(%struct.ath5k_hw* %102, i32 %103, %struct.ath5k_rate_pcal_info* %8, i32 %104)
  %106 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %107 = call i32 @AR5K_TXPOWER_OFDM(i32 3, i32 24)
  %108 = call i32 @AR5K_TXPOWER_OFDM(i32 2, i32 16)
  %109 = or i32 %107, %108
  %110 = call i32 @AR5K_TXPOWER_OFDM(i32 1, i32 8)
  %111 = or i32 %109, %110
  %112 = call i32 @AR5K_TXPOWER_OFDM(i32 0, i32 0)
  %113 = or i32 %111, %112
  %114 = load i32, i32* @AR5K_PHY_TXPOWER_RATE1, align 4
  %115 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %106, i32 %113, i32 %114)
  %116 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %117 = call i32 @AR5K_TXPOWER_OFDM(i32 7, i32 24)
  %118 = call i32 @AR5K_TXPOWER_OFDM(i32 6, i32 16)
  %119 = or i32 %117, %118
  %120 = call i32 @AR5K_TXPOWER_OFDM(i32 5, i32 8)
  %121 = or i32 %119, %120
  %122 = call i32 @AR5K_TXPOWER_OFDM(i32 4, i32 0)
  %123 = or i32 %121, %122
  %124 = load i32, i32* @AR5K_PHY_TXPOWER_RATE2, align 4
  %125 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %116, i32 %123, i32 %124)
  %126 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %127 = call i32 @AR5K_TXPOWER_CCK(i32 10, i32 24)
  %128 = call i32 @AR5K_TXPOWER_CCK(i32 9, i32 16)
  %129 = or i32 %127, %128
  %130 = call i32 @AR5K_TXPOWER_CCK(i32 15, i32 8)
  %131 = or i32 %129, %130
  %132 = call i32 @AR5K_TXPOWER_CCK(i32 8, i32 0)
  %133 = or i32 %131, %132
  %134 = load i32, i32* @AR5K_PHY_TXPOWER_RATE3, align 4
  %135 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %126, i32 %133, i32 %134)
  %136 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %137 = call i32 @AR5K_TXPOWER_CCK(i32 14, i32 24)
  %138 = call i32 @AR5K_TXPOWER_CCK(i32 13, i32 16)
  %139 = or i32 %137, %138
  %140 = call i32 @AR5K_TXPOWER_CCK(i32 12, i32 8)
  %141 = or i32 %139, %140
  %142 = call i32 @AR5K_TXPOWER_CCK(i32 11, i32 0)
  %143 = or i32 %141, %142
  %144 = load i32, i32* @AR5K_PHY_TXPOWER_RATE4, align 4
  %145 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %136, i32 %143, i32 %144)
  %146 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %147 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %172

151:                                              ; preds = %91
  %152 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %153 = load i32, i32* @AR5K_PHY_TXPOWER_RATE_MAX_TPC_ENABLE, align 4
  %154 = load i32, i32* @AR5K_TUNE_MAX_TXPOWER, align 4
  %155 = or i32 %153, %154
  %156 = load i32, i32* @AR5K_PHY_TXPOWER_RATE_MAX, align 4
  %157 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %152, i32 %155, i32 %156)
  %158 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %159 = load i32, i32* @AR5K_TUNE_MAX_TXPOWER, align 4
  %160 = load i32, i32* @AR5K_TPC_ACK, align 4
  %161 = call i32 @AR5K_REG_MS(i32 %159, i32 %160)
  %162 = load i32, i32* @AR5K_TUNE_MAX_TXPOWER, align 4
  %163 = load i32, i32* @AR5K_TPC_CTS, align 4
  %164 = call i32 @AR5K_REG_MS(i32 %162, i32 %163)
  %165 = or i32 %161, %164
  %166 = load i32, i32* @AR5K_TUNE_MAX_TXPOWER, align 4
  %167 = load i32, i32* @AR5K_TPC_CHIRP, align 4
  %168 = call i32 @AR5K_REG_MS(i32 %166, i32 %167)
  %169 = or i32 %165, %168
  %170 = load i32, i32* @AR5K_TPC, align 4
  %171 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %158, i32 %169, i32 %170)
  br label %177

172:                                              ; preds = %91
  %173 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %174 = load i32, i32* @AR5K_TUNE_MAX_TXPOWER, align 4
  %175 = load i32, i32* @AR5K_PHY_TXPOWER_RATE_MAX, align 4
  %176 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %173, i32 %174, i32 %175)
  br label %177

177:                                              ; preds = %172, %151
  store i32 0, i32* %4, align 4
  br label %178

178:                                              ; preds = %177, %88, %40, %33, %20
  %179 = load i32, i32* %4, align 4
  ret i32 %179
}

declare dso_local i32 @ATH5K_ERR(%struct.ath5k_hw*, i8*, i32) #1

declare dso_local i32 @ath5k_eeprom_mode_from_channel(%struct.ath5k_hw*, %struct.ieee80211_channel*) #1

declare dso_local i32 @memset(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @ath5k_setup_channel_powertable(%struct.ath5k_hw*, %struct.ieee80211_channel*, i32, i32) #1

declare dso_local i32 @ath5k_write_channel_powertable(%struct.ath5k_hw*, i32, i32) #1

declare dso_local i32 @ath5k_get_max_ctl_power(%struct.ath5k_hw*, %struct.ieee80211_channel*) #1

declare dso_local i32 @ath5k_get_rate_pcal_data(%struct.ath5k_hw*, %struct.ieee80211_channel*, %struct.ath5k_rate_pcal_info*) #1

declare dso_local i32 @ath5k_setup_rate_powertable(%struct.ath5k_hw*, i32, %struct.ath5k_rate_pcal_info*, i32) #1

declare dso_local i32 @ath5k_hw_reg_write(%struct.ath5k_hw*, i32, i32) #1

declare dso_local i32 @AR5K_TXPOWER_OFDM(i32, i32) #1

declare dso_local i32 @AR5K_TXPOWER_CCK(i32, i32) #1

declare dso_local i32 @AR5K_REG_MS(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
