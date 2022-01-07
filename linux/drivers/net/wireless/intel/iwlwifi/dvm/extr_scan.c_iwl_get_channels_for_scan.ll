; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_scan.c_iwl_get_channels_for_scan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_scan.c_iwl_get_channels_for_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.ieee80211_channel** }
%struct.ieee80211_channel = type { i32, i64, i32 }
%struct.ieee80211_vif = type { i32 }
%struct.iwl_scan_channel = type { i32, i32, i32, i8*, i8*, i8* }
%struct.ieee80211_supported_band = type { i32 }

@IEEE80211_CHAN_NO_IR = common dso_local global i32 0, align 4
@SCAN_CHANNEL_TYPE_PASSIVE = common dso_local global i32 0, align 4
@SCAN_CHANNEL_TYPE_ACTIVE = common dso_local global i32 0, align 4
@NL80211_BAND_5GHZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Scanning ch=%d prob=0x%X [%s %d]\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"ACTIVE\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"PASSIVE\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"total channels to scan %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_priv*, %struct.ieee80211_vif*, i32, i64, i64, %struct.iwl_scan_channel*)* @iwl_get_channels_for_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_get_channels_for_scan(%struct.iwl_priv* %0, %struct.ieee80211_vif* %1, i32 %2, i64 %3, i64 %4, %struct.iwl_scan_channel* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.iwl_priv*, align 8
  %9 = alloca %struct.ieee80211_vif*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.iwl_scan_channel*, align 8
  %14 = alloca %struct.ieee80211_channel*, align 8
  %15 = alloca %struct.ieee80211_supported_band*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  store %struct.iwl_priv* %0, %struct.iwl_priv** %8, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %9, align 8
  store i32 %2, i32* %10, align 4
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store %struct.iwl_scan_channel* %5, %struct.iwl_scan_channel** %13, align 8
  store i64 0, i64* %16, align 8
  store i64 0, i64* %17, align 8
  %21 = load %struct.iwl_priv*, %struct.iwl_priv** %8, align 8
  %22 = load i32, i32* %10, align 4
  %23 = call %struct.ieee80211_supported_band* @iwl_get_hw_mode(%struct.iwl_priv* %21, i32 %22)
  store %struct.ieee80211_supported_band* %23, %struct.ieee80211_supported_band** %15, align 8
  %24 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %15, align 8
  %25 = icmp ne %struct.ieee80211_supported_band* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %162

27:                                               ; preds = %6
  %28 = load %struct.iwl_priv*, %struct.iwl_priv** %8, align 8
  %29 = load i32, i32* %10, align 4
  %30 = load i64, i64* %12, align 8
  %31 = call i64 @iwl_get_active_dwell_time(%struct.iwl_priv* %28, i32 %29, i64 %30)
  store i64 %31, i64* %17, align 8
  %32 = load %struct.iwl_priv*, %struct.iwl_priv** %8, align 8
  %33 = load i32, i32* %10, align 4
  %34 = call i64 @iwl_get_passive_dwell_time(%struct.iwl_priv* %32, i32 %33)
  store i64 %34, i64* %16, align 8
  %35 = load i64, i64* %16, align 8
  %36 = load i64, i64* %17, align 8
  %37 = icmp sle i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %27
  %39 = load i64, i64* %17, align 8
  %40 = add nsw i64 %39, 1
  store i64 %40, i64* %16, align 8
  br label %41

41:                                               ; preds = %38, %27
  store i32 0, i32* %19, align 4
  store i32 0, i32* %18, align 4
  br label %42

42:                                               ; preds = %154, %41
  %43 = load i32, i32* %19, align 4
  %44 = load %struct.iwl_priv*, %struct.iwl_priv** %8, align 8
  %45 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp slt i32 %43, %48
  br i1 %49, label %50, label %157

50:                                               ; preds = %42
  %51 = load %struct.iwl_priv*, %struct.iwl_priv** %8, align 8
  %52 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load %struct.ieee80211_channel**, %struct.ieee80211_channel*** %54, align 8
  %56 = load i32, i32* %19, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.ieee80211_channel*, %struct.ieee80211_channel** %55, i64 %57
  %59 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %58, align 8
  store %struct.ieee80211_channel* %59, %struct.ieee80211_channel** %14, align 8
  %60 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %14, align 8
  %61 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* %10, align 4
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %50
  br label %154

66:                                               ; preds = %50
  %67 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %14, align 8
  %68 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  store i64 %69, i64* %20, align 8
  %70 = load i64, i64* %20, align 8
  %71 = call i8* @cpu_to_le16(i64 %70)
  %72 = load %struct.iwl_scan_channel*, %struct.iwl_scan_channel** %13, align 8
  %73 = getelementptr inbounds %struct.iwl_scan_channel, %struct.iwl_scan_channel* %72, i32 0, i32 5
  store i8* %71, i8** %73, align 8
  %74 = load i64, i64* %11, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %66
  %77 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %14, align 8
  %78 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @IEEE80211_CHAN_NO_IR, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %76, %66
  %84 = load i32, i32* @SCAN_CHANNEL_TYPE_PASSIVE, align 4
  %85 = load %struct.iwl_scan_channel*, %struct.iwl_scan_channel** %13, align 8
  %86 = getelementptr inbounds %struct.iwl_scan_channel, %struct.iwl_scan_channel* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 8
  br label %91

87:                                               ; preds = %76
  %88 = load i32, i32* @SCAN_CHANNEL_TYPE_ACTIVE, align 4
  %89 = load %struct.iwl_scan_channel*, %struct.iwl_scan_channel** %13, align 8
  %90 = getelementptr inbounds %struct.iwl_scan_channel, %struct.iwl_scan_channel* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 8
  br label %91

91:                                               ; preds = %87, %83
  %92 = load i64, i64* %12, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %101

94:                                               ; preds = %91
  %95 = load i64, i64* %12, align 8
  %96 = call i32 @IWL_SCAN_PROBE_MASK(i64 %95)
  %97 = load %struct.iwl_scan_channel*, %struct.iwl_scan_channel** %13, align 8
  %98 = getelementptr inbounds %struct.iwl_scan_channel, %struct.iwl_scan_channel* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = or i32 %99, %96
  store i32 %100, i32* %98, align 8
  br label %101

101:                                              ; preds = %94, %91
  %102 = load i64, i64* %17, align 8
  %103 = call i8* @cpu_to_le16(i64 %102)
  %104 = load %struct.iwl_scan_channel*, %struct.iwl_scan_channel** %13, align 8
  %105 = getelementptr inbounds %struct.iwl_scan_channel, %struct.iwl_scan_channel* %104, i32 0, i32 4
  store i8* %103, i8** %105, align 8
  %106 = load i64, i64* %16, align 8
  %107 = call i8* @cpu_to_le16(i64 %106)
  %108 = load %struct.iwl_scan_channel*, %struct.iwl_scan_channel** %13, align 8
  %109 = getelementptr inbounds %struct.iwl_scan_channel, %struct.iwl_scan_channel* %108, i32 0, i32 3
  store i8* %107, i8** %109, align 8
  %110 = load %struct.iwl_scan_channel*, %struct.iwl_scan_channel** %13, align 8
  %111 = getelementptr inbounds %struct.iwl_scan_channel, %struct.iwl_scan_channel* %110, i32 0, i32 1
  store i32 110, i32* %111, align 4
  %112 = load i32, i32* %10, align 4
  %113 = load i32, i32* @NL80211_BAND_5GHZ, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %115, label %118

115:                                              ; preds = %101
  %116 = load %struct.iwl_scan_channel*, %struct.iwl_scan_channel** %13, align 8
  %117 = getelementptr inbounds %struct.iwl_scan_channel, %struct.iwl_scan_channel* %116, i32 0, i32 2
  store i32 59, i32* %117, align 8
  br label %121

118:                                              ; preds = %101
  %119 = load %struct.iwl_scan_channel*, %struct.iwl_scan_channel** %13, align 8
  %120 = getelementptr inbounds %struct.iwl_scan_channel, %struct.iwl_scan_channel* %119, i32 0, i32 2
  store i32 40, i32* %120, align 8
  br label %121

121:                                              ; preds = %118, %115
  %122 = load %struct.iwl_priv*, %struct.iwl_priv** %8, align 8
  %123 = load i64, i64* %20, align 8
  %124 = trunc i64 %123 to i32
  %125 = load %struct.iwl_scan_channel*, %struct.iwl_scan_channel** %13, align 8
  %126 = getelementptr inbounds %struct.iwl_scan_channel, %struct.iwl_scan_channel* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @le32_to_cpu(i32 %127)
  %129 = load %struct.iwl_scan_channel*, %struct.iwl_scan_channel** %13, align 8
  %130 = getelementptr inbounds %struct.iwl_scan_channel, %struct.iwl_scan_channel* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* @SCAN_CHANNEL_TYPE_ACTIVE, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  %135 = zext i1 %134 to i64
  %136 = select i1 %134, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %137 = load %struct.iwl_scan_channel*, %struct.iwl_scan_channel** %13, align 8
  %138 = getelementptr inbounds %struct.iwl_scan_channel, %struct.iwl_scan_channel* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* @SCAN_CHANNEL_TYPE_ACTIVE, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %121
  %144 = load i64, i64* %17, align 8
  br label %147

145:                                              ; preds = %121
  %146 = load i64, i64* %16, align 8
  br label %147

147:                                              ; preds = %145, %143
  %148 = phi i64 [ %144, %143 ], [ %146, %145 ]
  %149 = call i32 (%struct.iwl_priv*, i8*, i32, ...) @IWL_DEBUG_SCAN(%struct.iwl_priv* %122, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %124, i32 %128, i8* %136, i64 %148)
  %150 = load %struct.iwl_scan_channel*, %struct.iwl_scan_channel** %13, align 8
  %151 = getelementptr inbounds %struct.iwl_scan_channel, %struct.iwl_scan_channel* %150, i32 1
  store %struct.iwl_scan_channel* %151, %struct.iwl_scan_channel** %13, align 8
  %152 = load i32, i32* %18, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %18, align 4
  br label %154

154:                                              ; preds = %147, %65
  %155 = load i32, i32* %19, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %19, align 4
  br label %42

157:                                              ; preds = %42
  %158 = load %struct.iwl_priv*, %struct.iwl_priv** %8, align 8
  %159 = load i32, i32* %18, align 4
  %160 = call i32 (%struct.iwl_priv*, i8*, i32, ...) @IWL_DEBUG_SCAN(%struct.iwl_priv* %158, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %159)
  %161 = load i32, i32* %18, align 4
  store i32 %161, i32* %7, align 4
  br label %162

162:                                              ; preds = %157, %26
  %163 = load i32, i32* %7, align 4
  ret i32 %163
}

declare dso_local %struct.ieee80211_supported_band* @iwl_get_hw_mode(%struct.iwl_priv*, i32) #1

declare dso_local i64 @iwl_get_active_dwell_time(%struct.iwl_priv*, i32, i64) #1

declare dso_local i64 @iwl_get_passive_dwell_time(%struct.iwl_priv*, i32) #1

declare dso_local i8* @cpu_to_le16(i64) #1

declare dso_local i32 @IWL_SCAN_PROBE_MASK(i64) #1

declare dso_local i32 @IWL_DEBUG_SCAN(%struct.iwl_priv*, i8*, i32, ...) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
