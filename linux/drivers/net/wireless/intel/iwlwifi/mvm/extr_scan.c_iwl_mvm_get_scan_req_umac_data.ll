; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_scan.c_iwl_mvm_get_scan_req_umac_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_scan.c_iwl_mvm_get_scan_req_umac_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { %struct.iwl_scan_req_umac* }
%struct.iwl_scan_req_umac = type { %struct.TYPE_5__, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.iwl_mvm*)* @iwl_mvm_get_scan_req_umac_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @iwl_mvm_get_scan_req_umac_data(%struct.iwl_mvm* %0) #0 {
  %2 = alloca i8*, align 8
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
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.iwl_scan_req_umac*, %struct.iwl_scan_req_umac** %4, align 8
  %13 = getelementptr inbounds %struct.iwl_scan_req_umac, %struct.iwl_scan_req_umac* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = bitcast i32* %14 to i8*
  store i8* %15, i8** %2, align 8
  br label %39

16:                                               ; preds = %1
  %17 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %18 = call i64 @iwl_mvm_is_adaptive_dwell_supported(%struct.iwl_mvm* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %16
  %21 = load %struct.iwl_scan_req_umac*, %struct.iwl_scan_req_umac** %4, align 8
  %22 = getelementptr inbounds %struct.iwl_scan_req_umac, %struct.iwl_scan_req_umac* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = bitcast i32* %23 to i8*
  store i8* %24, i8** %2, align 8
  br label %39

25:                                               ; preds = %16
  %26 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %27 = call i64 @iwl_mvm_cdb_scan_api(%struct.iwl_mvm* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %25
  %30 = load %struct.iwl_scan_req_umac*, %struct.iwl_scan_req_umac** %4, align 8
  %31 = getelementptr inbounds %struct.iwl_scan_req_umac, %struct.iwl_scan_req_umac* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = bitcast i32* %32 to i8*
  store i8* %33, i8** %2, align 8
  br label %39

34:                                               ; preds = %25
  %35 = load %struct.iwl_scan_req_umac*, %struct.iwl_scan_req_umac** %4, align 8
  %36 = getelementptr inbounds %struct.iwl_scan_req_umac, %struct.iwl_scan_req_umac* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = bitcast i32* %37 to i8*
  store i8* %38, i8** %2, align 8
  br label %39

39:                                               ; preds = %34, %29, %20, %11
  %40 = load i8*, i8** %2, align 8
  ret i8* %40
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
