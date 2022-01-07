; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_scan.c_iwl_mvm_get_scan_req_umac_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_scan.c_iwl_mvm_get_scan_req_umac_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_scan_umac_chan_param = type { i32 }
%struct.iwl_mvm = type { %struct.iwl_scan_req_umac* }
%struct.iwl_scan_req_umac = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { %struct.iwl_scan_umac_chan_param }
%struct.TYPE_7__ = type { %struct.iwl_scan_umac_chan_param }
%struct.TYPE_6__ = type { %struct.iwl_scan_umac_chan_param }
%struct.TYPE_5__ = type { %struct.iwl_scan_umac_chan_param }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.iwl_scan_umac_chan_param* (%struct.iwl_mvm*)* @iwl_mvm_get_scan_req_umac_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.iwl_scan_umac_chan_param* @iwl_mvm_get_scan_req_umac_channel(%struct.iwl_mvm* %0) #0 {
  %2 = alloca %struct.iwl_scan_umac_chan_param*, align 8
  %3 = alloca %struct.iwl_mvm*, align 8
  %4 = alloca %struct.iwl_scan_req_umac*, align 8
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %3, align 8
  %5 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %6 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %5, i32 0, i32 0
  %7 = load %struct.iwl_scan_req_umac*, %struct.iwl_scan_req_umac** %6, align 8
  store %struct.iwl_scan_req_umac* %7, %struct.iwl_scan_req_umac** %4, align 8
  %8 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %9 = call i64 @iwl_mvm_is_adaptive_dwell_v2_supported(%struct.iwl_mvm* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load %struct.iwl_scan_req_umac*, %struct.iwl_scan_req_umac** %4, align 8
  %13 = getelementptr inbounds %struct.iwl_scan_req_umac, %struct.iwl_scan_req_umac* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  store %struct.iwl_scan_umac_chan_param* %14, %struct.iwl_scan_umac_chan_param** %2, align 8
  br label %35

15:                                               ; preds = %1
  %16 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %17 = call i64 @iwl_mvm_is_adaptive_dwell_supported(%struct.iwl_mvm* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = load %struct.iwl_scan_req_umac*, %struct.iwl_scan_req_umac** %4, align 8
  %21 = getelementptr inbounds %struct.iwl_scan_req_umac, %struct.iwl_scan_req_umac* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  store %struct.iwl_scan_umac_chan_param* %22, %struct.iwl_scan_umac_chan_param** %2, align 8
  br label %35

23:                                               ; preds = %15
  %24 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %25 = call i64 @iwl_mvm_cdb_scan_api(%struct.iwl_mvm* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = load %struct.iwl_scan_req_umac*, %struct.iwl_scan_req_umac** %4, align 8
  %29 = getelementptr inbounds %struct.iwl_scan_req_umac, %struct.iwl_scan_req_umac* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  store %struct.iwl_scan_umac_chan_param* %30, %struct.iwl_scan_umac_chan_param** %2, align 8
  br label %35

31:                                               ; preds = %23
  %32 = load %struct.iwl_scan_req_umac*, %struct.iwl_scan_req_umac** %4, align 8
  %33 = getelementptr inbounds %struct.iwl_scan_req_umac, %struct.iwl_scan_req_umac* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  store %struct.iwl_scan_umac_chan_param* %34, %struct.iwl_scan_umac_chan_param** %2, align 8
  br label %35

35:                                               ; preds = %31, %27, %19, %11
  %36 = load %struct.iwl_scan_umac_chan_param*, %struct.iwl_scan_umac_chan_param** %2, align 8
  ret %struct.iwl_scan_umac_chan_param* %36
}

declare dso_local i64 @iwl_mvm_is_adaptive_dwell_v2_supported(%struct.iwl_mvm*) #1

declare dso_local i64 @iwl_mvm_is_adaptive_dwell_supported(%struct.iwl_mvm*) #1

declare dso_local i64 @iwl_mvm_cdb_scan_api(%struct.iwl_mvm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
