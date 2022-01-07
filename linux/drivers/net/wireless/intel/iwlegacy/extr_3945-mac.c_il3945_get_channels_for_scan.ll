; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_3945-mac.c_il3945_get_channels_for_scan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_3945-mac.c_il3945_get_channels_for_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, %struct.ieee80211_channel** }
%struct.ieee80211_channel = type { i32, i32, i32 }
%struct.il3945_scan_channel = type { i32, i32, %struct.TYPE_4__, i8*, i8* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_supported_band = type { i32 }
%struct.il_channel_info = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"Channel %d is INVALID for this band.\0A\00", align 1
@IEEE80211_CHAN_NO_IR = common dso_local global i32 0, align 4
@NL80211_BAND_5GHZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Scanning %d [%s %d]\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"ACTIVE\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"PASSIVE\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"total channels to scan %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.il_priv*, i32, i64, i64, %struct.il3945_scan_channel*, %struct.ieee80211_vif*)* @il3945_get_channels_for_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @il3945_get_channels_for_scan(%struct.il_priv* %0, i32 %1, i64 %2, i64 %3, %struct.il3945_scan_channel* %4, %struct.ieee80211_vif* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.il_priv*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.il3945_scan_channel*, align 8
  %13 = alloca %struct.ieee80211_vif*, align 8
  %14 = alloca %struct.ieee80211_channel*, align 8
  %15 = alloca %struct.ieee80211_supported_band*, align 8
  %16 = alloca %struct.il_channel_info*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.il_priv* %0, %struct.il_priv** %8, align 8
  store i32 %1, i32* %9, align 4
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store %struct.il3945_scan_channel* %4, %struct.il3945_scan_channel** %12, align 8
  store %struct.ieee80211_vif* %5, %struct.ieee80211_vif** %13, align 8
  store i64 0, i64* %17, align 8
  store i64 0, i64* %18, align 8
  %21 = load %struct.il_priv*, %struct.il_priv** %8, align 8
  %22 = load i32, i32* %9, align 4
  %23 = call %struct.ieee80211_supported_band* @il_get_hw_mode(%struct.il_priv* %21, i32 %22)
  store %struct.ieee80211_supported_band* %23, %struct.ieee80211_supported_band** %15, align 8
  %24 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %15, align 8
  %25 = icmp ne %struct.ieee80211_supported_band* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %210

27:                                               ; preds = %6
  %28 = load %struct.il_priv*, %struct.il_priv** %8, align 8
  %29 = load i32, i32* %9, align 4
  %30 = load i64, i64* %11, align 8
  %31 = call i64 @il_get_active_dwell_time(%struct.il_priv* %28, i32 %29, i64 %30)
  store i64 %31, i64* %18, align 8
  %32 = load %struct.il_priv*, %struct.il_priv** %8, align 8
  %33 = load i32, i32* %9, align 4
  %34 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %13, align 8
  %35 = call i64 @il_get_passive_dwell_time(%struct.il_priv* %32, i32 %33, %struct.ieee80211_vif* %34)
  store i64 %35, i64* %17, align 8
  %36 = load i64, i64* %17, align 8
  %37 = load i64, i64* %18, align 8
  %38 = icmp sle i64 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %27
  %40 = load i64, i64* %18, align 8
  %41 = add nsw i64 %40, 1
  store i64 %41, i64* %17, align 8
  br label %42

42:                                               ; preds = %39, %27
  store i32 0, i32* %20, align 4
  store i32 0, i32* %19, align 4
  br label %43

43:                                               ; preds = %203, %42
  %44 = load i32, i32* %20, align 4
  %45 = load %struct.il_priv*, %struct.il_priv** %8, align 8
  %46 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %45, i32 0, i32 1
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp slt i32 %44, %49
  br i1 %50, label %51, label %206

51:                                               ; preds = %43
  %52 = load %struct.il_priv*, %struct.il_priv** %8, align 8
  %53 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %52, i32 0, i32 1
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  %56 = load %struct.ieee80211_channel**, %struct.ieee80211_channel*** %55, align 8
  %57 = load i32, i32* %20, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.ieee80211_channel*, %struct.ieee80211_channel** %56, i64 %58
  %60 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %59, align 8
  store %struct.ieee80211_channel* %60, %struct.ieee80211_channel** %14, align 8
  %61 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %14, align 8
  %62 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %9, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %51
  br label %203

67:                                               ; preds = %51
  %68 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %14, align 8
  %69 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.il3945_scan_channel*, %struct.il3945_scan_channel** %12, align 8
  %72 = getelementptr inbounds %struct.il3945_scan_channel, %struct.il3945_scan_channel* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  %73 = load %struct.il_priv*, %struct.il_priv** %8, align 8
  %74 = load i32, i32* %9, align 4
  %75 = load %struct.il3945_scan_channel*, %struct.il3945_scan_channel** %12, align 8
  %76 = getelementptr inbounds %struct.il3945_scan_channel, %struct.il3945_scan_channel* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call %struct.il_channel_info* @il_get_channel_info(%struct.il_priv* %73, i32 %74, i32 %77)
  store %struct.il_channel_info* %78, %struct.il_channel_info** %16, align 8
  %79 = load %struct.il_channel_info*, %struct.il_channel_info** %16, align 8
  %80 = call i32 @il_is_channel_valid(%struct.il_channel_info* %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %87, label %82

82:                                               ; preds = %67
  %83 = load %struct.il3945_scan_channel*, %struct.il3945_scan_channel** %12, align 8
  %84 = getelementptr inbounds %struct.il3945_scan_channel, %struct.il3945_scan_channel* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 (i8*, i32, ...) @D_SCAN(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %85)
  br label %203

87:                                               ; preds = %67
  %88 = load i64, i64* %18, align 8
  %89 = call i8* @cpu_to_le16(i64 %88)
  %90 = load %struct.il3945_scan_channel*, %struct.il3945_scan_channel** %12, align 8
  %91 = getelementptr inbounds %struct.il3945_scan_channel, %struct.il3945_scan_channel* %90, i32 0, i32 3
  store i8* %89, i8** %91, align 8
  %92 = load i64, i64* %17, align 8
  %93 = call i8* @cpu_to_le16(i64 %92)
  %94 = load %struct.il3945_scan_channel*, %struct.il3945_scan_channel** %12, align 8
  %95 = getelementptr inbounds %struct.il3945_scan_channel, %struct.il3945_scan_channel* %94, i32 0, i32 4
  store i8* %93, i8** %95, align 8
  %96 = load i64, i64* %10, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %109

98:                                               ; preds = %87
  %99 = load %struct.il_channel_info*, %struct.il_channel_info** %16, align 8
  %100 = call i64 @il_is_channel_passive(%struct.il_channel_info* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %109, label %102

102:                                              ; preds = %98
  %103 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %14, align 8
  %104 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @IEEE80211_CHAN_NO_IR, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %124

109:                                              ; preds = %102, %98, %87
  %110 = load %struct.il3945_scan_channel*, %struct.il3945_scan_channel** %12, align 8
  %111 = getelementptr inbounds %struct.il3945_scan_channel, %struct.il3945_scan_channel* %110, i32 0, i32 1
  store i32 0, i32* %111, align 4
  %112 = load %struct.il_priv*, %struct.il_priv** %8, align 8
  %113 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @IL_UCODE_API(i32 %114)
  %116 = icmp eq i32 %115, 1
  br i1 %116, label %117, label %123

117:                                              ; preds = %109
  %118 = load i64, i64* %17, align 8
  %119 = sub nsw i64 %118, 1
  %120 = call i8* @cpu_to_le16(i64 %119)
  %121 = load %struct.il3945_scan_channel*, %struct.il3945_scan_channel** %12, align 8
  %122 = getelementptr inbounds %struct.il3945_scan_channel, %struct.il3945_scan_channel* %121, i32 0, i32 3
  store i8* %120, i8** %122, align 8
  br label %123

123:                                              ; preds = %117, %109
  br label %127

124:                                              ; preds = %102
  %125 = load %struct.il3945_scan_channel*, %struct.il3945_scan_channel** %12, align 8
  %126 = getelementptr inbounds %struct.il3945_scan_channel, %struct.il3945_scan_channel* %125, i32 0, i32 1
  store i32 1, i32* %126, align 4
  br label %127

127:                                              ; preds = %124, %123
  %128 = load %struct.il_priv*, %struct.il_priv** %8, align 8
  %129 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @IL_UCODE_API(i32 %130)
  %132 = icmp sge i32 %131, 2
  br i1 %132, label %133, label %144

133:                                              ; preds = %127
  %134 = load i64, i64* %11, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %143

136:                                              ; preds = %133
  %137 = load i64, i64* %11, align 8
  %138 = call i32 @IL39_SCAN_PROBE_MASK(i64 %137)
  %139 = load %struct.il3945_scan_channel*, %struct.il3945_scan_channel** %12, align 8
  %140 = getelementptr inbounds %struct.il3945_scan_channel, %struct.il3945_scan_channel* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = or i32 %141, %138
  store i32 %142, i32* %140, align 4
  br label %143

143:                                              ; preds = %136, %133
  br label %161

144:                                              ; preds = %127
  %145 = load %struct.il3945_scan_channel*, %struct.il3945_scan_channel** %12, align 8
  %146 = getelementptr inbounds %struct.il3945_scan_channel, %struct.il3945_scan_channel* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = and i32 %147, 1
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %160

150:                                              ; preds = %144
  %151 = load i64, i64* %11, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %160

153:                                              ; preds = %150
  %154 = load i64, i64* %11, align 8
  %155 = call i32 @IL39_SCAN_PROBE_MASK(i64 %154)
  %156 = load %struct.il3945_scan_channel*, %struct.il3945_scan_channel** %12, align 8
  %157 = getelementptr inbounds %struct.il3945_scan_channel, %struct.il3945_scan_channel* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = or i32 %158, %155
  store i32 %159, i32* %157, align 4
  br label %160

160:                                              ; preds = %153, %150, %144
  br label %161

161:                                              ; preds = %160, %143
  %162 = load %struct.il3945_scan_channel*, %struct.il3945_scan_channel** %12, align 8
  %163 = getelementptr inbounds %struct.il3945_scan_channel, %struct.il3945_scan_channel* %162, i32 0, i32 2
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 0
  store i32 110, i32* %164, align 8
  %165 = load i32, i32* %9, align 4
  %166 = load i32, i32* @NL80211_BAND_5GHZ, align 4
  %167 = icmp eq i32 %165, %166
  br i1 %167, label %168, label %172

168:                                              ; preds = %161
  %169 = load %struct.il3945_scan_channel*, %struct.il3945_scan_channel** %12, align 8
  %170 = getelementptr inbounds %struct.il3945_scan_channel, %struct.il3945_scan_channel* %169, i32 0, i32 2
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 1
  store i32 59, i32* %171, align 4
  br label %176

172:                                              ; preds = %161
  %173 = load %struct.il3945_scan_channel*, %struct.il3945_scan_channel** %12, align 8
  %174 = getelementptr inbounds %struct.il3945_scan_channel, %struct.il3945_scan_channel* %173, i32 0, i32 2
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 1
  store i32 40, i32* %175, align 4
  br label %176

176:                                              ; preds = %172, %168
  %177 = load %struct.il3945_scan_channel*, %struct.il3945_scan_channel** %12, align 8
  %178 = getelementptr inbounds %struct.il3945_scan_channel, %struct.il3945_scan_channel* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = load %struct.il3945_scan_channel*, %struct.il3945_scan_channel** %12, align 8
  %181 = getelementptr inbounds %struct.il3945_scan_channel, %struct.il3945_scan_channel* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = and i32 %182, 1
  %184 = icmp ne i32 %183, 0
  %185 = zext i1 %184 to i64
  %186 = select i1 %184, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)
  %187 = load %struct.il3945_scan_channel*, %struct.il3945_scan_channel** %12, align 8
  %188 = getelementptr inbounds %struct.il3945_scan_channel, %struct.il3945_scan_channel* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = and i32 %189, 1
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %194

192:                                              ; preds = %176
  %193 = load i64, i64* %18, align 8
  br label %196

194:                                              ; preds = %176
  %195 = load i64, i64* %17, align 8
  br label %196

196:                                              ; preds = %194, %192
  %197 = phi i64 [ %193, %192 ], [ %195, %194 ]
  %198 = call i32 (i8*, i32, ...) @D_SCAN(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %179, i8* %186, i64 %197)
  %199 = load %struct.il3945_scan_channel*, %struct.il3945_scan_channel** %12, align 8
  %200 = getelementptr inbounds %struct.il3945_scan_channel, %struct.il3945_scan_channel* %199, i32 1
  store %struct.il3945_scan_channel* %200, %struct.il3945_scan_channel** %12, align 8
  %201 = load i32, i32* %19, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %19, align 4
  br label %203

203:                                              ; preds = %196, %82, %66
  %204 = load i32, i32* %20, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %20, align 4
  br label %43

206:                                              ; preds = %43
  %207 = load i32, i32* %19, align 4
  %208 = call i32 (i8*, i32, ...) @D_SCAN(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %207)
  %209 = load i32, i32* %19, align 4
  store i32 %209, i32* %7, align 4
  br label %210

210:                                              ; preds = %206, %26
  %211 = load i32, i32* %7, align 4
  ret i32 %211
}

declare dso_local %struct.ieee80211_supported_band* @il_get_hw_mode(%struct.il_priv*, i32) #1

declare dso_local i64 @il_get_active_dwell_time(%struct.il_priv*, i32, i64) #1

declare dso_local i64 @il_get_passive_dwell_time(%struct.il_priv*, i32, %struct.ieee80211_vif*) #1

declare dso_local %struct.il_channel_info* @il_get_channel_info(%struct.il_priv*, i32, i32) #1

declare dso_local i32 @il_is_channel_valid(%struct.il_channel_info*) #1

declare dso_local i32 @D_SCAN(i8*, i32, ...) #1

declare dso_local i8* @cpu_to_le16(i64) #1

declare dso_local i64 @il_is_channel_passive(%struct.il_channel_info*) #1

declare dso_local i32 @IL_UCODE_API(i32) #1

declare dso_local i32 @IL39_SCAN_PROBE_MASK(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
