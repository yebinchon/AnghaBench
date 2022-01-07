; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_scan.c_mwifiex_is_network_compatible.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_scan.c_mwifiex_is_network_compatible.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { i64, %struct.mwifiex_adapter*, %struct.TYPE_2__, i64 }
%struct.mwifiex_adapter = type { i32 }
%struct.TYPE_2__ = type { i64 }
%struct.mwifiex_bssdescriptor = type { i32, i64, i64, i64 }

@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@IOCTL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"info: return success directly in WPS period\0A\00", align 1
@INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"Don't connect to AP with WLAN_EID_CHANNEL_SWITCH\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"info: return success for WAPI AP\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"info: Disable 11n in WEP mode.\0A\00", align 1
@BAND_GN = common dso_local global i32 0, align 4
@BAND_AN = common dso_local global i32 0, align 4
@CIPHER_SUITE_CCMP = common dso_local global i32 0, align 4
@CIPHER_SUITE_TKIP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [49 x i8] c"info: Disable 11n if AES\09is not supported by AP\0A\00", align 1
@ERROR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mwifiex_private*, %struct.mwifiex_bssdescriptor*, i64)* @mwifiex_is_network_compatible to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_is_network_compatible(%struct.mwifiex_private* %0, %struct.mwifiex_bssdescriptor* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mwifiex_private*, align 8
  %6 = alloca %struct.mwifiex_bssdescriptor*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.mwifiex_adapter*, align 8
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %5, align 8
  store %struct.mwifiex_bssdescriptor* %1, %struct.mwifiex_bssdescriptor** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %10 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %9, i32 0, i32 1
  %11 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %10, align 8
  store %struct.mwifiex_adapter* %11, %struct.mwifiex_adapter** %8, align 8
  %12 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %6, align 8
  %13 = getelementptr inbounds %struct.mwifiex_bssdescriptor, %struct.mwifiex_bssdescriptor* %12, i32 0, i32 0
  store i32 0, i32* %13, align 8
  %14 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %15 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %31

18:                                               ; preds = %3
  %19 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %20 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %18
  %25 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %6, align 8
  %26 = getelementptr inbounds %struct.mwifiex_bssdescriptor, %struct.mwifiex_bssdescriptor* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  store i32 0, i32* %4, align 4
  br label %199

31:                                               ; preds = %24, %18, %3
  %32 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %33 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %31
  %38 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %8, align 8
  %39 = load i32, i32* @IOCTL, align 4
  %40 = call i32 @mwifiex_dbg(%struct.mwifiex_adapter* %38, i32 %39, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %199

41:                                               ; preds = %31
  %42 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %6, align 8
  %43 = getelementptr inbounds %struct.mwifiex_bssdescriptor, %struct.mwifiex_bssdescriptor* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %8, align 8
  %48 = load i32, i32* @INFO, align 4
  %49 = call i32 @mwifiex_dbg(%struct.mwifiex_adapter* %47, i32 %48, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %199

50:                                               ; preds = %41
  %51 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %52 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %6, align 8
  %53 = call i64 @mwifiex_is_bss_wapi(%struct.mwifiex_private* %51, %struct.mwifiex_bssdescriptor* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %50
  %56 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %8, align 8
  %57 = load i32, i32* @INFO, align 4
  %58 = call i32 @mwifiex_dbg(%struct.mwifiex_adapter* %56, i32 %57, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %199

59:                                               ; preds = %50
  %60 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %6, align 8
  %61 = getelementptr inbounds %struct.mwifiex_bssdescriptor, %struct.mwifiex_bssdescriptor* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* %7, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %198

65:                                               ; preds = %59
  %66 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %67 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %6, align 8
  %68 = call i64 @mwifiex_is_bss_no_sec(%struct.mwifiex_private* %66, %struct.mwifiex_bssdescriptor* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  store i32 0, i32* %4, align 4
  br label %199

71:                                               ; preds = %65
  %72 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %73 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %6, align 8
  %74 = call i64 @mwifiex_is_bss_static_wep(%struct.mwifiex_private* %72, %struct.mwifiex_bssdescriptor* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %71
  %77 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %8, align 8
  %78 = load i32, i32* @INFO, align 4
  %79 = call i32 @mwifiex_dbg(%struct.mwifiex_adapter* %77, i32 %78, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %80 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %6, align 8
  %81 = getelementptr inbounds %struct.mwifiex_bssdescriptor, %struct.mwifiex_bssdescriptor* %80, i32 0, i32 0
  store i32 1, i32* %81, align 8
  store i32 0, i32* %4, align 4
  br label %199

82:                                               ; preds = %71
  %83 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %84 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %6, align 8
  %85 = call i64 @mwifiex_is_bss_wpa(%struct.mwifiex_private* %83, %struct.mwifiex_bssdescriptor* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %129

87:                                               ; preds = %82
  %88 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %89 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %88, i32 0, i32 1
  %90 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %89, align 8
  %91 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @BAND_GN, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %105, label %96

96:                                               ; preds = %87
  %97 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %98 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %97, i32 0, i32 1
  %99 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %98, align 8
  %100 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @BAND_AN, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %128

105:                                              ; preds = %96, %87
  %106 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %6, align 8
  %107 = getelementptr inbounds %struct.mwifiex_bssdescriptor, %struct.mwifiex_bssdescriptor* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %128

110:                                              ; preds = %105
  %111 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %6, align 8
  %112 = load i32, i32* @CIPHER_SUITE_CCMP, align 4
  %113 = call i64 @mwifiex_is_wpa_oui_present(%struct.mwifiex_bssdescriptor* %111, i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %128, label %115

115:                                              ; preds = %110
  %116 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %6, align 8
  %117 = load i32, i32* @CIPHER_SUITE_TKIP, align 4
  %118 = call i64 @mwifiex_is_wpa_oui_present(%struct.mwifiex_bssdescriptor* %116, i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %126

120:                                              ; preds = %115
  %121 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %8, align 8
  %122 = load i32, i32* @INFO, align 4
  %123 = call i32 @mwifiex_dbg(%struct.mwifiex_adapter* %121, i32 %122, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0))
  %124 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %6, align 8
  %125 = getelementptr inbounds %struct.mwifiex_bssdescriptor, %struct.mwifiex_bssdescriptor* %124, i32 0, i32 0
  store i32 1, i32* %125, align 8
  br label %127

126:                                              ; preds = %115
  store i32 -1, i32* %4, align 4
  br label %199

127:                                              ; preds = %120
  br label %128

128:                                              ; preds = %127, %110, %105, %96
  store i32 0, i32* %4, align 4
  br label %199

129:                                              ; preds = %82
  %130 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %131 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %6, align 8
  %132 = call i64 @mwifiex_is_bss_wpa2(%struct.mwifiex_private* %130, %struct.mwifiex_bssdescriptor* %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %176

134:                                              ; preds = %129
  %135 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %136 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %135, i32 0, i32 1
  %137 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %136, align 8
  %138 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @BAND_GN, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %152, label %143

143:                                              ; preds = %134
  %144 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %145 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %144, i32 0, i32 1
  %146 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %145, align 8
  %147 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* @BAND_AN, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %175

152:                                              ; preds = %143, %134
  %153 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %6, align 8
  %154 = getelementptr inbounds %struct.mwifiex_bssdescriptor, %struct.mwifiex_bssdescriptor* %153, i32 0, i32 2
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %175

157:                                              ; preds = %152
  %158 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %6, align 8
  %159 = load i32, i32* @CIPHER_SUITE_CCMP, align 4
  %160 = call i64 @mwifiex_is_rsn_oui_present(%struct.mwifiex_bssdescriptor* %158, i32 %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %175, label %162

162:                                              ; preds = %157
  %163 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %6, align 8
  %164 = load i32, i32* @CIPHER_SUITE_TKIP, align 4
  %165 = call i64 @mwifiex_is_rsn_oui_present(%struct.mwifiex_bssdescriptor* %163, i32 %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %173

167:                                              ; preds = %162
  %168 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %8, align 8
  %169 = load i32, i32* @INFO, align 4
  %170 = call i32 @mwifiex_dbg(%struct.mwifiex_adapter* %168, i32 %169, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0))
  %171 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %6, align 8
  %172 = getelementptr inbounds %struct.mwifiex_bssdescriptor, %struct.mwifiex_bssdescriptor* %171, i32 0, i32 0
  store i32 1, i32* %172, align 8
  br label %174

173:                                              ; preds = %162
  store i32 -1, i32* %4, align 4
  br label %199

174:                                              ; preds = %167
  br label %175

175:                                              ; preds = %174, %157, %152, %143
  store i32 0, i32* %4, align 4
  br label %199

176:                                              ; preds = %129
  %177 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %178 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %6, align 8
  %179 = call i64 @mwifiex_is_bss_adhoc_aes(%struct.mwifiex_private* %177, %struct.mwifiex_bssdescriptor* %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %176
  store i32 0, i32* %4, align 4
  br label %199

182:                                              ; preds = %176
  %183 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %184 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %6, align 8
  %185 = call i64 @mwifiex_is_bss_dynamic_wep(%struct.mwifiex_private* %183, %struct.mwifiex_bssdescriptor* %184)
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %188

187:                                              ; preds = %182
  store i32 0, i32* %4, align 4
  br label %199

188:                                              ; preds = %182
  br label %189

189:                                              ; preds = %188
  br label %190

190:                                              ; preds = %189
  br label %191

191:                                              ; preds = %190
  br label %192

192:                                              ; preds = %191
  br label %193

193:                                              ; preds = %192
  %194 = load i32, i32* @ERROR, align 4
  %195 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %196 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %6, align 8
  %197 = call i32 @dbg_security_flags(i32 %194, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), %struct.mwifiex_private* %195, %struct.mwifiex_bssdescriptor* %196)
  store i32 -1, i32* %4, align 4
  br label %199

198:                                              ; preds = %59
  store i32 -1, i32* %4, align 4
  br label %199

199:                                              ; preds = %198, %193, %187, %181, %175, %173, %128, %126, %76, %70, %55, %46, %37, %30
  %200 = load i32, i32* %4, align 4
  ret i32 %200
}

declare dso_local i32 @mwifiex_dbg(%struct.mwifiex_adapter*, i32, i8*) #1

declare dso_local i64 @mwifiex_is_bss_wapi(%struct.mwifiex_private*, %struct.mwifiex_bssdescriptor*) #1

declare dso_local i64 @mwifiex_is_bss_no_sec(%struct.mwifiex_private*, %struct.mwifiex_bssdescriptor*) #1

declare dso_local i64 @mwifiex_is_bss_static_wep(%struct.mwifiex_private*, %struct.mwifiex_bssdescriptor*) #1

declare dso_local i64 @mwifiex_is_bss_wpa(%struct.mwifiex_private*, %struct.mwifiex_bssdescriptor*) #1

declare dso_local i64 @mwifiex_is_wpa_oui_present(%struct.mwifiex_bssdescriptor*, i32) #1

declare dso_local i64 @mwifiex_is_bss_wpa2(%struct.mwifiex_private*, %struct.mwifiex_bssdescriptor*) #1

declare dso_local i64 @mwifiex_is_rsn_oui_present(%struct.mwifiex_bssdescriptor*, i32) #1

declare dso_local i64 @mwifiex_is_bss_adhoc_aes(%struct.mwifiex_private*, %struct.mwifiex_bssdescriptor*) #1

declare dso_local i64 @mwifiex_is_bss_dynamic_wep(%struct.mwifiex_private*, %struct.mwifiex_bssdescriptor*) #1

declare dso_local i32 @dbg_security_flags(i32, i8*, %struct.mwifiex_private*, %struct.mwifiex_bssdescriptor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
