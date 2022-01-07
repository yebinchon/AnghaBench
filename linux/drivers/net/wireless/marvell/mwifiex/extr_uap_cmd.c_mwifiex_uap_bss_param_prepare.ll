; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_uap_cmd.c_mwifiex_uap_bss_param_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_uap_cmd.c_mwifiex_uap_bss_param_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.host_cmd_tlv_dtim_period = type { i64, %struct.TYPE_36__ }
%struct.TYPE_36__ = type { i8*, i8* }
%struct.host_cmd_tlv_beacon_period = type { i8*, %struct.TYPE_35__ }
%struct.TYPE_35__ = type { i8*, i8* }
%struct.host_cmd_tlv_ssid = type { i32*, %struct.TYPE_30__ }
%struct.TYPE_30__ = type { i8*, i8* }
%struct.host_cmd_tlv_bcast_ssid = type { i32, %struct.TYPE_32__ }
%struct.TYPE_32__ = type { i8*, i8* }
%struct.host_cmd_tlv_channel_band = type { i32, i64, %struct.TYPE_34__ }
%struct.TYPE_34__ = type { i8*, i8* }
%struct.host_cmd_tlv_frag_threshold = type { i8*, %struct.TYPE_38__ }
%struct.TYPE_38__ = type { i8*, i8* }
%struct.host_cmd_tlv_rts_threshold = type { i8*, %struct.TYPE_37__ }
%struct.TYPE_37__ = type { i8*, i8* }
%struct.host_cmd_tlv_retry_limit = type { i8*, %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i8*, i8* }
%struct.host_cmd_tlv_encrypt_protocol = type { i8*, %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i8*, i8* }
%struct.host_cmd_tlv_auth_type = type { i8*, %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i8*, i8* }
%struct.host_cmd_tlv_rates = type { %struct.TYPE_33__, i64* }
%struct.TYPE_33__ = type { i8*, i8* }
%struct.host_cmd_tlv_ageout_timer = type { i8*, %struct.TYPE_28__ }
%struct.TYPE_28__ = type { i8*, i8* }
%struct.host_cmd_tlv_power_constraint = type { i64, %struct.TYPE_27__ }
%struct.TYPE_27__ = type { i8*, i8* }
%struct.mwifiex_ie_types_htcap = type { %struct.TYPE_24__, %struct.TYPE_23__ }
%struct.TYPE_24__ = type { i32, i32, i32, i32, i32, i64 }
%struct.TYPE_23__ = type { i8*, i8* }
%struct.mwifiex_ie_types_wmmcap = type { i32, %struct.TYPE_26__ }
%struct.TYPE_26__ = type { i8*, i8* }
%struct.mwifiex_uap_bss_param = type { i64, i32, i32, i64, i32, i32, i64, i32, i64, i64, i64, i64, %struct.TYPE_29__, %struct.TYPE_25__, i64*, i32, %struct.TYPE_31__ }
%struct.TYPE_29__ = type { i32 }
%struct.TYPE_25__ = type { i32, i32, i32, %struct.TYPE_29__, i32, i64 }
%struct.TYPE_31__ = type { i32, %struct.TYPE_29__* }

@TLV_TYPE_UAP_SSID = common dso_local global i32 0, align 4
@TLV_TYPE_UAP_BCAST_SSID = common dso_local global i32 0, align 4
@TLV_TYPE_UAP_RATES = common dso_local global i32 0, align 4
@MWIFIEX_SUPPORTED_RATES = common dso_local global i32 0, align 4
@BAND_CONFIG_BG = common dso_local global i32 0, align 4
@MAX_CHANNEL_BAND_BG = common dso_local global i64 0, align 8
@BAND_CONFIG_A = common dso_local global i32 0, align 4
@MAX_CHANNEL_BAND_A = common dso_local global i64 0, align 8
@TLV_TYPE_CHANNELBANDLIST = common dso_local global i32 0, align 4
@MIN_BEACON_PERIOD = common dso_local global i32 0, align 4
@MAX_BEACON_PERIOD = common dso_local global i32 0, align 4
@TLV_TYPE_UAP_BEACON_PERIOD = common dso_local global i32 0, align 4
@MIN_DTIM_PERIOD = common dso_local global i64 0, align 8
@MAX_DTIM_PERIOD = common dso_local global i64 0, align 8
@TLV_TYPE_UAP_DTIM_PERIOD = common dso_local global i32 0, align 4
@MWIFIEX_RTS_MAX_VALUE = common dso_local global i32 0, align 4
@TLV_TYPE_UAP_RTS_THRESHOLD = common dso_local global i32 0, align 4
@MWIFIEX_FRAG_MIN_VALUE = common dso_local global i32 0, align 4
@MWIFIEX_FRAG_MAX_VALUE = common dso_local global i32 0, align 4
@TLV_TYPE_UAP_FRAG_THRESHOLD = common dso_local global i32 0, align 4
@MWIFIEX_RETRY_LIMIT = common dso_local global i64 0, align 8
@TLV_TYPE_UAP_RETRY_LIMIT = common dso_local global i32 0, align 4
@PROTOCOL_WPA = common dso_local global i32 0, align 4
@PROTOCOL_WPA2 = common dso_local global i32 0, align 4
@PROTOCOL_EAP = common dso_local global i32 0, align 4
@WLAN_AUTH_SHARED_KEY = common dso_local global i64 0, align 8
@MWIFIEX_AUTH_MODE_AUTO = common dso_local global i64 0, align 8
@TLV_TYPE_AUTH_TYPE = common dso_local global i32 0, align 4
@TLV_TYPE_UAP_ENCRY_PROTOCOL = common dso_local global i32 0, align 4
@WLAN_EID_HT_CAPABILITY = common dso_local global i32 0, align 4
@WLAN_EID_VENDOR_SPECIFIC = common dso_local global i32 0, align 4
@TLV_TYPE_UAP_AO_TIMER = common dso_local global i32 0, align 4
@TLV_TYPE_PWR_CONSTRAINT = common dso_local global i32 0, align 4
@TLV_TYPE_UAP_PS_AO_TIMER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i8*, i32*)* @mwifiex_uap_bss_param_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_uap_bss_param_prepare(i8** %0, i8* %1, i32* %2) #0 {
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.host_cmd_tlv_dtim_period*, align 8
  %8 = alloca %struct.host_cmd_tlv_beacon_period*, align 8
  %9 = alloca %struct.host_cmd_tlv_ssid*, align 8
  %10 = alloca %struct.host_cmd_tlv_bcast_ssid*, align 8
  %11 = alloca %struct.host_cmd_tlv_channel_band*, align 8
  %12 = alloca %struct.host_cmd_tlv_frag_threshold*, align 8
  %13 = alloca %struct.host_cmd_tlv_rts_threshold*, align 8
  %14 = alloca %struct.host_cmd_tlv_retry_limit*, align 8
  %15 = alloca %struct.host_cmd_tlv_encrypt_protocol*, align 8
  %16 = alloca %struct.host_cmd_tlv_auth_type*, align 8
  %17 = alloca %struct.host_cmd_tlv_rates*, align 8
  %18 = alloca %struct.host_cmd_tlv_ageout_timer*, align 8
  %19 = alloca %struct.host_cmd_tlv_ageout_timer*, align 8
  %20 = alloca %struct.host_cmd_tlv_power_constraint*, align 8
  %21 = alloca %struct.mwifiex_ie_types_htcap*, align 8
  %22 = alloca %struct.mwifiex_ie_types_wmmcap*, align 8
  %23 = alloca %struct.mwifiex_uap_bss_param*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store i8** %0, i8*** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = bitcast i8* %26 to %struct.mwifiex_uap_bss_param*
  store %struct.mwifiex_uap_bss_param* %27, %struct.mwifiex_uap_bss_param** %23, align 8
  %28 = load i32*, i32** %6, align 8
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %25, align 4
  %30 = load %struct.mwifiex_uap_bss_param*, %struct.mwifiex_uap_bss_param** %23, align 8
  %31 = getelementptr inbounds %struct.mwifiex_uap_bss_param, %struct.mwifiex_uap_bss_param* %30, i32 0, i32 16
  %32 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %103

35:                                               ; preds = %3
  %36 = load i8**, i8*** %4, align 8
  %37 = bitcast i8** %36 to %struct.host_cmd_tlv_ssid*
  store %struct.host_cmd_tlv_ssid* %37, %struct.host_cmd_tlv_ssid** %9, align 8
  %38 = load i32, i32* @TLV_TYPE_UAP_SSID, align 4
  %39 = call i8* @cpu_to_le16(i32 %38)
  %40 = load %struct.host_cmd_tlv_ssid*, %struct.host_cmd_tlv_ssid** %9, align 8
  %41 = getelementptr inbounds %struct.host_cmd_tlv_ssid, %struct.host_cmd_tlv_ssid* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %41, i32 0, i32 1
  store i8* %39, i8** %42, align 8
  %43 = load %struct.mwifiex_uap_bss_param*, %struct.mwifiex_uap_bss_param** %23, align 8
  %44 = getelementptr inbounds %struct.mwifiex_uap_bss_param, %struct.mwifiex_uap_bss_param* %43, i32 0, i32 16
  %45 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i8* @cpu_to_le16(i32 %46)
  %48 = load %struct.host_cmd_tlv_ssid*, %struct.host_cmd_tlv_ssid** %9, align 8
  %49 = getelementptr inbounds %struct.host_cmd_tlv_ssid, %struct.host_cmd_tlv_ssid* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %49, i32 0, i32 0
  store i8* %47, i8** %50, align 8
  %51 = load %struct.host_cmd_tlv_ssid*, %struct.host_cmd_tlv_ssid** %9, align 8
  %52 = getelementptr inbounds %struct.host_cmd_tlv_ssid, %struct.host_cmd_tlv_ssid* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load %struct.mwifiex_uap_bss_param*, %struct.mwifiex_uap_bss_param** %23, align 8
  %55 = getelementptr inbounds %struct.mwifiex_uap_bss_param, %struct.mwifiex_uap_bss_param* %54, i32 0, i32 16
  %56 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_29__*, %struct.TYPE_29__** %56, align 8
  %58 = load %struct.mwifiex_uap_bss_param*, %struct.mwifiex_uap_bss_param** %23, align 8
  %59 = getelementptr inbounds %struct.mwifiex_uap_bss_param, %struct.mwifiex_uap_bss_param* %58, i32 0, i32 16
  %60 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @memcpy(i32* %53, %struct.TYPE_29__* %57, i32 %61)
  %63 = load %struct.mwifiex_uap_bss_param*, %struct.mwifiex_uap_bss_param** %23, align 8
  %64 = getelementptr inbounds %struct.mwifiex_uap_bss_param, %struct.mwifiex_uap_bss_param* %63, i32 0, i32 16
  %65 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = sext i32 %66 to i64
  %68 = add i64 4, %67
  %69 = load i32, i32* %25, align 4
  %70 = sext i32 %69 to i64
  %71 = add i64 %70, %68
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %25, align 4
  %73 = load %struct.mwifiex_uap_bss_param*, %struct.mwifiex_uap_bss_param** %23, align 8
  %74 = getelementptr inbounds %struct.mwifiex_uap_bss_param, %struct.mwifiex_uap_bss_param* %73, i32 0, i32 16
  %75 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = sext i32 %76 to i64
  %78 = add i64 4, %77
  %79 = load i8**, i8*** %4, align 8
  %80 = getelementptr inbounds i8*, i8** %79, i64 %78
  store i8** %80, i8*** %4, align 8
  %81 = load i8**, i8*** %4, align 8
  %82 = bitcast i8** %81 to %struct.host_cmd_tlv_bcast_ssid*
  store %struct.host_cmd_tlv_bcast_ssid* %82, %struct.host_cmd_tlv_bcast_ssid** %10, align 8
  %83 = load i32, i32* @TLV_TYPE_UAP_BCAST_SSID, align 4
  %84 = call i8* @cpu_to_le16(i32 %83)
  %85 = load %struct.host_cmd_tlv_bcast_ssid*, %struct.host_cmd_tlv_bcast_ssid** %10, align 8
  %86 = getelementptr inbounds %struct.host_cmd_tlv_bcast_ssid, %struct.host_cmd_tlv_bcast_ssid* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %86, i32 0, i32 1
  store i8* %84, i8** %87, align 8
  %88 = call i8* @cpu_to_le16(i32 4)
  %89 = load %struct.host_cmd_tlv_bcast_ssid*, %struct.host_cmd_tlv_bcast_ssid** %10, align 8
  %90 = getelementptr inbounds %struct.host_cmd_tlv_bcast_ssid, %struct.host_cmd_tlv_bcast_ssid* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %90, i32 0, i32 0
  store i8* %88, i8** %91, align 8
  %92 = load %struct.mwifiex_uap_bss_param*, %struct.mwifiex_uap_bss_param** %23, align 8
  %93 = getelementptr inbounds %struct.mwifiex_uap_bss_param, %struct.mwifiex_uap_bss_param* %92, i32 0, i32 15
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.host_cmd_tlv_bcast_ssid*, %struct.host_cmd_tlv_bcast_ssid** %10, align 8
  %96 = getelementptr inbounds %struct.host_cmd_tlv_bcast_ssid, %struct.host_cmd_tlv_bcast_ssid* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 8
  %97 = load i32, i32* %25, align 4
  %98 = sext i32 %97 to i64
  %99 = add i64 %98, 24
  %100 = trunc i64 %99 to i32
  store i32 %100, i32* %25, align 4
  %101 = load i8**, i8*** %4, align 8
  %102 = getelementptr inbounds i8*, i8** %101, i64 24
  store i8** %102, i8*** %4, align 8
  br label %103

103:                                              ; preds = %35, %3
  %104 = load %struct.mwifiex_uap_bss_param*, %struct.mwifiex_uap_bss_param** %23, align 8
  %105 = getelementptr inbounds %struct.mwifiex_uap_bss_param, %struct.mwifiex_uap_bss_param* %104, i32 0, i32 14
  %106 = load i64*, i64** %105, align 8
  %107 = getelementptr inbounds i64, i64* %106, i64 0
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %168

110:                                              ; preds = %103
  %111 = load i8**, i8*** %4, align 8
  %112 = bitcast i8** %111 to %struct.host_cmd_tlv_rates*
  store %struct.host_cmd_tlv_rates* %112, %struct.host_cmd_tlv_rates** %17, align 8
  %113 = load i32, i32* @TLV_TYPE_UAP_RATES, align 4
  %114 = call i8* @cpu_to_le16(i32 %113)
  %115 = load %struct.host_cmd_tlv_rates*, %struct.host_cmd_tlv_rates** %17, align 8
  %116 = getelementptr inbounds %struct.host_cmd_tlv_rates, %struct.host_cmd_tlv_rates* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %116, i32 0, i32 1
  store i8* %114, i8** %117, align 8
  store i32 0, i32* %24, align 4
  br label %118

118:                                              ; preds = %147, %110
  %119 = load i32, i32* %24, align 4
  %120 = load i32, i32* @MWIFIEX_SUPPORTED_RATES, align 4
  %121 = icmp slt i32 %119, %120
  br i1 %121, label %122, label %131

122:                                              ; preds = %118
  %123 = load %struct.mwifiex_uap_bss_param*, %struct.mwifiex_uap_bss_param** %23, align 8
  %124 = getelementptr inbounds %struct.mwifiex_uap_bss_param, %struct.mwifiex_uap_bss_param* %123, i32 0, i32 14
  %125 = load i64*, i64** %124, align 8
  %126 = load i32, i32* %24, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i64, i64* %125, i64 %127
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br label %131

131:                                              ; preds = %122, %118
  %132 = phi i1 [ false, %118 ], [ %130, %122 ]
  br i1 %132, label %133, label %150

133:                                              ; preds = %131
  %134 = load %struct.mwifiex_uap_bss_param*, %struct.mwifiex_uap_bss_param** %23, align 8
  %135 = getelementptr inbounds %struct.mwifiex_uap_bss_param, %struct.mwifiex_uap_bss_param* %134, i32 0, i32 14
  %136 = load i64*, i64** %135, align 8
  %137 = load i32, i32* %24, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i64, i64* %136, i64 %138
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.host_cmd_tlv_rates*, %struct.host_cmd_tlv_rates** %17, align 8
  %142 = getelementptr inbounds %struct.host_cmd_tlv_rates, %struct.host_cmd_tlv_rates* %141, i32 0, i32 1
  %143 = load i64*, i64** %142, align 8
  %144 = load i32, i32* %24, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i64, i64* %143, i64 %145
  store i64 %140, i64* %146, align 8
  br label %147

147:                                              ; preds = %133
  %148 = load i32, i32* %24, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %24, align 4
  br label %118

150:                                              ; preds = %131
  %151 = load i32, i32* %24, align 4
  %152 = call i8* @cpu_to_le16(i32 %151)
  %153 = load %struct.host_cmd_tlv_rates*, %struct.host_cmd_tlv_rates** %17, align 8
  %154 = getelementptr inbounds %struct.host_cmd_tlv_rates, %struct.host_cmd_tlv_rates* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %154, i32 0, i32 0
  store i8* %152, i8** %155, align 8
  %156 = load i32, i32* %24, align 4
  %157 = sext i32 %156 to i64
  %158 = add i64 24, %157
  %159 = load i32, i32* %25, align 4
  %160 = sext i32 %159 to i64
  %161 = add i64 %160, %158
  %162 = trunc i64 %161 to i32
  store i32 %162, i32* %25, align 4
  %163 = load i32, i32* %24, align 4
  %164 = sext i32 %163 to i64
  %165 = add i64 24, %164
  %166 = load i8**, i8*** %4, align 8
  %167 = getelementptr inbounds i8*, i8** %166, i64 %165
  store i8** %167, i8*** %4, align 8
  br label %168

168:                                              ; preds = %150, %103
  %169 = load %struct.mwifiex_uap_bss_param*, %struct.mwifiex_uap_bss_param** %23, align 8
  %170 = getelementptr inbounds %struct.mwifiex_uap_bss_param, %struct.mwifiex_uap_bss_param* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %229

173:                                              ; preds = %168
  %174 = load %struct.mwifiex_uap_bss_param*, %struct.mwifiex_uap_bss_param** %23, align 8
  %175 = getelementptr inbounds %struct.mwifiex_uap_bss_param, %struct.mwifiex_uap_bss_param* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 8
  %177 = call i32 @BIT(i32 0)
  %178 = and i32 %176, %177
  %179 = load i32, i32* @BAND_CONFIG_BG, align 4
  %180 = icmp eq i32 %178, %179
  br i1 %180, label %181, label %187

181:                                              ; preds = %173
  %182 = load %struct.mwifiex_uap_bss_param*, %struct.mwifiex_uap_bss_param** %23, align 8
  %183 = getelementptr inbounds %struct.mwifiex_uap_bss_param, %struct.mwifiex_uap_bss_param* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = load i64, i64* @MAX_CHANNEL_BAND_BG, align 8
  %186 = icmp sle i64 %184, %185
  br i1 %186, label %201, label %187

187:                                              ; preds = %181, %173
  %188 = load %struct.mwifiex_uap_bss_param*, %struct.mwifiex_uap_bss_param** %23, align 8
  %189 = getelementptr inbounds %struct.mwifiex_uap_bss_param, %struct.mwifiex_uap_bss_param* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 8
  %191 = call i32 @BIT(i32 0)
  %192 = and i32 %190, %191
  %193 = load i32, i32* @BAND_CONFIG_A, align 4
  %194 = icmp eq i32 %192, %193
  br i1 %194, label %195, label %229

195:                                              ; preds = %187
  %196 = load %struct.mwifiex_uap_bss_param*, %struct.mwifiex_uap_bss_param** %23, align 8
  %197 = getelementptr inbounds %struct.mwifiex_uap_bss_param, %struct.mwifiex_uap_bss_param* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = load i64, i64* @MAX_CHANNEL_BAND_A, align 8
  %200 = icmp sle i64 %198, %199
  br i1 %200, label %201, label %229

201:                                              ; preds = %195, %181
  %202 = load i8**, i8*** %4, align 8
  %203 = bitcast i8** %202 to %struct.host_cmd_tlv_channel_band*
  store %struct.host_cmd_tlv_channel_band* %203, %struct.host_cmd_tlv_channel_band** %11, align 8
  %204 = load i32, i32* @TLV_TYPE_CHANNELBANDLIST, align 4
  %205 = call i8* @cpu_to_le16(i32 %204)
  %206 = load %struct.host_cmd_tlv_channel_band*, %struct.host_cmd_tlv_channel_band** %11, align 8
  %207 = getelementptr inbounds %struct.host_cmd_tlv_channel_band, %struct.host_cmd_tlv_channel_band* %206, i32 0, i32 2
  %208 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %207, i32 0, i32 1
  store i8* %205, i8** %208, align 8
  %209 = call i8* @cpu_to_le16(i32 28)
  %210 = load %struct.host_cmd_tlv_channel_band*, %struct.host_cmd_tlv_channel_band** %11, align 8
  %211 = getelementptr inbounds %struct.host_cmd_tlv_channel_band, %struct.host_cmd_tlv_channel_band* %210, i32 0, i32 2
  %212 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %211, i32 0, i32 0
  store i8* %209, i8** %212, align 8
  %213 = load %struct.mwifiex_uap_bss_param*, %struct.mwifiex_uap_bss_param** %23, align 8
  %214 = getelementptr inbounds %struct.mwifiex_uap_bss_param, %struct.mwifiex_uap_bss_param* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 8
  %216 = load %struct.host_cmd_tlv_channel_band*, %struct.host_cmd_tlv_channel_band** %11, align 8
  %217 = getelementptr inbounds %struct.host_cmd_tlv_channel_band, %struct.host_cmd_tlv_channel_band* %216, i32 0, i32 0
  store i32 %215, i32* %217, align 8
  %218 = load %struct.mwifiex_uap_bss_param*, %struct.mwifiex_uap_bss_param** %23, align 8
  %219 = getelementptr inbounds %struct.mwifiex_uap_bss_param, %struct.mwifiex_uap_bss_param* %218, i32 0, i32 0
  %220 = load i64, i64* %219, align 8
  %221 = load %struct.host_cmd_tlv_channel_band*, %struct.host_cmd_tlv_channel_band** %11, align 8
  %222 = getelementptr inbounds %struct.host_cmd_tlv_channel_band, %struct.host_cmd_tlv_channel_band* %221, i32 0, i32 1
  store i64 %220, i64* %222, align 8
  %223 = load i32, i32* %25, align 4
  %224 = sext i32 %223 to i64
  %225 = add i64 %224, 32
  %226 = trunc i64 %225 to i32
  store i32 %226, i32* %25, align 4
  %227 = load i8**, i8*** %4, align 8
  %228 = getelementptr inbounds i8*, i8** %227, i64 32
  store i8** %228, i8*** %4, align 8
  br label %229

229:                                              ; preds = %201, %195, %187, %168
  %230 = load %struct.mwifiex_uap_bss_param*, %struct.mwifiex_uap_bss_param** %23, align 8
  %231 = getelementptr inbounds %struct.mwifiex_uap_bss_param, %struct.mwifiex_uap_bss_param* %230, i32 0, i32 2
  %232 = load i32, i32* %231, align 4
  %233 = load i32, i32* @MIN_BEACON_PERIOD, align 4
  %234 = icmp sge i32 %232, %233
  br i1 %234, label %235, label %265

235:                                              ; preds = %229
  %236 = load %struct.mwifiex_uap_bss_param*, %struct.mwifiex_uap_bss_param** %23, align 8
  %237 = getelementptr inbounds %struct.mwifiex_uap_bss_param, %struct.mwifiex_uap_bss_param* %236, i32 0, i32 2
  %238 = load i32, i32* %237, align 4
  %239 = load i32, i32* @MAX_BEACON_PERIOD, align 4
  %240 = icmp sle i32 %238, %239
  br i1 %240, label %241, label %265

241:                                              ; preds = %235
  %242 = load i8**, i8*** %4, align 8
  %243 = bitcast i8** %242 to %struct.host_cmd_tlv_beacon_period*
  store %struct.host_cmd_tlv_beacon_period* %243, %struct.host_cmd_tlv_beacon_period** %8, align 8
  %244 = load i32, i32* @TLV_TYPE_UAP_BEACON_PERIOD, align 4
  %245 = call i8* @cpu_to_le16(i32 %244)
  %246 = load %struct.host_cmd_tlv_beacon_period*, %struct.host_cmd_tlv_beacon_period** %8, align 8
  %247 = getelementptr inbounds %struct.host_cmd_tlv_beacon_period, %struct.host_cmd_tlv_beacon_period* %246, i32 0, i32 1
  %248 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %247, i32 0, i32 1
  store i8* %245, i8** %248, align 8
  %249 = call i8* @cpu_to_le16(i32 20)
  %250 = load %struct.host_cmd_tlv_beacon_period*, %struct.host_cmd_tlv_beacon_period** %8, align 8
  %251 = getelementptr inbounds %struct.host_cmd_tlv_beacon_period, %struct.host_cmd_tlv_beacon_period* %250, i32 0, i32 1
  %252 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %251, i32 0, i32 0
  store i8* %249, i8** %252, align 8
  %253 = load %struct.mwifiex_uap_bss_param*, %struct.mwifiex_uap_bss_param** %23, align 8
  %254 = getelementptr inbounds %struct.mwifiex_uap_bss_param, %struct.mwifiex_uap_bss_param* %253, i32 0, i32 2
  %255 = load i32, i32* %254, align 4
  %256 = call i8* @cpu_to_le16(i32 %255)
  %257 = load %struct.host_cmd_tlv_beacon_period*, %struct.host_cmd_tlv_beacon_period** %8, align 8
  %258 = getelementptr inbounds %struct.host_cmd_tlv_beacon_period, %struct.host_cmd_tlv_beacon_period* %257, i32 0, i32 0
  store i8* %256, i8** %258, align 8
  %259 = load i32, i32* %25, align 4
  %260 = sext i32 %259 to i64
  %261 = add i64 %260, 24
  %262 = trunc i64 %261 to i32
  store i32 %262, i32* %25, align 4
  %263 = load i8**, i8*** %4, align 8
  %264 = getelementptr inbounds i8*, i8** %263, i64 24
  store i8** %264, i8*** %4, align 8
  br label %265

265:                                              ; preds = %241, %235, %229
  %266 = load %struct.mwifiex_uap_bss_param*, %struct.mwifiex_uap_bss_param** %23, align 8
  %267 = getelementptr inbounds %struct.mwifiex_uap_bss_param, %struct.mwifiex_uap_bss_param* %266, i32 0, i32 3
  %268 = load i64, i64* %267, align 8
  %269 = load i64, i64* @MIN_DTIM_PERIOD, align 8
  %270 = icmp sge i64 %268, %269
  br i1 %270, label %271, label %300

271:                                              ; preds = %265
  %272 = load %struct.mwifiex_uap_bss_param*, %struct.mwifiex_uap_bss_param** %23, align 8
  %273 = getelementptr inbounds %struct.mwifiex_uap_bss_param, %struct.mwifiex_uap_bss_param* %272, i32 0, i32 3
  %274 = load i64, i64* %273, align 8
  %275 = load i64, i64* @MAX_DTIM_PERIOD, align 8
  %276 = icmp sle i64 %274, %275
  br i1 %276, label %277, label %300

277:                                              ; preds = %271
  %278 = load i8**, i8*** %4, align 8
  %279 = bitcast i8** %278 to %struct.host_cmd_tlv_dtim_period*
  store %struct.host_cmd_tlv_dtim_period* %279, %struct.host_cmd_tlv_dtim_period** %7, align 8
  %280 = load i32, i32* @TLV_TYPE_UAP_DTIM_PERIOD, align 4
  %281 = call i8* @cpu_to_le16(i32 %280)
  %282 = load %struct.host_cmd_tlv_dtim_period*, %struct.host_cmd_tlv_dtim_period** %7, align 8
  %283 = getelementptr inbounds %struct.host_cmd_tlv_dtim_period, %struct.host_cmd_tlv_dtim_period* %282, i32 0, i32 1
  %284 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %283, i32 0, i32 1
  store i8* %281, i8** %284, align 8
  %285 = call i8* @cpu_to_le16(i32 20)
  %286 = load %struct.host_cmd_tlv_dtim_period*, %struct.host_cmd_tlv_dtim_period** %7, align 8
  %287 = getelementptr inbounds %struct.host_cmd_tlv_dtim_period, %struct.host_cmd_tlv_dtim_period* %286, i32 0, i32 1
  %288 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %287, i32 0, i32 0
  store i8* %285, i8** %288, align 8
  %289 = load %struct.mwifiex_uap_bss_param*, %struct.mwifiex_uap_bss_param** %23, align 8
  %290 = getelementptr inbounds %struct.mwifiex_uap_bss_param, %struct.mwifiex_uap_bss_param* %289, i32 0, i32 3
  %291 = load i64, i64* %290, align 8
  %292 = load %struct.host_cmd_tlv_dtim_period*, %struct.host_cmd_tlv_dtim_period** %7, align 8
  %293 = getelementptr inbounds %struct.host_cmd_tlv_dtim_period, %struct.host_cmd_tlv_dtim_period* %292, i32 0, i32 0
  store i64 %291, i64* %293, align 8
  %294 = load i32, i32* %25, align 4
  %295 = sext i32 %294 to i64
  %296 = add i64 %295, 24
  %297 = trunc i64 %296 to i32
  store i32 %297, i32* %25, align 4
  %298 = load i8**, i8*** %4, align 8
  %299 = getelementptr inbounds i8*, i8** %298, i64 24
  store i8** %299, i8*** %4, align 8
  br label %300

300:                                              ; preds = %277, %271, %265
  %301 = load %struct.mwifiex_uap_bss_param*, %struct.mwifiex_uap_bss_param** %23, align 8
  %302 = getelementptr inbounds %struct.mwifiex_uap_bss_param, %struct.mwifiex_uap_bss_param* %301, i32 0, i32 4
  %303 = load i32, i32* %302, align 8
  %304 = load i32, i32* @MWIFIEX_RTS_MAX_VALUE, align 4
  %305 = icmp sle i32 %303, %304
  br i1 %305, label %306, label %330

306:                                              ; preds = %300
  %307 = load i8**, i8*** %4, align 8
  %308 = bitcast i8** %307 to %struct.host_cmd_tlv_rts_threshold*
  store %struct.host_cmd_tlv_rts_threshold* %308, %struct.host_cmd_tlv_rts_threshold** %13, align 8
  %309 = load i32, i32* @TLV_TYPE_UAP_RTS_THRESHOLD, align 4
  %310 = call i8* @cpu_to_le16(i32 %309)
  %311 = load %struct.host_cmd_tlv_rts_threshold*, %struct.host_cmd_tlv_rts_threshold** %13, align 8
  %312 = getelementptr inbounds %struct.host_cmd_tlv_rts_threshold, %struct.host_cmd_tlv_rts_threshold* %311, i32 0, i32 1
  %313 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %312, i32 0, i32 1
  store i8* %310, i8** %313, align 8
  %314 = call i8* @cpu_to_le16(i32 20)
  %315 = load %struct.host_cmd_tlv_rts_threshold*, %struct.host_cmd_tlv_rts_threshold** %13, align 8
  %316 = getelementptr inbounds %struct.host_cmd_tlv_rts_threshold, %struct.host_cmd_tlv_rts_threshold* %315, i32 0, i32 1
  %317 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %316, i32 0, i32 0
  store i8* %314, i8** %317, align 8
  %318 = load %struct.mwifiex_uap_bss_param*, %struct.mwifiex_uap_bss_param** %23, align 8
  %319 = getelementptr inbounds %struct.mwifiex_uap_bss_param, %struct.mwifiex_uap_bss_param* %318, i32 0, i32 4
  %320 = load i32, i32* %319, align 8
  %321 = call i8* @cpu_to_le16(i32 %320)
  %322 = load %struct.host_cmd_tlv_rts_threshold*, %struct.host_cmd_tlv_rts_threshold** %13, align 8
  %323 = getelementptr inbounds %struct.host_cmd_tlv_rts_threshold, %struct.host_cmd_tlv_rts_threshold* %322, i32 0, i32 0
  store i8* %321, i8** %323, align 8
  %324 = load i32, i32* %25, align 4
  %325 = sext i32 %324 to i64
  %326 = add i64 %325, 24
  %327 = trunc i64 %326 to i32
  store i32 %327, i32* %25, align 4
  %328 = load i8**, i8*** %4, align 8
  %329 = getelementptr inbounds i8*, i8** %328, i64 24
  store i8** %329, i8*** %4, align 8
  br label %330

330:                                              ; preds = %306, %300
  %331 = load %struct.mwifiex_uap_bss_param*, %struct.mwifiex_uap_bss_param** %23, align 8
  %332 = getelementptr inbounds %struct.mwifiex_uap_bss_param, %struct.mwifiex_uap_bss_param* %331, i32 0, i32 5
  %333 = load i32, i32* %332, align 4
  %334 = load i32, i32* @MWIFIEX_FRAG_MIN_VALUE, align 4
  %335 = icmp sge i32 %333, %334
  br i1 %335, label %336, label %366

336:                                              ; preds = %330
  %337 = load %struct.mwifiex_uap_bss_param*, %struct.mwifiex_uap_bss_param** %23, align 8
  %338 = getelementptr inbounds %struct.mwifiex_uap_bss_param, %struct.mwifiex_uap_bss_param* %337, i32 0, i32 5
  %339 = load i32, i32* %338, align 4
  %340 = load i32, i32* @MWIFIEX_FRAG_MAX_VALUE, align 4
  %341 = icmp sle i32 %339, %340
  br i1 %341, label %342, label %366

342:                                              ; preds = %336
  %343 = load i8**, i8*** %4, align 8
  %344 = bitcast i8** %343 to %struct.host_cmd_tlv_frag_threshold*
  store %struct.host_cmd_tlv_frag_threshold* %344, %struct.host_cmd_tlv_frag_threshold** %12, align 8
  %345 = load i32, i32* @TLV_TYPE_UAP_FRAG_THRESHOLD, align 4
  %346 = call i8* @cpu_to_le16(i32 %345)
  %347 = load %struct.host_cmd_tlv_frag_threshold*, %struct.host_cmd_tlv_frag_threshold** %12, align 8
  %348 = getelementptr inbounds %struct.host_cmd_tlv_frag_threshold, %struct.host_cmd_tlv_frag_threshold* %347, i32 0, i32 1
  %349 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %348, i32 0, i32 1
  store i8* %346, i8** %349, align 8
  %350 = call i8* @cpu_to_le16(i32 20)
  %351 = load %struct.host_cmd_tlv_frag_threshold*, %struct.host_cmd_tlv_frag_threshold** %12, align 8
  %352 = getelementptr inbounds %struct.host_cmd_tlv_frag_threshold, %struct.host_cmd_tlv_frag_threshold* %351, i32 0, i32 1
  %353 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %352, i32 0, i32 0
  store i8* %350, i8** %353, align 8
  %354 = load %struct.mwifiex_uap_bss_param*, %struct.mwifiex_uap_bss_param** %23, align 8
  %355 = getelementptr inbounds %struct.mwifiex_uap_bss_param, %struct.mwifiex_uap_bss_param* %354, i32 0, i32 5
  %356 = load i32, i32* %355, align 4
  %357 = call i8* @cpu_to_le16(i32 %356)
  %358 = load %struct.host_cmd_tlv_frag_threshold*, %struct.host_cmd_tlv_frag_threshold** %12, align 8
  %359 = getelementptr inbounds %struct.host_cmd_tlv_frag_threshold, %struct.host_cmd_tlv_frag_threshold* %358, i32 0, i32 0
  store i8* %357, i8** %359, align 8
  %360 = load i32, i32* %25, align 4
  %361 = sext i32 %360 to i64
  %362 = add i64 %361, 24
  %363 = trunc i64 %362 to i32
  store i32 %363, i32* %25, align 4
  %364 = load i8**, i8*** %4, align 8
  %365 = getelementptr inbounds i8*, i8** %364, i64 24
  store i8** %365, i8*** %4, align 8
  br label %366

366:                                              ; preds = %342, %336, %330
  %367 = load %struct.mwifiex_uap_bss_param*, %struct.mwifiex_uap_bss_param** %23, align 8
  %368 = getelementptr inbounds %struct.mwifiex_uap_bss_param, %struct.mwifiex_uap_bss_param* %367, i32 0, i32 6
  %369 = load i64, i64* %368, align 8
  %370 = load i64, i64* @MWIFIEX_RETRY_LIMIT, align 8
  %371 = icmp sle i64 %369, %370
  br i1 %371, label %372, label %396

372:                                              ; preds = %366
  %373 = load i8**, i8*** %4, align 8
  %374 = bitcast i8** %373 to %struct.host_cmd_tlv_retry_limit*
  store %struct.host_cmd_tlv_retry_limit* %374, %struct.host_cmd_tlv_retry_limit** %14, align 8
  %375 = load i32, i32* @TLV_TYPE_UAP_RETRY_LIMIT, align 4
  %376 = call i8* @cpu_to_le16(i32 %375)
  %377 = load %struct.host_cmd_tlv_retry_limit*, %struct.host_cmd_tlv_retry_limit** %14, align 8
  %378 = getelementptr inbounds %struct.host_cmd_tlv_retry_limit, %struct.host_cmd_tlv_retry_limit* %377, i32 0, i32 1
  %379 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %378, i32 0, i32 1
  store i8* %376, i8** %379, align 8
  %380 = call i8* @cpu_to_le16(i32 20)
  %381 = load %struct.host_cmd_tlv_retry_limit*, %struct.host_cmd_tlv_retry_limit** %14, align 8
  %382 = getelementptr inbounds %struct.host_cmd_tlv_retry_limit, %struct.host_cmd_tlv_retry_limit* %381, i32 0, i32 1
  %383 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %382, i32 0, i32 0
  store i8* %380, i8** %383, align 8
  %384 = load %struct.mwifiex_uap_bss_param*, %struct.mwifiex_uap_bss_param** %23, align 8
  %385 = getelementptr inbounds %struct.mwifiex_uap_bss_param, %struct.mwifiex_uap_bss_param* %384, i32 0, i32 6
  %386 = load i64, i64* %385, align 8
  %387 = inttoptr i64 %386 to i8*
  %388 = load %struct.host_cmd_tlv_retry_limit*, %struct.host_cmd_tlv_retry_limit** %14, align 8
  %389 = getelementptr inbounds %struct.host_cmd_tlv_retry_limit, %struct.host_cmd_tlv_retry_limit* %388, i32 0, i32 0
  store i8* %387, i8** %389, align 8
  %390 = load i32, i32* %25, align 4
  %391 = sext i32 %390 to i64
  %392 = add i64 %391, 24
  %393 = trunc i64 %392 to i32
  store i32 %393, i32* %25, align 4
  %394 = load i8**, i8*** %4, align 8
  %395 = getelementptr inbounds i8*, i8** %394, i64 24
  store i8** %395, i8*** %4, align 8
  br label %396

396:                                              ; preds = %372, %366
  %397 = load %struct.mwifiex_uap_bss_param*, %struct.mwifiex_uap_bss_param** %23, align 8
  %398 = getelementptr inbounds %struct.mwifiex_uap_bss_param, %struct.mwifiex_uap_bss_param* %397, i32 0, i32 7
  %399 = load i32, i32* %398, align 8
  %400 = load i32, i32* @PROTOCOL_WPA, align 4
  %401 = and i32 %399, %400
  %402 = icmp ne i32 %401, 0
  br i1 %402, label %417, label %403

403:                                              ; preds = %396
  %404 = load %struct.mwifiex_uap_bss_param*, %struct.mwifiex_uap_bss_param** %23, align 8
  %405 = getelementptr inbounds %struct.mwifiex_uap_bss_param, %struct.mwifiex_uap_bss_param* %404, i32 0, i32 7
  %406 = load i32, i32* %405, align 8
  %407 = load i32, i32* @PROTOCOL_WPA2, align 4
  %408 = and i32 %406, %407
  %409 = icmp ne i32 %408, 0
  br i1 %409, label %417, label %410

410:                                              ; preds = %403
  %411 = load %struct.mwifiex_uap_bss_param*, %struct.mwifiex_uap_bss_param** %23, align 8
  %412 = getelementptr inbounds %struct.mwifiex_uap_bss_param, %struct.mwifiex_uap_bss_param* %411, i32 0, i32 7
  %413 = load i32, i32* %412, align 8
  %414 = load i32, i32* @PROTOCOL_EAP, align 4
  %415 = and i32 %413, %414
  %416 = icmp ne i32 %415, 0
  br i1 %416, label %417, label %420

417:                                              ; preds = %410, %403, %396
  %418 = load i8*, i8** %5, align 8
  %419 = call i32 @mwifiex_uap_bss_wpa(i8*** %4, i8* %418, i32* %25)
  br label %423

420:                                              ; preds = %410
  %421 = load i8*, i8** %5, align 8
  %422 = call i32 @mwifiex_uap_bss_wep(i8*** %4, i8* %421, i32* %25)
  br label %423

423:                                              ; preds = %420, %417
  %424 = load %struct.mwifiex_uap_bss_param*, %struct.mwifiex_uap_bss_param** %23, align 8
  %425 = getelementptr inbounds %struct.mwifiex_uap_bss_param, %struct.mwifiex_uap_bss_param* %424, i32 0, i32 8
  %426 = load i64, i64* %425, align 8
  %427 = load i64, i64* @WLAN_AUTH_SHARED_KEY, align 8
  %428 = icmp sle i64 %426, %427
  br i1 %428, label %435, label %429

429:                                              ; preds = %423
  %430 = load %struct.mwifiex_uap_bss_param*, %struct.mwifiex_uap_bss_param** %23, align 8
  %431 = getelementptr inbounds %struct.mwifiex_uap_bss_param, %struct.mwifiex_uap_bss_param* %430, i32 0, i32 8
  %432 = load i64, i64* %431, align 8
  %433 = load i64, i64* @MWIFIEX_AUTH_MODE_AUTO, align 8
  %434 = icmp eq i64 %432, %433
  br i1 %434, label %435, label %459

435:                                              ; preds = %429, %423
  %436 = load i8**, i8*** %4, align 8
  %437 = bitcast i8** %436 to %struct.host_cmd_tlv_auth_type*
  store %struct.host_cmd_tlv_auth_type* %437, %struct.host_cmd_tlv_auth_type** %16, align 8
  %438 = load i32, i32* @TLV_TYPE_AUTH_TYPE, align 4
  %439 = call i8* @cpu_to_le16(i32 %438)
  %440 = load %struct.host_cmd_tlv_auth_type*, %struct.host_cmd_tlv_auth_type** %16, align 8
  %441 = getelementptr inbounds %struct.host_cmd_tlv_auth_type, %struct.host_cmd_tlv_auth_type* %440, i32 0, i32 1
  %442 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %441, i32 0, i32 1
  store i8* %439, i8** %442, align 8
  %443 = call i8* @cpu_to_le16(i32 20)
  %444 = load %struct.host_cmd_tlv_auth_type*, %struct.host_cmd_tlv_auth_type** %16, align 8
  %445 = getelementptr inbounds %struct.host_cmd_tlv_auth_type, %struct.host_cmd_tlv_auth_type* %444, i32 0, i32 1
  %446 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %445, i32 0, i32 0
  store i8* %443, i8** %446, align 8
  %447 = load %struct.mwifiex_uap_bss_param*, %struct.mwifiex_uap_bss_param** %23, align 8
  %448 = getelementptr inbounds %struct.mwifiex_uap_bss_param, %struct.mwifiex_uap_bss_param* %447, i32 0, i32 8
  %449 = load i64, i64* %448, align 8
  %450 = inttoptr i64 %449 to i8*
  %451 = load %struct.host_cmd_tlv_auth_type*, %struct.host_cmd_tlv_auth_type** %16, align 8
  %452 = getelementptr inbounds %struct.host_cmd_tlv_auth_type, %struct.host_cmd_tlv_auth_type* %451, i32 0, i32 0
  store i8* %450, i8** %452, align 8
  %453 = load i32, i32* %25, align 4
  %454 = sext i32 %453 to i64
  %455 = add i64 %454, 24
  %456 = trunc i64 %455 to i32
  store i32 %456, i32* %25, align 4
  %457 = load i8**, i8*** %4, align 8
  %458 = getelementptr inbounds i8*, i8** %457, i64 24
  store i8** %458, i8*** %4, align 8
  br label %459

459:                                              ; preds = %435, %429
  %460 = load %struct.mwifiex_uap_bss_param*, %struct.mwifiex_uap_bss_param** %23, align 8
  %461 = getelementptr inbounds %struct.mwifiex_uap_bss_param, %struct.mwifiex_uap_bss_param* %460, i32 0, i32 7
  %462 = load i32, i32* %461, align 8
  %463 = icmp ne i32 %462, 0
  br i1 %463, label %464, label %488

464:                                              ; preds = %459
  %465 = load i8**, i8*** %4, align 8
  %466 = bitcast i8** %465 to %struct.host_cmd_tlv_encrypt_protocol*
  store %struct.host_cmd_tlv_encrypt_protocol* %466, %struct.host_cmd_tlv_encrypt_protocol** %15, align 8
  %467 = load i32, i32* @TLV_TYPE_UAP_ENCRY_PROTOCOL, align 4
  %468 = call i8* @cpu_to_le16(i32 %467)
  %469 = load %struct.host_cmd_tlv_encrypt_protocol*, %struct.host_cmd_tlv_encrypt_protocol** %15, align 8
  %470 = getelementptr inbounds %struct.host_cmd_tlv_encrypt_protocol, %struct.host_cmd_tlv_encrypt_protocol* %469, i32 0, i32 1
  %471 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %470, i32 0, i32 1
  store i8* %468, i8** %471, align 8
  %472 = call i8* @cpu_to_le16(i32 20)
  %473 = load %struct.host_cmd_tlv_encrypt_protocol*, %struct.host_cmd_tlv_encrypt_protocol** %15, align 8
  %474 = getelementptr inbounds %struct.host_cmd_tlv_encrypt_protocol, %struct.host_cmd_tlv_encrypt_protocol* %473, i32 0, i32 1
  %475 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %474, i32 0, i32 0
  store i8* %472, i8** %475, align 8
  %476 = load %struct.mwifiex_uap_bss_param*, %struct.mwifiex_uap_bss_param** %23, align 8
  %477 = getelementptr inbounds %struct.mwifiex_uap_bss_param, %struct.mwifiex_uap_bss_param* %476, i32 0, i32 7
  %478 = load i32, i32* %477, align 8
  %479 = call i8* @cpu_to_le16(i32 %478)
  %480 = load %struct.host_cmd_tlv_encrypt_protocol*, %struct.host_cmd_tlv_encrypt_protocol** %15, align 8
  %481 = getelementptr inbounds %struct.host_cmd_tlv_encrypt_protocol, %struct.host_cmd_tlv_encrypt_protocol* %480, i32 0, i32 0
  store i8* %479, i8** %481, align 8
  %482 = load i32, i32* %25, align 4
  %483 = sext i32 %482 to i64
  %484 = add i64 %483, 24
  %485 = trunc i64 %484 to i32
  store i32 %485, i32* %25, align 4
  %486 = load i8**, i8*** %4, align 8
  %487 = getelementptr inbounds i8*, i8** %486, i64 24
  store i8** %487, i8*** %4, align 8
  br label %488

488:                                              ; preds = %464, %459
  %489 = load %struct.mwifiex_uap_bss_param*, %struct.mwifiex_uap_bss_param** %23, align 8
  %490 = getelementptr inbounds %struct.mwifiex_uap_bss_param, %struct.mwifiex_uap_bss_param* %489, i32 0, i32 13
  %491 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %490, i32 0, i32 5
  %492 = load i64, i64* %491, align 8
  %493 = icmp ne i64 %492, 0
  br i1 %493, label %494, label %554

494:                                              ; preds = %488
  %495 = load i8**, i8*** %4, align 8
  %496 = bitcast i8** %495 to %struct.mwifiex_ie_types_htcap*
  store %struct.mwifiex_ie_types_htcap* %496, %struct.mwifiex_ie_types_htcap** %21, align 8
  %497 = load i32, i32* @WLAN_EID_HT_CAPABILITY, align 4
  %498 = call i8* @cpu_to_le16(i32 %497)
  %499 = load %struct.mwifiex_ie_types_htcap*, %struct.mwifiex_ie_types_htcap** %21, align 8
  %500 = getelementptr inbounds %struct.mwifiex_ie_types_htcap, %struct.mwifiex_ie_types_htcap* %499, i32 0, i32 1
  %501 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %500, i32 0, i32 1
  store i8* %498, i8** %501, align 8
  %502 = call i8* @cpu_to_le16(i32 4)
  %503 = load %struct.mwifiex_ie_types_htcap*, %struct.mwifiex_ie_types_htcap** %21, align 8
  %504 = getelementptr inbounds %struct.mwifiex_ie_types_htcap, %struct.mwifiex_ie_types_htcap* %503, i32 0, i32 1
  %505 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %504, i32 0, i32 0
  store i8* %502, i8** %505, align 8
  %506 = load %struct.mwifiex_uap_bss_param*, %struct.mwifiex_uap_bss_param** %23, align 8
  %507 = getelementptr inbounds %struct.mwifiex_uap_bss_param, %struct.mwifiex_uap_bss_param* %506, i32 0, i32 13
  %508 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %507, i32 0, i32 5
  %509 = load i64, i64* %508, align 8
  %510 = load %struct.mwifiex_ie_types_htcap*, %struct.mwifiex_ie_types_htcap** %21, align 8
  %511 = getelementptr inbounds %struct.mwifiex_ie_types_htcap, %struct.mwifiex_ie_types_htcap* %510, i32 0, i32 0
  %512 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %511, i32 0, i32 5
  store i64 %509, i64* %512, align 8
  %513 = load %struct.mwifiex_uap_bss_param*, %struct.mwifiex_uap_bss_param** %23, align 8
  %514 = getelementptr inbounds %struct.mwifiex_uap_bss_param, %struct.mwifiex_uap_bss_param* %513, i32 0, i32 13
  %515 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %514, i32 0, i32 4
  %516 = load i32, i32* %515, align 8
  %517 = load %struct.mwifiex_ie_types_htcap*, %struct.mwifiex_ie_types_htcap** %21, align 8
  %518 = getelementptr inbounds %struct.mwifiex_ie_types_htcap, %struct.mwifiex_ie_types_htcap* %517, i32 0, i32 0
  %519 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %518, i32 0, i32 4
  store i32 %516, i32* %519, align 8
  %520 = load %struct.mwifiex_ie_types_htcap*, %struct.mwifiex_ie_types_htcap** %21, align 8
  %521 = getelementptr inbounds %struct.mwifiex_ie_types_htcap, %struct.mwifiex_ie_types_htcap* %520, i32 0, i32 0
  %522 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %521, i32 0, i32 3
  %523 = load %struct.mwifiex_uap_bss_param*, %struct.mwifiex_uap_bss_param** %23, align 8
  %524 = getelementptr inbounds %struct.mwifiex_uap_bss_param, %struct.mwifiex_uap_bss_param* %523, i32 0, i32 13
  %525 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %524, i32 0, i32 3
  %526 = call i32 @memcpy(i32* %522, %struct.TYPE_29__* %525, i32 4)
  %527 = load %struct.mwifiex_uap_bss_param*, %struct.mwifiex_uap_bss_param** %23, align 8
  %528 = getelementptr inbounds %struct.mwifiex_uap_bss_param, %struct.mwifiex_uap_bss_param* %527, i32 0, i32 13
  %529 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %528, i32 0, i32 2
  %530 = load i32, i32* %529, align 8
  %531 = load %struct.mwifiex_ie_types_htcap*, %struct.mwifiex_ie_types_htcap** %21, align 8
  %532 = getelementptr inbounds %struct.mwifiex_ie_types_htcap, %struct.mwifiex_ie_types_htcap* %531, i32 0, i32 0
  %533 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %532, i32 0, i32 2
  store i32 %530, i32* %533, align 8
  %534 = load %struct.mwifiex_uap_bss_param*, %struct.mwifiex_uap_bss_param** %23, align 8
  %535 = getelementptr inbounds %struct.mwifiex_uap_bss_param, %struct.mwifiex_uap_bss_param* %534, i32 0, i32 13
  %536 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %535, i32 0, i32 1
  %537 = load i32, i32* %536, align 4
  %538 = load %struct.mwifiex_ie_types_htcap*, %struct.mwifiex_ie_types_htcap** %21, align 8
  %539 = getelementptr inbounds %struct.mwifiex_ie_types_htcap, %struct.mwifiex_ie_types_htcap* %538, i32 0, i32 0
  %540 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %539, i32 0, i32 1
  store i32 %537, i32* %540, align 4
  %541 = load %struct.mwifiex_uap_bss_param*, %struct.mwifiex_uap_bss_param** %23, align 8
  %542 = getelementptr inbounds %struct.mwifiex_uap_bss_param, %struct.mwifiex_uap_bss_param* %541, i32 0, i32 13
  %543 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %542, i32 0, i32 0
  %544 = load i32, i32* %543, align 8
  %545 = load %struct.mwifiex_ie_types_htcap*, %struct.mwifiex_ie_types_htcap** %21, align 8
  %546 = getelementptr inbounds %struct.mwifiex_ie_types_htcap, %struct.mwifiex_ie_types_htcap* %545, i32 0, i32 0
  %547 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %546, i32 0, i32 0
  store i32 %544, i32* %547, align 8
  %548 = load i32, i32* %25, align 4
  %549 = sext i32 %548 to i64
  %550 = add i64 %549, 48
  %551 = trunc i64 %550 to i32
  store i32 %551, i32* %25, align 4
  %552 = load i8**, i8*** %4, align 8
  %553 = getelementptr inbounds i8*, i8** %552, i64 48
  store i8** %553, i8*** %4, align 8
  br label %554

554:                                              ; preds = %494, %488
  %555 = load %struct.mwifiex_uap_bss_param*, %struct.mwifiex_uap_bss_param** %23, align 8
  %556 = getelementptr inbounds %struct.mwifiex_uap_bss_param, %struct.mwifiex_uap_bss_param* %555, i32 0, i32 12
  %557 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %556, i32 0, i32 0
  %558 = load i32, i32* %557, align 8
  %559 = icmp ne i32 %558, 255
  br i1 %559, label %560, label %583

560:                                              ; preds = %554
  %561 = load i8**, i8*** %4, align 8
  %562 = bitcast i8** %561 to %struct.mwifiex_ie_types_wmmcap*
  store %struct.mwifiex_ie_types_wmmcap* %562, %struct.mwifiex_ie_types_wmmcap** %22, align 8
  %563 = load i32, i32* @WLAN_EID_VENDOR_SPECIFIC, align 4
  %564 = call i8* @cpu_to_le16(i32 %563)
  %565 = load %struct.mwifiex_ie_types_wmmcap*, %struct.mwifiex_ie_types_wmmcap** %22, align 8
  %566 = getelementptr inbounds %struct.mwifiex_ie_types_wmmcap, %struct.mwifiex_ie_types_wmmcap* %565, i32 0, i32 1
  %567 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %566, i32 0, i32 1
  store i8* %564, i8** %567, align 8
  %568 = call i8* @cpu_to_le16(i32 4)
  %569 = load %struct.mwifiex_ie_types_wmmcap*, %struct.mwifiex_ie_types_wmmcap** %22, align 8
  %570 = getelementptr inbounds %struct.mwifiex_ie_types_wmmcap, %struct.mwifiex_ie_types_wmmcap* %569, i32 0, i32 1
  %571 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %570, i32 0, i32 0
  store i8* %568, i8** %571, align 8
  %572 = load %struct.mwifiex_ie_types_wmmcap*, %struct.mwifiex_ie_types_wmmcap** %22, align 8
  %573 = getelementptr inbounds %struct.mwifiex_ie_types_wmmcap, %struct.mwifiex_ie_types_wmmcap* %572, i32 0, i32 0
  %574 = load %struct.mwifiex_uap_bss_param*, %struct.mwifiex_uap_bss_param** %23, align 8
  %575 = getelementptr inbounds %struct.mwifiex_uap_bss_param, %struct.mwifiex_uap_bss_param* %574, i32 0, i32 12
  %576 = call i32 @memcpy(i32* %573, %struct.TYPE_29__* %575, i32 4)
  %577 = load i32, i32* %25, align 4
  %578 = sext i32 %577 to i64
  %579 = add i64 %578, 24
  %580 = trunc i64 %579 to i32
  store i32 %580, i32* %25, align 4
  %581 = load i8**, i8*** %4, align 8
  %582 = getelementptr inbounds i8*, i8** %581, i64 24
  store i8** %582, i8*** %4, align 8
  br label %583

583:                                              ; preds = %560, %554
  %584 = load %struct.mwifiex_uap_bss_param*, %struct.mwifiex_uap_bss_param** %23, align 8
  %585 = getelementptr inbounds %struct.mwifiex_uap_bss_param, %struct.mwifiex_uap_bss_param* %584, i32 0, i32 11
  %586 = load i64, i64* %585, align 8
  %587 = icmp ne i64 %586, 0
  br i1 %587, label %588, label %612

588:                                              ; preds = %583
  %589 = load i8**, i8*** %4, align 8
  %590 = bitcast i8** %589 to %struct.host_cmd_tlv_ageout_timer*
  store %struct.host_cmd_tlv_ageout_timer* %590, %struct.host_cmd_tlv_ageout_timer** %18, align 8
  %591 = load i32, i32* @TLV_TYPE_UAP_AO_TIMER, align 4
  %592 = call i8* @cpu_to_le16(i32 %591)
  %593 = load %struct.host_cmd_tlv_ageout_timer*, %struct.host_cmd_tlv_ageout_timer** %18, align 8
  %594 = getelementptr inbounds %struct.host_cmd_tlv_ageout_timer, %struct.host_cmd_tlv_ageout_timer* %593, i32 0, i32 1
  %595 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %594, i32 0, i32 1
  store i8* %592, i8** %595, align 8
  %596 = call i8* @cpu_to_le16(i32 20)
  %597 = load %struct.host_cmd_tlv_ageout_timer*, %struct.host_cmd_tlv_ageout_timer** %18, align 8
  %598 = getelementptr inbounds %struct.host_cmd_tlv_ageout_timer, %struct.host_cmd_tlv_ageout_timer* %597, i32 0, i32 1
  %599 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %598, i32 0, i32 0
  store i8* %596, i8** %599, align 8
  %600 = load %struct.mwifiex_uap_bss_param*, %struct.mwifiex_uap_bss_param** %23, align 8
  %601 = getelementptr inbounds %struct.mwifiex_uap_bss_param, %struct.mwifiex_uap_bss_param* %600, i32 0, i32 11
  %602 = load i64, i64* %601, align 8
  %603 = call i8* @cpu_to_le32(i64 %602)
  %604 = load %struct.host_cmd_tlv_ageout_timer*, %struct.host_cmd_tlv_ageout_timer** %18, align 8
  %605 = getelementptr inbounds %struct.host_cmd_tlv_ageout_timer, %struct.host_cmd_tlv_ageout_timer* %604, i32 0, i32 0
  store i8* %603, i8** %605, align 8
  %606 = load i32, i32* %25, align 4
  %607 = sext i32 %606 to i64
  %608 = add i64 %607, 24
  %609 = trunc i64 %608 to i32
  store i32 %609, i32* %25, align 4
  %610 = load i8**, i8*** %4, align 8
  %611 = getelementptr inbounds i8*, i8** %610, i64 24
  store i8** %611, i8*** %4, align 8
  br label %612

612:                                              ; preds = %588, %583
  %613 = load %struct.mwifiex_uap_bss_param*, %struct.mwifiex_uap_bss_param** %23, align 8
  %614 = getelementptr inbounds %struct.mwifiex_uap_bss_param, %struct.mwifiex_uap_bss_param* %613, i32 0, i32 10
  %615 = load i64, i64* %614, align 8
  %616 = icmp ne i64 %615, 0
  br i1 %616, label %617, label %641

617:                                              ; preds = %612
  %618 = load i8**, i8*** %4, align 8
  %619 = bitcast i8** %618 to i8*
  %620 = bitcast i8* %619 to %struct.host_cmd_tlv_power_constraint*
  store %struct.host_cmd_tlv_power_constraint* %620, %struct.host_cmd_tlv_power_constraint** %20, align 8
  %621 = load i32, i32* @TLV_TYPE_PWR_CONSTRAINT, align 4
  %622 = call i8* @cpu_to_le16(i32 %621)
  %623 = load %struct.host_cmd_tlv_power_constraint*, %struct.host_cmd_tlv_power_constraint** %20, align 8
  %624 = getelementptr inbounds %struct.host_cmd_tlv_power_constraint, %struct.host_cmd_tlv_power_constraint* %623, i32 0, i32 1
  %625 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %624, i32 0, i32 1
  store i8* %622, i8** %625, align 8
  %626 = call i8* @cpu_to_le16(i32 8)
  %627 = load %struct.host_cmd_tlv_power_constraint*, %struct.host_cmd_tlv_power_constraint** %20, align 8
  %628 = getelementptr inbounds %struct.host_cmd_tlv_power_constraint, %struct.host_cmd_tlv_power_constraint* %627, i32 0, i32 1
  %629 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %628, i32 0, i32 0
  store i8* %626, i8** %629, align 8
  %630 = load %struct.mwifiex_uap_bss_param*, %struct.mwifiex_uap_bss_param** %23, align 8
  %631 = getelementptr inbounds %struct.mwifiex_uap_bss_param, %struct.mwifiex_uap_bss_param* %630, i32 0, i32 10
  %632 = load i64, i64* %631, align 8
  %633 = load %struct.host_cmd_tlv_power_constraint*, %struct.host_cmd_tlv_power_constraint** %20, align 8
  %634 = getelementptr inbounds %struct.host_cmd_tlv_power_constraint, %struct.host_cmd_tlv_power_constraint* %633, i32 0, i32 0
  store i64 %632, i64* %634, align 8
  %635 = load i32, i32* %25, align 4
  %636 = sext i32 %635 to i64
  %637 = add i64 %636, 24
  %638 = trunc i64 %637 to i32
  store i32 %638, i32* %25, align 4
  %639 = load i8**, i8*** %4, align 8
  %640 = getelementptr inbounds i8*, i8** %639, i64 24
  store i8** %640, i8*** %4, align 8
  br label %641

641:                                              ; preds = %617, %612
  %642 = load %struct.mwifiex_uap_bss_param*, %struct.mwifiex_uap_bss_param** %23, align 8
  %643 = getelementptr inbounds %struct.mwifiex_uap_bss_param, %struct.mwifiex_uap_bss_param* %642, i32 0, i32 9
  %644 = load i64, i64* %643, align 8
  %645 = icmp ne i64 %644, 0
  br i1 %645, label %646, label %670

646:                                              ; preds = %641
  %647 = load i8**, i8*** %4, align 8
  %648 = bitcast i8** %647 to %struct.host_cmd_tlv_ageout_timer*
  store %struct.host_cmd_tlv_ageout_timer* %648, %struct.host_cmd_tlv_ageout_timer** %19, align 8
  %649 = load i32, i32* @TLV_TYPE_UAP_PS_AO_TIMER, align 4
  %650 = call i8* @cpu_to_le16(i32 %649)
  %651 = load %struct.host_cmd_tlv_ageout_timer*, %struct.host_cmd_tlv_ageout_timer** %19, align 8
  %652 = getelementptr inbounds %struct.host_cmd_tlv_ageout_timer, %struct.host_cmd_tlv_ageout_timer* %651, i32 0, i32 1
  %653 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %652, i32 0, i32 1
  store i8* %650, i8** %653, align 8
  %654 = call i8* @cpu_to_le16(i32 20)
  %655 = load %struct.host_cmd_tlv_ageout_timer*, %struct.host_cmd_tlv_ageout_timer** %19, align 8
  %656 = getelementptr inbounds %struct.host_cmd_tlv_ageout_timer, %struct.host_cmd_tlv_ageout_timer* %655, i32 0, i32 1
  %657 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %656, i32 0, i32 0
  store i8* %654, i8** %657, align 8
  %658 = load %struct.mwifiex_uap_bss_param*, %struct.mwifiex_uap_bss_param** %23, align 8
  %659 = getelementptr inbounds %struct.mwifiex_uap_bss_param, %struct.mwifiex_uap_bss_param* %658, i32 0, i32 9
  %660 = load i64, i64* %659, align 8
  %661 = call i8* @cpu_to_le32(i64 %660)
  %662 = load %struct.host_cmd_tlv_ageout_timer*, %struct.host_cmd_tlv_ageout_timer** %19, align 8
  %663 = getelementptr inbounds %struct.host_cmd_tlv_ageout_timer, %struct.host_cmd_tlv_ageout_timer* %662, i32 0, i32 0
  store i8* %661, i8** %663, align 8
  %664 = load i32, i32* %25, align 4
  %665 = sext i32 %664 to i64
  %666 = add i64 %665, 24
  %667 = trunc i64 %666 to i32
  store i32 %667, i32* %25, align 4
  %668 = load i8**, i8*** %4, align 8
  %669 = getelementptr inbounds i8*, i8** %668, i64 24
  store i8** %669, i8*** %4, align 8
  br label %670

670:                                              ; preds = %646, %641
  %671 = load i32, i32* %25, align 4
  %672 = load i32*, i32** %6, align 8
  store i32 %671, i32* %672, align 4
  ret i32 0
}

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @memcpy(i32*, %struct.TYPE_29__*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @mwifiex_uap_bss_wpa(i8***, i8*, i32*) #1

declare dso_local i32 @mwifiex_uap_bss_wep(i8***, i8*, i32*) #1

declare dso_local i8* @cpu_to_le32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
