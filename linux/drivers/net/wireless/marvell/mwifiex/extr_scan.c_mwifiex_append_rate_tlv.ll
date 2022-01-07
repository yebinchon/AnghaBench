; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_scan.c_mwifiex_append_rate_tlv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_scan.c_mwifiex_append_rate_tlv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { i32, i64 }
%struct.mwifiex_scan_cmd_config = type { i32, i64 }
%struct.mwifiex_ie_types_rates_param_set = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8* }

@MWIFIEX_SUPPORTED_RATES = common dso_local global i32 0, align 4
@CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"info: SCAN_CMD: Rates size = %d\0A\00", align 1
@WLAN_EID_SUPP_RATES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mwifiex_private*, %struct.mwifiex_scan_cmd_config*, i32)* @mwifiex_append_rate_tlv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_append_rate_tlv(%struct.mwifiex_private* %0, %struct.mwifiex_scan_cmd_config* %1, i32 %2) #0 {
  %4 = alloca %struct.mwifiex_private*, align 8
  %5 = alloca %struct.mwifiex_scan_cmd_config*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mwifiex_ie_types_rates_param_set*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %4, align 8
  store %struct.mwifiex_scan_cmd_config* %1, %struct.mwifiex_scan_cmd_config** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* @MWIFIEX_SUPPORTED_RATES, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %8, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %9, align 8
  %16 = mul nuw i64 4, %13
  %17 = trunc i64 %16 to i32
  %18 = call i32 @memset(i32* %15, i32 0, i32 %17)
  %19 = load %struct.mwifiex_scan_cmd_config*, %struct.mwifiex_scan_cmd_config** %5, align 8
  %20 = getelementptr inbounds %struct.mwifiex_scan_cmd_config, %struct.mwifiex_scan_cmd_config* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to i32*
  %23 = load %struct.mwifiex_scan_cmd_config*, %struct.mwifiex_scan_cmd_config** %5, align 8
  %24 = getelementptr inbounds %struct.mwifiex_scan_cmd_config, %struct.mwifiex_scan_cmd_config* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %22, i64 %26
  store i32* %27, i32** %10, align 8
  %28 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %29 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %3
  %33 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @mwifiex_get_rates_from_cfg80211(%struct.mwifiex_private* %33, i32* %15, i32 %34)
  store i32 %35, i32* %11, align 4
  br label %39

36:                                               ; preds = %3
  %37 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %38 = call i32 @mwifiex_get_supported_rates(%struct.mwifiex_private* %37, i32* %15)
  store i32 %38, i32* %11, align 4
  br label %39

39:                                               ; preds = %36, %32
  %40 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %41 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @CMD, align 4
  %44 = load i32, i32* %11, align 4
  %45 = call i32 @mwifiex_dbg(i32 %42, i32 %43, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = load i32*, i32** %10, align 8
  %47 = bitcast i32* %46 to %struct.mwifiex_ie_types_rates_param_set*
  store %struct.mwifiex_ie_types_rates_param_set* %47, %struct.mwifiex_ie_types_rates_param_set** %7, align 8
  %48 = load i32, i32* @WLAN_EID_SUPP_RATES, align 4
  %49 = call i8* @cpu_to_le16(i32 %48)
  %50 = load %struct.mwifiex_ie_types_rates_param_set*, %struct.mwifiex_ie_types_rates_param_set** %7, align 8
  %51 = getelementptr inbounds %struct.mwifiex_ie_types_rates_param_set, %struct.mwifiex_ie_types_rates_param_set* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  store i8* %49, i8** %52, align 8
  %53 = load i32, i32* %11, align 4
  %54 = call i8* @cpu_to_le16(i32 %53)
  %55 = load %struct.mwifiex_ie_types_rates_param_set*, %struct.mwifiex_ie_types_rates_param_set** %7, align 8
  %56 = getelementptr inbounds %struct.mwifiex_ie_types_rates_param_set, %struct.mwifiex_ie_types_rates_param_set* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  store i8* %54, i8** %57, align 8
  %58 = load %struct.mwifiex_ie_types_rates_param_set*, %struct.mwifiex_ie_types_rates_param_set** %7, align 8
  %59 = getelementptr inbounds %struct.mwifiex_ie_types_rates_param_set, %struct.mwifiex_ie_types_rates_param_set* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %11, align 4
  %62 = call i32 @memcpy(i32 %60, i32* %15, i32 %61)
  %63 = load i32, i32* %11, align 4
  %64 = sext i32 %63 to i64
  %65 = add i64 16, %64
  %66 = load %struct.mwifiex_scan_cmd_config*, %struct.mwifiex_scan_cmd_config** %5, align 8
  %67 = getelementptr inbounds %struct.mwifiex_scan_cmd_config, %struct.mwifiex_scan_cmd_config* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = sext i32 %68 to i64
  %70 = add i64 %69, %65
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %67, align 8
  %72 = load i32, i32* %11, align 4
  %73 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %73)
  ret i32 %72
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @mwifiex_get_rates_from_cfg80211(%struct.mwifiex_private*, i32*, i32) #2

declare dso_local i32 @mwifiex_get_supported_rates(%struct.mwifiex_private*, i32*) #2

declare dso_local i32 @mwifiex_dbg(i32, i32, i8*, i32) #2

declare dso_local i8* @cpu_to_le16(i32) #2

declare dso_local i32 @memcpy(i32, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
