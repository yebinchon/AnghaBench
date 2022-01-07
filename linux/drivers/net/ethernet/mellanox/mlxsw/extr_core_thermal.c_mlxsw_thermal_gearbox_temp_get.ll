; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core_thermal.c_mlxsw_thermal_gearbox_temp_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core_thermal.c_mlxsw_thermal_gearbox_temp_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thermal_zone_device = type { %struct.mlxsw_thermal_module* }
%struct.mlxsw_thermal_module = type { i32, i64, %struct.mlxsw_thermal* }
%struct.mlxsw_thermal = type { i32 }

@MLXSW_REG_MTMP_LEN = common dso_local global i32 0, align 4
@MLXSW_REG_MTMP_GBOX_INDEX_MIN = common dso_local global i64 0, align 8
@mtmp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thermal_zone_device*, i32*)* @mlxsw_thermal_gearbox_temp_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_thermal_gearbox_temp_get(%struct.thermal_zone_device* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thermal_zone_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.mlxsw_thermal_module*, align 8
  %7 = alloca %struct.mlxsw_thermal*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
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
  %20 = load i32, i32* @MLXSW_REG_MTMP_LEN, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %8, align 8
  %23 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %9, align 8
  %24 = load i64, i64* @MLXSW_REG_MTMP_GBOX_INDEX_MIN, align 8
  %25 = load %struct.mlxsw_thermal_module*, %struct.mlxsw_thermal_module** %6, align 8
  %26 = getelementptr inbounds %struct.mlxsw_thermal_module, %struct.mlxsw_thermal_module* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %24, %27
  store i64 %28, i64* %10, align 8
  %29 = load i64, i64* %10, align 8
  %30 = call i32 @mlxsw_reg_mtmp_pack(i8* %23, i64 %29, i32 0, i32 0)
  %31 = load %struct.mlxsw_thermal*, %struct.mlxsw_thermal** %7, align 8
  %32 = getelementptr inbounds %struct.mlxsw_thermal, %struct.mlxsw_thermal* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @mtmp, align 4
  %35 = call i32 @MLXSW_REG(i32 %34)
  %36 = call i32 @mlxsw_reg_query(i32 %33, i32 %35, i8* %23)
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %12, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %2
  %40 = load i32, i32* %12, align 4
  store i32 %40, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %56

41:                                               ; preds = %2
  %42 = call i32 @mlxsw_reg_mtmp_unpack(i8* %23, i32* %11, i32* null, i32* null)
  %43 = load i32, i32* %11, align 4
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %41
  %46 = load %struct.mlxsw_thermal*, %struct.mlxsw_thermal** %7, align 8
  %47 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %4, align 8
  %48 = load %struct.mlxsw_thermal_module*, %struct.mlxsw_thermal_module** %6, align 8
  %49 = getelementptr inbounds %struct.mlxsw_thermal_module, %struct.mlxsw_thermal_module* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %11, align 4
  %52 = call i32 @mlxsw_thermal_tz_score_update(%struct.mlxsw_thermal* %46, %struct.thermal_zone_device* %47, i32 %50, i32 %51)
  br label %53

53:                                               ; preds = %45, %41
  %54 = load i32, i32* %11, align 4
  %55 = load i32*, i32** %5, align 8
  store i32 %54, i32* %55, align 4
  store i32 0, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %56

56:                                               ; preds = %53, %39
  %57 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %57)
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @mlxsw_reg_mtmp_pack(i8*, i64, i32, i32) #2

declare dso_local i32 @mlxsw_reg_query(i32, i32, i8*) #2

declare dso_local i32 @MLXSW_REG(i32) #2

declare dso_local i32 @mlxsw_reg_mtmp_unpack(i8*, i32*, i32*, i32*) #2

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
