; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_ethtool.c_mlx4_en_get_module_eeprom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_ethtool.c_mlx4_en_get_module_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_eeprom = type { i32, i32 }
%struct.mlx4_en_priv = type { i32, %struct.mlx4_en_dev* }
%struct.mlx4_en_dev = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@DRV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"mlx4_get_module_info i(%d) offset(%d) len(%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [73 x i8] c"mlx4_get_module_info i(%d) offset(%d) bytes_to_read(%d) - FAILED (0x%x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_eeprom*, i32*)* @mlx4_en_get_module_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_en_get_module_eeprom(%struct.net_device* %0, %struct.ethtool_eeprom* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ethtool_eeprom*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.mlx4_en_priv*, align 8
  %9 = alloca %struct.mlx4_en_dev*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ethtool_eeprom* %1, %struct.ethtool_eeprom** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load %struct.net_device*, %struct.net_device** %5, align 8
  %14 = call %struct.mlx4_en_priv* @netdev_priv(%struct.net_device* %13)
  store %struct.mlx4_en_priv* %14, %struct.mlx4_en_priv** %8, align 8
  %15 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %8, align 8
  %16 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %15, i32 0, i32 1
  %17 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %16, align 8
  store %struct.mlx4_en_dev* %17, %struct.mlx4_en_dev** %9, align 8
  %18 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %19 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %21 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %22 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %3
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %93

28:                                               ; preds = %3
  %29 = load i32*, i32** %7, align 8
  %30 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %31 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @memset(i32* %29, i32 0, i32 %32)
  br label %34

34:                                               ; preds = %85, %28
  %35 = load i32, i32* %11, align 4
  %36 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %37 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp slt i32 %35, %38
  br i1 %39, label %40, label %92

40:                                               ; preds = %34
  %41 = load i32, i32* @DRV, align 4
  %42 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %8, align 8
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* %10, align 4
  %45 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %46 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %11, align 4
  %49 = sub nsw i32 %47, %48
  %50 = call i32 @en_dbg(i32 %41, %struct.mlx4_en_priv* %42, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %43, i32 %44, i32 %49)
  %51 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %9, align 8
  %52 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %8, align 8
  %55 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %10, align 4
  %58 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %59 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %11, align 4
  %62 = sub nsw i32 %60, %61
  %63 = load i32*, i32** %7, align 8
  %64 = load i32, i32* %11, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = call i32 @mlx4_get_module_info(i32 %53, i32 %56, i32 %57, i32 %62, i32* %66)
  store i32 %67, i32* %12, align 4
  %68 = load i32, i32* %12, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %40
  store i32 0, i32* %4, align 4
  br label %93

71:                                               ; preds = %40
  %72 = load i32, i32* %12, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %85

74:                                               ; preds = %71
  %75 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %8, align 8
  %76 = load i32, i32* %11, align 4
  %77 = load i32, i32* %10, align 4
  %78 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %79 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %11, align 4
  %82 = sub nsw i32 %80, %81
  %83 = load i32, i32* %12, align 4
  %84 = call i32 @en_err(%struct.mlx4_en_priv* %75, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.1, i64 0, i64 0), i32 %76, i32 %77, i32 %82, i32 %83)
  store i32 0, i32* %4, align 4
  br label %93

85:                                               ; preds = %71
  %86 = load i32, i32* %12, align 4
  %87 = load i32, i32* %11, align 4
  %88 = add nsw i32 %87, %86
  store i32 %88, i32* %11, align 4
  %89 = load i32, i32* %12, align 4
  %90 = load i32, i32* %10, align 4
  %91 = add nsw i32 %90, %89
  store i32 %91, i32* %10, align 4
  br label %34

92:                                               ; preds = %34
  store i32 0, i32* %4, align 4
  br label %93

93:                                               ; preds = %92, %74, %70, %25
  %94 = load i32, i32* %4, align 4
  ret i32 %94
}

declare dso_local %struct.mlx4_en_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @en_dbg(i32, %struct.mlx4_en_priv*, i8*, i32, i32, i32) #1

declare dso_local i32 @mlx4_get_module_info(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @en_err(%struct.mlx4_en_priv*, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
