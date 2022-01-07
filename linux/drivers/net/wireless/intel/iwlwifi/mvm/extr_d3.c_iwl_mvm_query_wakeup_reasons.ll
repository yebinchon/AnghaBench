; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_d3.c_iwl_mvm_query_wakeup_reasons.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_d3.c_iwl_mvm_query_wakeup_reasons.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.ieee80211_vif = type { i32 }
%struct.iwl_wowlan_status_data = type { i32*, i32, i8*, i8*, i8*, i8* }
%struct.iwl_wowlan_status = type { i32, i32, i32, i32, i32*, i32 }
%struct.iwl_mvm_sta = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }

@IWL_MAX_TID_COUNT = common dso_local global i32 0, align 4
@IWL_DEVICE_FAMILY_22000 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_mvm*, %struct.ieee80211_vif*)* @iwl_mvm_query_wakeup_reasons to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_mvm_query_wakeup_reasons(%struct.iwl_mvm* %0, %struct.ieee80211_vif* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iwl_mvm*, align 8
  %5 = alloca %struct.ieee80211_vif*, align 8
  %6 = alloca %struct.iwl_wowlan_status_data, align 8
  %7 = alloca %struct.iwl_wowlan_status*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.iwl_mvm_sta*, align 8
  %11 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %4, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %5, align 8
  %12 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %13 = call %struct.iwl_wowlan_status* @iwl_mvm_get_wakeup_status(%struct.iwl_mvm* %12)
  store %struct.iwl_wowlan_status* %13, %struct.iwl_wowlan_status** %7, align 8
  %14 = load %struct.iwl_wowlan_status*, %struct.iwl_wowlan_status** %7, align 8
  %15 = call i64 @IS_ERR_OR_NULL(%struct.iwl_wowlan_status* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %147

18:                                               ; preds = %2
  %19 = load %struct.iwl_wowlan_status*, %struct.iwl_wowlan_status** %7, align 8
  %20 = getelementptr inbounds %struct.iwl_wowlan_status, %struct.iwl_wowlan_status* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 8
  %22 = call i8* @le16_to_cpu(i32 %21)
  %23 = getelementptr inbounds %struct.iwl_wowlan_status_data, %struct.iwl_wowlan_status_data* %6, i32 0, i32 5
  store i8* %22, i8** %23, align 8
  store i32 0, i32* %8, align 4
  br label %24

24:                                               ; preds = %42, %18
  %25 = load i32, i32* %8, align 4
  %26 = icmp slt i32 %25, 8
  br i1 %26, label %27, label %45

27:                                               ; preds = %24
  %28 = load %struct.iwl_wowlan_status*, %struct.iwl_wowlan_status** %7, align 8
  %29 = getelementptr inbounds %struct.iwl_wowlan_status, %struct.iwl_wowlan_status* %28, i32 0, i32 4
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = call i8* @le16_to_cpu(i32 %34)
  %36 = ptrtoint i8* %35 to i32
  %37 = getelementptr inbounds %struct.iwl_wowlan_status_data, %struct.iwl_wowlan_status_data* %6, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  store i32 %36, i32* %41, align 4
  br label %42

42:                                               ; preds = %27
  %43 = load i32, i32* %8, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %8, align 4
  br label %24

45:                                               ; preds = %24
  %46 = load %struct.iwl_wowlan_status*, %struct.iwl_wowlan_status** %7, align 8
  %47 = getelementptr inbounds %struct.iwl_wowlan_status, %struct.iwl_wowlan_status* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = call i8* @le32_to_cpu(i32 %48)
  %50 = getelementptr inbounds %struct.iwl_wowlan_status_data, %struct.iwl_wowlan_status_data* %6, i32 0, i32 4
  store i8* %49, i8** %50, align 8
  %51 = load %struct.iwl_wowlan_status*, %struct.iwl_wowlan_status** %7, align 8
  %52 = getelementptr inbounds %struct.iwl_wowlan_status, %struct.iwl_wowlan_status* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = call i8* @le32_to_cpu(i32 %53)
  %55 = getelementptr inbounds %struct.iwl_wowlan_status_data, %struct.iwl_wowlan_status_data* %6, i32 0, i32 3
  store i8* %54, i8** %55, align 8
  %56 = load %struct.iwl_wowlan_status*, %struct.iwl_wowlan_status** %7, align 8
  %57 = getelementptr inbounds %struct.iwl_wowlan_status, %struct.iwl_wowlan_status* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i8* @le32_to_cpu(i32 %58)
  %60 = getelementptr inbounds %struct.iwl_wowlan_status_data, %struct.iwl_wowlan_status_data* %6, i32 0, i32 2
  store i8* %59, i8** %60, align 8
  %61 = load %struct.iwl_wowlan_status*, %struct.iwl_wowlan_status** %7, align 8
  %62 = getelementptr inbounds %struct.iwl_wowlan_status, %struct.iwl_wowlan_status* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = getelementptr inbounds %struct.iwl_wowlan_status_data, %struct.iwl_wowlan_status_data* %6, i32 0, i32 1
  store i32 %63, i32* %64, align 8
  %65 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %66 = call %struct.iwl_mvm_sta* @iwl_mvm_sta_from_staid_protected(%struct.iwl_mvm* %65, i32 0)
  store %struct.iwl_mvm_sta* %66, %struct.iwl_mvm_sta** %10, align 8
  %67 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %10, align 8
  %68 = icmp ne %struct.iwl_mvm_sta* %67, null
  br i1 %68, label %70, label %69

69:                                               ; preds = %45
  br label %144

70:                                               ; preds = %45
  store i32 0, i32* %8, align 4
  br label %71

71:                                               ; preds = %92, %70
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* @IWL_MAX_TID_COUNT, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %95

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.iwl_wowlan_status_data, %struct.iwl_wowlan_status_data* %6, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %8, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %11, align 4
  %82 = load i32, i32* %11, align 4
  %83 = add nsw i32 %82, 16
  store i32 %83, i32* %11, align 4
  %84 = load i32, i32* %11, align 4
  %85 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %10, align 8
  %86 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %85, i32 0, i32 0
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %86, align 8
  %88 = load i32, i32* %8, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  store i32 %84, i32* %91, align 4
  br label %92

92:                                               ; preds = %75
  %93 = load i32, i32* %8, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %8, align 4
  br label %71

95:                                               ; preds = %71
  %96 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %97 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %96, i32 0, i32 2
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @IWL_DEVICE_FAMILY_22000, align 8
  %104 = icmp sge i64 %102, %103
  br i1 %104, label %105, label %130

105:                                              ; preds = %95
  %106 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %107 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  store i32 %108, i32* %8, align 4
  %109 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %110 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %109, i32 0, i32 2
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %110, align 8
  %112 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %10, align 8
  %113 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %112, i32 0, i32 0
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %113, align 8
  %115 = load i32, i32* %8, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %10, align 8
  %121 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %120, i32 0, i32 0
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %121, align 8
  %123 = load i32, i32* %8, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = ashr i32 %127, 4
  %129 = call i32 @iwl_trans_set_q_ptrs(%struct.TYPE_6__* %111, i32 %119, i32 %128)
  br label %130

130:                                              ; preds = %105, %95
  %131 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %132 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %131, i32 0, i32 1
  %133 = call i32 @mutex_unlock(i32* %132)
  %134 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %135 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %136 = call i32 @iwl_mvm_report_wakeup_reasons(%struct.iwl_mvm* %134, %struct.ieee80211_vif* %135, %struct.iwl_wowlan_status_data* %6)
  %137 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %138 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %139 = load %struct.iwl_wowlan_status*, %struct.iwl_wowlan_status** %7, align 8
  %140 = call i32 @iwl_mvm_setup_connection_keep(%struct.iwl_mvm* %137, %struct.ieee80211_vif* %138, %struct.iwl_wowlan_status* %139)
  store i32 %140, i32* %9, align 4
  %141 = load %struct.iwl_wowlan_status*, %struct.iwl_wowlan_status** %7, align 8
  %142 = call i32 @kfree(%struct.iwl_wowlan_status* %141)
  %143 = load i32, i32* %9, align 4
  store i32 %143, i32* %3, align 4
  br label %151

144:                                              ; preds = %69
  %145 = load %struct.iwl_wowlan_status*, %struct.iwl_wowlan_status** %7, align 8
  %146 = call i32 @kfree(%struct.iwl_wowlan_status* %145)
  br label %147

147:                                              ; preds = %144, %17
  %148 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %149 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %148, i32 0, i32 1
  %150 = call i32 @mutex_unlock(i32* %149)
  store i32 0, i32* %3, align 4
  br label %151

151:                                              ; preds = %147, %130
  %152 = load i32, i32* %3, align 4
  ret i32 %152
}

declare dso_local %struct.iwl_wowlan_status* @iwl_mvm_get_wakeup_status(%struct.iwl_mvm*) #1

declare dso_local i64 @IS_ERR_OR_NULL(%struct.iwl_wowlan_status*) #1

declare dso_local i8* @le16_to_cpu(i32) #1

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local %struct.iwl_mvm_sta* @iwl_mvm_sta_from_staid_protected(%struct.iwl_mvm*, i32) #1

declare dso_local i32 @iwl_trans_set_q_ptrs(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @iwl_mvm_report_wakeup_reasons(%struct.iwl_mvm*, %struct.ieee80211_vif*, %struct.iwl_wowlan_status_data*) #1

declare dso_local i32 @iwl_mvm_setup_connection_keep(%struct.iwl_mvm*, %struct.ieee80211_vif*, %struct.iwl_wowlan_status*) #1

declare dso_local i32 @kfree(%struct.iwl_wowlan_status*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
