; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_ucode.c_iwl_set_temperature_offset_calib_v2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_ucode.c_iwl_set_temperature_offset_calib_v2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8*, i8*, i8* }
%struct.iwl_calib_temperature_offset_v2_cmd = type { i8*, i8*, i8*, i32 }

@IWL_PHY_CALIBRATE_TEMP_OFFSET_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"no info in EEPROM, use default\0A\00", align 1
@DEFAULT_RADIO_SENSOR_OFFSET = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"Radio sensor offset high: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Radio sensor offset low: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"Voltage Ref: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_priv*)* @iwl_set_temperature_offset_calib_v2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_set_temperature_offset_calib_v2(%struct.iwl_priv* %0) #0 {
  %2 = alloca %struct.iwl_priv*, align 8
  %3 = alloca %struct.iwl_calib_temperature_offset_v2_cmd, align 8
  store %struct.iwl_priv* %0, %struct.iwl_priv** %2, align 8
  %4 = call i32 @memset(%struct.iwl_calib_temperature_offset_v2_cmd* %3, i32 0, i32 32)
  %5 = getelementptr inbounds %struct.iwl_calib_temperature_offset_v2_cmd, %struct.iwl_calib_temperature_offset_v2_cmd* %3, i32 0, i32 3
  %6 = load i32, i32* @IWL_PHY_CALIBRATE_TEMP_OFFSET_CMD, align 4
  %7 = call i32 @iwl_set_calib_hdr(i32* %5, i32 %6)
  %8 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %9 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 2
  %12 = load i8*, i8** %11, align 8
  %13 = getelementptr inbounds %struct.iwl_calib_temperature_offset_v2_cmd, %struct.iwl_calib_temperature_offset_v2_cmd* %3, i32 0, i32 2
  store i8* %12, i8** %13, align 8
  %14 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %15 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i8*, i8** %17, align 8
  %19 = getelementptr inbounds %struct.iwl_calib_temperature_offset_v2_cmd, %struct.iwl_calib_temperature_offset_v2_cmd* %3, i32 0, i32 1
  store i8* %18, i8** %19, align 8
  %20 = getelementptr inbounds %struct.iwl_calib_temperature_offset_v2_cmd, %struct.iwl_calib_temperature_offset_v2_cmd* %3, i32 0, i32 1
  %21 = load i8*, i8** %20, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %30, label %23

23:                                               ; preds = %1
  %24 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %25 = call i32 (%struct.iwl_priv*, i8*, ...) @IWL_DEBUG_CALIB(%struct.iwl_priv* %24, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %26 = load i8*, i8** @DEFAULT_RADIO_SENSOR_OFFSET, align 8
  %27 = getelementptr inbounds %struct.iwl_calib_temperature_offset_v2_cmd, %struct.iwl_calib_temperature_offset_v2_cmd* %3, i32 0, i32 1
  store i8* %26, i8** %27, align 8
  %28 = load i8*, i8** @DEFAULT_RADIO_SENSOR_OFFSET, align 8
  %29 = getelementptr inbounds %struct.iwl_calib_temperature_offset_v2_cmd, %struct.iwl_calib_temperature_offset_v2_cmd* %3, i32 0, i32 2
  store i8* %28, i8** %29, align 8
  br label %30

30:                                               ; preds = %23, %1
  %31 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %32 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = getelementptr inbounds %struct.iwl_calib_temperature_offset_v2_cmd, %struct.iwl_calib_temperature_offset_v2_cmd* %3, i32 0, i32 0
  store i8* %35, i8** %36, align 8
  %37 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %38 = getelementptr inbounds %struct.iwl_calib_temperature_offset_v2_cmd, %struct.iwl_calib_temperature_offset_v2_cmd* %3, i32 0, i32 2
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @le16_to_cpu(i8* %39)
  %41 = call i32 (%struct.iwl_priv*, i8*, ...) @IWL_DEBUG_CALIB(%struct.iwl_priv* %37, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  %42 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %43 = getelementptr inbounds %struct.iwl_calib_temperature_offset_v2_cmd, %struct.iwl_calib_temperature_offset_v2_cmd* %3, i32 0, i32 1
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 @le16_to_cpu(i8* %44)
  %46 = call i32 (%struct.iwl_priv*, i8*, ...) @IWL_DEBUG_CALIB(%struct.iwl_priv* %42, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %45)
  %47 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %48 = getelementptr inbounds %struct.iwl_calib_temperature_offset_v2_cmd, %struct.iwl_calib_temperature_offset_v2_cmd* %3, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 @le16_to_cpu(i8* %49)
  %51 = call i32 (%struct.iwl_priv*, i8*, ...) @IWL_DEBUG_CALIB(%struct.iwl_priv* %47, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %50)
  %52 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %53 = bitcast %struct.iwl_calib_temperature_offset_v2_cmd* %3 to i8*
  %54 = call i32 @iwl_calib_set(%struct.iwl_priv* %52, i8* %53, i32 32)
  ret i32 %54
}

declare dso_local i32 @memset(%struct.iwl_calib_temperature_offset_v2_cmd*, i32, i32) #1

declare dso_local i32 @iwl_set_calib_hdr(i32*, i32) #1

declare dso_local i32 @IWL_DEBUG_CALIB(%struct.iwl_priv*, i8*, ...) #1

declare dso_local i32 @le16_to_cpu(i8*) #1

declare dso_local i32 @iwl_calib_set(%struct.iwl_priv*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
