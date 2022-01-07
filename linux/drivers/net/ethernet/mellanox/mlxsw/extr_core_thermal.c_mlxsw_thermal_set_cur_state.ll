; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core_thermal.c_mlxsw_thermal_set_cur_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core_thermal.c_mlxsw_thermal_set_cur_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thermal_cooling_device = type { %struct.mlxsw_thermal* }
%struct.mlxsw_thermal = type { i64*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device* }
%struct.device = type { i32 }

@MLXSW_REG_MFSC_LEN = common dso_local global i32 0, align 4
@MLXSW_THERMAL_SPEED_MIN = common dso_local global i64 0, align 8
@MLXSW_THERMAL_SPEED_MAX = common dso_local global i64 0, align 8
@MLXSW_THERMAL_MAX_STATE = common dso_local global i64 0, align 8
@mfsc = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Failed to write PWM duty\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thermal_cooling_device*, i64)* @mlxsw_thermal_set_cur_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_thermal_set_cur_state(%struct.thermal_cooling_device* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thermal_cooling_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.mlxsw_thermal*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.thermal_cooling_device* %0, %struct.thermal_cooling_device** %4, align 8
  store i64 %1, i64* %5, align 8
  %16 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %4, align 8
  %17 = getelementptr inbounds %struct.thermal_cooling_device, %struct.thermal_cooling_device* %16, i32 0, i32 0
  %18 = load %struct.mlxsw_thermal*, %struct.mlxsw_thermal** %17, align 8
  store %struct.mlxsw_thermal* %18, %struct.mlxsw_thermal** %6, align 8
  %19 = load %struct.mlxsw_thermal*, %struct.mlxsw_thermal** %6, align 8
  %20 = getelementptr inbounds %struct.mlxsw_thermal, %struct.mlxsw_thermal* %19, i32 0, i32 2
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load %struct.device*, %struct.device** %22, align 8
  store %struct.device* %23, %struct.device** %7, align 8
  %24 = load i32, i32* @MLXSW_REG_MFSC_LEN, align 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %8, align 8
  %27 = alloca i8, i64 %25, align 16
  store i64 %25, i64* %9, align 8
  %28 = load %struct.mlxsw_thermal*, %struct.mlxsw_thermal** %6, align 8
  %29 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %4, align 8
  %30 = call i32 @mlxsw_get_cooling_device_idx(%struct.mlxsw_thermal* %28, %struct.thermal_cooling_device* %29)
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %12, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %2
  %34 = load i32, i32* %12, align 4
  store i32 %34, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %117

35:                                               ; preds = %2
  %36 = load i64, i64* %5, align 8
  %37 = load i64, i64* @MLXSW_THERMAL_SPEED_MIN, align 8
  %38 = icmp uge i64 %36, %37
  br i1 %38, label %39, label %86

39:                                               ; preds = %35
  %40 = load i64, i64* %5, align 8
  %41 = load i64, i64* @MLXSW_THERMAL_SPEED_MAX, align 8
  %42 = icmp ule i64 %40, %41
  br i1 %42, label %43, label %86

43:                                               ; preds = %39
  %44 = load i64, i64* @MLXSW_THERMAL_MAX_STATE, align 8
  %45 = load i64, i64* %5, align 8
  %46 = sub i64 %45, %44
  store i64 %46, i64* %5, align 8
  store i64 0, i64* %11, align 8
  br label %47

47:                                               ; preds = %60, %43
  %48 = load i64, i64* %11, align 8
  %49 = load i64, i64* @MLXSW_THERMAL_MAX_STATE, align 8
  %50 = icmp ule i64 %48, %49
  br i1 %50, label %51, label %63

51:                                               ; preds = %47
  %52 = load i64, i64* %5, align 8
  %53 = load i64, i64* %11, align 8
  %54 = call i64 @max(i64 %52, i64 %53)
  %55 = load %struct.mlxsw_thermal*, %struct.mlxsw_thermal** %6, align 8
  %56 = getelementptr inbounds %struct.mlxsw_thermal, %struct.mlxsw_thermal* %55, i32 0, i32 0
  %57 = load i64*, i64** %56, align 8
  %58 = load i64, i64* %11, align 8
  %59 = getelementptr inbounds i64, i64* %57, i64 %58
  store i64 %54, i64* %59, align 8
  br label %60

60:                                               ; preds = %51
  %61 = load i64, i64* %11, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %11, align 8
  br label %47

63:                                               ; preds = %47
  %64 = load i32, i32* %12, align 4
  %65 = call i32 @mlxsw_reg_mfsc_pack(i8* %27, i32 %64, i32 0)
  %66 = load %struct.mlxsw_thermal*, %struct.mlxsw_thermal** %6, align 8
  %67 = getelementptr inbounds %struct.mlxsw_thermal, %struct.mlxsw_thermal* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @mfsc, align 4
  %70 = call i32 @MLXSW_REG(i32 %69)
  %71 = call i32 @mlxsw_reg_query(i32 %68, i32 %70, i8* %27)
  store i32 %71, i32* %14, align 4
  %72 = load i32, i32* %14, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %63
  %75 = load i32, i32* %14, align 4
  store i32 %75, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %117

76:                                               ; preds = %63
  %77 = call i32 @mlxsw_reg_mfsc_pwm_duty_cycle_get(i8* %27)
  store i32 %77, i32* %13, align 4
  %78 = load i32, i32* %13, align 4
  %79 = call i64 @mlxsw_duty_to_state(i32 %78)
  store i64 %79, i64* %10, align 8
  %80 = load i64, i64* %5, align 8
  %81 = load i64, i64* %10, align 8
  %82 = icmp ult i64 %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %76
  store i32 0, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %117

84:                                               ; preds = %76
  %85 = load i64, i64* %10, align 8
  store i64 %85, i64* %5, align 8
  br label %86

86:                                               ; preds = %84, %39, %35
  %87 = load i64, i64* %5, align 8
  %88 = load i64, i64* @MLXSW_THERMAL_MAX_STATE, align 8
  %89 = icmp ugt i64 %87, %88
  br i1 %89, label %90, label %93

90:                                               ; preds = %86
  %91 = load i32, i32* @EINVAL, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %117

93:                                               ; preds = %86
  %94 = load %struct.mlxsw_thermal*, %struct.mlxsw_thermal** %6, align 8
  %95 = getelementptr inbounds %struct.mlxsw_thermal, %struct.mlxsw_thermal* %94, i32 0, i32 0
  %96 = load i64*, i64** %95, align 8
  %97 = load i64, i64* %5, align 8
  %98 = getelementptr inbounds i64, i64* %96, i64 %97
  %99 = load i64, i64* %98, align 8
  store i64 %99, i64* %5, align 8
  %100 = load i32, i32* %12, align 4
  %101 = load i64, i64* %5, align 8
  %102 = call i32 @mlxsw_state_to_duty(i64 %101)
  %103 = call i32 @mlxsw_reg_mfsc_pack(i8* %27, i32 %100, i32 %102)
  %104 = load %struct.mlxsw_thermal*, %struct.mlxsw_thermal** %6, align 8
  %105 = getelementptr inbounds %struct.mlxsw_thermal, %struct.mlxsw_thermal* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @mfsc, align 4
  %108 = call i32 @MLXSW_REG(i32 %107)
  %109 = call i32 @mlxsw_reg_write(i32 %106, i32 %108, i8* %27)
  store i32 %109, i32* %14, align 4
  %110 = load i32, i32* %14, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %93
  %113 = load %struct.device*, %struct.device** %7, align 8
  %114 = call i32 @dev_err(%struct.device* %113, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %115 = load i32, i32* %14, align 4
  store i32 %115, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %117

116:                                              ; preds = %93
  store i32 0, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %117

117:                                              ; preds = %116, %112, %90, %83, %74, %33
  %118 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %118)
  %119 = load i32, i32* %3, align 4
  ret i32 %119
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @mlxsw_get_cooling_device_idx(%struct.mlxsw_thermal*, %struct.thermal_cooling_device*) #2

declare dso_local i64 @max(i64, i64) #2

declare dso_local i32 @mlxsw_reg_mfsc_pack(i8*, i32, i32) #2

declare dso_local i32 @mlxsw_reg_query(i32, i32, i8*) #2

declare dso_local i32 @MLXSW_REG(i32) #2

declare dso_local i32 @mlxsw_reg_mfsc_pwm_duty_cycle_get(i8*) #2

declare dso_local i64 @mlxsw_duty_to_state(i32) #2

declare dso_local i32 @mlxsw_state_to_duty(i64) #2

declare dso_local i32 @mlxsw_reg_write(i32, i32, i8*) #2

declare dso_local i32 @dev_err(%struct.device*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
