; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core_thermal.c_mlxsw_thermal_gearbox_tz_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core_thermal.c_mlxsw_thermal_gearbox_tz_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_thermal_module = type { i32, i32, i32 }

@MLXSW_THERMAL_ZONE_MAX_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"mlxsw-gearbox%d\00", align 1
@MLXSW_THERMAL_NUM_TRIPS = common dso_local global i32 0, align 4
@MLXSW_THERMAL_TRIP_MASK = common dso_local global i32 0, align 4
@mlxsw_thermal_gearbox_ops = common dso_local global i32 0, align 4
@THERMAL_DEVICE_ENABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_thermal_module*)* @mlxsw_thermal_gearbox_tz_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_thermal_gearbox_tz_init(%struct.mlxsw_thermal_module* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlxsw_thermal_module*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.mlxsw_thermal_module* %0, %struct.mlxsw_thermal_module** %3, align 8
  %7 = load i32, i32* @MLXSW_THERMAL_ZONE_MAX_NAME, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %4, align 8
  %10 = alloca i8, i64 %8, align 16
  store i64 %8, i64* %5, align 8
  %11 = trunc i64 %8 to i32
  %12 = load %struct.mlxsw_thermal_module*, %struct.mlxsw_thermal_module** %3, align 8
  %13 = getelementptr inbounds %struct.mlxsw_thermal_module, %struct.mlxsw_thermal_module* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = add nsw i32 %14, 1
  %16 = call i32 @snprintf(i8* %10, i32 %11, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* @MLXSW_THERMAL_NUM_TRIPS, align 4
  %18 = load i32, i32* @MLXSW_THERMAL_TRIP_MASK, align 4
  %19 = load %struct.mlxsw_thermal_module*, %struct.mlxsw_thermal_module** %3, align 8
  %20 = call i32 @thermal_zone_device_register(i8* %10, i32 %17, i32 %18, %struct.mlxsw_thermal_module* %19, i32* @mlxsw_thermal_gearbox_ops, i32* null, i32 0, i32 0)
  %21 = load %struct.mlxsw_thermal_module*, %struct.mlxsw_thermal_module** %3, align 8
  %22 = getelementptr inbounds %struct.mlxsw_thermal_module, %struct.mlxsw_thermal_module* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 4
  %23 = load %struct.mlxsw_thermal_module*, %struct.mlxsw_thermal_module** %3, align 8
  %24 = getelementptr inbounds %struct.mlxsw_thermal_module, %struct.mlxsw_thermal_module* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @IS_ERR(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %1
  %29 = load %struct.mlxsw_thermal_module*, %struct.mlxsw_thermal_module** %3, align 8
  %30 = getelementptr inbounds %struct.mlxsw_thermal_module, %struct.mlxsw_thermal_module* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @PTR_ERR(i32 %31)
  store i32 %32, i32* %2, align 4
  store i32 1, i32* %6, align 4
  br label %37

33:                                               ; preds = %1
  %34 = load i32, i32* @THERMAL_DEVICE_ENABLED, align 4
  %35 = load %struct.mlxsw_thermal_module*, %struct.mlxsw_thermal_module** %3, align 8
  %36 = getelementptr inbounds %struct.mlxsw_thermal_module, %struct.mlxsw_thermal_module* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  store i32 0, i32* %2, align 4
  store i32 1, i32* %6, align 4
  br label %37

37:                                               ; preds = %33, %28
  %38 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %38)
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #2

declare dso_local i32 @thermal_zone_device_register(i8*, i32, i32, %struct.mlxsw_thermal_module*, i32*, i32*, i32, i32) #2

declare dso_local i64 @IS_ERR(i32) #2

declare dso_local i32 @PTR_ERR(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
