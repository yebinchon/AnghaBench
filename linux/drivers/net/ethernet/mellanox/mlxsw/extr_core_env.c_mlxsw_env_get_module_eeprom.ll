; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core_env.c_mlxsw_env_get_module_eeprom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core_env.c_mlxsw_env_get_module_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.mlxsw_core = type { i32 }
%struct.ethtool_eeprom = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Eeprom query failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlxsw_env_get_module_eeprom(%struct.net_device* %0, %struct.mlxsw_core* %1, i32 %2, %struct.ethtool_eeprom* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.mlxsw_core*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ethtool_eeprom*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %7, align 8
  store %struct.mlxsw_core* %1, %struct.mlxsw_core** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.ethtool_eeprom* %3, %struct.ethtool_eeprom** %10, align 8
  store i32* %4, i32** %11, align 8
  %16 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %10, align 8
  %17 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %12, align 4
  store i32 0, i32* %14, align 4
  %19 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %10, align 8
  %20 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %5
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %6, align 4
  br label %66

26:                                               ; preds = %5
  %27 = load i32*, i32** %11, align 8
  %28 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %10, align 8
  %29 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @memset(i32* %27, i32 0, i32 %30)
  br label %32

32:                                               ; preds = %58, %26
  %33 = load i32, i32* %14, align 4
  %34 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %10, align 8
  %35 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %65

38:                                               ; preds = %32
  %39 = load %struct.mlxsw_core*, %struct.mlxsw_core** %8, align 8
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %12, align 4
  %42 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %10, align 8
  %43 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %14, align 4
  %46 = sub nsw i32 %44, %45
  %47 = load i32*, i32** %11, align 8
  %48 = load i32, i32* %14, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = call i32 @mlxsw_env_query_module_eeprom(%struct.mlxsw_core* %39, i32 %40, i32 %41, i32 %46, i32* %50, i32* %13)
  store i32 %51, i32* %15, align 4
  %52 = load i32, i32* %15, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %38
  %55 = load %struct.net_device*, %struct.net_device** %7, align 8
  %56 = call i32 @netdev_err(%struct.net_device* %55, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %57 = load i32, i32* %15, align 4
  store i32 %57, i32* %6, align 4
  br label %66

58:                                               ; preds = %38
  %59 = load i32, i32* %13, align 4
  %60 = load i32, i32* %14, align 4
  %61 = add i32 %60, %59
  store i32 %61, i32* %14, align 4
  %62 = load i32, i32* %13, align 4
  %63 = load i32, i32* %12, align 4
  %64 = add i32 %63, %62
  store i32 %64, i32* %12, align 4
  br label %32

65:                                               ; preds = %32
  store i32 0, i32* %6, align 4
  br label %66

66:                                               ; preds = %65, %54, %23
  %67 = load i32, i32* %6, align 4
  ret i32 %67
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @mlxsw_env_query_module_eeprom(%struct.mlxsw_core*, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
