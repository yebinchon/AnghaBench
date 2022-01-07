; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core_thermal.c_mlxsw_get_cooling_device_idx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core_thermal.c_mlxsw_get_cooling_device_idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_thermal = type { %struct.thermal_cooling_device** }
%struct.thermal_cooling_device = type { i32 }

@MLXSW_MFCR_PWMS_MAX = common dso_local global i32 0, align 4
@mlxsw_thermal_external_allowed_cdev = common dso_local global i32* null, align 8
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_thermal*, %struct.thermal_cooling_device*)* @mlxsw_get_cooling_device_idx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_get_cooling_device_idx(%struct.mlxsw_thermal* %0, %struct.thermal_cooling_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlxsw_thermal*, align 8
  %5 = alloca %struct.thermal_cooling_device*, align 8
  %6 = alloca i32, align 4
  store %struct.mlxsw_thermal* %0, %struct.mlxsw_thermal** %4, align 8
  store %struct.thermal_cooling_device* %1, %struct.thermal_cooling_device** %5, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %24, %2
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* @MLXSW_MFCR_PWMS_MAX, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %27

11:                                               ; preds = %7
  %12 = load %struct.mlxsw_thermal*, %struct.mlxsw_thermal** %4, align 8
  %13 = getelementptr inbounds %struct.mlxsw_thermal, %struct.mlxsw_thermal* %12, i32 0, i32 0
  %14 = load %struct.thermal_cooling_device**, %struct.thermal_cooling_device*** %13, align 8
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %14, i64 %16
  %18 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %17, align 8
  %19 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %5, align 8
  %20 = icmp eq %struct.thermal_cooling_device* %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %11
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* %3, align 4
  br label %52

23:                                               ; preds = %11
  br label %24

24:                                               ; preds = %23
  %25 = load i32, i32* %6, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %6, align 4
  br label %7

27:                                               ; preds = %7
  store i32 0, i32* %6, align 4
  br label %28

28:                                               ; preds = %46, %27
  %29 = load i32, i32* %6, align 4
  %30 = load i32*, i32** @mlxsw_thermal_external_allowed_cdev, align 8
  %31 = call i32 @ARRAY_SIZE(i32* %30)
  %32 = icmp slt i32 %29, %31
  br i1 %32, label %33, label %49

33:                                               ; preds = %28
  %34 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %5, align 8
  %35 = getelementptr inbounds %struct.thermal_cooling_device, %struct.thermal_cooling_device* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32*, i32** @mlxsw_thermal_external_allowed_cdev, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @strnstr(i32 %36, i32 %41, i32 4)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %33
  store i32 0, i32* %3, align 4
  br label %52

45:                                               ; preds = %33
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %6, align 4
  br label %28

49:                                               ; preds = %28
  %50 = load i32, i32* @ENODEV, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %49, %44, %21
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i64 @strnstr(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
