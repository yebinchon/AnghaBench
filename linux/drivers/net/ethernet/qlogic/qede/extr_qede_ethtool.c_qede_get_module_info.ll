; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_ethtool.c_qede_get_module_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_ethtool.c_qede_get_module_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_modinfo = type { i32, i32 }
%struct.qede_dev = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (i32, i32*, i32, i32, i32)* }

@QED_I2C_DEV_ADDR_A0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Failed reading EEPROM data %d\0A\00", align 1
@ETH_MODULE_SFF_8472 = common dso_local global i32 0, align 4
@ETH_MODULE_SFF_8472_LEN = common dso_local global i32 0, align 4
@ETH_MODULE_SFF_8436 = common dso_local global i32 0, align 4
@ETH_MODULE_SFF_8436_LEN = common dso_local global i32 0, align 4
@ETH_MODULE_SFF_8636 = common dso_local global i32 0, align 4
@ETH_MODULE_SFF_8636_LEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Unknown transceiver type 0x%x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_modinfo*)* @qede_get_module_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qede_get_module_info(%struct.net_device* %0, %struct.ethtool_modinfo* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_modinfo*, align 8
  %6 = alloca %struct.qede_dev*, align 8
  %7 = alloca [4 x i32], align 16
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_modinfo* %1, %struct.ethtool_modinfo** %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.qede_dev* @netdev_priv(%struct.net_device* %9)
  store %struct.qede_dev* %10, %struct.qede_dev** %6, align 8
  %11 = load %struct.qede_dev*, %struct.qede_dev** %6, align 8
  %12 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %11, i32 0, i32 1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32 (i32, i32*, i32, i32, i32)*, i32 (i32, i32*, i32, i32, i32)** %16, align 8
  %18 = load %struct.qede_dev*, %struct.qede_dev** %6, align 8
  %19 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %22 = load i32, i32* @QED_I2C_DEV_ADDR_A0, align 4
  %23 = call i32 %17(i32 %20, i32* %21, i32 %22, i32 0, i32 4)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %2
  %27 = load %struct.qede_dev*, %struct.qede_dev** %6, align 8
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @DP_ERR(%struct.qede_dev* %27, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* %8, align 4
  store i32 %30, i32* %3, align 4
  br label %63

31:                                               ; preds = %2
  %32 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %33 = load i32, i32* %32, align 16
  switch i32 %33, label %55 [
    i32 3, label %34
    i32 12, label %41
    i32 13, label %41
    i32 17, label %48
  ]

34:                                               ; preds = %31
  %35 = load i32, i32* @ETH_MODULE_SFF_8472, align 4
  %36 = load %struct.ethtool_modinfo*, %struct.ethtool_modinfo** %5, align 8
  %37 = getelementptr inbounds %struct.ethtool_modinfo, %struct.ethtool_modinfo* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* @ETH_MODULE_SFF_8472_LEN, align 4
  %39 = load %struct.ethtool_modinfo*, %struct.ethtool_modinfo** %5, align 8
  %40 = getelementptr inbounds %struct.ethtool_modinfo, %struct.ethtool_modinfo* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  br label %62

41:                                               ; preds = %31, %31
  %42 = load i32, i32* @ETH_MODULE_SFF_8436, align 4
  %43 = load %struct.ethtool_modinfo*, %struct.ethtool_modinfo** %5, align 8
  %44 = getelementptr inbounds %struct.ethtool_modinfo, %struct.ethtool_modinfo* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* @ETH_MODULE_SFF_8436_LEN, align 4
  %46 = load %struct.ethtool_modinfo*, %struct.ethtool_modinfo** %5, align 8
  %47 = getelementptr inbounds %struct.ethtool_modinfo, %struct.ethtool_modinfo* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  br label %62

48:                                               ; preds = %31
  %49 = load i32, i32* @ETH_MODULE_SFF_8636, align 4
  %50 = load %struct.ethtool_modinfo*, %struct.ethtool_modinfo** %5, align 8
  %51 = getelementptr inbounds %struct.ethtool_modinfo, %struct.ethtool_modinfo* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* @ETH_MODULE_SFF_8636_LEN, align 4
  %53 = load %struct.ethtool_modinfo*, %struct.ethtool_modinfo** %5, align 8
  %54 = getelementptr inbounds %struct.ethtool_modinfo, %struct.ethtool_modinfo* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  br label %62

55:                                               ; preds = %31
  %56 = load %struct.qede_dev*, %struct.qede_dev** %6, align 8
  %57 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %58 = load i32, i32* %57, align 16
  %59 = call i32 @DP_ERR(%struct.qede_dev* %56, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  br label %63

62:                                               ; preds = %48, %41, %34
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %62, %55, %26
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local %struct.qede_dev* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @DP_ERR(%struct.qede_dev*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
