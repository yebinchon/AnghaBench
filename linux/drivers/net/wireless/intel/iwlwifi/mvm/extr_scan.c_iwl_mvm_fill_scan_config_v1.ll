; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_scan.c_iwl_mvm_fill_scan_config_v1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_scan.c_iwl_mvm_fill_scan_config_v1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.iwl_mvm = type { %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.iwl_scan_config_v1 = type { i32, i32, i32, i32, i32, i8*, i8*, i32, i8*, i8*, i8* }

@scan_timing = common dso_local global %struct.TYPE_6__* null, align 8
@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_mvm*, i8*, i32, i32, i32)* @iwl_mvm_fill_scan_config_v1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_mvm_fill_scan_config_v1(%struct.iwl_mvm* %0, i8* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.iwl_mvm*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.iwl_scan_config_v1*, align 8
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %14 = call i32 @iwl_mvm_get_scan_type(%struct.iwl_mvm* %13, i32* null)
  store i32 %14, i32* %11, align 4
  %15 = load i8*, i8** %7, align 8
  %16 = bitcast i8* %15 to %struct.iwl_scan_config_v1*
  store %struct.iwl_scan_config_v1* %16, %struct.iwl_scan_config_v1** %12, align 8
  %17 = load i32, i32* %8, align 4
  %18 = call i8* @cpu_to_le32(i32 %17)
  %19 = load %struct.iwl_scan_config_v1*, %struct.iwl_scan_config_v1** %12, align 8
  %20 = getelementptr inbounds %struct.iwl_scan_config_v1, %struct.iwl_scan_config_v1* %19, i32 0, i32 10
  store i8* %18, i8** %20, align 8
  %21 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %22 = call i32 @iwl_mvm_get_valid_tx_ant(%struct.iwl_mvm* %21)
  %23 = call i8* @cpu_to_le32(i32 %22)
  %24 = load %struct.iwl_scan_config_v1*, %struct.iwl_scan_config_v1** %12, align 8
  %25 = getelementptr inbounds %struct.iwl_scan_config_v1, %struct.iwl_scan_config_v1* %24, i32 0, i32 9
  store i8* %23, i8** %25, align 8
  %26 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %27 = call i32 @iwl_mvm_scan_rx_ant(%struct.iwl_mvm* %26)
  %28 = call i8* @cpu_to_le32(i32 %27)
  %29 = load %struct.iwl_scan_config_v1*, %struct.iwl_scan_config_v1** %12, align 8
  %30 = getelementptr inbounds %struct.iwl_scan_config_v1, %struct.iwl_scan_config_v1* %29, i32 0, i32 8
  store i8* %28, i8** %30, align 8
  %31 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %32 = call i32 @iwl_mvm_scan_config_rates(%struct.iwl_mvm* %31)
  %33 = load %struct.iwl_scan_config_v1*, %struct.iwl_scan_config_v1** %12, align 8
  %34 = getelementptr inbounds %struct.iwl_scan_config_v1, %struct.iwl_scan_config_v1* %33, i32 0, i32 7
  store i32 %32, i32* %34, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** @scan_timing, align 8
  %36 = load i32, i32* %11, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i8* @cpu_to_le32(i32 %40)
  %42 = load %struct.iwl_scan_config_v1*, %struct.iwl_scan_config_v1** %12, align 8
  %43 = getelementptr inbounds %struct.iwl_scan_config_v1, %struct.iwl_scan_config_v1* %42, i32 0, i32 6
  store i8* %41, i8** %43, align 8
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** @scan_timing, align 8
  %45 = load i32, i32* %11, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i8* @cpu_to_le32(i32 %49)
  %51 = load %struct.iwl_scan_config_v1*, %struct.iwl_scan_config_v1** %12, align 8
  %52 = getelementptr inbounds %struct.iwl_scan_config_v1, %struct.iwl_scan_config_v1* %51, i32 0, i32 5
  store i8* %50, i8** %52, align 8
  %53 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %54 = load %struct.iwl_scan_config_v1*, %struct.iwl_scan_config_v1** %12, align 8
  %55 = getelementptr inbounds %struct.iwl_scan_config_v1, %struct.iwl_scan_config_v1* %54, i32 0, i32 4
  %56 = call i32 @iwl_mvm_fill_scan_dwell(%struct.iwl_mvm* %53, i32* %55)
  %57 = load %struct.iwl_scan_config_v1*, %struct.iwl_scan_config_v1** %12, align 8
  %58 = getelementptr inbounds %struct.iwl_scan_config_v1, %struct.iwl_scan_config_v1* %57, i32 0, i32 3
  %59 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %60 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %59, i32 0, i32 1
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i64 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32, i32* @ETH_ALEN, align 4
  %65 = call i32 @memcpy(i32* %58, i32* %63, i32 %64)
  %66 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %67 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.iwl_scan_config_v1*, %struct.iwl_scan_config_v1** %12, align 8
  %71 = getelementptr inbounds %struct.iwl_scan_config_v1, %struct.iwl_scan_config_v1* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 8
  %72 = load i32, i32* %9, align 4
  %73 = load %struct.iwl_scan_config_v1*, %struct.iwl_scan_config_v1** %12, align 8
  %74 = getelementptr inbounds %struct.iwl_scan_config_v1, %struct.iwl_scan_config_v1* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  %75 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %76 = load %struct.iwl_scan_config_v1*, %struct.iwl_scan_config_v1** %12, align 8
  %77 = getelementptr inbounds %struct.iwl_scan_config_v1, %struct.iwl_scan_config_v1* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* %10, align 4
  %80 = call i32 @iwl_mvm_fill_channels(%struct.iwl_mvm* %75, i32 %78, i32 %79)
  ret void
}

declare dso_local i32 @iwl_mvm_get_scan_type(%struct.iwl_mvm*, i32*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @iwl_mvm_get_valid_tx_ant(%struct.iwl_mvm*) #1

declare dso_local i32 @iwl_mvm_scan_rx_ant(%struct.iwl_mvm*) #1

declare dso_local i32 @iwl_mvm_scan_config_rates(%struct.iwl_mvm*) #1

declare dso_local i32 @iwl_mvm_fill_scan_dwell(%struct.iwl_mvm*, i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @iwl_mvm_fill_channels(%struct.iwl_mvm*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
