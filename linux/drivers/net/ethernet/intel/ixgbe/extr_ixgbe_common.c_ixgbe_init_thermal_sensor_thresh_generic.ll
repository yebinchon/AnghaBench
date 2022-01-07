; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_common.c_ixgbe_init_thermal_sensor_thresh_generic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_common.c_ixgbe_init_thermal_sensor_thresh_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_11__, %struct.TYPE_9__, %struct.TYPE_7__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 (%struct.ixgbe_hw.0*, i32, i32, i64)* }
%struct.ixgbe_hw.0 = type opaque
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 (%struct.ixgbe_hw.1*, i64, i64*)* }
%struct.ixgbe_hw.1 = type opaque
%struct.TYPE_7__ = type { %struct.ixgbe_thermal_sensor_data }
%struct.ixgbe_thermal_sensor_data = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64, i64, i64 }

@IXGBE_STATUS = common dso_local global i32 0, align 4
@IXGBE_STATUS_LAN_ID_1 = common dso_local global i32 0, align 4
@IXGBE_NOT_IMPLEMENTED = common dso_local global i64 0, align 8
@IXGBE_ETS_LTHRES_DELTA_MASK = common dso_local global i64 0, align 8
@IXGBE_ETS_LTHRES_DELTA_SHIFT = common dso_local global i64 0, align 8
@IXGBE_ETS_NUM_SENSORS_MASK = common dso_local global i64 0, align 8
@IXGBE_MAX_SENSORS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"eeprom read at offset %d failed\0A\00", align 1
@IXGBE_ETS_DATA_INDEX_MASK = common dso_local global i64 0, align 8
@IXGBE_ETS_DATA_INDEX_SHIFT = common dso_local global i64 0, align 8
@IXGBE_ETS_DATA_LOC_MASK = common dso_local global i64 0, align 8
@IXGBE_ETS_DATA_LOC_SHIFT = common dso_local global i64 0, align 8
@IXGBE_ETS_DATA_HTHRESH_MASK = common dso_local global i64 0, align 8
@ixgbe_emc_therm_limit = common dso_local global i32* null, align 8
@IXGBE_I2C_THERMAL_SENSOR_ADDR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ixgbe_init_thermal_sensor_thresh_generic(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.ixgbe_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.ixgbe_thermal_sensor_data*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %3, align 8
  %15 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %16 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  store %struct.ixgbe_thermal_sensor_data* %17, %struct.ixgbe_thermal_sensor_data** %12, align 8
  %18 = load %struct.ixgbe_thermal_sensor_data*, %struct.ixgbe_thermal_sensor_data** %12, align 8
  %19 = call i32 @memset(%struct.ixgbe_thermal_sensor_data* %18, i32 0, i32 8)
  %20 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %21 = load i32, i32* @IXGBE_STATUS, align 4
  %22 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %20, i32 %21)
  %23 = load i32, i32* @IXGBE_STATUS_LAN_ID_1, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %1
  %27 = load i64, i64* @IXGBE_NOT_IMPLEMENTED, align 8
  store i64 %27, i64* %2, align 8
  br label %134

28:                                               ; preds = %1
  %29 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %30 = call i64 @ixgbe_get_ets_data(%struct.ixgbe_hw* %29, i64* %6, i64* %5)
  store i64 %30, i64* %4, align 8
  %31 = load i64, i64* %4, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i64, i64* %4, align 8
  store i64 %34, i64* %2, align 8
  br label %134

35:                                               ; preds = %28
  %36 = load i64, i64* %6, align 8
  %37 = load i64, i64* @IXGBE_ETS_LTHRES_DELTA_MASK, align 8
  %38 = and i64 %36, %37
  %39 = load i64, i64* @IXGBE_ETS_LTHRES_DELTA_SHIFT, align 8
  %40 = lshr i64 %38, %39
  store i64 %40, i64* %8, align 8
  %41 = load i64, i64* %6, align 8
  %42 = load i64, i64* @IXGBE_ETS_NUM_SENSORS_MASK, align 8
  %43 = and i64 %41, %42
  store i64 %43, i64* %9, align 8
  %44 = load i64, i64* %9, align 8
  %45 = load i64, i64* @IXGBE_MAX_SENSORS, align 8
  %46 = icmp ugt i64 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %35
  %48 = load i64, i64* @IXGBE_MAX_SENSORS, align 8
  store i64 %48, i64* %9, align 8
  br label %49

49:                                               ; preds = %47, %35
  store i64 0, i64* %11, align 8
  br label %50

50:                                               ; preds = %130, %49
  %51 = load i64, i64* %11, align 8
  %52 = load i64, i64* %9, align 8
  %53 = icmp ult i64 %51, %52
  br i1 %53, label %54, label %133

54:                                               ; preds = %50
  %55 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %56 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load i64 (%struct.ixgbe_hw.1*, i64, i64*)*, i64 (%struct.ixgbe_hw.1*, i64, i64*)** %58, align 8
  %60 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %61 = bitcast %struct.ixgbe_hw* %60 to %struct.ixgbe_hw.1*
  %62 = load i64, i64* %5, align 8
  %63 = add i64 %62, 1
  %64 = load i64, i64* %11, align 8
  %65 = add i64 %63, %64
  %66 = call i64 %59(%struct.ixgbe_hw.1* %61, i64 %65, i64* %7)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %54
  %69 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %70 = load i64, i64* %5, align 8
  %71 = add i64 %70, 1
  %72 = load i64, i64* %11, align 8
  %73 = add i64 %71, %72
  %74 = call i32 @hw_err(%struct.ixgbe_hw* %69, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %73)
  br label %130

75:                                               ; preds = %54
  %76 = load i64, i64* %7, align 8
  %77 = load i64, i64* @IXGBE_ETS_DATA_INDEX_MASK, align 8
  %78 = and i64 %76, %77
  %79 = load i64, i64* @IXGBE_ETS_DATA_INDEX_SHIFT, align 8
  %80 = lshr i64 %78, %79
  store i64 %80, i64* %13, align 8
  %81 = load i64, i64* %7, align 8
  %82 = load i64, i64* @IXGBE_ETS_DATA_LOC_MASK, align 8
  %83 = and i64 %81, %82
  %84 = load i64, i64* @IXGBE_ETS_DATA_LOC_SHIFT, align 8
  %85 = lshr i64 %83, %84
  store i64 %85, i64* %14, align 8
  %86 = load i64, i64* %7, align 8
  %87 = load i64, i64* @IXGBE_ETS_DATA_HTHRESH_MASK, align 8
  %88 = and i64 %86, %87
  store i64 %88, i64* %10, align 8
  %89 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %90 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 0
  %93 = load i32 (%struct.ixgbe_hw.0*, i32, i32, i64)*, i32 (%struct.ixgbe_hw.0*, i32, i32, i64)** %92, align 8
  %94 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %95 = bitcast %struct.ixgbe_hw* %94 to %struct.ixgbe_hw.0*
  %96 = load i32*, i32** @ixgbe_emc_therm_limit, align 8
  %97 = load i64, i64* %13, align 8
  %98 = getelementptr inbounds i32, i32* %96, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @IXGBE_I2C_THERMAL_SENSOR_ADDR, align 4
  %101 = load i64, i64* %10, align 8
  %102 = call i32 %93(%struct.ixgbe_hw.0* %95, i32 %99, i32 %100, i64 %101)
  %103 = load i64, i64* %14, align 8
  %104 = icmp eq i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %75
  br label %130

106:                                              ; preds = %75
  %107 = load i64, i64* %14, align 8
  %108 = load %struct.ixgbe_thermal_sensor_data*, %struct.ixgbe_thermal_sensor_data** %12, align 8
  %109 = getelementptr inbounds %struct.ixgbe_thermal_sensor_data, %struct.ixgbe_thermal_sensor_data* %108, i32 0, i32 0
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %109, align 8
  %111 = load i64, i64* %11, align 8
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 0
  store i64 %107, i64* %113, align 8
  %114 = load i64, i64* %10, align 8
  %115 = load %struct.ixgbe_thermal_sensor_data*, %struct.ixgbe_thermal_sensor_data** %12, align 8
  %116 = getelementptr inbounds %struct.ixgbe_thermal_sensor_data, %struct.ixgbe_thermal_sensor_data* %115, i32 0, i32 0
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %116, align 8
  %118 = load i64, i64* %11, align 8
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 1
  store i64 %114, i64* %120, align 8
  %121 = load i64, i64* %10, align 8
  %122 = load i64, i64* %8, align 8
  %123 = sub i64 %121, %122
  %124 = load %struct.ixgbe_thermal_sensor_data*, %struct.ixgbe_thermal_sensor_data** %12, align 8
  %125 = getelementptr inbounds %struct.ixgbe_thermal_sensor_data, %struct.ixgbe_thermal_sensor_data* %124, i32 0, i32 0
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %125, align 8
  %127 = load i64, i64* %11, align 8
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 2
  store i64 %123, i64* %129, align 8
  br label %130

130:                                              ; preds = %106, %105, %68
  %131 = load i64, i64* %11, align 8
  %132 = add i64 %131, 1
  store i64 %132, i64* %11, align 8
  br label %50

133:                                              ; preds = %50
  store i64 0, i64* %2, align 8
  br label %134

134:                                              ; preds = %133, %33, %26
  %135 = load i64, i64* %2, align 8
  ret i64 %135
}

declare dso_local i32 @memset(%struct.ixgbe_thermal_sensor_data*, i32, i32) #1

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i64 @ixgbe_get_ets_data(%struct.ixgbe_hw*, i64*, i64*) #1

declare dso_local i32 @hw_err(%struct.ixgbe_hw*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
