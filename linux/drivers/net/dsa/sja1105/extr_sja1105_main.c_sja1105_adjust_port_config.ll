; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/sja1105/extr_sja1105_main.c_sja1105_adjust_port_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/sja1105/extr_sja1105_main.c_sja1105_adjust_port_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sja1105_private = type { %struct.TYPE_6__, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.sja1105_xmii_params_entry* }
%struct.sja1105_xmii_params_entry = type { i64*, i32 }
%struct.TYPE_4__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.sja1105_mac_config_entry = type { i64*, i32 }

@BLK_IDX_MAC_CONFIG = common dso_local global i64 0, align 8
@BLK_IDX_XMII_PARAMS = common dso_local global i64 0, align 8
@SJA1105_SPEED_AUTO = common dso_local global i32 0, align 4
@SJA1105_SPEED_10MBPS = common dso_local global i32 0, align 4
@SJA1105_SPEED_100MBPS = common dso_local global i32 0, align 4
@SJA1105_SPEED_1000MBPS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Invalid speed %iMbps\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Failed to write MAC config: %d\0A\00", align 1
@XMII_MODE_RGMII = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sja1105_private*, i32, i32)* @sja1105_adjust_port_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sja1105_adjust_port_config(%struct.sja1105_private* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sja1105_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sja1105_xmii_params_entry*, align 8
  %9 = alloca %struct.sja1105_mac_config_entry*, align 8
  %10 = alloca %struct.device*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.sja1105_private* %0, %struct.sja1105_private** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load %struct.sja1105_private*, %struct.sja1105_private** %5, align 8
  %15 = getelementptr inbounds %struct.sja1105_private, %struct.sja1105_private* %14, i32 0, i32 1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.device*, %struct.device** %17, align 8
  store %struct.device* %18, %struct.device** %10, align 8
  %19 = load %struct.sja1105_private*, %struct.sja1105_private** %5, align 8
  %20 = getelementptr inbounds %struct.sja1105_private, %struct.sja1105_private* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = load i64, i64* @BLK_IDX_MAC_CONFIG, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load %struct.sja1105_xmii_params_entry*, %struct.sja1105_xmii_params_entry** %25, align 8
  %27 = bitcast %struct.sja1105_xmii_params_entry* %26 to %struct.sja1105_mac_config_entry*
  store %struct.sja1105_mac_config_entry* %27, %struct.sja1105_mac_config_entry** %9, align 8
  %28 = load %struct.sja1105_private*, %struct.sja1105_private** %5, align 8
  %29 = getelementptr inbounds %struct.sja1105_private, %struct.sja1105_private* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = load i64, i64* @BLK_IDX_XMII_PARAMS, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load %struct.sja1105_xmii_params_entry*, %struct.sja1105_xmii_params_entry** %34, align 8
  store %struct.sja1105_xmii_params_entry* %35, %struct.sja1105_xmii_params_entry** %8, align 8
  %36 = load i32, i32* %7, align 4
  switch i32 %36, label %45 [
    i32 128, label %37
    i32 131, label %39
    i32 130, label %41
    i32 129, label %43
  ]

37:                                               ; preds = %3
  %38 = load i32, i32* @SJA1105_SPEED_AUTO, align 4
  store i32 %38, i32* %12, align 4
  br label %51

39:                                               ; preds = %3
  %40 = load i32, i32* @SJA1105_SPEED_10MBPS, align 4
  store i32 %40, i32* %12, align 4
  br label %51

41:                                               ; preds = %3
  %42 = load i32, i32* @SJA1105_SPEED_100MBPS, align 4
  store i32 %42, i32* %12, align 4
  br label %51

43:                                               ; preds = %3
  %44 = load i32, i32* @SJA1105_SPEED_1000MBPS, align 4
  store i32 %44, i32* %12, align 4
  br label %51

45:                                               ; preds = %3
  %46 = load %struct.device*, %struct.device** %10, align 8
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @dev_err(%struct.device* %46, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %4, align 4
  br label %90

51:                                               ; preds = %43, %41, %39, %37
  %52 = load i32, i32* %12, align 4
  %53 = load %struct.sja1105_mac_config_entry*, %struct.sja1105_mac_config_entry** %9, align 8
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.sja1105_mac_config_entry, %struct.sja1105_mac_config_entry* %53, i64 %55
  %57 = getelementptr inbounds %struct.sja1105_mac_config_entry, %struct.sja1105_mac_config_entry* %56, i32 0, i32 1
  store i32 %52, i32* %57, align 8
  %58 = load %struct.sja1105_private*, %struct.sja1105_private** %5, align 8
  %59 = load i64, i64* @BLK_IDX_MAC_CONFIG, align 8
  %60 = load i32, i32* %6, align 4
  %61 = load %struct.sja1105_mac_config_entry*, %struct.sja1105_mac_config_entry** %9, align 8
  %62 = load i32, i32* %6, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.sja1105_mac_config_entry, %struct.sja1105_mac_config_entry* %61, i64 %63
  %65 = bitcast %struct.sja1105_mac_config_entry* %64 to %struct.sja1105_xmii_params_entry*
  %66 = call i32 @sja1105_dynamic_config_write(%struct.sja1105_private* %58, i64 %59, i32 %60, %struct.sja1105_xmii_params_entry* %65, i32 1)
  store i32 %66, i32* %13, align 4
  %67 = load i32, i32* %13, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %51
  %70 = load %struct.device*, %struct.device** %10, align 8
  %71 = load i32, i32* %13, align 4
  %72 = call i32 @dev_err(%struct.device* %70, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %71)
  %73 = load i32, i32* %13, align 4
  store i32 %73, i32* %4, align 4
  br label %90

74:                                               ; preds = %51
  %75 = load %struct.sja1105_xmii_params_entry*, %struct.sja1105_xmii_params_entry** %8, align 8
  %76 = getelementptr inbounds %struct.sja1105_xmii_params_entry, %struct.sja1105_xmii_params_entry* %75, i32 0, i32 0
  %77 = load i64*, i64** %76, align 8
  %78 = load i32, i32* %6, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i64, i64* %77, i64 %79
  %81 = load i64, i64* %80, align 8
  store i64 %81, i64* %11, align 8
  %82 = load i64, i64* %11, align 8
  %83 = load i64, i64* @XMII_MODE_RGMII, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %74
  store i32 0, i32* %4, align 4
  br label %90

86:                                               ; preds = %74
  %87 = load %struct.sja1105_private*, %struct.sja1105_private** %5, align 8
  %88 = load i32, i32* %6, align 4
  %89 = call i32 @sja1105_clocking_setup_port(%struct.sja1105_private* %87, i32 %88)
  store i32 %89, i32* %4, align 4
  br label %90

90:                                               ; preds = %86, %85, %69, %45
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @sja1105_dynamic_config_write(%struct.sja1105_private*, i64, i32, %struct.sja1105_xmii_params_entry*, i32) #1

declare dso_local i32 @sja1105_clocking_setup_port(%struct.sja1105_private*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
