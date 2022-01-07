; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/extr_mwl8k.c_mwl8k_add_interface.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/extr_mwl8k.c_mwl8k_add_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32, %struct.mwl8k_priv* }
%struct.mwl8k_priv = type { i32, i32, i32, i32, i32, %struct.mwl8k_device_info*, i64 }
%struct.mwl8k_device_info = type { i32, i32 }
%struct.ieee80211_vif = type { i32, i32 }
%struct.mwl8k_vif = type { i32, i32, i32, i32, i64, %struct.ieee80211_vif* }

@.str = private unnamed_addr constant [64 x i8] c"unable to create STA interface because sniffer mode is enabled\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"AP interface is running.\0AAdding STA interface for WDS\00", align 1
@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.ieee80211_vif*)* @mwl8k_add_interface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwl8k_add_interface(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca %struct.ieee80211_vif*, align 8
  %6 = alloca %struct.mwl8k_priv*, align 8
  %7 = alloca %struct.mwl8k_vif*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.mwl8k_device_info*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %5, align 8
  %12 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %13 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %12, i32 0, i32 1
  %14 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %13, align 8
  store %struct.mwl8k_priv* %14, %struct.mwl8k_priv** %6, align 8
  %15 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %6, align 8
  %16 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %15, i32 0, i32 6
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %2
  %20 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %21 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @wiphy_info(i32 %22, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %170

26:                                               ; preds = %2
  %27 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %6, align 8
  %28 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %27, i32 0, i32 5
  %29 = load %struct.mwl8k_device_info*, %struct.mwl8k_device_info** %28, align 8
  store %struct.mwl8k_device_info* %29, %struct.mwl8k_device_info** %11, align 8
  %30 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %31 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  switch i32 %32, label %102 [
    i32 129, label %33
    i32 128, label %66
  ]

33:                                               ; preds = %26
  %34 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %6, align 8
  %35 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %62, label %38

38:                                               ; preds = %33
  %39 = load %struct.mwl8k_device_info*, %struct.mwl8k_device_info** %11, align 8
  %40 = getelementptr inbounds %struct.mwl8k_device_info, %struct.mwl8k_device_info* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %62

43:                                               ; preds = %38
  %44 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %6, align 8
  %45 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %44, i32 0, i32 3
  %46 = call i32 @list_empty(i32* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %43
  %49 = load i32, i32* @EBUSY, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %170

51:                                               ; preds = %43
  %52 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %53 = load %struct.mwl8k_device_info*, %struct.mwl8k_device_info** %11, align 8
  %54 = getelementptr inbounds %struct.mwl8k_device_info, %struct.mwl8k_device_info* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @mwl8k_reload_firmware(%struct.ieee80211_hw* %52, i32 %55)
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* %10, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %51
  %60 = load i32, i32* %10, align 4
  store i32 %60, i32* %3, align 4
  br label %170

61:                                               ; preds = %51
  br label %62

62:                                               ; preds = %61, %38, %33
  %63 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %6, align 8
  %64 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  store i32 %65, i32* %8, align 4
  br label %105

66:                                               ; preds = %26
  %67 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %6, align 8
  %68 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 8
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %98

71:                                               ; preds = %66
  %72 = load %struct.mwl8k_device_info*, %struct.mwl8k_device_info** %11, align 8
  %73 = getelementptr inbounds %struct.mwl8k_device_info, %struct.mwl8k_device_info* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %98

76:                                               ; preds = %71
  %77 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %6, align 8
  %78 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %77, i32 0, i32 3
  %79 = call i32 @list_empty(i32* %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %86, label %81

81:                                               ; preds = %76
  %82 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %83 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @wiphy_warn(i32 %84, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0))
  br label %97

86:                                               ; preds = %76
  %87 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %88 = load %struct.mwl8k_device_info*, %struct.mwl8k_device_info** %11, align 8
  %89 = getelementptr inbounds %struct.mwl8k_device_info, %struct.mwl8k_device_info* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @mwl8k_reload_firmware(%struct.ieee80211_hw* %87, i32 %90)
  store i32 %91, i32* %10, align 4
  %92 = load i32, i32* %10, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %86
  %95 = load i32, i32* %10, align 4
  store i32 %95, i32* %3, align 4
  br label %170

96:                                               ; preds = %86
  br label %97

97:                                               ; preds = %96, %81
  br label %98

98:                                               ; preds = %97, %71, %66
  %99 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %6, align 8
  %100 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  store i32 %101, i32* %8, align 4
  br label %105

102:                                              ; preds = %26
  %103 = load i32, i32* @EINVAL, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %3, align 4
  br label %170

105:                                              ; preds = %98, %62
  %106 = load i32, i32* %8, align 4
  %107 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %6, align 8
  %108 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = xor i32 %109, -1
  %111 = and i32 %106, %110
  %112 = call i32 @ffs(i32 %111)
  store i32 %112, i32* %9, align 4
  %113 = load i32, i32* %9, align 4
  %114 = add nsw i32 %113, -1
  store i32 %114, i32* %9, align 4
  %115 = icmp ne i32 %113, 0
  br i1 %115, label %119, label %116

116:                                              ; preds = %105
  %117 = load i32, i32* @EBUSY, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %3, align 4
  br label %170

119:                                              ; preds = %105
  %120 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %121 = call %struct.mwl8k_vif* @MWL8K_VIF(%struct.ieee80211_vif* %120)
  store %struct.mwl8k_vif* %121, %struct.mwl8k_vif** %7, align 8
  %122 = load %struct.mwl8k_vif*, %struct.mwl8k_vif** %7, align 8
  %123 = call i32 @memset(%struct.mwl8k_vif* %122, i32 0, i32 32)
  %124 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %125 = load %struct.mwl8k_vif*, %struct.mwl8k_vif** %7, align 8
  %126 = getelementptr inbounds %struct.mwl8k_vif, %struct.mwl8k_vif* %125, i32 0, i32 5
  store %struct.ieee80211_vif* %124, %struct.ieee80211_vif** %126, align 8
  %127 = load i32, i32* %9, align 4
  %128 = load %struct.mwl8k_vif*, %struct.mwl8k_vif** %7, align 8
  %129 = getelementptr inbounds %struct.mwl8k_vif, %struct.mwl8k_vif* %128, i32 0, i32 0
  store i32 %127, i32* %129, align 8
  %130 = load %struct.mwl8k_vif*, %struct.mwl8k_vif** %7, align 8
  %131 = getelementptr inbounds %struct.mwl8k_vif, %struct.mwl8k_vif* %130, i32 0, i32 4
  store i64 0, i64* %131, align 8
  %132 = load %struct.mwl8k_vif*, %struct.mwl8k_vif** %7, align 8
  %133 = getelementptr inbounds %struct.mwl8k_vif, %struct.mwl8k_vif* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %136 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @ETH_ALEN, align 4
  %139 = call i32 @memcpy(i32 %134, i32 %137, i32 %138)
  %140 = load %struct.mwl8k_vif*, %struct.mwl8k_vif** %7, align 8
  %141 = getelementptr inbounds %struct.mwl8k_vif, %struct.mwl8k_vif* %140, i32 0, i32 1
  store i32 0, i32* %141, align 4
  %142 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %143 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %144 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %145 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @mwl8k_cmd_set_mac_addr(%struct.ieee80211_hw* %142, %struct.ieee80211_vif* %143, i32 %146)
  %148 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %149 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = icmp eq i32 %150, 129
  br i1 %151, label %152, label %156

152:                                              ; preds = %119
  %153 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %154 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %155 = call i32 @mwl8k_cmd_set_new_stn_add_self(%struct.ieee80211_hw* %153, %struct.ieee80211_vif* %154)
  br label %156

156:                                              ; preds = %152, %119
  %157 = load %struct.mwl8k_vif*, %struct.mwl8k_vif** %7, align 8
  %158 = getelementptr inbounds %struct.mwl8k_vif, %struct.mwl8k_vif* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = shl i32 1, %159
  %161 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %6, align 8
  %162 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 8
  %164 = or i32 %163, %160
  store i32 %164, i32* %162, align 8
  %165 = load %struct.mwl8k_vif*, %struct.mwl8k_vif** %7, align 8
  %166 = getelementptr inbounds %struct.mwl8k_vif, %struct.mwl8k_vif* %165, i32 0, i32 2
  %167 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %6, align 8
  %168 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %167, i32 0, i32 3
  %169 = call i32 @list_add_tail(i32* %166, i32* %168)
  store i32 0, i32* %3, align 4
  br label %170

170:                                              ; preds = %156, %116, %102, %94, %59, %48, %19
  %171 = load i32, i32* %3, align 4
  ret i32 %171
}

declare dso_local i32 @wiphy_info(i32, i8*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @mwl8k_reload_firmware(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @wiphy_warn(i32, i8*) #1

declare dso_local i32 @ffs(i32) #1

declare dso_local %struct.mwl8k_vif* @MWL8K_VIF(%struct.ieee80211_vif*) #1

declare dso_local i32 @memset(%struct.mwl8k_vif*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @mwl8k_cmd_set_mac_addr(%struct.ieee80211_hw*, %struct.ieee80211_vif*, i32) #1

declare dso_local i32 @mwl8k_cmd_set_new_stn_add_self(%struct.ieee80211_hw*, %struct.ieee80211_vif*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
