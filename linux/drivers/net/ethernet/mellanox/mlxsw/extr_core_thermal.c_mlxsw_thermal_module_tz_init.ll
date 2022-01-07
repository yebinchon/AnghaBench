; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core_thermal.c_mlxsw_thermal_module_tz_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core_thermal.c_mlxsw_thermal_module_tz_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_thermal_module = type { i32, i32, i32 }

@MLXSW_THERMAL_ZONE_MAX_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"mlxsw-module%d\00", align 1
@MLXSW_THERMAL_NUM_TRIPS = common dso_local global i32 0, align 4
@MLXSW_THERMAL_TRIP_MASK = common dso_local global i32 0, align 4
@mlxsw_thermal_module_ops = common dso_local global i32 0, align 4
@THERMAL_DEVICE_ENABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_thermal_module*)* @mlxsw_thermal_module_tz_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_thermal_module_tz_init(%struct.mlxsw_thermal_module* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlxsw_thermal_module*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mlxsw_thermal_module* %0, %struct.mlxsw_thermal_module** %3, align 8
  %8 = load i32, i32* @MLXSW_THERMAL_ZONE_MAX_NAME, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %4, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %5, align 8
  %12 = trunc i64 %9 to i32
  %13 = load %struct.mlxsw_thermal_module*, %struct.mlxsw_thermal_module** %3, align 8
  %14 = getelementptr inbounds %struct.mlxsw_thermal_module, %struct.mlxsw_thermal_module* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = add nsw i32 %15, 1
  %17 = call i32 @snprintf(i8* %11, i32 %12, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* @MLXSW_THERMAL_NUM_TRIPS, align 4
  %19 = load i32, i32* @MLXSW_THERMAL_TRIP_MASK, align 4
  %20 = load %struct.mlxsw_thermal_module*, %struct.mlxsw_thermal_module** %3, align 8
  %21 = call i32 @thermal_zone_device_register(i8* %11, i32 %18, i32 %19, %struct.mlxsw_thermal_module* %20, i32* @mlxsw_thermal_module_ops, i32* null, i32 0, i32 0)
  %22 = load %struct.mlxsw_thermal_module*, %struct.mlxsw_thermal_module** %3, align 8
  %23 = getelementptr inbounds %struct.mlxsw_thermal_module, %struct.mlxsw_thermal_module* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 4
  %24 = load %struct.mlxsw_thermal_module*, %struct.mlxsw_thermal_module** %3, align 8
  %25 = getelementptr inbounds %struct.mlxsw_thermal_module, %struct.mlxsw_thermal_module* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @IS_ERR(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %1
  %30 = load %struct.mlxsw_thermal_module*, %struct.mlxsw_thermal_module** %3, align 8
  %31 = getelementptr inbounds %struct.mlxsw_thermal_module, %struct.mlxsw_thermal_module* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @PTR_ERR(i32 %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  store i32 %34, i32* %2, align 4
  store i32 1, i32* %7, align 4
  br label %39

35:                                               ; preds = %1
  %36 = load i32, i32* @THERMAL_DEVICE_ENABLED, align 4
  %37 = load %struct.mlxsw_thermal_module*, %struct.mlxsw_thermal_module** %3, align 8
  %38 = getelementptr inbounds %struct.mlxsw_thermal_module, %struct.mlxsw_thermal_module* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  store i32 0, i32* %2, align 4
  store i32 1, i32* %7, align 4
  br label %39

39:                                               ; preds = %35, %29
  %40 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %40)
  %41 = load i32, i32* %2, align 4
  ret i32 %41
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
