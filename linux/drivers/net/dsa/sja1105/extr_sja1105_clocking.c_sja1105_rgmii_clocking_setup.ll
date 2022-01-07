; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/sja1105/extr_sja1105_clocking.c_sja1105_rgmii_clocking_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/sja1105/extr_sja1105_clocking.c_sja1105_rgmii_clocking_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sja1105_private = type { %struct.TYPE_8__*, %struct.TYPE_7__, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { i32 (%struct.sja1105_private*, i32)* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.sja1105_mac_config_entry* }
%struct.sja1105_mac_config_entry = type { i32 }
%struct.TYPE_5__ = type { %struct.device* }
%struct.device = type { i32 }

@BLK_IDX_MAC_CONFIG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"Configuring port %d RGMII at speed %dMbps\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"Speed not available, skipping CGU config\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Failed to configure idiv\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"Failed to configure RGMII Tx clock\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"Failed to configure Tx pad registers\0A\00", align 1
@XMII_MAC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sja1105_private*, i32, i64)* @sja1105_rgmii_clocking_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sja1105_rgmii_clocking_setup(%struct.sja1105_private* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sja1105_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.sja1105_mac_config_entry*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.sja1105_private* %0, %struct.sja1105_private** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %12 = load %struct.sja1105_private*, %struct.sja1105_private** %5, align 8
  %13 = getelementptr inbounds %struct.sja1105_private, %struct.sja1105_private* %12, i32 0, i32 2
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load %struct.device*, %struct.device** %15, align 8
  store %struct.device* %16, %struct.device** %8, align 8
  %17 = load %struct.sja1105_private*, %struct.sja1105_private** %5, align 8
  %18 = getelementptr inbounds %struct.sja1105_private, %struct.sja1105_private* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = load i64, i64* @BLK_IDX_MAC_CONFIG, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load %struct.sja1105_mac_config_entry*, %struct.sja1105_mac_config_entry** %23, align 8
  store %struct.sja1105_mac_config_entry* %24, %struct.sja1105_mac_config_entry** %9, align 8
  %25 = load %struct.sja1105_mac_config_entry*, %struct.sja1105_mac_config_entry** %9, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.sja1105_mac_config_entry, %struct.sja1105_mac_config_entry* %25, i64 %27
  %29 = getelementptr inbounds %struct.sja1105_mac_config_entry, %struct.sja1105_mac_config_entry* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %10, align 4
  %31 = load %struct.device*, %struct.device** %8, align 8
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* %10, align 4
  %34 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %31, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %33)
  %35 = load i32, i32* %10, align 4
  switch i32 %35, label %51 [
    i32 131, label %36
    i32 130, label %40
    i32 129, label %44
    i32 128, label %48
  ]

36:                                               ; preds = %3
  %37 = load %struct.sja1105_private*, %struct.sja1105_private** %5, align 8
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @sja1105_cgu_idiv_config(%struct.sja1105_private* %37, i32 %38, i32 0, i32 1)
  store i32 %39, i32* %11, align 4
  br label %54

40:                                               ; preds = %3
  %41 = load %struct.sja1105_private*, %struct.sja1105_private** %5, align 8
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @sja1105_cgu_idiv_config(%struct.sja1105_private* %41, i32 %42, i32 1, i32 1)
  store i32 %43, i32* %11, align 4
  br label %54

44:                                               ; preds = %3
  %45 = load %struct.sja1105_private*, %struct.sja1105_private** %5, align 8
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @sja1105_cgu_idiv_config(%struct.sja1105_private* %45, i32 %46, i32 1, i32 10)
  store i32 %47, i32* %11, align 4
  br label %54

48:                                               ; preds = %3
  %49 = load %struct.device*, %struct.device** %8, align 8
  %50 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %49, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %104

51:                                               ; preds = %3
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %11, align 4
  br label %54

54:                                               ; preds = %51, %44, %40, %36
  %55 = load i32, i32* %11, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %54
  %58 = load %struct.device*, %struct.device** %8, align 8
  %59 = call i32 @dev_err(%struct.device* %58, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %60 = load i32, i32* %11, align 4
  store i32 %60, i32* %4, align 4
  br label %104

61:                                               ; preds = %54
  %62 = load %struct.sja1105_private*, %struct.sja1105_private** %5, align 8
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* %10, align 4
  %65 = call i32 @sja1105_cgu_rgmii_tx_clk_config(%struct.sja1105_private* %62, i32 %63, i32 %64)
  store i32 %65, i32* %11, align 4
  %66 = load i32, i32* %11, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %61
  %69 = load %struct.device*, %struct.device** %8, align 8
  %70 = call i32 @dev_err(%struct.device* %69, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %71 = load i32, i32* %11, align 4
  store i32 %71, i32* %4, align 4
  br label %104

72:                                               ; preds = %61
  %73 = load %struct.sja1105_private*, %struct.sja1105_private** %5, align 8
  %74 = load i32, i32* %6, align 4
  %75 = call i32 @sja1105_rgmii_cfg_pad_tx_config(%struct.sja1105_private* %73, i32 %74)
  store i32 %75, i32* %11, align 4
  %76 = load i32, i32* %11, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %72
  %79 = load %struct.device*, %struct.device** %8, align 8
  %80 = call i32 @dev_err(%struct.device* %79, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  %81 = load i32, i32* %11, align 4
  store i32 %81, i32* %4, align 4
  br label %104

82:                                               ; preds = %72
  %83 = load %struct.sja1105_private*, %struct.sja1105_private** %5, align 8
  %84 = getelementptr inbounds %struct.sja1105_private, %struct.sja1105_private* %83, i32 0, i32 0
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = load i32 (%struct.sja1105_private*, i32)*, i32 (%struct.sja1105_private*, i32)** %86, align 8
  %88 = icmp ne i32 (%struct.sja1105_private*, i32)* %87, null
  br i1 %88, label %90, label %89

89:                                               ; preds = %82
  store i32 0, i32* %4, align 4
  br label %104

90:                                               ; preds = %82
  %91 = load i64, i64* %7, align 8
  %92 = load i64, i64* @XMII_MAC, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %90
  store i32 0, i32* %4, align 4
  br label %104

95:                                               ; preds = %90
  %96 = load %struct.sja1105_private*, %struct.sja1105_private** %5, align 8
  %97 = getelementptr inbounds %struct.sja1105_private, %struct.sja1105_private* %96, i32 0, i32 0
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  %100 = load i32 (%struct.sja1105_private*, i32)*, i32 (%struct.sja1105_private*, i32)** %99, align 8
  %101 = load %struct.sja1105_private*, %struct.sja1105_private** %5, align 8
  %102 = load i32, i32* %6, align 4
  %103 = call i32 %100(%struct.sja1105_private* %101, i32 %102)
  store i32 %103, i32* %4, align 4
  br label %104

104:                                              ; preds = %95, %94, %89, %78, %68, %57, %48
  %105 = load i32, i32* %4, align 4
  ret i32 %105
}

declare dso_local i32 @dev_dbg(%struct.device*, i8*, ...) #1

declare dso_local i32 @sja1105_cgu_idiv_config(%struct.sja1105_private*, i32, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @sja1105_cgu_rgmii_tx_clk_config(%struct.sja1105_private*, i32, i32) #1

declare dso_local i32 @sja1105_rgmii_cfg_pad_tx_config(%struct.sja1105_private*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
