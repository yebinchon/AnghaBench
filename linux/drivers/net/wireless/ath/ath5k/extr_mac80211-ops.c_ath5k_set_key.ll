; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_mac80211-ops.c_ath5k_set_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_mac80211-ops.c_ath5k_set_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.ath5k_hw* }
%struct.ath5k_hw = type { i32 }
%struct.ieee80211_vif = type { i64 }
%struct.ieee80211_sta = type { i32 }
%struct.ieee80211_key_conf = type { i32, i32, i32 }
%struct.ath_common = type { i32 }

@ath5k_modparam_nohwcrypt = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@IEEE80211_KEY_FLAG_RX_MGMT = common dso_local global i32 0, align 4
@NL80211_IFTYPE_ADHOC = common dso_local global i64 0, align 8
@IEEE80211_KEY_FLAG_PAIRWISE = common dso_local global i32 0, align 4
@ATH_CRYPT_CAP_CIPHER_AESCCM = common dso_local global i32 0, align 4
@IEEE80211_KEY_FLAG_GENERATE_IV = common dso_local global i32 0, align 4
@IEEE80211_KEY_FLAG_GENERATE_MMIC = common dso_local global i32 0, align 4
@IEEE80211_KEY_FLAG_SW_MGMT_TX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, i32, %struct.ieee80211_vif*, %struct.ieee80211_sta*, %struct.ieee80211_key_conf*)* @ath5k_set_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath5k_set_key(%struct.ieee80211_hw* %0, i32 %1, %struct.ieee80211_vif* %2, %struct.ieee80211_sta* %3, %struct.ieee80211_key_conf* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ieee80211_hw*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ieee80211_vif*, align 8
  %10 = alloca %struct.ieee80211_sta*, align 8
  %11 = alloca %struct.ieee80211_key_conf*, align 8
  %12 = alloca %struct.ath5k_hw*, align 8
  %13 = alloca %struct.ath_common*, align 8
  %14 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.ieee80211_vif* %2, %struct.ieee80211_vif** %9, align 8
  store %struct.ieee80211_sta* %3, %struct.ieee80211_sta** %10, align 8
  store %struct.ieee80211_key_conf* %4, %struct.ieee80211_key_conf** %11, align 8
  %15 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %16 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %15, i32 0, i32 0
  %17 = load %struct.ath5k_hw*, %struct.ath5k_hw** %16, align 8
  store %struct.ath5k_hw* %17, %struct.ath5k_hw** %12, align 8
  %18 = load %struct.ath5k_hw*, %struct.ath5k_hw** %12, align 8
  %19 = call %struct.ath_common* @ath5k_hw_common(%struct.ath5k_hw* %18)
  store %struct.ath_common* %19, %struct.ath_common** %13, align 8
  store i32 0, i32* %14, align 4
  %20 = load i64, i64* @ath5k_modparam_nohwcrypt, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %5
  %23 = load i32, i32* @EOPNOTSUPP, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %6, align 4
  br label %137

25:                                               ; preds = %5
  %26 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %27 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @IEEE80211_KEY_FLAG_RX_MGMT, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %25
  %33 = load i32, i32* @EOPNOTSUPP, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %6, align 4
  br label %137

35:                                               ; preds = %25
  %36 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %9, align 8
  %37 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @NL80211_IFTYPE_ADHOC, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %61

41:                                               ; preds = %35
  %42 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %43 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = icmp eq i32 %44, 130
  br i1 %45, label %51, label %46

46:                                               ; preds = %41
  %47 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %48 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp eq i32 %49, 131
  br i1 %50, label %51, label %61

51:                                               ; preds = %46, %41
  %52 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %53 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @IEEE80211_KEY_FLAG_PAIRWISE, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %51
  %59 = load i32, i32* @EOPNOTSUPP, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %6, align 4
  br label %137

61:                                               ; preds = %51, %46, %35
  %62 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %63 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  switch i32 %64, label %77 [
    i32 128, label %65
    i32 129, label %65
    i32 130, label %65
    i32 131, label %66
  ]

65:                                               ; preds = %61, %61, %61
  br label %80

66:                                               ; preds = %61
  %67 = load %struct.ath_common*, %struct.ath_common** %13, align 8
  %68 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @ATH_CRYPT_CAP_CIPHER_AESCCM, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %66
  br label %80

74:                                               ; preds = %66
  %75 = load i32, i32* @EOPNOTSUPP, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %6, align 4
  br label %137

77:                                               ; preds = %61
  %78 = load i32, i32* @EOPNOTSUPP, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %6, align 4
  br label %137

80:                                               ; preds = %73, %65
  %81 = load %struct.ath5k_hw*, %struct.ath5k_hw** %12, align 8
  %82 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %81, i32 0, i32 0
  %83 = call i32 @mutex_lock(i32* %82)
  %84 = load i32, i32* %8, align 4
  switch i32 %84, label %129 [
    i32 132, label %85
    i32 133, label %125
  ]

85:                                               ; preds = %80
  %86 = load %struct.ath_common*, %struct.ath_common** %13, align 8
  %87 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %9, align 8
  %88 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %89 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %90 = call i32 @ath_key_config(%struct.ath_common* %86, %struct.ieee80211_vif* %87, %struct.ieee80211_sta* %88, %struct.ieee80211_key_conf* %89)
  store i32 %90, i32* %14, align 4
  %91 = load i32, i32* %14, align 4
  %92 = icmp sge i32 %91, 0
  br i1 %92, label %93, label %124

93:                                               ; preds = %85
  %94 = load i32, i32* %14, align 4
  %95 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %96 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %95, i32 0, i32 2
  store i32 %94, i32* %96, align 4
  %97 = load i32, i32* @IEEE80211_KEY_FLAG_GENERATE_IV, align 4
  %98 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %99 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = or i32 %100, %97
  store i32 %101, i32* %99, align 4
  %102 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %103 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = icmp eq i32 %104, 130
  br i1 %105, label %106, label %112

106:                                              ; preds = %93
  %107 = load i32, i32* @IEEE80211_KEY_FLAG_GENERATE_MMIC, align 4
  %108 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %109 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = or i32 %110, %107
  store i32 %111, i32* %109, align 4
  br label %112

112:                                              ; preds = %106, %93
  %113 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %114 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = icmp eq i32 %115, 131
  br i1 %116, label %117, label %123

117:                                              ; preds = %112
  %118 = load i32, i32* @IEEE80211_KEY_FLAG_SW_MGMT_TX, align 4
  %119 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %120 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = or i32 %121, %118
  store i32 %122, i32* %120, align 4
  br label %123

123:                                              ; preds = %117, %112
  store i32 0, i32* %14, align 4
  br label %124

124:                                              ; preds = %123, %85
  br label %132

125:                                              ; preds = %80
  %126 = load %struct.ath_common*, %struct.ath_common** %13, align 8
  %127 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %128 = call i32 @ath_key_delete(%struct.ath_common* %126, %struct.ieee80211_key_conf* %127)
  br label %132

129:                                              ; preds = %80
  %130 = load i32, i32* @EINVAL, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %14, align 4
  br label %132

132:                                              ; preds = %129, %125, %124
  %133 = load %struct.ath5k_hw*, %struct.ath5k_hw** %12, align 8
  %134 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %133, i32 0, i32 0
  %135 = call i32 @mutex_unlock(i32* %134)
  %136 = load i32, i32* %14, align 4
  store i32 %136, i32* %6, align 4
  br label %137

137:                                              ; preds = %132, %77, %74, %58, %32, %22
  %138 = load i32, i32* %6, align 4
  ret i32 %138
}

declare dso_local %struct.ath_common* @ath5k_hw_common(%struct.ath5k_hw*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ath_key_config(%struct.ath_common*, %struct.ieee80211_vif*, %struct.ieee80211_sta*, %struct.ieee80211_key_conf*) #1

declare dso_local i32 @ath_key_delete(%struct.ath_common*, %struct.ieee80211_key_conf*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
