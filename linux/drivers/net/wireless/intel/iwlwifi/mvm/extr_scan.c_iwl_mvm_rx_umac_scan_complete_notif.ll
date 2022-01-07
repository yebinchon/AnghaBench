; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_scan.c_iwl_mvm_rx_umac_scan_complete_notif.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_scan.c_iwl_mvm_rx_umac_scan_complete_notif.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32*, i32, i32, i32, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.iwl_rx_cmd_buffer = type { i32 }
%struct.iwl_rx_packet = type { i64 }
%struct.iwl_umac_scan_complete = type { i64, i64, i32, i32, i32, i32 }
%struct.cfg80211_scan_info = type { i32, i32, i32 }

@IWL_SCAN_OFFLOAD_ABORTED = common dso_local global i64 0, align 8
@IWL_MVM_SCAN_REGULAR = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@IWL_MVM_SCAN_SCHED = common dso_local global i32 0, align 4
@SCHED_SCAN_PASS_ALL_DISABLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"Scan completed, uid %u type %u, status %s, EBS status %s\0A\00", align 1
@IWL_SCAN_OFFLOAD_COMPLETED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"completed\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"aborted\00", align 1
@.str.3 = private unnamed_addr constant [62 x i8] c"Last line %d, Last iteration %d, Time from last iteration %d\0A\00", align 1
@IWL_SCAN_EBS_SUCCESS = common dso_local global i64 0, align 8
@IWL_SCAN_EBS_INACTIVE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwl_mvm_rx_umac_scan_complete_notif(%struct.iwl_mvm* %0, %struct.iwl_rx_cmd_buffer* %1) #0 {
  %3 = alloca %struct.iwl_mvm*, align 8
  %4 = alloca %struct.iwl_rx_cmd_buffer*, align 8
  %5 = alloca %struct.iwl_rx_packet*, align 8
  %6 = alloca %struct.iwl_umac_scan_complete*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.cfg80211_scan_info, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %3, align 8
  store %struct.iwl_rx_cmd_buffer* %1, %struct.iwl_rx_cmd_buffer** %4, align 8
  %10 = load %struct.iwl_rx_cmd_buffer*, %struct.iwl_rx_cmd_buffer** %4, align 8
  %11 = call %struct.iwl_rx_packet* @rxb_addr(%struct.iwl_rx_cmd_buffer* %10)
  store %struct.iwl_rx_packet* %11, %struct.iwl_rx_packet** %5, align 8
  %12 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %5, align 8
  %13 = getelementptr inbounds %struct.iwl_rx_packet, %struct.iwl_rx_packet* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to i8*
  %16 = bitcast i8* %15 to %struct.iwl_umac_scan_complete*
  store %struct.iwl_umac_scan_complete* %16, %struct.iwl_umac_scan_complete** %6, align 8
  %17 = load %struct.iwl_umac_scan_complete*, %struct.iwl_umac_scan_complete** %6, align 8
  %18 = getelementptr inbounds %struct.iwl_umac_scan_complete, %struct.iwl_umac_scan_complete* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @__le32_to_cpu(i32 %19)
  %21 = sext i32 %20 to i64
  store i64 %21, i64* %7, align 8
  %22 = load %struct.iwl_umac_scan_complete*, %struct.iwl_umac_scan_complete** %6, align 8
  %23 = getelementptr inbounds %struct.iwl_umac_scan_complete, %struct.iwl_umac_scan_complete* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @IWL_SCAN_OFFLOAD_ABORTED, align 8
  %26 = icmp eq i64 %24, %25
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %8, align 4
  %28 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %29 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i64, i64* %7, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %35 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = and i32 %33, %36
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  %41 = call i64 @WARN_ON(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %2
  br label %166

44:                                               ; preds = %2
  %45 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %46 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load i64, i64* %7, align 8
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @IWL_MVM_SCAN_REGULAR, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %81

53:                                               ; preds = %44
  %54 = getelementptr inbounds %struct.cfg80211_scan_info, %struct.cfg80211_scan_info* %9, i32 0, i32 0
  %55 = load i32, i32* %8, align 4
  store i32 %55, i32* %54, align 4
  %56 = getelementptr inbounds %struct.cfg80211_scan_info, %struct.cfg80211_scan_info* %9, i32 0, i32 1
  store i32 0, i32* %56, align 4
  %57 = getelementptr inbounds %struct.cfg80211_scan_info, %struct.cfg80211_scan_info* %9, i32 0, i32 2
  %58 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %59 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %58, i32 0, i32 7
  %60 = load i32, i32* %59, align 8
  store i32 %60, i32* %57, align 4
  %61 = getelementptr inbounds %struct.cfg80211_scan_info, %struct.cfg80211_scan_info* %9, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %64 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %63, i32 0, i32 6
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @ETH_ALEN, align 4
  %69 = call i32 @memcpy(i32 %62, i32 %67, i32 %68)
  %70 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %71 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @ieee80211_scan_completed(i32 %72, %struct.cfg80211_scan_info* %9)
  %74 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %75 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %74, i32 0, i32 6
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %75, align 8
  %76 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %77 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %76, i32 0, i32 5
  %78 = call i32 @cancel_delayed_work(i32* %77)
  %79 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %80 = call i32 @iwl_mvm_resume_tcm(%struct.iwl_mvm* %79)
  br label %99

81:                                               ; preds = %44
  %82 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %83 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = load i64, i64* %7, align 8
  %86 = getelementptr inbounds i32, i32* %84, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @IWL_MVM_SCAN_SCHED, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %98

90:                                               ; preds = %81
  %91 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %92 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @ieee80211_sched_scan_stopped(i32 %93)
  %95 = load i32, i32* @SCHED_SCAN_PASS_ALL_DISABLED, align 4
  %96 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %97 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %96, i32 0, i32 3
  store i32 %95, i32* %97, align 8
  br label %98

98:                                               ; preds = %90, %81
  br label %99

99:                                               ; preds = %98, %53
  %100 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %101 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = load i64, i64* %7, align 8
  %104 = getelementptr inbounds i32, i32* %102, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = xor i32 %105, -1
  %107 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %108 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = and i32 %109, %106
  store i32 %110, i32* %108, align 8
  %111 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %112 = load i64, i64* %7, align 8
  %113 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %114 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = load i64, i64* %7, align 8
  %117 = getelementptr inbounds i32, i32* %115, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.iwl_umac_scan_complete*, %struct.iwl_umac_scan_complete** %6, align 8
  %120 = getelementptr inbounds %struct.iwl_umac_scan_complete, %struct.iwl_umac_scan_complete* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @IWL_SCAN_OFFLOAD_COMPLETED, align 8
  %123 = icmp eq i64 %121, %122
  %124 = zext i1 %123 to i64
  %125 = select i1 %123, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %126 = load %struct.iwl_umac_scan_complete*, %struct.iwl_umac_scan_complete** %6, align 8
  %127 = getelementptr inbounds %struct.iwl_umac_scan_complete, %struct.iwl_umac_scan_complete* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = call i32 @iwl_mvm_ebs_status_str(i64 %128)
  %130 = call i32 (%struct.iwl_mvm*, i8*, i64, i32, i8*, ...) @IWL_DEBUG_SCAN(%struct.iwl_mvm* %111, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i64 %112, i32 %118, i8* %125, i32 %129)
  %131 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %132 = load %struct.iwl_umac_scan_complete*, %struct.iwl_umac_scan_complete** %6, align 8
  %133 = getelementptr inbounds %struct.iwl_umac_scan_complete, %struct.iwl_umac_scan_complete* %132, i32 0, i32 4
  %134 = load i32, i32* %133, align 8
  %135 = sext i32 %134 to i64
  %136 = load %struct.iwl_umac_scan_complete*, %struct.iwl_umac_scan_complete** %6, align 8
  %137 = getelementptr inbounds %struct.iwl_umac_scan_complete, %struct.iwl_umac_scan_complete* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.iwl_umac_scan_complete*, %struct.iwl_umac_scan_complete** %6, align 8
  %140 = getelementptr inbounds %struct.iwl_umac_scan_complete, %struct.iwl_umac_scan_complete* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @__le32_to_cpu(i32 %141)
  %143 = sext i32 %142 to i64
  %144 = inttoptr i64 %143 to i8*
  %145 = call i32 (%struct.iwl_mvm*, i8*, i64, i32, i8*, ...) @IWL_DEBUG_SCAN(%struct.iwl_mvm* %131, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.3, i64 0, i64 0), i64 %135, i32 %138, i8* %144)
  %146 = load %struct.iwl_umac_scan_complete*, %struct.iwl_umac_scan_complete** %6, align 8
  %147 = getelementptr inbounds %struct.iwl_umac_scan_complete, %struct.iwl_umac_scan_complete* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @IWL_SCAN_EBS_SUCCESS, align 8
  %150 = icmp ne i64 %148, %149
  br i1 %150, label %151, label %160

151:                                              ; preds = %99
  %152 = load %struct.iwl_umac_scan_complete*, %struct.iwl_umac_scan_complete** %6, align 8
  %153 = getelementptr inbounds %struct.iwl_umac_scan_complete, %struct.iwl_umac_scan_complete* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* @IWL_SCAN_EBS_INACTIVE, align 8
  %156 = icmp ne i64 %154, %155
  br i1 %156, label %157, label %160

157:                                              ; preds = %151
  %158 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %159 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %158, i32 0, i32 2
  store i32 0, i32* %159, align 4
  br label %160

160:                                              ; preds = %157, %151, %99
  %161 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %162 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %161, i32 0, i32 0
  %163 = load i32*, i32** %162, align 8
  %164 = load i64, i64* %7, align 8
  %165 = getelementptr inbounds i32, i32* %163, i64 %164
  store i32 0, i32* %165, align 4
  br label %166

166:                                              ; preds = %160, %43
  ret void
}

declare dso_local %struct.iwl_rx_packet* @rxb_addr(%struct.iwl_rx_cmd_buffer*) #1

declare dso_local i32 @__le32_to_cpu(i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @ieee80211_scan_completed(i32, %struct.cfg80211_scan_info*) #1

declare dso_local i32 @cancel_delayed_work(i32*) #1

declare dso_local i32 @iwl_mvm_resume_tcm(%struct.iwl_mvm*) #1

declare dso_local i32 @ieee80211_sched_scan_stopped(i32) #1

declare dso_local i32 @IWL_DEBUG_SCAN(%struct.iwl_mvm*, i8*, i64, i32, i8*, ...) #1

declare dso_local i32 @iwl_mvm_ebs_status_str(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
