; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_ethtool.c_mlx4_en_get_module_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_ethtool.c_mlx4_en_get_module_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_modinfo = type { i8*, i8* }
%struct.mlx4_en_priv = type { i32, %struct.mlx4_en_dev* }
%struct.mlx4_en_dev = type { i32 }

@EIO = common dso_local global i32 0, align 4
@ETH_MODULE_SFF_8436 = common dso_local global i8* null, align 8
@ETH_MODULE_SFF_8436_LEN = common dso_local global i8* null, align 8
@ETH_MODULE_SFF_8636 = common dso_local global i8* null, align 8
@ETH_MODULE_SFF_8636_LEN = common dso_local global i8* null, align 8
@ETH_MODULE_SFF_8472 = common dso_local global i8* null, align 8
@MLX4_EEPROM_PAGE_LEN = common dso_local global i8* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_modinfo*)* @mlx4_en_get_module_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_en_get_module_info(%struct.net_device* %0, %struct.ethtool_modinfo* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_modinfo*, align 8
  %6 = alloca %struct.mlx4_en_priv*, align 8
  %7 = alloca %struct.mlx4_en_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [4 x i32], align 16
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_modinfo* %1, %struct.ethtool_modinfo** %5, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.mlx4_en_priv* @netdev_priv(%struct.net_device* %10)
  store %struct.mlx4_en_priv* %11, %struct.mlx4_en_priv** %6, align 8
  %12 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %13 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %12, i32 0, i32 1
  %14 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %13, align 8
  store %struct.mlx4_en_dev* %14, %struct.mlx4_en_dev** %7, align 8
  %15 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %7, align 8
  %16 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %19 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %22 = call i32 @mlx4_get_module_info(i32 %17, i32 %20, i32 0, i32 2, i32* %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp slt i32 %23, 2
  br i1 %24, label %25, label %28

25:                                               ; preds = %2
  %26 = load i32, i32* @EIO, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %75

28:                                               ; preds = %2
  %29 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %30 = load i32, i32* %29, align 16
  switch i32 %30, label %71 [
    i32 131, label %31
    i32 129, label %38
    i32 130, label %57
    i32 128, label %64
  ]

31:                                               ; preds = %28
  %32 = load i8*, i8** @ETH_MODULE_SFF_8436, align 8
  %33 = load %struct.ethtool_modinfo*, %struct.ethtool_modinfo** %5, align 8
  %34 = getelementptr inbounds %struct.ethtool_modinfo, %struct.ethtool_modinfo* %33, i32 0, i32 1
  store i8* %32, i8** %34, align 8
  %35 = load i8*, i8** @ETH_MODULE_SFF_8436_LEN, align 8
  %36 = load %struct.ethtool_modinfo*, %struct.ethtool_modinfo** %5, align 8
  %37 = getelementptr inbounds %struct.ethtool_modinfo, %struct.ethtool_modinfo* %36, i32 0, i32 0
  store i8* %35, i8** %37, align 8
  br label %74

38:                                               ; preds = %28
  %39 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp sge i32 %40, 3
  br i1 %41, label %42, label %49

42:                                               ; preds = %38
  %43 = load i8*, i8** @ETH_MODULE_SFF_8636, align 8
  %44 = load %struct.ethtool_modinfo*, %struct.ethtool_modinfo** %5, align 8
  %45 = getelementptr inbounds %struct.ethtool_modinfo, %struct.ethtool_modinfo* %44, i32 0, i32 1
  store i8* %43, i8** %45, align 8
  %46 = load i8*, i8** @ETH_MODULE_SFF_8636_LEN, align 8
  %47 = load %struct.ethtool_modinfo*, %struct.ethtool_modinfo** %5, align 8
  %48 = getelementptr inbounds %struct.ethtool_modinfo, %struct.ethtool_modinfo* %47, i32 0, i32 0
  store i8* %46, i8** %48, align 8
  br label %56

49:                                               ; preds = %38
  %50 = load i8*, i8** @ETH_MODULE_SFF_8436, align 8
  %51 = load %struct.ethtool_modinfo*, %struct.ethtool_modinfo** %5, align 8
  %52 = getelementptr inbounds %struct.ethtool_modinfo, %struct.ethtool_modinfo* %51, i32 0, i32 1
  store i8* %50, i8** %52, align 8
  %53 = load i8*, i8** @ETH_MODULE_SFF_8436_LEN, align 8
  %54 = load %struct.ethtool_modinfo*, %struct.ethtool_modinfo** %5, align 8
  %55 = getelementptr inbounds %struct.ethtool_modinfo, %struct.ethtool_modinfo* %54, i32 0, i32 0
  store i8* %53, i8** %55, align 8
  br label %56

56:                                               ; preds = %49, %42
  br label %74

57:                                               ; preds = %28
  %58 = load i8*, i8** @ETH_MODULE_SFF_8636, align 8
  %59 = load %struct.ethtool_modinfo*, %struct.ethtool_modinfo** %5, align 8
  %60 = getelementptr inbounds %struct.ethtool_modinfo, %struct.ethtool_modinfo* %59, i32 0, i32 1
  store i8* %58, i8** %60, align 8
  %61 = load i8*, i8** @ETH_MODULE_SFF_8636_LEN, align 8
  %62 = load %struct.ethtool_modinfo*, %struct.ethtool_modinfo** %5, align 8
  %63 = getelementptr inbounds %struct.ethtool_modinfo, %struct.ethtool_modinfo* %62, i32 0, i32 0
  store i8* %61, i8** %63, align 8
  br label %74

64:                                               ; preds = %28
  %65 = load i8*, i8** @ETH_MODULE_SFF_8472, align 8
  %66 = load %struct.ethtool_modinfo*, %struct.ethtool_modinfo** %5, align 8
  %67 = getelementptr inbounds %struct.ethtool_modinfo, %struct.ethtool_modinfo* %66, i32 0, i32 1
  store i8* %65, i8** %67, align 8
  %68 = load i8*, i8** @MLX4_EEPROM_PAGE_LEN, align 8
  %69 = load %struct.ethtool_modinfo*, %struct.ethtool_modinfo** %5, align 8
  %70 = getelementptr inbounds %struct.ethtool_modinfo, %struct.ethtool_modinfo* %69, i32 0, i32 0
  store i8* %68, i8** %70, align 8
  br label %74

71:                                               ; preds = %28
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %3, align 4
  br label %75

74:                                               ; preds = %64, %57, %56, %31
  store i32 0, i32* %3, align 4
  br label %75

75:                                               ; preds = %74, %71, %25
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local %struct.mlx4_en_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @mlx4_get_module_info(i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
