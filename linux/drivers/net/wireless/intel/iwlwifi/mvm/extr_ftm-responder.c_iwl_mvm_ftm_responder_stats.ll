; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_ftm-responder.c_iwl_mvm_ftm_responder_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_ftm-responder.c_iwl_mvm_ftm_responder_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { %struct.cfg80211_ftm_responder_stats }
%struct.cfg80211_ftm_responder_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.iwl_rx_cmd_buffer = type { i32 }
%struct.iwl_rx_packet = type { i64 }
%struct.iwl_ftm_responder_stats = type { i32, i32, i32, i32 }

@FTM_RESP_STAT_ASAP_REQ = common dso_local global i32 0, align 4
@FTM_RESP_STAT_ASAP_RESP = common dso_local global i32 0, align 4
@FTM_RESP_STAT_NON_ASAP_RESP = common dso_local global i32 0, align 4
@USEC_PER_MSEC = common dso_local global i32 0, align 4
@FTM_RESP_STAT_TRIGGER_UNKNOWN = common dso_local global i32 0, align 4
@FTM_RESP_STAT_DUP = common dso_local global i32 0, align 4
@FTM_RESP_STAT_NON_ASAP_OUT_WIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwl_mvm_ftm_responder_stats(%struct.iwl_mvm* %0, %struct.iwl_rx_cmd_buffer* %1) #0 {
  %3 = alloca %struct.iwl_mvm*, align 8
  %4 = alloca %struct.iwl_rx_cmd_buffer*, align 8
  %5 = alloca %struct.iwl_rx_packet*, align 8
  %6 = alloca %struct.iwl_ftm_responder_stats*, align 8
  %7 = alloca %struct.cfg80211_ftm_responder_stats*, align 8
  %8 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %3, align 8
  store %struct.iwl_rx_cmd_buffer* %1, %struct.iwl_rx_cmd_buffer** %4, align 8
  %9 = load %struct.iwl_rx_cmd_buffer*, %struct.iwl_rx_cmd_buffer** %4, align 8
  %10 = call %struct.iwl_rx_packet* @rxb_addr(%struct.iwl_rx_cmd_buffer* %9)
  store %struct.iwl_rx_packet* %10, %struct.iwl_rx_packet** %5, align 8
  %11 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %5, align 8
  %12 = getelementptr inbounds %struct.iwl_rx_packet, %struct.iwl_rx_packet* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to i8*
  %15 = bitcast i8* %14 to %struct.iwl_ftm_responder_stats*
  store %struct.iwl_ftm_responder_stats* %15, %struct.iwl_ftm_responder_stats** %6, align 8
  %16 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %17 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %16, i32 0, i32 0
  store %struct.cfg80211_ftm_responder_stats* %17, %struct.cfg80211_ftm_responder_stats** %7, align 8
  %18 = load %struct.iwl_ftm_responder_stats*, %struct.iwl_ftm_responder_stats** %6, align 8
  %19 = getelementptr inbounds %struct.iwl_ftm_responder_stats, %struct.iwl_ftm_responder_stats* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @le32_to_cpu(i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = load %struct.iwl_ftm_responder_stats*, %struct.iwl_ftm_responder_stats** %6, align 8
  %23 = getelementptr inbounds %struct.iwl_ftm_responder_stats, %struct.iwl_ftm_responder_stats* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.iwl_ftm_responder_stats*, %struct.iwl_ftm_responder_stats** %6, align 8
  %26 = getelementptr inbounds %struct.iwl_ftm_responder_stats, %struct.iwl_ftm_responder_stats* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %24, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %2
  %30 = load %struct.cfg80211_ftm_responder_stats*, %struct.cfg80211_ftm_responder_stats** %7, align 8
  %31 = getelementptr inbounds %struct.cfg80211_ftm_responder_stats, %struct.cfg80211_ftm_responder_stats* %30, i32 0, i32 8
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %31, align 4
  br label %50

34:                                               ; preds = %2
  %35 = load %struct.iwl_ftm_responder_stats*, %struct.iwl_ftm_responder_stats** %6, align 8
  %36 = getelementptr inbounds %struct.iwl_ftm_responder_stats, %struct.iwl_ftm_responder_stats* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp sge i32 %37, 2
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load %struct.cfg80211_ftm_responder_stats*, %struct.cfg80211_ftm_responder_stats** %7, align 8
  %41 = getelementptr inbounds %struct.cfg80211_ftm_responder_stats, %struct.cfg80211_ftm_responder_stats* %40, i32 0, i32 7
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %41, align 4
  br label %49

44:                                               ; preds = %34
  %45 = load %struct.cfg80211_ftm_responder_stats*, %struct.cfg80211_ftm_responder_stats** %7, align 8
  %46 = getelementptr inbounds %struct.cfg80211_ftm_responder_stats, %struct.cfg80211_ftm_responder_stats* %45, i32 0, i32 6
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 4
  br label %49

49:                                               ; preds = %44, %39
  br label %50

50:                                               ; preds = %49, %29
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* @FTM_RESP_STAT_ASAP_REQ, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %65

55:                                               ; preds = %50
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* @FTM_RESP_STAT_ASAP_RESP, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %55
  %61 = load %struct.cfg80211_ftm_responder_stats*, %struct.cfg80211_ftm_responder_stats** %7, align 8
  %62 = getelementptr inbounds %struct.cfg80211_ftm_responder_stats, %struct.cfg80211_ftm_responder_stats* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %62, align 4
  br label %65

65:                                               ; preds = %60, %55, %50
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* @FTM_RESP_STAT_NON_ASAP_RESP, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %65
  %71 = load %struct.cfg80211_ftm_responder_stats*, %struct.cfg80211_ftm_responder_stats** %7, align 8
  %72 = getelementptr inbounds %struct.cfg80211_ftm_responder_stats, %struct.cfg80211_ftm_responder_stats* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %72, align 4
  br label %75

75:                                               ; preds = %70, %65
  %76 = load %struct.iwl_ftm_responder_stats*, %struct.iwl_ftm_responder_stats** %6, align 8
  %77 = getelementptr inbounds %struct.iwl_ftm_responder_stats, %struct.iwl_ftm_responder_stats* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @le32_to_cpu(i32 %78)
  %80 = load i32, i32* @USEC_PER_MSEC, align 4
  %81 = sdiv i32 %79, %80
  %82 = load %struct.cfg80211_ftm_responder_stats*, %struct.cfg80211_ftm_responder_stats** %7, align 8
  %83 = getelementptr inbounds %struct.cfg80211_ftm_responder_stats, %struct.cfg80211_ftm_responder_stats* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = add nsw i32 %84, %81
  store i32 %85, i32* %83, align 4
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* @FTM_RESP_STAT_TRIGGER_UNKNOWN, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %75
  %91 = load %struct.cfg80211_ftm_responder_stats*, %struct.cfg80211_ftm_responder_stats** %7, align 8
  %92 = getelementptr inbounds %struct.cfg80211_ftm_responder_stats, %struct.cfg80211_ftm_responder_stats* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %92, align 4
  br label %95

95:                                               ; preds = %90, %75
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* @FTM_RESP_STAT_DUP, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %95
  %101 = load %struct.cfg80211_ftm_responder_stats*, %struct.cfg80211_ftm_responder_stats** %7, align 8
  %102 = getelementptr inbounds %struct.cfg80211_ftm_responder_stats, %struct.cfg80211_ftm_responder_stats* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %102, align 4
  br label %105

105:                                              ; preds = %100, %95
  %106 = load i32, i32* %8, align 4
  %107 = load i32, i32* @FTM_RESP_STAT_NON_ASAP_OUT_WIN, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %105
  %111 = load %struct.cfg80211_ftm_responder_stats*, %struct.cfg80211_ftm_responder_stats** %7, align 8
  %112 = getelementptr inbounds %struct.cfg80211_ftm_responder_stats, %struct.cfg80211_ftm_responder_stats* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %112, align 4
  br label %115

115:                                              ; preds = %110, %105
  ret void
}

declare dso_local %struct.iwl_rx_packet* @rxb_addr(%struct.iwl_rx_cmd_buffer*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
