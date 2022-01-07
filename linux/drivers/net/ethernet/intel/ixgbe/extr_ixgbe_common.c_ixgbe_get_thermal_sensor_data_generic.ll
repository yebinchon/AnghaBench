; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_common.c_ixgbe_get_thermal_sensor_data_generic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_common.c_ixgbe_get_thermal_sensor_data_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_11__, %struct.TYPE_9__, %struct.TYPE_7__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 (%struct.ixgbe_hw.0*, i32, i32, i32*)* }
%struct.ixgbe_hw.0 = type opaque
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 (%struct.ixgbe_hw.1*, i64, i64*)* }
%struct.ixgbe_hw.1 = type opaque
%struct.TYPE_7__ = type { %struct.ixgbe_thermal_sensor_data }
%struct.ixgbe_thermal_sensor_data = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }

@IXGBE_STATUS = common dso_local global i32 0, align 4
@IXGBE_STATUS_LAN_ID_1 = common dso_local global i32 0, align 4
@IXGBE_NOT_IMPLEMENTED = common dso_local global i64 0, align 8
@IXGBE_ETS_NUM_SENSORS_MASK = common dso_local global i64 0, align 8
@IXGBE_MAX_SENSORS = common dso_local global i64 0, align 8
@IXGBE_ETS_DATA_INDEX_MASK = common dso_local global i64 0, align 8
@IXGBE_ETS_DATA_INDEX_SHIFT = common dso_local global i64 0, align 8
@IXGBE_ETS_DATA_LOC_MASK = common dso_local global i64 0, align 8
@IXGBE_ETS_DATA_LOC_SHIFT = common dso_local global i64 0, align 8
@ixgbe_emc_temp_data = common dso_local global i32* null, align 8
@IXGBE_I2C_THERMAL_SENSOR_ADDR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ixgbe_get_thermal_sensor_data_generic(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.ixgbe_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ixgbe_thermal_sensor_data*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %3, align 8
  %13 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %14 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  store %struct.ixgbe_thermal_sensor_data* %15, %struct.ixgbe_thermal_sensor_data** %10, align 8
  %16 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %17 = load i32, i32* @IXGBE_STATUS, align 4
  %18 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %16, i32 %17)
  %19 = load i32, i32* @IXGBE_STATUS_LAN_ID_1, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = load i64, i64* @IXGBE_NOT_IMPLEMENTED, align 8
  store i64 %23, i64* %2, align 8
  br label %105

24:                                               ; preds = %1
  %25 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %26 = call i64 @ixgbe_get_ets_data(%struct.ixgbe_hw* %25, i64* %6, i64* %5)
  store i64 %26, i64* %4, align 8
  %27 = load i64, i64* %4, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i64, i64* %4, align 8
  store i64 %30, i64* %2, align 8
  br label %105

31:                                               ; preds = %24
  %32 = load i64, i64* %6, align 8
  %33 = load i64, i64* @IXGBE_ETS_NUM_SENSORS_MASK, align 8
  %34 = and i64 %32, %33
  store i64 %34, i64* %8, align 8
  %35 = load i64, i64* %8, align 8
  %36 = load i64, i64* @IXGBE_MAX_SENSORS, align 8
  %37 = icmp ugt i64 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %31
  %39 = load i64, i64* @IXGBE_MAX_SENSORS, align 8
  store i64 %39, i64* %8, align 8
  br label %40

40:                                               ; preds = %38, %31
  store i64 0, i64* %9, align 8
  br label %41

41:                                               ; preds = %101, %40
  %42 = load i64, i64* %9, align 8
  %43 = load i64, i64* %8, align 8
  %44 = icmp ult i64 %42, %43
  br i1 %44, label %45, label %104

45:                                               ; preds = %41
  %46 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %47 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load i64 (%struct.ixgbe_hw.1*, i64, i64*)*, i64 (%struct.ixgbe_hw.1*, i64, i64*)** %49, align 8
  %51 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %52 = bitcast %struct.ixgbe_hw* %51 to %struct.ixgbe_hw.1*
  %53 = load i64, i64* %5, align 8
  %54 = add i64 %53, 1
  %55 = load i64, i64* %9, align 8
  %56 = add i64 %54, %55
  %57 = call i64 %50(%struct.ixgbe_hw.1* %52, i64 %56, i64* %7)
  store i64 %57, i64* %4, align 8
  %58 = load i64, i64* %4, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %45
  %61 = load i64, i64* %4, align 8
  store i64 %61, i64* %2, align 8
  br label %105

62:                                               ; preds = %45
  %63 = load i64, i64* %7, align 8
  %64 = load i64, i64* @IXGBE_ETS_DATA_INDEX_MASK, align 8
  %65 = and i64 %63, %64
  %66 = load i64, i64* @IXGBE_ETS_DATA_INDEX_SHIFT, align 8
  %67 = lshr i64 %65, %66
  store i64 %67, i64* %11, align 8
  %68 = load i64, i64* %7, align 8
  %69 = load i64, i64* @IXGBE_ETS_DATA_LOC_MASK, align 8
  %70 = and i64 %68, %69
  %71 = load i64, i64* @IXGBE_ETS_DATA_LOC_SHIFT, align 8
  %72 = lshr i64 %70, %71
  store i64 %72, i64* %12, align 8
  %73 = load i64, i64* %12, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %100

75:                                               ; preds = %62
  %76 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %77 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 0
  %80 = load i64 (%struct.ixgbe_hw.0*, i32, i32, i32*)*, i64 (%struct.ixgbe_hw.0*, i32, i32, i32*)** %79, align 8
  %81 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %82 = bitcast %struct.ixgbe_hw* %81 to %struct.ixgbe_hw.0*
  %83 = load i32*, i32** @ixgbe_emc_temp_data, align 8
  %84 = load i64, i64* %11, align 8
  %85 = getelementptr inbounds i32, i32* %83, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @IXGBE_I2C_THERMAL_SENSOR_ADDR, align 4
  %88 = load %struct.ixgbe_thermal_sensor_data*, %struct.ixgbe_thermal_sensor_data** %10, align 8
  %89 = getelementptr inbounds %struct.ixgbe_thermal_sensor_data, %struct.ixgbe_thermal_sensor_data* %88, i32 0, i32 0
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %89, align 8
  %91 = load i64, i64* %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 0
  %94 = call i64 %80(%struct.ixgbe_hw.0* %82, i32 %86, i32 %87, i32* %93)
  store i64 %94, i64* %4, align 8
  %95 = load i64, i64* %4, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %75
  %98 = load i64, i64* %4, align 8
  store i64 %98, i64* %2, align 8
  br label %105

99:                                               ; preds = %75
  br label %100

100:                                              ; preds = %99, %62
  br label %101

101:                                              ; preds = %100
  %102 = load i64, i64* %9, align 8
  %103 = add i64 %102, 1
  store i64 %103, i64* %9, align 8
  br label %41

104:                                              ; preds = %41
  store i64 0, i64* %2, align 8
  br label %105

105:                                              ; preds = %104, %97, %60, %29, %22
  %106 = load i64, i64* %2, align 8
  ret i64 %106
}

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i64 @ixgbe_get_ets_data(%struct.ixgbe_hw*, i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
