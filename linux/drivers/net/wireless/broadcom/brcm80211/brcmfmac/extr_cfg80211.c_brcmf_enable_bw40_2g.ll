; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_cfg80211.c_brcmf_enable_bw40_2g.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_cfg80211.c_brcmf_enable_bw40_2g.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_cfg80211_info = type { %struct.TYPE_4__, %struct.brcmf_pub* }
%struct.TYPE_4__ = type { i32 (%struct.brcmu_chan*)*, i32 (%struct.brcmu_chan*)* }
%struct.brcmu_chan = type { i64, i64, i64, i64, i64, i32 }
%struct.brcmf_pub = type { i32 }
%struct.brcmf_if = type { i32 }
%struct.ieee80211_supported_band = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.brcmf_fil_bwcap_le = type { i8*, i8* }
%struct.brcmf_chanspec_list = type { i32*, i32 }
%struct.TYPE_5__ = type { %struct.ieee80211_supported_band** }

@WLC_BAND_5G = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"bw_cap\00", align 1
@WLC_BAND_2G = common dso_local global i32 0, align 4
@WLC_BW_CAP_40MHZ = common dso_local global i32 0, align 4
@INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"fallback to mimo_bw_cap\0A\00", align 1
@WLC_N_BW_40ALL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"mimo_bw_cap\00", align 1
@BRCMF_DCMD_MEDLEN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BRCMU_CHAN_BAND_2G = common dso_local global i64 0, align 8
@BRCMU_CHAN_BW_40 = common dso_local global i64 0, align 8
@BRCMU_CHAN_SB_NONE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"chanspecs\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"get chanspecs error (%d)\0A\00", align 1
@NL80211_BAND_2GHZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcmf_cfg80211_info*)* @brcmf_enable_bw40_2g to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmf_enable_bw40_2g(%struct.brcmf_cfg80211_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.brcmf_cfg80211_info*, align 8
  %4 = alloca %struct.brcmf_pub*, align 8
  %5 = alloca %struct.brcmf_if*, align 8
  %6 = alloca %struct.ieee80211_supported_band*, align 8
  %7 = alloca %struct.brcmf_fil_bwcap_le, align 8
  %8 = alloca %struct.brcmf_chanspec_list*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.brcmu_chan, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.brcmf_cfg80211_info* %0, %struct.brcmf_cfg80211_info** %3, align 8
  %16 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %3, align 8
  %17 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %16, i32 0, i32 1
  %18 = load %struct.brcmf_pub*, %struct.brcmf_pub** %17, align 8
  store %struct.brcmf_pub* %18, %struct.brcmf_pub** %4, align 8
  %19 = load %struct.brcmf_pub*, %struct.brcmf_pub** %4, align 8
  %20 = call %struct.brcmf_if* @brcmf_get_ifp(%struct.brcmf_pub* %19, i32 0)
  store %struct.brcmf_if* %20, %struct.brcmf_if** %5, align 8
  %21 = load i32, i32* @WLC_BAND_5G, align 4
  store i32 %21, i32* %10, align 4
  %22 = load %struct.brcmf_if*, %struct.brcmf_if** %5, align 8
  %23 = call i32 @brcmf_fil_iovar_int_get(%struct.brcmf_if* %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* %10)
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %11, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %35, label %26

26:                                               ; preds = %1
  %27 = load i32, i32* @WLC_BAND_2G, align 4
  %28 = call i8* @cpu_to_le32(i32 %27)
  %29 = getelementptr inbounds %struct.brcmf_fil_bwcap_le, %struct.brcmf_fil_bwcap_le* %7, i32 0, i32 1
  store i8* %28, i8** %29, align 8
  %30 = load i32, i32* @WLC_BW_CAP_40MHZ, align 4
  %31 = call i8* @cpu_to_le32(i32 %30)
  %32 = getelementptr inbounds %struct.brcmf_fil_bwcap_le, %struct.brcmf_fil_bwcap_le* %7, i32 0, i32 0
  store i8* %31, i8** %32, align 8
  %33 = load %struct.brcmf_if*, %struct.brcmf_if** %5, align 8
  %34 = call i32 @brcmf_fil_iovar_data_set(%struct.brcmf_if* %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), %struct.brcmf_fil_bwcap_le* %7, i32 16)
  store i32 %34, i32* %11, align 4
  br label %42

35:                                               ; preds = %1
  %36 = load i32, i32* @INFO, align 4
  %37 = call i32 @brcmf_dbg(i32 %36, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %38 = load i32, i32* @WLC_N_BW_40ALL, align 4
  store i32 %38, i32* %10, align 4
  %39 = load %struct.brcmf_if*, %struct.brcmf_if** %5, align 8
  %40 = load i32, i32* %10, align 4
  %41 = call i32 @brcmf_fil_iovar_int_set(%struct.brcmf_if* %39, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %40)
  store i32 %41, i32* %11, align 4
  br label %42

42:                                               ; preds = %35, %26
  %43 = load i32, i32* %11, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %183, label %45

45:                                               ; preds = %42
  %46 = load i32, i32* @BRCMF_DCMD_MEDLEN, align 4
  %47 = load i32, i32* @GFP_KERNEL, align 4
  %48 = call i32* @kzalloc(i32 %46, i32 %47)
  store i32* %48, i32** %9, align 8
  %49 = load i32*, i32** %9, align 8
  %50 = icmp eq i32* %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %2, align 4
  br label %185

54:                                               ; preds = %45
  %55 = load i64, i64* @BRCMU_CHAN_BAND_2G, align 8
  %56 = getelementptr inbounds %struct.brcmu_chan, %struct.brcmu_chan* %12, i32 0, i32 0
  store i64 %55, i64* %56, align 8
  %57 = load i64, i64* @BRCMU_CHAN_BW_40, align 8
  %58 = getelementptr inbounds %struct.brcmu_chan, %struct.brcmu_chan* %12, i32 0, i32 1
  store i64 %57, i64* %58, align 8
  %59 = load i32, i32* @BRCMU_CHAN_SB_NONE, align 4
  %60 = getelementptr inbounds %struct.brcmu_chan, %struct.brcmu_chan* %12, i32 0, i32 5
  store i32 %59, i32* %60, align 8
  %61 = getelementptr inbounds %struct.brcmu_chan, %struct.brcmu_chan* %12, i32 0, i32 4
  store i64 0, i64* %61, align 8
  %62 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %3, align 8
  %63 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = load i32 (%struct.brcmu_chan*)*, i32 (%struct.brcmu_chan*)** %64, align 8
  %66 = call i32 %65(%struct.brcmu_chan* %12)
  %67 = getelementptr inbounds %struct.brcmu_chan, %struct.brcmu_chan* %12, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @cpu_to_le16(i64 %68)
  %70 = load i32*, i32** %9, align 8
  store i32 %69, i32* %70, align 4
  %71 = load %struct.brcmf_if*, %struct.brcmf_if** %5, align 8
  %72 = load i32*, i32** %9, align 8
  %73 = load i32, i32* @BRCMF_DCMD_MEDLEN, align 4
  %74 = call i32 @brcmf_fil_iovar_data_get(%struct.brcmf_if* %71, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32* %72, i32 %73)
  store i32 %74, i32* %11, align 4
  %75 = load i32, i32* %11, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %54
  %78 = load %struct.brcmf_pub*, %struct.brcmf_pub** %4, align 8
  %79 = load i32, i32* %11, align 4
  %80 = call i32 @bphy_err(%struct.brcmf_pub* %78, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %79)
  %81 = load i32*, i32** %9, align 8
  %82 = call i32 @kfree(i32* %81)
  %83 = load i32, i32* %11, align 4
  store i32 %83, i32* %2, align 4
  br label %185

84:                                               ; preds = %54
  %85 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %3, align 8
  %86 = call %struct.TYPE_5__* @cfg_to_wiphy(%struct.brcmf_cfg80211_info* %85)
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %87, align 8
  %89 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %90 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %88, i64 %89
  %91 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %90, align 8
  store %struct.ieee80211_supported_band* %91, %struct.ieee80211_supported_band** %6, align 8
  %92 = load i32*, i32** %9, align 8
  %93 = bitcast i32* %92 to %struct.brcmf_chanspec_list*
  store %struct.brcmf_chanspec_list* %93, %struct.brcmf_chanspec_list** %8, align 8
  %94 = load %struct.brcmf_chanspec_list*, %struct.brcmf_chanspec_list** %8, align 8
  %95 = getelementptr inbounds %struct.brcmf_chanspec_list, %struct.brcmf_chanspec_list* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @le32_to_cpu(i32 %96)
  store i32 %97, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %98

98:                                               ; preds = %177, %84
  %99 = load i32, i32* %14, align 4
  %100 = load i32, i32* %13, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %102, label %180

102:                                              ; preds = %98
  %103 = load %struct.brcmf_chanspec_list*, %struct.brcmf_chanspec_list** %8, align 8
  %104 = getelementptr inbounds %struct.brcmf_chanspec_list, %struct.brcmf_chanspec_list* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* %14, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @le32_to_cpu(i32 %109)
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.brcmu_chan, %struct.brcmu_chan* %12, i32 0, i32 3
  store i64 %111, i64* %112, align 8
  %113 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %3, align 8
  %114 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  %116 = load i32 (%struct.brcmu_chan*)*, i32 (%struct.brcmu_chan*)** %115, align 8
  %117 = call i32 %116(%struct.brcmu_chan* %12)
  %118 = getelementptr inbounds %struct.brcmu_chan, %struct.brcmu_chan* %12, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @BRCMU_CHAN_BAND_2G, align 8
  %121 = icmp ne i64 %119, %120
  %122 = zext i1 %121 to i32
  %123 = call i64 @WARN_ON(i32 %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %102
  br label %177

126:                                              ; preds = %102
  %127 = getelementptr inbounds %struct.brcmu_chan, %struct.brcmu_chan* %12, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @BRCMU_CHAN_BW_40, align 8
  %130 = icmp ne i64 %128, %129
  %131 = zext i1 %130 to i32
  %132 = call i64 @WARN_ON(i32 %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %126
  br label %177

135:                                              ; preds = %126
  store i32 0, i32* %15, align 4
  br label %136

136:                                              ; preds = %156, %135
  %137 = load i32, i32* %15, align 4
  %138 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %6, align 8
  %139 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = icmp slt i32 %137, %140
  br i1 %141, label %142, label %159

142:                                              ; preds = %136
  %143 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %6, align 8
  %144 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %143, i32 0, i32 1
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** %144, align 8
  %146 = load i32, i32* %15, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = getelementptr inbounds %struct.brcmu_chan, %struct.brcmu_chan* %12, i32 0, i32 2
  %152 = load i64, i64* %151, align 8
  %153 = icmp eq i64 %150, %152
  br i1 %153, label %154, label %155

154:                                              ; preds = %142
  br label %159

155:                                              ; preds = %142
  br label %156

156:                                              ; preds = %155
  %157 = load i32, i32* %15, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %15, align 4
  br label %136

159:                                              ; preds = %154, %136
  %160 = load i32, i32* %15, align 4
  %161 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %6, align 8
  %162 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = icmp eq i32 %160, %163
  %165 = zext i1 %164 to i32
  %166 = call i64 @WARN_ON(i32 %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %159
  br label %177

169:                                              ; preds = %159
  %170 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %6, align 8
  %171 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %170, i32 0, i32 1
  %172 = load %struct.TYPE_6__*, %struct.TYPE_6__** %171, align 8
  %173 = load i32, i32* %15, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i64 %174
  %176 = call i32 @brcmf_update_bw40_channel_flag(%struct.TYPE_6__* %175, %struct.brcmu_chan* %12)
  br label %177

177:                                              ; preds = %169, %168, %134, %125
  %178 = load i32, i32* %14, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %14, align 4
  br label %98

180:                                              ; preds = %98
  %181 = load i32*, i32** %9, align 8
  %182 = call i32 @kfree(i32* %181)
  br label %183

183:                                              ; preds = %180, %42
  %184 = load i32, i32* %11, align 4
  store i32 %184, i32* %2, align 4
  br label %185

185:                                              ; preds = %183, %77, %51
  %186 = load i32, i32* %2, align 4
  ret i32 %186
}

declare dso_local %struct.brcmf_if* @brcmf_get_ifp(%struct.brcmf_pub*, i32) #1

declare dso_local i32 @brcmf_fil_iovar_int_get(%struct.brcmf_if*, i8*, i32*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @brcmf_fil_iovar_data_set(%struct.brcmf_if*, i8*, %struct.brcmf_fil_bwcap_le*, i32) #1

declare dso_local i32 @brcmf_dbg(i32, i8*) #1

declare dso_local i32 @brcmf_fil_iovar_int_set(%struct.brcmf_if*, i8*, i32) #1

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i32 @cpu_to_le16(i64) #1

declare dso_local i32 @brcmf_fil_iovar_data_get(%struct.brcmf_if*, i8*, i32*, i32) #1

declare dso_local i32 @bphy_err(%struct.brcmf_pub*, i8*, i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local %struct.TYPE_5__* @cfg_to_wiphy(%struct.brcmf_cfg80211_info*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @brcmf_update_bw40_channel_flag(%struct.TYPE_6__*, %struct.brcmu_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
