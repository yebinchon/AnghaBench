; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rs-fw.c_iwl_mvm_tlc_update_notif.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rs-fw.c_iwl_mvm_tlc_update_notif.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32* }
%struct.iwl_rx_cmd_buffer = type { i32 }
%struct.iwl_rx_packet = type { i64 }
%struct.iwl_tlc_update_notif = type { i64, i32, i32, i32, i32 }
%struct.ieee80211_sta = type { i64, i32*, i64 }
%struct.iwl_mvm_sta = type { i32, i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.iwl_lq_sta_rs_fw }
%struct.iwl_lq_sta_rs_fw = type { i8* }

@.str = private unnamed_addr constant [44 x i8] c"Invalid sta id (%d) in FW TLC notification\0A\00", align 1
@IWL_TLC_NOTIF_FLAG_RATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"new rate_n_flags: 0x%X\0A\00", align 1
@IWL_TLC_NOTIF_FLAG_AMSDU = common dso_local global i32 0, align 4
@IWL_MAX_TID_COUNT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [78 x i8] c"AMSDU update. AMSDU size: %d, AMSDU selected size: %d, AMSDU TID bitmap 0x%X\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwl_mvm_tlc_update_notif(%struct.iwl_mvm* %0, %struct.iwl_rx_cmd_buffer* %1) #0 {
  %3 = alloca %struct.iwl_mvm*, align 8
  %4 = alloca %struct.iwl_rx_cmd_buffer*, align 8
  %5 = alloca %struct.iwl_rx_packet*, align 8
  %6 = alloca %struct.iwl_tlc_update_notif*, align 8
  %7 = alloca %struct.ieee80211_sta*, align 8
  %8 = alloca %struct.iwl_mvm_sta*, align 8
  %9 = alloca %struct.iwl_lq_sta_rs_fw*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %3, align 8
  store %struct.iwl_rx_cmd_buffer* %1, %struct.iwl_rx_cmd_buffer** %4, align 8
  %13 = load %struct.iwl_rx_cmd_buffer*, %struct.iwl_rx_cmd_buffer** %4, align 8
  %14 = call %struct.iwl_rx_packet* @rxb_addr(%struct.iwl_rx_cmd_buffer* %13)
  store %struct.iwl_rx_packet* %14, %struct.iwl_rx_packet** %5, align 8
  %15 = call i32 (...) @rcu_read_lock()
  %16 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %5, align 8
  %17 = getelementptr inbounds %struct.iwl_rx_packet, %struct.iwl_rx_packet* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to i8*
  %20 = bitcast i8* %19 to %struct.iwl_tlc_update_notif*
  store %struct.iwl_tlc_update_notif* %20, %struct.iwl_tlc_update_notif** %6, align 8
  %21 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %22 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load %struct.iwl_tlc_update_notif*, %struct.iwl_tlc_update_notif** %6, align 8
  %25 = getelementptr inbounds %struct.iwl_tlc_update_notif, %struct.iwl_tlc_update_notif* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds i32, i32* %23, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.ieee80211_sta* @rcu_dereference(i32 %28)
  store %struct.ieee80211_sta* %29, %struct.ieee80211_sta** %7, align 8
  %30 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %31 = call i64 @IS_ERR_OR_NULL(%struct.ieee80211_sta* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %2
  %34 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %35 = load %struct.iwl_tlc_update_notif*, %struct.iwl_tlc_update_notif** %6, align 8
  %36 = getelementptr inbounds %struct.iwl_tlc_update_notif, %struct.iwl_tlc_update_notif* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @IWL_ERR(%struct.iwl_mvm* %34, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 %37)
  br label %162

39:                                               ; preds = %2
  %40 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %41 = call %struct.iwl_mvm_sta* @iwl_mvm_sta_from_mac80211(%struct.ieee80211_sta* %40)
  store %struct.iwl_mvm_sta* %41, %struct.iwl_mvm_sta** %8, align 8
  %42 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %8, align 8
  %43 = icmp ne %struct.iwl_mvm_sta* %42, null
  br i1 %43, label %50, label %44

44:                                               ; preds = %39
  %45 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %46 = load %struct.iwl_tlc_update_notif*, %struct.iwl_tlc_update_notif** %6, align 8
  %47 = getelementptr inbounds %struct.iwl_tlc_update_notif, %struct.iwl_tlc_update_notif* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @IWL_ERR(%struct.iwl_mvm* %45, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 %48)
  br label %162

50:                                               ; preds = %39
  %51 = load %struct.iwl_tlc_update_notif*, %struct.iwl_tlc_update_notif** %6, align 8
  %52 = getelementptr inbounds %struct.iwl_tlc_update_notif, %struct.iwl_tlc_update_notif* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 4
  %54 = call i8* @le32_to_cpu(i32 %53)
  %55 = ptrtoint i8* %54 to i32
  store i32 %55, i32* %10, align 4
  %56 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %8, align 8
  %57 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  store %struct.iwl_lq_sta_rs_fw* %58, %struct.iwl_lq_sta_rs_fw** %9, align 8
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* @IWL_TLC_NOTIF_FLAG_RATE, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %75

63:                                               ; preds = %50
  %64 = load %struct.iwl_tlc_update_notif*, %struct.iwl_tlc_update_notif** %6, align 8
  %65 = getelementptr inbounds %struct.iwl_tlc_update_notif, %struct.iwl_tlc_update_notif* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = call i8* @le32_to_cpu(i32 %66)
  %68 = load %struct.iwl_lq_sta_rs_fw*, %struct.iwl_lq_sta_rs_fw** %9, align 8
  %69 = getelementptr inbounds %struct.iwl_lq_sta_rs_fw, %struct.iwl_lq_sta_rs_fw* %68, i32 0, i32 0
  store i8* %67, i8** %69, align 8
  %70 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %71 = load %struct.iwl_lq_sta_rs_fw*, %struct.iwl_lq_sta_rs_fw** %9, align 8
  %72 = getelementptr inbounds %struct.iwl_lq_sta_rs_fw, %struct.iwl_lq_sta_rs_fw* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = call i32 (%struct.iwl_mvm*, i8*, i8*, ...) @IWL_DEBUG_RATE(%struct.iwl_mvm* %70, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* %73)
  br label %75

75:                                               ; preds = %63, %50
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* @IWL_TLC_NOTIF_FLAG_AMSDU, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %161

80:                                               ; preds = %75
  %81 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %8, align 8
  %82 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %161, label %85

85:                                               ; preds = %80
  %86 = load %struct.iwl_tlc_update_notif*, %struct.iwl_tlc_update_notif** %6, align 8
  %87 = getelementptr inbounds %struct.iwl_tlc_update_notif, %struct.iwl_tlc_update_notif* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = call i8* @le32_to_cpu(i32 %88)
  %90 = ptrtoint i8* %89 to i64
  store i64 %90, i64* %11, align 8
  %91 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %92 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* %11, align 8
  %95 = icmp slt i64 %93, %94
  %96 = zext i1 %95 to i32
  %97 = call i64 @WARN_ON(i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %85
  br label %162

100:                                              ; preds = %85
  %101 = load %struct.iwl_tlc_update_notif*, %struct.iwl_tlc_update_notif** %6, align 8
  %102 = getelementptr inbounds %struct.iwl_tlc_update_notif, %struct.iwl_tlc_update_notif* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = call i8* @le32_to_cpu(i32 %103)
  %105 = ptrtoint i8* %104 to i32
  %106 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %8, align 8
  %107 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %106, i32 0, i32 0
  store i32 %105, i32* %107, align 8
  %108 = load i64, i64* %11, align 8
  %109 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %8, align 8
  %110 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %109, i32 0, i32 1
  store i64 %108, i64* %110, align 8
  %111 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %8, align 8
  %112 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %115 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %114, i32 0, i32 2
  store i64 %113, i64* %115, align 8
  store i32 0, i32* %12, align 4
  br label %116

116:                                              ; preds = %147, %100
  %117 = load i32, i32* %12, align 4
  %118 = load i32, i32* @IWL_MAX_TID_COUNT, align 4
  %119 = icmp slt i32 %117, %118
  br i1 %119, label %120, label %150

120:                                              ; preds = %116
  %121 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %8, align 8
  %122 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* %12, align 4
  %125 = call i32 @BIT(i32 %124)
  %126 = and i32 %123, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %139

128:                                              ; preds = %120
  %129 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %130 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %131 = load i32, i32* %12, align 4
  %132 = call i32 @iwl_mvm_max_amsdu_size(%struct.iwl_mvm* %129, %struct.ieee80211_sta* %130, i32 %131)
  %133 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %134 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %133, i32 0, i32 1
  %135 = load i32*, i32** %134, align 8
  %136 = load i32, i32* %12, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %135, i64 %137
  store i32 %132, i32* %138, align 4
  br label %146

139:                                              ; preds = %120
  %140 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %141 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %140, i32 0, i32 1
  %142 = load i32*, i32** %141, align 8
  %143 = load i32, i32* %12, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  store i32 1, i32* %145, align 4
  br label %146

146:                                              ; preds = %139, %128
  br label %147

147:                                              ; preds = %146
  %148 = load i32, i32* %12, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %12, align 4
  br label %116

150:                                              ; preds = %116
  %151 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %152 = load %struct.iwl_tlc_update_notif*, %struct.iwl_tlc_update_notif** %6, align 8
  %153 = getelementptr inbounds %struct.iwl_tlc_update_notif, %struct.iwl_tlc_update_notif* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 8
  %155 = call i8* @le32_to_cpu(i32 %154)
  %156 = load i64, i64* %11, align 8
  %157 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %8, align 8
  %158 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = call i32 (%struct.iwl_mvm*, i8*, i8*, ...) @IWL_DEBUG_RATE(%struct.iwl_mvm* %151, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.2, i64 0, i64 0), i8* %155, i64 %156, i32 %159)
  br label %161

161:                                              ; preds = %150, %80, %75
  br label %162

162:                                              ; preds = %161, %99, %44, %33
  %163 = call i32 (...) @rcu_read_unlock()
  ret void
}

declare dso_local %struct.iwl_rx_packet* @rxb_addr(%struct.iwl_rx_cmd_buffer*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.ieee80211_sta* @rcu_dereference(i32) #1

declare dso_local i64 @IS_ERR_OR_NULL(%struct.ieee80211_sta*) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_mvm*, i8*, i64) #1

declare dso_local %struct.iwl_mvm_sta* @iwl_mvm_sta_from_mac80211(%struct.ieee80211_sta*) #1

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i32 @IWL_DEBUG_RATE(%struct.iwl_mvm*, i8*, i8*, ...) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @iwl_mvm_max_amsdu_size(%struct.iwl_mvm*, %struct.ieee80211_sta*, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
