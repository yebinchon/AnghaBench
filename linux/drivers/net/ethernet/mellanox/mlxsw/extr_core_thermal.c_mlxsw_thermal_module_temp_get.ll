; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core_thermal.c_mlxsw_thermal_module_temp_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core_thermal.c_mlxsw_thermal_module_temp_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thermal_zone_device = type { %struct.mlxsw_thermal_module* }
%struct.mlxsw_thermal_module = type { i32, i64, %struct.mlxsw_thermal* }
%struct.mlxsw_thermal = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device* }
%struct.device = type { i32 }

@MLXSW_REG_MTMP_LEN = common dso_local global i32 0, align 4
@MLXSW_REG_MTMP_MODULE_INDEX_MIN = common dso_local global i64 0, align 8
@mtmp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thermal_zone_device*, i32*)* @mlxsw_thermal_module_temp_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_thermal_module_temp_get(%struct.thermal_zone_device* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thermal_zone_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.mlxsw_thermal_module*, align 8
  %7 = alloca %struct.mlxsw_thermal*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.thermal_zone_device* %0, %struct.thermal_zone_device** %4, align 8
  store i32* %1, i32** %5, align 8
  %14 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %4, align 8
  %15 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %14, i32 0, i32 0
  %16 = load %struct.mlxsw_thermal_module*, %struct.mlxsw_thermal_module** %15, align 8
  store %struct.mlxsw_thermal_module* %16, %struct.mlxsw_thermal_module** %6, align 8
  %17 = load %struct.mlxsw_thermal_module*, %struct.mlxsw_thermal_module** %6, align 8
  %18 = getelementptr inbounds %struct.mlxsw_thermal_module, %struct.mlxsw_thermal_module* %17, i32 0, i32 2
  %19 = load %struct.mlxsw_thermal*, %struct.mlxsw_thermal** %18, align 8
  store %struct.mlxsw_thermal* %19, %struct.mlxsw_thermal** %7, align 8
  %20 = load %struct.mlxsw_thermal*, %struct.mlxsw_thermal** %7, align 8
  %21 = getelementptr inbounds %struct.mlxsw_thermal, %struct.mlxsw_thermal* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load %struct.device*, %struct.device** %23, align 8
  store %struct.device* %24, %struct.device** %8, align 8
  %25 = load i32, i32* @MLXSW_REG_MTMP_LEN, align 4
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %9, align 8
  %28 = alloca i8, i64 %26, align 16
  store i64 %26, i64* %10, align 8
  %29 = load i64, i64* @MLXSW_REG_MTMP_MODULE_INDEX_MIN, align 8
  %30 = load %struct.mlxsw_thermal_module*, %struct.mlxsw_thermal_module** %6, align 8
  %31 = getelementptr inbounds %struct.mlxsw_thermal_module, %struct.mlxsw_thermal_module* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %29, %32
  %34 = call i32 @mlxsw_reg_mtmp_pack(i8* %28, i64 %33, i32 0, i32 0)
  %35 = load %struct.mlxsw_thermal*, %struct.mlxsw_thermal** %7, align 8
  %36 = getelementptr inbounds %struct.mlxsw_thermal, %struct.mlxsw_thermal* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @mtmp, align 4
  %39 = call i32 @MLXSW_REG(i32 %38)
  %40 = call i32 @mlxsw_reg_query(i32 %37, i32 %39, i8* %28)
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %12, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %2
  store i32 0, i32* %11, align 4
  %44 = load i32, i32* %11, align 4
  %45 = load i32*, i32** %5, align 8
  store i32 %44, i32* %45, align 4
  store i32 0, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %74

46:                                               ; preds = %2
  %47 = call i32 @mlxsw_reg_mtmp_unpack(i8* %28, i32* %11, i32* null, i32* null)
  %48 = load i32, i32* %11, align 4
  %49 = load i32*, i32** %5, align 8
  store i32 %48, i32* %49, align 4
  %50 = load i32, i32* %11, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %46
  store i32 0, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %74

53:                                               ; preds = %46
  %54 = load %struct.device*, %struct.device** %8, align 8
  %55 = load %struct.mlxsw_thermal*, %struct.mlxsw_thermal** %7, align 8
  %56 = getelementptr inbounds %struct.mlxsw_thermal, %struct.mlxsw_thermal* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.mlxsw_thermal_module*, %struct.mlxsw_thermal_module** %6, align 8
  %59 = call i32 @mlxsw_thermal_module_trips_update(%struct.device* %54, i32 %57, %struct.mlxsw_thermal_module* %58)
  store i32 %59, i32* %12, align 4
  %60 = load i32, i32* %12, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %73, label %62

62:                                               ; preds = %53
  %63 = load i32, i32* %11, align 4
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %62
  %66 = load %struct.mlxsw_thermal*, %struct.mlxsw_thermal** %7, align 8
  %67 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %4, align 8
  %68 = load %struct.mlxsw_thermal_module*, %struct.mlxsw_thermal_module** %6, align 8
  %69 = getelementptr inbounds %struct.mlxsw_thermal_module, %struct.mlxsw_thermal_module* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* %11, align 4
  %72 = call i32 @mlxsw_thermal_tz_score_update(%struct.mlxsw_thermal* %66, %struct.thermal_zone_device* %67, i32 %70, i32 %71)
  br label %73

73:                                               ; preds = %65, %62, %53
  store i32 0, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %74

74:                                               ; preds = %73, %52, %43
  %75 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %75)
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @mlxsw_reg_mtmp_pack(i8*, i64, i32, i32) #2

declare dso_local i32 @mlxsw_reg_query(i32, i32, i8*) #2

declare dso_local i32 @MLXSW_REG(i32) #2

declare dso_local i32 @mlxsw_reg_mtmp_unpack(i8*, i32*, i32*, i32*) #2

declare dso_local i32 @mlxsw_thermal_module_trips_update(%struct.device*, i32, %struct.mlxsw_thermal_module*) #2

declare dso_local i32 @mlxsw_thermal_tz_score_update(%struct.mlxsw_thermal*, %struct.thermal_zone_device*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
