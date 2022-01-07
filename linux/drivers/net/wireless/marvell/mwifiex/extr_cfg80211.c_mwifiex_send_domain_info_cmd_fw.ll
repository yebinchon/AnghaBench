; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_cfg80211.c_mwifiex_send_domain_info_cmd_fw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_cfg80211.c_mwifiex_send_domain_info_cmd_fw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { %struct.ieee80211_supported_band** }
%struct.ieee80211_supported_band = type { i64, %struct.ieee80211_channel* }
%struct.ieee80211_channel = type { i32, i64, i64 }
%struct.ieee80211_country_ie_triplet = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64 }
%struct.mwifiex_adapter = type { i8*, i32, %struct.mwifiex_802_11d_domain_reg }
%struct.mwifiex_802_11d_domain_reg = type { i8*, i64, %struct.ieee80211_country_ie_triplet* }
%struct.mwifiex_private = type { i32 }

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"11D: setting domain info in FW\0A\00", align 1
@IEEE80211_CHAN_DISABLED = common dso_local global i32 0, align 4
@MWIFIEX_BSS_ROLE_ANY = common dso_local global i32 0, align 4
@HostCmd_CMD_802_11D_DOMAIN_INFO = common dso_local global i32 0, align 4
@HostCmd_ACT_GEN_SET = common dso_local global i32 0, align 4
@INFO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mwifiex_send_domain_info_cmd_fw(%struct.wiphy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wiphy*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.ieee80211_country_ie_triplet*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.ieee80211_supported_band*, align 8
  %14 = alloca %struct.ieee80211_channel*, align 8
  %15 = alloca %struct.mwifiex_adapter*, align 8
  %16 = alloca %struct.mwifiex_private*, align 8
  %17 = alloca %struct.mwifiex_802_11d_domain_reg*, align 8
  store %struct.wiphy* %0, %struct.wiphy** %3, align 8
  store i64 0, i64* %4, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %11, align 8
  %18 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %19 = call %struct.mwifiex_adapter* @mwifiex_cfg80211_get_adapter(%struct.wiphy* %18)
  store %struct.mwifiex_adapter* %19, %struct.mwifiex_adapter** %15, align 8
  %20 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %15, align 8
  %21 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %20, i32 0, i32 2
  store %struct.mwifiex_802_11d_domain_reg* %21, %struct.mwifiex_802_11d_domain_reg** %17, align 8
  %22 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %15, align 8
  %23 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 0
  %26 = load i8, i8* %25, align 1
  %27 = load %struct.mwifiex_802_11d_domain_reg*, %struct.mwifiex_802_11d_domain_reg** %17, align 8
  %28 = getelementptr inbounds %struct.mwifiex_802_11d_domain_reg, %struct.mwifiex_802_11d_domain_reg* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 0
  store i8 %26, i8* %30, align 1
  %31 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %15, align 8
  %32 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 1
  %35 = load i8, i8* %34, align 1
  %36 = load %struct.mwifiex_802_11d_domain_reg*, %struct.mwifiex_802_11d_domain_reg** %17, align 8
  %37 = getelementptr inbounds %struct.mwifiex_802_11d_domain_reg, %struct.mwifiex_802_11d_domain_reg* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 1
  store i8 %35, i8* %39, align 1
  %40 = load %struct.mwifiex_802_11d_domain_reg*, %struct.mwifiex_802_11d_domain_reg** %17, align 8
  %41 = getelementptr inbounds %struct.mwifiex_802_11d_domain_reg, %struct.mwifiex_802_11d_domain_reg* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 2
  store i8 32, i8* %43, align 1
  %44 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %15, align 8
  %45 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @mwifiex_band_to_radio_type(i32 %46)
  store i32 %47, i32* %12, align 4
  %48 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %49 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %48, i32 0, i32 0
  %50 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %49, align 8
  %51 = load i32, i32* %12, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %50, i64 %52
  %54 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %53, align 8
  %55 = icmp ne %struct.ieee80211_supported_band* %54, null
  br i1 %55, label %60, label %56

56:                                               ; preds = %1
  %57 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %15, align 8
  %58 = load i32, i32* @ERROR, align 4
  %59 = call i32 @mwifiex_dbg(%struct.mwifiex_adapter* %57, i32 %58, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %187

60:                                               ; preds = %1
  %61 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %62 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %61, i32 0, i32 0
  %63 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %62, align 8
  %64 = load i32, i32* %12, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %63, i64 %65
  %67 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %66, align 8
  store %struct.ieee80211_supported_band* %67, %struct.ieee80211_supported_band** %13, align 8
  store i64 0, i64* %10, align 8
  br label %68

68:                                               ; preds = %144, %60
  %69 = load i64, i64* %10, align 8
  %70 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %13, align 8
  %71 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp ult i64 %69, %72
  br i1 %73, label %74, label %147

74:                                               ; preds = %68
  %75 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %13, align 8
  %76 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %75, i32 0, i32 1
  %77 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %76, align 8
  %78 = load i64, i64* %10, align 8
  %79 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %77, i64 %78
  store %struct.ieee80211_channel* %79, %struct.ieee80211_channel** %14, align 8
  %80 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %14, align 8
  %81 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @IEEE80211_CHAN_DISABLED, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %74
  br label %144

87:                                               ; preds = %74
  %88 = load i64, i64* %11, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %98, label %90

90:                                               ; preds = %87
  store i64 1, i64* %11, align 8
  %91 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %14, align 8
  %92 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  store i64 %93, i64* %7, align 8
  %94 = load i64, i64* %7, align 8
  store i64 %94, i64* %8, align 8
  %95 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %14, align 8
  %96 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  store i64 %97, i64* %9, align 8
  store i64 1, i64* %6, align 8
  br label %144

98:                                               ; preds = %87
  %99 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %14, align 8
  %100 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* %8, align 8
  %103 = add i64 %102, 1
  %104 = icmp eq i64 %101, %103
  br i1 %104, label %105, label %116

105:                                              ; preds = %98
  %106 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %14, align 8
  %107 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* %9, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %116

111:                                              ; preds = %105
  %112 = load i64, i64* %8, align 8
  %113 = add i64 %112, 1
  store i64 %113, i64* %8, align 8
  %114 = load i64, i64* %6, align 8
  %115 = add i64 %114, 1
  store i64 %115, i64* %6, align 8
  br label %143

116:                                              ; preds = %105, %98
  %117 = load %struct.mwifiex_802_11d_domain_reg*, %struct.mwifiex_802_11d_domain_reg** %17, align 8
  %118 = getelementptr inbounds %struct.mwifiex_802_11d_domain_reg, %struct.mwifiex_802_11d_domain_reg* %117, i32 0, i32 2
  %119 = load %struct.ieee80211_country_ie_triplet*, %struct.ieee80211_country_ie_triplet** %118, align 8
  %120 = load i64, i64* %4, align 8
  %121 = getelementptr inbounds %struct.ieee80211_country_ie_triplet, %struct.ieee80211_country_ie_triplet* %119, i64 %120
  store %struct.ieee80211_country_ie_triplet* %121, %struct.ieee80211_country_ie_triplet** %5, align 8
  %122 = load i64, i64* %7, align 8
  %123 = load %struct.ieee80211_country_ie_triplet*, %struct.ieee80211_country_ie_triplet** %5, align 8
  %124 = getelementptr inbounds %struct.ieee80211_country_ie_triplet, %struct.ieee80211_country_ie_triplet* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 0
  store i64 %122, i64* %125, align 8
  %126 = load i64, i64* %6, align 8
  %127 = load %struct.ieee80211_country_ie_triplet*, %struct.ieee80211_country_ie_triplet** %5, align 8
  %128 = getelementptr inbounds %struct.ieee80211_country_ie_triplet, %struct.ieee80211_country_ie_triplet* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 1
  store i64 %126, i64* %129, align 8
  %130 = load i64, i64* %9, align 8
  %131 = load %struct.ieee80211_country_ie_triplet*, %struct.ieee80211_country_ie_triplet** %5, align 8
  %132 = getelementptr inbounds %struct.ieee80211_country_ie_triplet, %struct.ieee80211_country_ie_triplet* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 2
  store i64 %130, i64* %133, align 8
  %134 = load i64, i64* %4, align 8
  %135 = add i64 %134, 1
  store i64 %135, i64* %4, align 8
  %136 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %14, align 8
  %137 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  store i64 %138, i64* %7, align 8
  %139 = load i64, i64* %7, align 8
  store i64 %139, i64* %8, align 8
  %140 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %14, align 8
  %141 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %140, i32 0, i32 2
  %142 = load i64, i64* %141, align 8
  store i64 %142, i64* %9, align 8
  store i64 1, i64* %6, align 8
  br label %143

143:                                              ; preds = %116, %111
  br label %144

144:                                              ; preds = %143, %90, %86
  %145 = load i64, i64* %10, align 8
  %146 = add i64 %145, 1
  store i64 %146, i64* %10, align 8
  br label %68

147:                                              ; preds = %68
  %148 = load i64, i64* %11, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %170

150:                                              ; preds = %147
  %151 = load %struct.mwifiex_802_11d_domain_reg*, %struct.mwifiex_802_11d_domain_reg** %17, align 8
  %152 = getelementptr inbounds %struct.mwifiex_802_11d_domain_reg, %struct.mwifiex_802_11d_domain_reg* %151, i32 0, i32 2
  %153 = load %struct.ieee80211_country_ie_triplet*, %struct.ieee80211_country_ie_triplet** %152, align 8
  %154 = load i64, i64* %4, align 8
  %155 = getelementptr inbounds %struct.ieee80211_country_ie_triplet, %struct.ieee80211_country_ie_triplet* %153, i64 %154
  store %struct.ieee80211_country_ie_triplet* %155, %struct.ieee80211_country_ie_triplet** %5, align 8
  %156 = load i64, i64* %7, align 8
  %157 = load %struct.ieee80211_country_ie_triplet*, %struct.ieee80211_country_ie_triplet** %5, align 8
  %158 = getelementptr inbounds %struct.ieee80211_country_ie_triplet, %struct.ieee80211_country_ie_triplet* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i32 0, i32 0
  store i64 %156, i64* %159, align 8
  %160 = load i64, i64* %6, align 8
  %161 = load %struct.ieee80211_country_ie_triplet*, %struct.ieee80211_country_ie_triplet** %5, align 8
  %162 = getelementptr inbounds %struct.ieee80211_country_ie_triplet, %struct.ieee80211_country_ie_triplet* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %162, i32 0, i32 1
  store i64 %160, i64* %163, align 8
  %164 = load i64, i64* %9, align 8
  %165 = load %struct.ieee80211_country_ie_triplet*, %struct.ieee80211_country_ie_triplet** %5, align 8
  %166 = getelementptr inbounds %struct.ieee80211_country_ie_triplet, %struct.ieee80211_country_ie_triplet* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %166, i32 0, i32 2
  store i64 %164, i64* %167, align 8
  %168 = load i64, i64* %4, align 8
  %169 = add i64 %168, 1
  store i64 %169, i64* %4, align 8
  br label %170

170:                                              ; preds = %150, %147
  %171 = load i64, i64* %4, align 8
  %172 = load %struct.mwifiex_802_11d_domain_reg*, %struct.mwifiex_802_11d_domain_reg** %17, align 8
  %173 = getelementptr inbounds %struct.mwifiex_802_11d_domain_reg, %struct.mwifiex_802_11d_domain_reg* %172, i32 0, i32 1
  store i64 %171, i64* %173, align 8
  %174 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %15, align 8
  %175 = load i32, i32* @MWIFIEX_BSS_ROLE_ANY, align 4
  %176 = call %struct.mwifiex_private* @mwifiex_get_priv(%struct.mwifiex_adapter* %174, i32 %175)
  store %struct.mwifiex_private* %176, %struct.mwifiex_private** %16, align 8
  %177 = load %struct.mwifiex_private*, %struct.mwifiex_private** %16, align 8
  %178 = load i32, i32* @HostCmd_CMD_802_11D_DOMAIN_INFO, align 4
  %179 = load i32, i32* @HostCmd_ACT_GEN_SET, align 4
  %180 = call i64 @mwifiex_send_cmd(%struct.mwifiex_private* %177, i32 %178, i32 %179, i32 0, i32* null, i32 0)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %186

182:                                              ; preds = %170
  %183 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %15, align 8
  %184 = load i32, i32* @INFO, align 4
  %185 = call i32 @mwifiex_dbg(%struct.mwifiex_adapter* %183, i32 %184, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %187

186:                                              ; preds = %170
  store i32 0, i32* %2, align 4
  br label %187

187:                                              ; preds = %186, %182, %56
  %188 = load i32, i32* %2, align 4
  ret i32 %188
}

declare dso_local %struct.mwifiex_adapter* @mwifiex_cfg80211_get_adapter(%struct.wiphy*) #1

declare dso_local i32 @mwifiex_band_to_radio_type(i32) #1

declare dso_local i32 @mwifiex_dbg(%struct.mwifiex_adapter*, i32, i8*) #1

declare dso_local %struct.mwifiex_private* @mwifiex_get_priv(%struct.mwifiex_adapter*, i32) #1

declare dso_local i64 @mwifiex_send_cmd(%struct.mwifiex_private*, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
