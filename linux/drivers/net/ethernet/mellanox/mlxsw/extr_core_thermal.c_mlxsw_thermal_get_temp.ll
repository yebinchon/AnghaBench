; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core_thermal.c_mlxsw_thermal_get_temp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core_thermal.c_mlxsw_thermal_get_temp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thermal_zone_device = type { %struct.mlxsw_thermal* }
%struct.mlxsw_thermal = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device* }
%struct.device = type { i32 }

@MLXSW_REG_MTMP_LEN = common dso_local global i32 0, align 4
@mtmp = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Failed to query temp sensor\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thermal_zone_device*, i32*)* @mlxsw_thermal_get_temp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_thermal_get_temp(%struct.thermal_zone_device* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thermal_zone_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.mlxsw_thermal*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.thermal_zone_device* %0, %struct.thermal_zone_device** %4, align 8
  store i32* %1, i32** %5, align 8
  %13 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %4, align 8
  %14 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %13, i32 0, i32 0
  %15 = load %struct.mlxsw_thermal*, %struct.mlxsw_thermal** %14, align 8
  store %struct.mlxsw_thermal* %15, %struct.mlxsw_thermal** %6, align 8
  %16 = load %struct.mlxsw_thermal*, %struct.mlxsw_thermal** %6, align 8
  %17 = getelementptr inbounds %struct.mlxsw_thermal, %struct.mlxsw_thermal* %16, i32 0, i32 2
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.device*, %struct.device** %19, align 8
  store %struct.device* %20, %struct.device** %7, align 8
  %21 = load i32, i32* @MLXSW_REG_MTMP_LEN, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %8, align 8
  %24 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %9, align 8
  %25 = call i32 @mlxsw_reg_mtmp_pack(i8* %24, i32 0, i32 0, i32 0)
  %26 = load %struct.mlxsw_thermal*, %struct.mlxsw_thermal** %6, align 8
  %27 = getelementptr inbounds %struct.mlxsw_thermal, %struct.mlxsw_thermal* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @mtmp, align 4
  %30 = call i32 @MLXSW_REG(i32 %29)
  %31 = call i32 @mlxsw_reg_query(i32 %28, i32 %30, i8* %24)
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %2
  %35 = load %struct.device*, %struct.device** %7, align 8
  %36 = call i32 @dev_err(%struct.device* %35, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* %11, align 4
  store i32 %37, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %53

38:                                               ; preds = %2
  %39 = call i32 @mlxsw_reg_mtmp_unpack(i8* %24, i32* %10, i32* null, i32* null)
  %40 = load i32, i32* %10, align 4
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %38
  %43 = load %struct.mlxsw_thermal*, %struct.mlxsw_thermal** %6, align 8
  %44 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %4, align 8
  %45 = load %struct.mlxsw_thermal*, %struct.mlxsw_thermal** %6, align 8
  %46 = getelementptr inbounds %struct.mlxsw_thermal, %struct.mlxsw_thermal* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %10, align 4
  %49 = call i32 @mlxsw_thermal_tz_score_update(%struct.mlxsw_thermal* %43, %struct.thermal_zone_device* %44, i32 %47, i32 %48)
  br label %50

50:                                               ; preds = %42, %38
  %51 = load i32, i32* %10, align 4
  %52 = load i32*, i32** %5, align 8
  store i32 %51, i32* %52, align 4
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %53

53:                                               ; preds = %50, %34
  %54 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %54)
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @mlxsw_reg_mtmp_pack(i8*, i32, i32, i32) #2

declare dso_local i32 @mlxsw_reg_query(i32, i32, i8*) #2

declare dso_local i32 @MLXSW_REG(i32) #2

declare dso_local i32 @dev_err(%struct.device*, i8*) #2

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
