; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_scan.c_iwl_mvm_fill_scan_config_v2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_scan.c_iwl_mvm_fill_scan_config_v2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.iwl_mvm = type { %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.iwl_scan_config_v2 = type { i32, i32, i32, i32, i32, i8**, i8**, i32, i8*, i8*, i8* }

@NL80211_BAND_2GHZ = common dso_local global i32 0, align 4
@NL80211_BAND_5GHZ = common dso_local global i32 0, align 4
@scan_timing = common dso_local global %struct.TYPE_6__* null, align 8
@SCAN_LB_LMAC_IDX = common dso_local global i64 0, align 8
@SCAN_HB_LMAC_IDX = common dso_local global i64 0, align 8
@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_mvm*, i8*, i32, i32, i32)* @iwl_mvm_fill_scan_config_v2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_mvm_fill_scan_config_v2(%struct.iwl_mvm* %0, i8* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.iwl_mvm*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.iwl_scan_config_v2*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = load i8*, i8** %7, align 8
  %16 = bitcast i8* %15 to %struct.iwl_scan_config_v2*
  store %struct.iwl_scan_config_v2* %16, %struct.iwl_scan_config_v2** %11, align 8
  %17 = load i32, i32* %8, align 4
  %18 = call i8* @cpu_to_le32(i32 %17)
  %19 = load %struct.iwl_scan_config_v2*, %struct.iwl_scan_config_v2** %11, align 8
  %20 = getelementptr inbounds %struct.iwl_scan_config_v2, %struct.iwl_scan_config_v2* %19, i32 0, i32 10
  store i8* %18, i8** %20, align 8
  %21 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %22 = call i32 @iwl_mvm_get_valid_tx_ant(%struct.iwl_mvm* %21)
  %23 = call i8* @cpu_to_le32(i32 %22)
  %24 = load %struct.iwl_scan_config_v2*, %struct.iwl_scan_config_v2** %11, align 8
  %25 = getelementptr inbounds %struct.iwl_scan_config_v2, %struct.iwl_scan_config_v2* %24, i32 0, i32 9
  store i8* %23, i8** %25, align 8
  %26 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %27 = call i32 @iwl_mvm_scan_rx_ant(%struct.iwl_mvm* %26)
  %28 = call i8* @cpu_to_le32(i32 %27)
  %29 = load %struct.iwl_scan_config_v2*, %struct.iwl_scan_config_v2** %11, align 8
  %30 = getelementptr inbounds %struct.iwl_scan_config_v2, %struct.iwl_scan_config_v2* %29, i32 0, i32 8
  store i8* %28, i8** %30, align 8
  %31 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %32 = call i32 @iwl_mvm_scan_config_rates(%struct.iwl_mvm* %31)
  %33 = load %struct.iwl_scan_config_v2*, %struct.iwl_scan_config_v2** %11, align 8
  %34 = getelementptr inbounds %struct.iwl_scan_config_v2, %struct.iwl_scan_config_v2* %33, i32 0, i32 7
  store i32 %32, i32* %34, align 8
  %35 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %36 = call i64 @iwl_mvm_is_cdb_supported(%struct.iwl_mvm* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %93

38:                                               ; preds = %5
  %39 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %40 = load i32, i32* @NL80211_BAND_2GHZ, align 4
  %41 = call i32 @iwl_mvm_get_scan_type_band(%struct.iwl_mvm* %39, i32* null, i32 %40)
  store i32 %41, i32* %12, align 4
  %42 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %43 = load i32, i32* @NL80211_BAND_5GHZ, align 4
  %44 = call i32 @iwl_mvm_get_scan_type_band(%struct.iwl_mvm* %42, i32* null, i32 %43)
  store i32 %44, i32* %13, align 4
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** @scan_timing, align 8
  %46 = load i32, i32* %12, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i8* @cpu_to_le32(i32 %50)
  %52 = load %struct.iwl_scan_config_v2*, %struct.iwl_scan_config_v2** %11, align 8
  %53 = getelementptr inbounds %struct.iwl_scan_config_v2, %struct.iwl_scan_config_v2* %52, i32 0, i32 6
  %54 = load i8**, i8*** %53, align 8
  %55 = load i64, i64* @SCAN_LB_LMAC_IDX, align 8
  %56 = getelementptr inbounds i8*, i8** %54, i64 %55
  store i8* %51, i8** %56, align 8
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** @scan_timing, align 8
  %58 = load i32, i32* %12, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i8* @cpu_to_le32(i32 %62)
  %64 = load %struct.iwl_scan_config_v2*, %struct.iwl_scan_config_v2** %11, align 8
  %65 = getelementptr inbounds %struct.iwl_scan_config_v2, %struct.iwl_scan_config_v2* %64, i32 0, i32 5
  %66 = load i8**, i8*** %65, align 8
  %67 = load i64, i64* @SCAN_LB_LMAC_IDX, align 8
  %68 = getelementptr inbounds i8*, i8** %66, i64 %67
  store i8* %63, i8** %68, align 8
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** @scan_timing, align 8
  %70 = load i32, i32* %13, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i8* @cpu_to_le32(i32 %74)
  %76 = load %struct.iwl_scan_config_v2*, %struct.iwl_scan_config_v2** %11, align 8
  %77 = getelementptr inbounds %struct.iwl_scan_config_v2, %struct.iwl_scan_config_v2* %76, i32 0, i32 6
  %78 = load i8**, i8*** %77, align 8
  %79 = load i64, i64* @SCAN_HB_LMAC_IDX, align 8
  %80 = getelementptr inbounds i8*, i8** %78, i64 %79
  store i8* %75, i8** %80, align 8
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** @scan_timing, align 8
  %82 = load i32, i32* %13, align 4
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i8* @cpu_to_le32(i32 %86)
  %88 = load %struct.iwl_scan_config_v2*, %struct.iwl_scan_config_v2** %11, align 8
  %89 = getelementptr inbounds %struct.iwl_scan_config_v2, %struct.iwl_scan_config_v2* %88, i32 0, i32 5
  %90 = load i8**, i8*** %89, align 8
  %91 = load i64, i64* @SCAN_HB_LMAC_IDX, align 8
  %92 = getelementptr inbounds i8*, i8** %90, i64 %91
  store i8* %87, i8** %92, align 8
  br label %120

93:                                               ; preds = %5
  %94 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %95 = call i32 @iwl_mvm_get_scan_type(%struct.iwl_mvm* %94, i32* null)
  store i32 %95, i32* %14, align 4
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** @scan_timing, align 8
  %97 = load i32, i32* %14, align 4
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call i8* @cpu_to_le32(i32 %101)
  %103 = load %struct.iwl_scan_config_v2*, %struct.iwl_scan_config_v2** %11, align 8
  %104 = getelementptr inbounds %struct.iwl_scan_config_v2, %struct.iwl_scan_config_v2* %103, i32 0, i32 6
  %105 = load i8**, i8*** %104, align 8
  %106 = load i64, i64* @SCAN_LB_LMAC_IDX, align 8
  %107 = getelementptr inbounds i8*, i8** %105, i64 %106
  store i8* %102, i8** %107, align 8
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** @scan_timing, align 8
  %109 = load i32, i32* %14, align 4
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i8* @cpu_to_le32(i32 %113)
  %115 = load %struct.iwl_scan_config_v2*, %struct.iwl_scan_config_v2** %11, align 8
  %116 = getelementptr inbounds %struct.iwl_scan_config_v2, %struct.iwl_scan_config_v2* %115, i32 0, i32 5
  %117 = load i8**, i8*** %116, align 8
  %118 = load i64, i64* @SCAN_LB_LMAC_IDX, align 8
  %119 = getelementptr inbounds i8*, i8** %117, i64 %118
  store i8* %114, i8** %119, align 8
  br label %120

120:                                              ; preds = %93, %38
  %121 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %122 = load %struct.iwl_scan_config_v2*, %struct.iwl_scan_config_v2** %11, align 8
  %123 = getelementptr inbounds %struct.iwl_scan_config_v2, %struct.iwl_scan_config_v2* %122, i32 0, i32 4
  %124 = call i32 @iwl_mvm_fill_scan_dwell(%struct.iwl_mvm* %121, i32* %123)
  %125 = load %struct.iwl_scan_config_v2*, %struct.iwl_scan_config_v2** %11, align 8
  %126 = getelementptr inbounds %struct.iwl_scan_config_v2, %struct.iwl_scan_config_v2* %125, i32 0, i32 3
  %127 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %128 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %127, i32 0, i32 1
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i64 0
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 0
  %132 = load i32, i32* @ETH_ALEN, align 4
  %133 = call i32 @memcpy(i32* %126, i32* %131, i32 %132)
  %134 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %135 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.iwl_scan_config_v2*, %struct.iwl_scan_config_v2** %11, align 8
  %139 = getelementptr inbounds %struct.iwl_scan_config_v2, %struct.iwl_scan_config_v2* %138, i32 0, i32 2
  store i32 %137, i32* %139, align 8
  %140 = load i32, i32* %9, align 4
  %141 = load %struct.iwl_scan_config_v2*, %struct.iwl_scan_config_v2** %11, align 8
  %142 = getelementptr inbounds %struct.iwl_scan_config_v2, %struct.iwl_scan_config_v2* %141, i32 0, i32 1
  store i32 %140, i32* %142, align 4
  %143 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %144 = load %struct.iwl_scan_config_v2*, %struct.iwl_scan_config_v2** %11, align 8
  %145 = getelementptr inbounds %struct.iwl_scan_config_v2, %struct.iwl_scan_config_v2* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* %10, align 4
  %148 = call i32 @iwl_mvm_fill_channels(%struct.iwl_mvm* %143, i32 %146, i32 %147)
  ret void
}

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @iwl_mvm_get_valid_tx_ant(%struct.iwl_mvm*) #1

declare dso_local i32 @iwl_mvm_scan_rx_ant(%struct.iwl_mvm*) #1

declare dso_local i32 @iwl_mvm_scan_config_rates(%struct.iwl_mvm*) #1

declare dso_local i64 @iwl_mvm_is_cdb_supported(%struct.iwl_mvm*) #1

declare dso_local i32 @iwl_mvm_get_scan_type_band(%struct.iwl_mvm*, i32*, i32) #1

declare dso_local i32 @iwl_mvm_get_scan_type(%struct.iwl_mvm*, i32*) #1

declare dso_local i32 @iwl_mvm_fill_scan_dwell(%struct.iwl_mvm*, i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @iwl_mvm_fill_channels(%struct.iwl_mvm*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
