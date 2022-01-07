; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core_thermal.c_mlxsw_thermal_module_bind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core_thermal.c_mlxsw_thermal_module_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thermal_zone_device = type { %struct.mlxsw_thermal_module* }
%struct.mlxsw_thermal_module = type { %struct.mlxsw_thermal_trip*, %struct.mlxsw_thermal* }
%struct.mlxsw_thermal_trip = type { i32, i32 }
%struct.mlxsw_thermal = type { i32 }
%struct.thermal_cooling_device = type { i32 }

@MLXSW_THERMAL_NUM_TRIPS = common dso_local global i32 0, align 4
@THERMAL_WEIGHT_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thermal_zone_device*, %struct.thermal_cooling_device*)* @mlxsw_thermal_module_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_thermal_module_bind(%struct.thermal_zone_device* %0, %struct.thermal_cooling_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thermal_zone_device*, align 8
  %5 = alloca %struct.thermal_cooling_device*, align 8
  %6 = alloca %struct.mlxsw_thermal_module*, align 8
  %7 = alloca %struct.mlxsw_thermal*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.mlxsw_thermal_trip*, align 8
  store %struct.thermal_zone_device* %0, %struct.thermal_zone_device** %4, align 8
  store %struct.thermal_cooling_device* %1, %struct.thermal_cooling_device** %5, align 8
  %12 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %4, align 8
  %13 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %12, i32 0, i32 0
  %14 = load %struct.mlxsw_thermal_module*, %struct.mlxsw_thermal_module** %13, align 8
  store %struct.mlxsw_thermal_module* %14, %struct.mlxsw_thermal_module** %6, align 8
  %15 = load %struct.mlxsw_thermal_module*, %struct.mlxsw_thermal_module** %6, align 8
  %16 = getelementptr inbounds %struct.mlxsw_thermal_module, %struct.mlxsw_thermal_module* %15, i32 0, i32 1
  %17 = load %struct.mlxsw_thermal*, %struct.mlxsw_thermal** %16, align 8
  store %struct.mlxsw_thermal* %17, %struct.mlxsw_thermal** %7, align 8
  %18 = load %struct.mlxsw_thermal*, %struct.mlxsw_thermal** %7, align 8
  %19 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %5, align 8
  %20 = call i64 @mlxsw_get_cooling_device_idx(%struct.mlxsw_thermal* %18, %struct.thermal_cooling_device* %19)
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %70

23:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %24

24:                                               ; preds = %50, %23
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @MLXSW_THERMAL_NUM_TRIPS, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %53

28:                                               ; preds = %24
  %29 = load %struct.mlxsw_thermal_module*, %struct.mlxsw_thermal_module** %6, align 8
  %30 = getelementptr inbounds %struct.mlxsw_thermal_module, %struct.mlxsw_thermal_module* %29, i32 0, i32 0
  %31 = load %struct.mlxsw_thermal_trip*, %struct.mlxsw_thermal_trip** %30, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.mlxsw_thermal_trip, %struct.mlxsw_thermal_trip* %31, i64 %33
  store %struct.mlxsw_thermal_trip* %34, %struct.mlxsw_thermal_trip** %11, align 8
  %35 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %4, align 8
  %36 = load i32, i32* %8, align 4
  %37 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %5, align 8
  %38 = load %struct.mlxsw_thermal_trip*, %struct.mlxsw_thermal_trip** %11, align 8
  %39 = getelementptr inbounds %struct.mlxsw_thermal_trip, %struct.mlxsw_thermal_trip* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.mlxsw_thermal_trip*, %struct.mlxsw_thermal_trip** %11, align 8
  %42 = getelementptr inbounds %struct.mlxsw_thermal_trip, %struct.mlxsw_thermal_trip* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @THERMAL_WEIGHT_DEFAULT, align 4
  %45 = call i32 @thermal_zone_bind_cooling_device(%struct.thermal_zone_device* %35, i32 %36, %struct.thermal_cooling_device* %37, i32 %40, i32 %43, i32 %44)
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %28
  br label %54

49:                                               ; preds = %28
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %8, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %8, align 4
  br label %24

53:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %70

54:                                               ; preds = %48
  %55 = load i32, i32* %8, align 4
  %56 = sub nsw i32 %55, 1
  store i32 %56, i32* %9, align 4
  br label %57

57:                                               ; preds = %65, %54
  %58 = load i32, i32* %9, align 4
  %59 = icmp sge i32 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %57
  %61 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %4, align 8
  %62 = load i32, i32* %9, align 4
  %63 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %5, align 8
  %64 = call i32 @thermal_zone_unbind_cooling_device(%struct.thermal_zone_device* %61, i32 %62, %struct.thermal_cooling_device* %63)
  br label %65

65:                                               ; preds = %60
  %66 = load i32, i32* %9, align 4
  %67 = add nsw i32 %66, -1
  store i32 %67, i32* %9, align 4
  br label %57

68:                                               ; preds = %57
  %69 = load i32, i32* %10, align 4
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %68, %53, %22
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i64 @mlxsw_get_cooling_device_idx(%struct.mlxsw_thermal*, %struct.thermal_cooling_device*) #1

declare dso_local i32 @thermal_zone_bind_cooling_device(%struct.thermal_zone_device*, i32, %struct.thermal_cooling_device*, i32, i32, i32) #1

declare dso_local i32 @thermal_zone_unbind_cooling_device(%struct.thermal_zone_device*, i32, %struct.thermal_cooling_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
