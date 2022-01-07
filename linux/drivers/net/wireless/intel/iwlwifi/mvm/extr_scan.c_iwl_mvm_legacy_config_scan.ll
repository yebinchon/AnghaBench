; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_scan.c_iwl_mvm_legacy_config_scan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_scan.c_iwl_mvm_legacy_config_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32, i32, %struct.TYPE_8__*, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.iwl_host_cmd = type { i32*, i32*, i8**, i32 }

@SCAN_CFG_CMD = common dso_local global i32 0, align 4
@IWL_ALWAYS_LONG_GROUP = common dso_local global i32 0, align 4
@IWL_SCAN_TYPE_NOT_SET = common dso_local global i32 0, align 4
@NL80211_BAND_2GHZ = common dso_local global i64 0, align 8
@NL80211_BAND_5GHZ = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SCAN_CONFIG_FLAG_ACTIVATE = common dso_local global i32 0, align 4
@SCAN_CONFIG_FLAG_ALLOW_CHUB_REQS = common dso_local global i32 0, align 4
@SCAN_CONFIG_FLAG_SET_TX_CHAINS = common dso_local global i32 0, align 4
@SCAN_CONFIG_FLAG_SET_RX_CHAINS = common dso_local global i32 0, align 4
@SCAN_CONFIG_FLAG_SET_AUX_STA_ID = common dso_local global i32 0, align 4
@SCAN_CONFIG_FLAG_SET_ALL_TIMES = common dso_local global i32 0, align 4
@SCAN_CONFIG_FLAG_SET_LEGACY_RATES = common dso_local global i32 0, align 4
@SCAN_CONFIG_FLAG_SET_MAC_ADDR = common dso_local global i32 0, align 4
@SCAN_CONFIG_FLAG_SET_CHANNEL_FLAGS = common dso_local global i32 0, align 4
@SCAN_CONFIG_FLAG_SET_FRAGMENTED = common dso_local global i32 0, align 4
@SCAN_CONFIG_FLAG_CLEAR_FRAGMENTED = common dso_local global i32 0, align 4
@IWL_CHANNEL_FLAG_EBS = common dso_local global i32 0, align 4
@IWL_CHANNEL_FLAG_ACCURATE_EBS = common dso_local global i32 0, align 4
@IWL_CHANNEL_FLAG_EBS_ADD = common dso_local global i32 0, align 4
@IWL_CHANNEL_FLAG_PRE_SCAN_PASSIVE2ACTIVE = common dso_local global i32 0, align 4
@SCAN_CONFIG_FLAG_SET_LMAC2_FRAGMENTED = common dso_local global i32 0, align 4
@SCAN_CONFIG_FLAG_CLEAR_LMAC2_FRAGMENTED = common dso_local global i32 0, align 4
@IWL_HCMD_DFL_NOCOPY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Sending UMAC scan config\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_mvm*)* @iwl_mvm_legacy_config_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_mvm_legacy_config_scan(%struct.iwl_mvm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iwl_mvm*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.iwl_host_cmd, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %3, align 8
  %13 = bitcast %struct.iwl_host_cmd* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 32, i1 false)
  %14 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %7, i32 0, i32 3
  %15 = load i32, i32* @SCAN_CFG_CMD, align 4
  %16 = load i32, i32* @IWL_ALWAYS_LONG_GROUP, align 4
  %17 = call i32 @iwl_cmd_id(i32 %15, i32 %16, i32 0)
  store i32 %17, i32* %14, align 8
  %18 = load i32, i32* @IWL_SCAN_TYPE_NOT_SET, align 4
  store i32 %18, i32* %9, align 4
  %19 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %20 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %19, i32 0, i32 3
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %29 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %28, i32 0, i32 3
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %27, %36
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %40 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %39, i32 0, i32 2
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp sgt i32 %38, %44
  %46 = zext i1 %45 to i32
  %47 = call i64 @WARN_ON(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %1
  %50 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %51 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %50, i32 0, i32 2
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %10, align 4
  br label %56

56:                                               ; preds = %49, %1
  %57 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %58 = call i64 @iwl_mvm_is_cdb_supported(%struct.iwl_mvm* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %80

60:                                               ; preds = %56
  %61 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %62 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %63 = call i32 @iwl_mvm_get_scan_type_band(%struct.iwl_mvm* %61, i32* null, i64 %62)
  store i32 %63, i32* %8, align 4
  %64 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %65 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %66 = call i32 @iwl_mvm_get_scan_type_band(%struct.iwl_mvm* %64, i32* null, i64 %65)
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* %8, align 4
  %68 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %69 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp eq i32 %67, %70
  br i1 %71, label %72, label %79

72:                                               ; preds = %60
  %73 = load i32, i32* %9, align 4
  %74 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %75 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = icmp eq i32 %73, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %72
  store i32 0, i32* %2, align 4
  br label %209

79:                                               ; preds = %72, %60
  br label %90

80:                                               ; preds = %56
  %81 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %82 = call i32 @iwl_mvm_get_scan_type(%struct.iwl_mvm* %81, i32* null)
  store i32 %82, i32* %8, align 4
  %83 = load i32, i32* %8, align 4
  %84 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %85 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp eq i32 %83, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %80
  store i32 0, i32* %2, align 4
  br label %209

89:                                               ; preds = %80
  br label %90

90:                                               ; preds = %89, %79
  %91 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %92 = call i64 @iwl_mvm_cdb_scan_api(%struct.iwl_mvm* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %90
  store i32 4, i32* %6, align 4
  br label %96

95:                                               ; preds = %90
  store i32 4, i32* %6, align 4
  br label %96

96:                                               ; preds = %95, %94
  %97 = load i32, i32* %10, align 4
  %98 = load i32, i32* %6, align 4
  %99 = add nsw i32 %98, %97
  store i32 %99, i32* %6, align 4
  %100 = load i32, i32* %6, align 4
  %101 = load i32, i32* @GFP_KERNEL, align 4
  %102 = call i8* @kzalloc(i32 %100, i32 %101)
  store i8* %102, i8** %4, align 8
  %103 = load i8*, i8** %4, align 8
  %104 = icmp ne i8* %103, null
  br i1 %104, label %108, label %105

105:                                              ; preds = %96
  %106 = load i32, i32* @ENOMEM, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %2, align 4
  br label %209

108:                                              ; preds = %96
  %109 = load i32, i32* @SCAN_CONFIG_FLAG_ACTIVATE, align 4
  %110 = load i32, i32* @SCAN_CONFIG_FLAG_ALLOW_CHUB_REQS, align 4
  %111 = or i32 %109, %110
  %112 = load i32, i32* @SCAN_CONFIG_FLAG_SET_TX_CHAINS, align 4
  %113 = or i32 %111, %112
  %114 = load i32, i32* @SCAN_CONFIG_FLAG_SET_RX_CHAINS, align 4
  %115 = or i32 %113, %114
  %116 = load i32, i32* @SCAN_CONFIG_FLAG_SET_AUX_STA_ID, align 4
  %117 = or i32 %115, %116
  %118 = load i32, i32* @SCAN_CONFIG_FLAG_SET_ALL_TIMES, align 4
  %119 = or i32 %117, %118
  %120 = load i32, i32* @SCAN_CONFIG_FLAG_SET_LEGACY_RATES, align 4
  %121 = or i32 %119, %120
  %122 = load i32, i32* @SCAN_CONFIG_FLAG_SET_MAC_ADDR, align 4
  %123 = or i32 %121, %122
  %124 = load i32, i32* @SCAN_CONFIG_FLAG_SET_CHANNEL_FLAGS, align 4
  %125 = or i32 %123, %124
  %126 = load i32, i32* %10, align 4
  %127 = call i32 @SCAN_CONFIG_N_CHANNELS(i32 %126)
  %128 = or i32 %125, %127
  %129 = load i32, i32* %8, align 4
  %130 = call i64 @iwl_mvm_is_scan_fragmented(i32 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %108
  %133 = load i32, i32* @SCAN_CONFIG_FLAG_SET_FRAGMENTED, align 4
  br label %136

134:                                              ; preds = %108
  %135 = load i32, i32* @SCAN_CONFIG_FLAG_CLEAR_FRAGMENTED, align 4
  br label %136

136:                                              ; preds = %134, %132
  %137 = phi i32 [ %133, %132 ], [ %135, %134 ]
  %138 = or i32 %128, %137
  store i32 %138, i32* %11, align 4
  %139 = load i32, i32* @IWL_CHANNEL_FLAG_EBS, align 4
  %140 = load i32, i32* @IWL_CHANNEL_FLAG_ACCURATE_EBS, align 4
  %141 = or i32 %139, %140
  %142 = load i32, i32* @IWL_CHANNEL_FLAG_EBS_ADD, align 4
  %143 = or i32 %141, %142
  %144 = load i32, i32* @IWL_CHANNEL_FLAG_PRE_SCAN_PASSIVE2ACTIVE, align 4
  %145 = or i32 %143, %144
  store i32 %145, i32* %12, align 4
  %146 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %147 = call i64 @iwl_mvm_cdb_scan_api(%struct.iwl_mvm* %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %172

149:                                              ; preds = %136
  %150 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %151 = call i64 @iwl_mvm_is_cdb_supported(%struct.iwl_mvm* %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %165

153:                                              ; preds = %149
  %154 = load i32, i32* %9, align 4
  %155 = call i64 @iwl_mvm_is_scan_fragmented(i32 %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %153
  %158 = load i32, i32* @SCAN_CONFIG_FLAG_SET_LMAC2_FRAGMENTED, align 4
  br label %161

159:                                              ; preds = %153
  %160 = load i32, i32* @SCAN_CONFIG_FLAG_CLEAR_LMAC2_FRAGMENTED, align 4
  br label %161

161:                                              ; preds = %159, %157
  %162 = phi i32 [ %158, %157 ], [ %160, %159 ]
  %163 = load i32, i32* %11, align 4
  %164 = or i32 %163, %162
  store i32 %164, i32* %11, align 4
  br label %165

165:                                              ; preds = %161, %149
  %166 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %167 = load i8*, i8** %4, align 8
  %168 = load i32, i32* %11, align 4
  %169 = load i32, i32* %12, align 4
  %170 = load i32, i32* %10, align 4
  %171 = call i32 @iwl_mvm_fill_scan_config_v2(%struct.iwl_mvm* %166, i8* %167, i32 %168, i32 %169, i32 %170)
  br label %179

172:                                              ; preds = %136
  %173 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %174 = load i8*, i8** %4, align 8
  %175 = load i32, i32* %11, align 4
  %176 = load i32, i32* %12, align 4
  %177 = load i32, i32* %10, align 4
  %178 = call i32 @iwl_mvm_fill_scan_config_v1(%struct.iwl_mvm* %173, i8* %174, i32 %175, i32 %176, i32 %177)
  br label %179

179:                                              ; preds = %172, %165
  %180 = load i8*, i8** %4, align 8
  %181 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %7, i32 0, i32 2
  %182 = load i8**, i8*** %181, align 8
  %183 = getelementptr inbounds i8*, i8** %182, i64 0
  store i8* %180, i8** %183, align 8
  %184 = load i32, i32* %6, align 4
  %185 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %7, i32 0, i32 0
  %186 = load i32*, i32** %185, align 8
  %187 = getelementptr inbounds i32, i32* %186, i64 0
  store i32 %184, i32* %187, align 4
  %188 = load i32, i32* @IWL_HCMD_DFL_NOCOPY, align 4
  %189 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %7, i32 0, i32 1
  %190 = load i32*, i32** %189, align 8
  %191 = getelementptr inbounds i32, i32* %190, i64 0
  store i32 %188, i32* %191, align 4
  %192 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %193 = call i32 @IWL_DEBUG_SCAN(%struct.iwl_mvm* %192, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %194 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %195 = call i32 @iwl_mvm_send_cmd(%struct.iwl_mvm* %194, %struct.iwl_host_cmd* %7)
  store i32 %195, i32* %5, align 4
  %196 = load i32, i32* %5, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %205, label %198

198:                                              ; preds = %179
  %199 = load i32, i32* %8, align 4
  %200 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %201 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %200, i32 0, i32 0
  store i32 %199, i32* %201, align 8
  %202 = load i32, i32* %9, align 4
  %203 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %204 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %203, i32 0, i32 1
  store i32 %202, i32* %204, align 4
  br label %205

205:                                              ; preds = %198, %179
  %206 = load i8*, i8** %4, align 8
  %207 = call i32 @kfree(i8* %206)
  %208 = load i32, i32* %5, align 4
  store i32 %208, i32* %2, align 4
  br label %209

209:                                              ; preds = %205, %105, %88, %78
  %210 = load i32, i32* %2, align 4
  ret i32 %210
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @iwl_cmd_id(i32, i32, i32) #2

declare dso_local i64 @WARN_ON(i32) #2

declare dso_local i64 @iwl_mvm_is_cdb_supported(%struct.iwl_mvm*) #2

declare dso_local i32 @iwl_mvm_get_scan_type_band(%struct.iwl_mvm*, i32*, i64) #2

declare dso_local i32 @iwl_mvm_get_scan_type(%struct.iwl_mvm*, i32*) #2

declare dso_local i64 @iwl_mvm_cdb_scan_api(%struct.iwl_mvm*) #2

declare dso_local i8* @kzalloc(i32, i32) #2

declare dso_local i32 @SCAN_CONFIG_N_CHANNELS(i32) #2

declare dso_local i64 @iwl_mvm_is_scan_fragmented(i32) #2

declare dso_local i32 @iwl_mvm_fill_scan_config_v2(%struct.iwl_mvm*, i8*, i32, i32, i32) #2

declare dso_local i32 @iwl_mvm_fill_scan_config_v1(%struct.iwl_mvm*, i8*, i32, i32, i32) #2

declare dso_local i32 @IWL_DEBUG_SCAN(%struct.iwl_mvm*, i8*) #2

declare dso_local i32 @iwl_mvm_send_cmd(%struct.iwl_mvm*, %struct.iwl_host_cmd*) #2

declare dso_local i32 @kfree(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
