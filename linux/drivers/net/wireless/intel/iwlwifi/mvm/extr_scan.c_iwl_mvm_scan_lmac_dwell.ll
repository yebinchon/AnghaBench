; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_scan.c_iwl_mvm_scan_lmac_dwell.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_scan.c_iwl_mvm_scan_lmac_dwell.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.iwl_mvm = type { i32 }
%struct.iwl_scan_req_lmac = type { i8*, i8*, i8*, i32, i32, i32, i32 }
%struct.iwl_mvm_scan_params = type { i64 }

@IWL_SCAN_DWELL_ACTIVE = common dso_local global i32 0, align 4
@IWL_SCAN_DWELL_PASSIVE = common dso_local global i32 0, align 4
@IWL_SCAN_DWELL_FRAGMENTED = common dso_local global i32 0, align 4
@IWL_SCAN_DWELL_EXTENDED = common dso_local global i32 0, align 4
@scan_timing = common dso_local global %struct.TYPE_2__* null, align 8
@IWL_SCAN_PRIORITY_EXT_6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_mvm*, %struct.iwl_scan_req_lmac*, %struct.iwl_mvm_scan_params*)* @iwl_mvm_scan_lmac_dwell to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_mvm_scan_lmac_dwell(%struct.iwl_mvm* %0, %struct.iwl_scan_req_lmac* %1, %struct.iwl_mvm_scan_params* %2) #0 {
  %4 = alloca %struct.iwl_mvm*, align 8
  %5 = alloca %struct.iwl_scan_req_lmac*, align 8
  %6 = alloca %struct.iwl_mvm_scan_params*, align 8
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %4, align 8
  store %struct.iwl_scan_req_lmac* %1, %struct.iwl_scan_req_lmac** %5, align 8
  store %struct.iwl_mvm_scan_params* %2, %struct.iwl_mvm_scan_params** %6, align 8
  %7 = load i32, i32* @IWL_SCAN_DWELL_ACTIVE, align 4
  %8 = load %struct.iwl_scan_req_lmac*, %struct.iwl_scan_req_lmac** %5, align 8
  %9 = getelementptr inbounds %struct.iwl_scan_req_lmac, %struct.iwl_scan_req_lmac* %8, i32 0, i32 6
  store i32 %7, i32* %9, align 4
  %10 = load i32, i32* @IWL_SCAN_DWELL_PASSIVE, align 4
  %11 = load %struct.iwl_scan_req_lmac*, %struct.iwl_scan_req_lmac** %5, align 8
  %12 = getelementptr inbounds %struct.iwl_scan_req_lmac, %struct.iwl_scan_req_lmac* %11, i32 0, i32 5
  store i32 %10, i32* %12, align 8
  %13 = load i32, i32* @IWL_SCAN_DWELL_FRAGMENTED, align 4
  %14 = load %struct.iwl_scan_req_lmac*, %struct.iwl_scan_req_lmac** %5, align 8
  %15 = getelementptr inbounds %struct.iwl_scan_req_lmac, %struct.iwl_scan_req_lmac* %14, i32 0, i32 4
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* @IWL_SCAN_DWELL_EXTENDED, align 4
  %17 = load %struct.iwl_scan_req_lmac*, %struct.iwl_scan_req_lmac** %5, align 8
  %18 = getelementptr inbounds %struct.iwl_scan_req_lmac, %struct.iwl_scan_req_lmac* %17, i32 0, i32 3
  store i32 %16, i32* %18, align 8
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @scan_timing, align 8
  %20 = load %struct.iwl_mvm_scan_params*, %struct.iwl_mvm_scan_params** %6, align 8
  %21 = getelementptr inbounds %struct.iwl_mvm_scan_params, %struct.iwl_mvm_scan_params* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i8* @cpu_to_le32(i32 %25)
  %27 = load %struct.iwl_scan_req_lmac*, %struct.iwl_scan_req_lmac** %5, align 8
  %28 = getelementptr inbounds %struct.iwl_scan_req_lmac, %struct.iwl_scan_req_lmac* %27, i32 0, i32 2
  store i8* %26, i8** %28, align 8
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** @scan_timing, align 8
  %30 = load %struct.iwl_mvm_scan_params*, %struct.iwl_mvm_scan_params** %6, align 8
  %31 = getelementptr inbounds %struct.iwl_mvm_scan_params, %struct.iwl_mvm_scan_params* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i8* @cpu_to_le32(i32 %35)
  %37 = load %struct.iwl_scan_req_lmac*, %struct.iwl_scan_req_lmac** %5, align 8
  %38 = getelementptr inbounds %struct.iwl_scan_req_lmac, %struct.iwl_scan_req_lmac* %37, i32 0, i32 1
  store i8* %36, i8** %38, align 8
  %39 = load i32, i32* @IWL_SCAN_PRIORITY_EXT_6, align 4
  %40 = call i8* @cpu_to_le32(i32 %39)
  %41 = load %struct.iwl_scan_req_lmac*, %struct.iwl_scan_req_lmac** %5, align 8
  %42 = getelementptr inbounds %struct.iwl_scan_req_lmac, %struct.iwl_scan_req_lmac* %41, i32 0, i32 0
  store i8* %40, i8** %42, align 8
  ret void
}

declare dso_local i8* @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
