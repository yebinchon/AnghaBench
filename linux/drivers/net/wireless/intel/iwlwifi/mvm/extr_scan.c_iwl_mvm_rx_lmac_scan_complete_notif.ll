; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_scan.c_iwl_mvm_rx_lmac_scan_complete_notif.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_scan.c_iwl_mvm_rx_lmac_scan_complete_notif.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.iwl_rx_cmd_buffer = type { i32 }
%struct.iwl_rx_packet = type { i64 }
%struct.iwl_periodic_scan_complete = type { i64, i64, i32, i32, i32 }
%struct.cfg80211_scan_info = type { i32 }

@IWL_SCAN_OFFLOAD_ABORTED = common dso_local global i64 0, align 8
@IWL_UCODE_TLV_CAPA_UMAC_SCAN = common dso_local global i32 0, align 4
@IWL_MVM_SCAN_STOPPING_SCHED = common dso_local global i32 0, align 4
@IWL_MVM_SCAN_STOPPING_REGULAR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Scheduled scan %s, EBS status %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"aborted\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"completed\00", align 1
@.str.3 = private unnamed_addr constant [63 x i8] c"Last line %d, Last iteration %d, Time after last iteration %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"Regular scan %s, EBS status %s\0A\00", align 1
@IWL_MVM_SCAN_SCHED = common dso_local global i32 0, align 4
@IWL_MVM_SCAN_REGULAR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [68 x i8] c"Last line %d, Last iteration %d, Time after last iteration %d (FW)\0A\00", align 1
@SCHED_SCAN_PASS_ALL_DISABLED = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [37 x i8] c"Regular scan %s, EBS status %s (FW)\0A\00", align 1
@.str.7 = private unnamed_addr constant [55 x i8] c"got scan complete notification but no scan is running\0A\00", align 1
@IWL_SCAN_EBS_SUCCESS = common dso_local global i64 0, align 8
@IWL_SCAN_EBS_INACTIVE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwl_mvm_rx_lmac_scan_complete_notif(%struct.iwl_mvm* %0, %struct.iwl_rx_cmd_buffer* %1) #0 {
  %3 = alloca %struct.iwl_mvm*, align 8
  %4 = alloca %struct.iwl_rx_cmd_buffer*, align 8
  %5 = alloca %struct.iwl_rx_packet*, align 8
  %6 = alloca %struct.iwl_periodic_scan_complete*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.cfg80211_scan_info, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %3, align 8
  store %struct.iwl_rx_cmd_buffer* %1, %struct.iwl_rx_cmd_buffer** %4, align 8
  %9 = load %struct.iwl_rx_cmd_buffer*, %struct.iwl_rx_cmd_buffer** %4, align 8
  %10 = call %struct.iwl_rx_packet* @rxb_addr(%struct.iwl_rx_cmd_buffer* %9)
  store %struct.iwl_rx_packet* %10, %struct.iwl_rx_packet** %5, align 8
  %11 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %5, align 8
  %12 = getelementptr inbounds %struct.iwl_rx_packet, %struct.iwl_rx_packet* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to i8*
  %15 = bitcast i8* %14 to %struct.iwl_periodic_scan_complete*
  store %struct.iwl_periodic_scan_complete* %15, %struct.iwl_periodic_scan_complete** %6, align 8
  %16 = load %struct.iwl_periodic_scan_complete*, %struct.iwl_periodic_scan_complete** %6, align 8
  %17 = getelementptr inbounds %struct.iwl_periodic_scan_complete, %struct.iwl_periodic_scan_complete* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @IWL_SCAN_OFFLOAD_ABORTED, align 8
  %20 = icmp eq i64 %18, %19
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %7, align 4
  %22 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %23 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %22, i32 0, i32 6
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* @IWL_UCODE_TLV_CAPA_UMAC_SCAN, align 4
  %27 = call i32 @fw_has_capa(i32* %25, i32 %26)
  %28 = call i64 @WARN_ON_ONCE(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %2
  br label %211

31:                                               ; preds = %2
  %32 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %33 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %32, i32 0, i32 5
  %34 = call i32 @lockdep_assert_held(i32* %33)
  %35 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %36 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @IWL_MVM_SCAN_STOPPING_SCHED, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %78

41:                                               ; preds = %31
  %42 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %43 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @IWL_MVM_SCAN_STOPPING_REGULAR, align 4
  %46 = and i32 %44, %45
  %47 = call i64 @WARN_ON_ONCE(i32 %46)
  %48 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0)
  %53 = load %struct.iwl_periodic_scan_complete*, %struct.iwl_periodic_scan_complete** %6, align 8
  %54 = getelementptr inbounds %struct.iwl_periodic_scan_complete, %struct.iwl_periodic_scan_complete* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @iwl_mvm_ebs_status_str(i64 %55)
  %57 = call i32 (%struct.iwl_mvm*, i8*, i8*, i32, ...) @IWL_DEBUG_SCAN(%struct.iwl_mvm* %48, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %52, i32 %56)
  %58 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %59 = load %struct.iwl_periodic_scan_complete*, %struct.iwl_periodic_scan_complete** %6, align 8
  %60 = getelementptr inbounds %struct.iwl_periodic_scan_complete, %struct.iwl_periodic_scan_complete* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 8
  %62 = sext i32 %61 to i64
  %63 = inttoptr i64 %62 to i8*
  %64 = load %struct.iwl_periodic_scan_complete*, %struct.iwl_periodic_scan_complete** %6, align 8
  %65 = getelementptr inbounds %struct.iwl_periodic_scan_complete, %struct.iwl_periodic_scan_complete* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.iwl_periodic_scan_complete*, %struct.iwl_periodic_scan_complete** %6, align 8
  %68 = getelementptr inbounds %struct.iwl_periodic_scan_complete, %struct.iwl_periodic_scan_complete* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @__le32_to_cpu(i32 %69)
  %71 = call i32 (%struct.iwl_mvm*, i8*, i8*, i32, ...) @IWL_DEBUG_SCAN(%struct.iwl_mvm* %58, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.3, i64 0, i64 0), i8* %63, i32 %66, i32 %70)
  %72 = load i32, i32* @IWL_MVM_SCAN_STOPPING_SCHED, align 4
  %73 = xor i32 %72, -1
  %74 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %75 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = and i32 %76, %73
  store i32 %77, i32* %75, align 8
  br label %194

78:                                               ; preds = %31
  %79 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %80 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @IWL_MVM_SCAN_STOPPING_REGULAR, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %102

85:                                               ; preds = %78
  %86 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %87 = load i32, i32* %7, align 4
  %88 = icmp ne i32 %87, 0
  %89 = zext i1 %88 to i64
  %90 = select i1 %88, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0)
  %91 = load %struct.iwl_periodic_scan_complete*, %struct.iwl_periodic_scan_complete** %6, align 8
  %92 = getelementptr inbounds %struct.iwl_periodic_scan_complete, %struct.iwl_periodic_scan_complete* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = call i32 @iwl_mvm_ebs_status_str(i64 %93)
  %95 = call i32 (%struct.iwl_mvm*, i8*, i8*, i32, ...) @IWL_DEBUG_SCAN(%struct.iwl_mvm* %86, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i8* %90, i32 %94)
  %96 = load i32, i32* @IWL_MVM_SCAN_STOPPING_REGULAR, align 4
  %97 = xor i32 %96, -1
  %98 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %99 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = and i32 %100, %97
  store i32 %101, i32* %99, align 8
  br label %193

102:                                              ; preds = %78
  %103 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %104 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @IWL_MVM_SCAN_SCHED, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %153

109:                                              ; preds = %102
  %110 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %111 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @IWL_MVM_SCAN_REGULAR, align 4
  %114 = and i32 %112, %113
  %115 = call i64 @WARN_ON_ONCE(i32 %114)
  %116 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %117 = load i32, i32* %7, align 4
  %118 = icmp ne i32 %117, 0
  %119 = zext i1 %118 to i64
  %120 = select i1 %118, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0)
  %121 = load %struct.iwl_periodic_scan_complete*, %struct.iwl_periodic_scan_complete** %6, align 8
  %122 = getelementptr inbounds %struct.iwl_periodic_scan_complete, %struct.iwl_periodic_scan_complete* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = call i32 @iwl_mvm_ebs_status_str(i64 %123)
  %125 = call i32 (%struct.iwl_mvm*, i8*, i8*, i32, ...) @IWL_DEBUG_SCAN(%struct.iwl_mvm* %116, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %120, i32 %124)
  %126 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %127 = load %struct.iwl_periodic_scan_complete*, %struct.iwl_periodic_scan_complete** %6, align 8
  %128 = getelementptr inbounds %struct.iwl_periodic_scan_complete, %struct.iwl_periodic_scan_complete* %127, i32 0, i32 4
  %129 = load i32, i32* %128, align 8
  %130 = sext i32 %129 to i64
  %131 = inttoptr i64 %130 to i8*
  %132 = load %struct.iwl_periodic_scan_complete*, %struct.iwl_periodic_scan_complete** %6, align 8
  %133 = getelementptr inbounds %struct.iwl_periodic_scan_complete, %struct.iwl_periodic_scan_complete* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.iwl_periodic_scan_complete*, %struct.iwl_periodic_scan_complete** %6, align 8
  %136 = getelementptr inbounds %struct.iwl_periodic_scan_complete, %struct.iwl_periodic_scan_complete* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = call i32 @__le32_to_cpu(i32 %137)
  %139 = call i32 (%struct.iwl_mvm*, i8*, i8*, i32, ...) @IWL_DEBUG_SCAN(%struct.iwl_mvm* %126, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.5, i64 0, i64 0), i8* %131, i32 %134, i32 %138)
  %140 = load i32, i32* @IWL_MVM_SCAN_SCHED, align 4
  %141 = xor i32 %140, -1
  %142 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %143 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = and i32 %144, %141
  store i32 %145, i32* %143, align 8
  %146 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %147 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @ieee80211_sched_scan_stopped(i32 %148)
  %150 = load i32, i32* @SCHED_SCAN_PASS_ALL_DISABLED, align 4
  %151 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %152 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %151, i32 0, i32 4
  store i32 %150, i32* %152, align 8
  br label %192

153:                                              ; preds = %102
  %154 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %155 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* @IWL_MVM_SCAN_REGULAR, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %188

160:                                              ; preds = %153
  %161 = getelementptr inbounds %struct.cfg80211_scan_info, %struct.cfg80211_scan_info* %8, i32 0, i32 0
  %162 = load i32, i32* %7, align 4
  store i32 %162, i32* %161, align 4
  %163 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %164 = load i32, i32* %7, align 4
  %165 = icmp ne i32 %164, 0
  %166 = zext i1 %165 to i64
  %167 = select i1 %165, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0)
  %168 = load %struct.iwl_periodic_scan_complete*, %struct.iwl_periodic_scan_complete** %6, align 8
  %169 = getelementptr inbounds %struct.iwl_periodic_scan_complete, %struct.iwl_periodic_scan_complete* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = call i32 @iwl_mvm_ebs_status_str(i64 %170)
  %172 = call i32 (%struct.iwl_mvm*, i8*, i8*, i32, ...) @IWL_DEBUG_SCAN(%struct.iwl_mvm* %163, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i8* %167, i32 %171)
  %173 = load i32, i32* @IWL_MVM_SCAN_REGULAR, align 4
  %174 = xor i32 %173, -1
  %175 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %176 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = and i32 %177, %174
  store i32 %178, i32* %176, align 8
  %179 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %180 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %179, i32 0, i32 3
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @ieee80211_scan_completed(i32 %181, %struct.cfg80211_scan_info* %8)
  %183 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %184 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %183, i32 0, i32 2
  %185 = call i32 @cancel_delayed_work(i32* %184)
  %186 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %187 = call i32 @iwl_mvm_resume_tcm(%struct.iwl_mvm* %186)
  br label %191

188:                                              ; preds = %153
  %189 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %190 = call i32 @IWL_ERR(%struct.iwl_mvm* %189, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.7, i64 0, i64 0))
  br label %191

191:                                              ; preds = %188, %160
  br label %192

192:                                              ; preds = %191, %109
  br label %193

193:                                              ; preds = %192, %85
  br label %194

194:                                              ; preds = %193, %41
  %195 = load %struct.iwl_periodic_scan_complete*, %struct.iwl_periodic_scan_complete** %6, align 8
  %196 = getelementptr inbounds %struct.iwl_periodic_scan_complete, %struct.iwl_periodic_scan_complete* %195, i32 0, i32 1
  %197 = load i64, i64* %196, align 8
  %198 = load i64, i64* @IWL_SCAN_EBS_SUCCESS, align 8
  %199 = icmp eq i64 %197, %198
  br i1 %199, label %206, label %200

200:                                              ; preds = %194
  %201 = load %struct.iwl_periodic_scan_complete*, %struct.iwl_periodic_scan_complete** %6, align 8
  %202 = getelementptr inbounds %struct.iwl_periodic_scan_complete, %struct.iwl_periodic_scan_complete* %201, i32 0, i32 1
  %203 = load i64, i64* %202, align 8
  %204 = load i64, i64* @IWL_SCAN_EBS_INACTIVE, align 8
  %205 = icmp eq i64 %203, %204
  br label %206

206:                                              ; preds = %200, %194
  %207 = phi i1 [ true, %194 ], [ %205, %200 ]
  %208 = zext i1 %207 to i32
  %209 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %210 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %209, i32 0, i32 1
  store i32 %208, i32* %210, align 4
  br label %211

211:                                              ; preds = %206, %30
  ret void
}

declare dso_local %struct.iwl_rx_packet* @rxb_addr(%struct.iwl_rx_cmd_buffer*) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @fw_has_capa(i32*, i32) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @IWL_DEBUG_SCAN(%struct.iwl_mvm*, i8*, i8*, i32, ...) #1

declare dso_local i32 @iwl_mvm_ebs_status_str(i64) #1

declare dso_local i32 @__le32_to_cpu(i32) #1

declare dso_local i32 @ieee80211_sched_scan_stopped(i32) #1

declare dso_local i32 @ieee80211_scan_completed(i32, %struct.cfg80211_scan_info*) #1

declare dso_local i32 @cancel_delayed_work(i32*) #1

declare dso_local i32 @iwl_mvm_resume_tcm(%struct.iwl_mvm*) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_mvm*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
