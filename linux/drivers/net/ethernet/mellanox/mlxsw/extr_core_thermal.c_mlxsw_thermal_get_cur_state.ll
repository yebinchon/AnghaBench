; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core_thermal.c_mlxsw_thermal_get_cur_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core_thermal.c_mlxsw_thermal_get_cur_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thermal_cooling_device = type { %struct.mlxsw_thermal* }
%struct.mlxsw_thermal = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device* }
%struct.device = type { i32 }

@MLXSW_REG_MFSC_LEN = common dso_local global i32 0, align 4
@mfsc = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Failed to query PWM duty\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thermal_cooling_device*, i64*)* @mlxsw_thermal_get_cur_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_thermal_get_cur_state(%struct.thermal_cooling_device* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thermal_cooling_device*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.mlxsw_thermal*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.thermal_cooling_device* %0, %struct.thermal_cooling_device** %4, align 8
  store i64* %1, i64** %5, align 8
  %14 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %4, align 8
  %15 = getelementptr inbounds %struct.thermal_cooling_device, %struct.thermal_cooling_device* %14, i32 0, i32 0
  %16 = load %struct.mlxsw_thermal*, %struct.mlxsw_thermal** %15, align 8
  store %struct.mlxsw_thermal* %16, %struct.mlxsw_thermal** %6, align 8
  %17 = load %struct.mlxsw_thermal*, %struct.mlxsw_thermal** %6, align 8
  %18 = getelementptr inbounds %struct.mlxsw_thermal, %struct.mlxsw_thermal* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load %struct.device*, %struct.device** %20, align 8
  store %struct.device* %21, %struct.device** %7, align 8
  %22 = load i32, i32* @MLXSW_REG_MFSC_LEN, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %8, align 8
  %25 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %9, align 8
  %26 = load %struct.mlxsw_thermal*, %struct.mlxsw_thermal** %6, align 8
  %27 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %4, align 8
  %28 = call i32 @mlxsw_get_cooling_device_idx(%struct.mlxsw_thermal* %26, %struct.thermal_cooling_device* %27)
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %2
  %32 = load i32, i32* %11, align 4
  store i32 %32, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %53

33:                                               ; preds = %2
  %34 = load i32, i32* %11, align 4
  %35 = call i32 @mlxsw_reg_mfsc_pack(i8* %25, i32 %34, i32 0)
  %36 = load %struct.mlxsw_thermal*, %struct.mlxsw_thermal** %6, align 8
  %37 = getelementptr inbounds %struct.mlxsw_thermal, %struct.mlxsw_thermal* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @mfsc, align 4
  %40 = call i32 @MLXSW_REG(i32 %39)
  %41 = call i32 @mlxsw_reg_query(i32 %38, i32 %40, i8* %25)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %33
  %45 = load %struct.device*, %struct.device** %7, align 8
  %46 = call i32 @dev_err(%struct.device* %45, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %47 = load i32, i32* %10, align 4
  store i32 %47, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %53

48:                                               ; preds = %33
  %49 = call i32 @mlxsw_reg_mfsc_pwm_duty_cycle_get(i8* %25)
  store i32 %49, i32* %12, align 4
  %50 = load i32, i32* %12, align 4
  %51 = call i64 @mlxsw_duty_to_state(i32 %50)
  %52 = load i64*, i64** %5, align 8
  store i64 %51, i64* %52, align 8
  store i32 0, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %53

53:                                               ; preds = %48, %44, %31
  %54 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %54)
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @mlxsw_get_cooling_device_idx(%struct.mlxsw_thermal*, %struct.thermal_cooling_device*) #2

declare dso_local i32 @mlxsw_reg_mfsc_pack(i8*, i32, i32) #2

declare dso_local i32 @mlxsw_reg_query(i32, i32, i8*) #2

declare dso_local i32 @MLXSW_REG(i32) #2

declare dso_local i32 @dev_err(%struct.device*, i8*) #2

declare dso_local i32 @mlxsw_reg_mfsc_pwm_duty_cycle_get(i8*) #2

declare dso_local i64 @mlxsw_duty_to_state(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
