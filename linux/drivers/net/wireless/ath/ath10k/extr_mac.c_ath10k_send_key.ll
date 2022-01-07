; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_send_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_send_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k_vif = type { %struct.ath10k*, i32 }
%struct.ath10k = type { i32*, i32, i32 }
%struct.ieee80211_key_conf = type { i32, i32, i32*, i32, i32 }
%struct.wmi_vdev_install_key_arg = type { i32, i32, i32*, i32, i32*, i32, i32, i32, i32 }

@WMI_CIPHER_AES_CCM = common dso_local global i64 0, align 8
@IEEE80211_KEY_FLAG_GENERATE_IV_MGMT = common dso_local global i32 0, align 4
@WMI_CIPHER_TKIP = common dso_local global i64 0, align 8
@WMI_CIPHER_WEP = common dso_local global i64 0, align 8
@WMI_CIPHER_AES_GCM = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"cipher %d is not supported\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ATH10K_FLAG_RAW_MODE = common dso_local global i32 0, align 4
@IEEE80211_KEY_FLAG_GENERATE_IV = common dso_local global i32 0, align 4
@DISABLE_KEY = common dso_local global i32 0, align 4
@WMI_CIPHER_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k_vif*, %struct.ieee80211_key_conf*, i32, i32*, i32)* @ath10k_send_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_send_key(%struct.ath10k_vif* %0, %struct.ieee80211_key_conf* %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ath10k_vif*, align 8
  %8 = alloca %struct.ieee80211_key_conf*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ath10k*, align 8
  %13 = alloca %struct.wmi_vdev_install_key_arg, align 8
  store %struct.ath10k_vif* %0, %struct.ath10k_vif** %7, align 8
  store %struct.ieee80211_key_conf* %1, %struct.ieee80211_key_conf** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load %struct.ath10k_vif*, %struct.ath10k_vif** %7, align 8
  %15 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %14, i32 0, i32 0
  %16 = load %struct.ath10k*, %struct.ath10k** %15, align 8
  store %struct.ath10k* %16, %struct.ath10k** %12, align 8
  %17 = getelementptr inbounds %struct.wmi_vdev_install_key_arg, %struct.wmi_vdev_install_key_arg* %13, i32 0, i32 0
  store i32 0, i32* %17, align 8
  %18 = getelementptr inbounds %struct.wmi_vdev_install_key_arg, %struct.wmi_vdev_install_key_arg* %13, i32 0, i32 1
  store i32 0, i32* %18, align 4
  %19 = getelementptr inbounds %struct.wmi_vdev_install_key_arg, %struct.wmi_vdev_install_key_arg* %13, i32 0, i32 2
  %20 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %8, align 8
  %21 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %20, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %19, align 8
  %23 = getelementptr inbounds %struct.wmi_vdev_install_key_arg, %struct.wmi_vdev_install_key_arg* %13, i32 0, i32 3
  store i32 0, i32* %23, align 8
  %24 = getelementptr inbounds %struct.wmi_vdev_install_key_arg, %struct.wmi_vdev_install_key_arg* %13, i32 0, i32 4
  %25 = load i32*, i32** %10, align 8
  store i32* %25, i32** %24, align 8
  %26 = getelementptr inbounds %struct.wmi_vdev_install_key_arg, %struct.wmi_vdev_install_key_arg* %13, i32 0, i32 5
  %27 = load i32, i32* %11, align 4
  store i32 %27, i32* %26, align 8
  %28 = getelementptr inbounds %struct.wmi_vdev_install_key_arg, %struct.wmi_vdev_install_key_arg* %13, i32 0, i32 6
  %29 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %8, align 8
  %30 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %28, align 4
  %32 = getelementptr inbounds %struct.wmi_vdev_install_key_arg, %struct.wmi_vdev_install_key_arg* %13, i32 0, i32 7
  %33 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %8, align 8
  %34 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %32, align 8
  %36 = getelementptr inbounds %struct.wmi_vdev_install_key_arg, %struct.wmi_vdev_install_key_arg* %13, i32 0, i32 8
  %37 = load %struct.ath10k_vif*, %struct.ath10k_vif** %7, align 8
  %38 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %36, align 4
  %40 = load %struct.ath10k_vif*, %struct.ath10k_vif** %7, align 8
  %41 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %40, i32 0, i32 0
  %42 = load %struct.ath10k*, %struct.ath10k** %41, align 8
  %43 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %42, i32 0, i32 2
  %44 = call i32 @lockdep_assert_held(i32* %43)
  %45 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %8, align 8
  %46 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  switch i32 %47, label %99 [
    i32 134, label %48
    i32 130, label %61
    i32 128, label %71
    i32 129, label %71
    i32 133, label %79
    i32 132, label %87
    i32 131, label %87
    i32 136, label %95
    i32 135, label %95
    i32 137, label %95
    i32 138, label %95
  ]

48:                                               ; preds = %5
  %49 = load %struct.ath10k*, %struct.ath10k** %12, align 8
  %50 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load i64, i64* @WMI_CIPHER_AES_CCM, align 8
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds %struct.wmi_vdev_install_key_arg, %struct.wmi_vdev_install_key_arg* %13, i32 0, i32 3
  store i32 %54, i32* %55, align 8
  %56 = load i32, i32* @IEEE80211_KEY_FLAG_GENERATE_IV_MGMT, align 4
  %57 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %8, align 8
  %58 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 4
  br label %107

61:                                               ; preds = %5
  %62 = load %struct.ath10k*, %struct.ath10k** %12, align 8
  %63 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = load i64, i64* @WMI_CIPHER_TKIP, align 8
  %66 = getelementptr inbounds i32, i32* %64, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = getelementptr inbounds %struct.wmi_vdev_install_key_arg, %struct.wmi_vdev_install_key_arg* %13, i32 0, i32 3
  store i32 %67, i32* %68, align 8
  %69 = getelementptr inbounds %struct.wmi_vdev_install_key_arg, %struct.wmi_vdev_install_key_arg* %13, i32 0, i32 0
  store i32 8, i32* %69, align 8
  %70 = getelementptr inbounds %struct.wmi_vdev_install_key_arg, %struct.wmi_vdev_install_key_arg* %13, i32 0, i32 1
  store i32 8, i32* %70, align 4
  br label %107

71:                                               ; preds = %5, %5
  %72 = load %struct.ath10k*, %struct.ath10k** %12, align 8
  %73 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = load i64, i64* @WMI_CIPHER_WEP, align 8
  %76 = getelementptr inbounds i32, i32* %74, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = getelementptr inbounds %struct.wmi_vdev_install_key_arg, %struct.wmi_vdev_install_key_arg* %13, i32 0, i32 3
  store i32 %77, i32* %78, align 8
  br label %107

79:                                               ; preds = %5
  %80 = load %struct.ath10k*, %struct.ath10k** %12, align 8
  %81 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = load i64, i64* @WMI_CIPHER_AES_CCM, align 8
  %84 = getelementptr inbounds i32, i32* %82, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = getelementptr inbounds %struct.wmi_vdev_install_key_arg, %struct.wmi_vdev_install_key_arg* %13, i32 0, i32 3
  store i32 %85, i32* %86, align 8
  br label %107

87:                                               ; preds = %5, %5
  %88 = load %struct.ath10k*, %struct.ath10k** %12, align 8
  %89 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = load i64, i64* @WMI_CIPHER_AES_GCM, align 8
  %92 = getelementptr inbounds i32, i32* %90, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = getelementptr inbounds %struct.wmi_vdev_install_key_arg, %struct.wmi_vdev_install_key_arg* %13, i32 0, i32 3
  store i32 %93, i32* %94, align 8
  br label %107

95:                                               ; preds = %5, %5, %5, %5
  %96 = call i32 @WARN_ON(i32 1)
  %97 = load i32, i32* @EINVAL, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %6, align 4
  br label %137

99:                                               ; preds = %5
  %100 = load %struct.ath10k*, %struct.ath10k** %12, align 8
  %101 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %8, align 8
  %102 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @ath10k_warn(%struct.ath10k* %100, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %103)
  %105 = load i32, i32* @EOPNOTSUPP, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %6, align 4
  br label %137

107:                                              ; preds = %87, %79, %71, %61, %48
  %108 = load i32, i32* @ATH10K_FLAG_RAW_MODE, align 4
  %109 = load %struct.ath10k*, %struct.ath10k** %12, align 8
  %110 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %109, i32 0, i32 1
  %111 = call i64 @test_bit(i32 %108, i32* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %107
  %114 = load i32, i32* @IEEE80211_KEY_FLAG_GENERATE_IV, align 4
  %115 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %8, align 8
  %116 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = or i32 %117, %114
  store i32 %118, i32* %116, align 4
  br label %119

119:                                              ; preds = %113, %107
  %120 = load i32, i32* %9, align 4
  %121 = load i32, i32* @DISABLE_KEY, align 4
  %122 = icmp eq i32 %120, %121
  br i1 %122, label %123, label %132

123:                                              ; preds = %119
  %124 = load %struct.ath10k*, %struct.ath10k** %12, align 8
  %125 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %124, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = load i64, i64* @WMI_CIPHER_NONE, align 8
  %128 = getelementptr inbounds i32, i32* %126, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = getelementptr inbounds %struct.wmi_vdev_install_key_arg, %struct.wmi_vdev_install_key_arg* %13, i32 0, i32 3
  store i32 %129, i32* %130, align 8
  %131 = getelementptr inbounds %struct.wmi_vdev_install_key_arg, %struct.wmi_vdev_install_key_arg* %13, i32 0, i32 2
  store i32* null, i32** %131, align 8
  br label %132

132:                                              ; preds = %123, %119
  %133 = load %struct.ath10k_vif*, %struct.ath10k_vif** %7, align 8
  %134 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %133, i32 0, i32 0
  %135 = load %struct.ath10k*, %struct.ath10k** %134, align 8
  %136 = call i32 @ath10k_wmi_vdev_install_key(%struct.ath10k* %135, %struct.wmi_vdev_install_key_arg* %13)
  store i32 %136, i32* %6, align 4
  br label %137

137:                                              ; preds = %132, %99, %95
  %138 = load i32, i32* %6, align 4
  ret i32 %138
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @ath10k_wmi_vdev_install_key(%struct.ath10k*, %struct.wmi_vdev_install_key_arg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
