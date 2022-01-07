; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_ethtool.c_qede_get_module_eeprom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_ethtool.c_qede_get_module_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_eeprom = type { i64, i64 }
%struct.qede_dev = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (i32, i32*, i32, i64, i64)* }

@ETH_MODULE_SFF_8079_LEN = common dso_local global i64 0, align 8
@QED_I2C_DEV_ADDR_A0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Failed reading A0 section  %d\0A\00", align 1
@ETH_MODULE_SFF_8472_LEN = common dso_local global i64 0, align 8
@QED_I2C_DEV_ADDR_A2 = common dso_local global i32 0, align 4
@QED_MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Failed reading A2 section %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_eeprom*, i32*)* @qede_get_module_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qede_get_module_eeprom(%struct.net_device* %0, %struct.ethtool_eeprom* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ethtool_eeprom*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.qede_dev*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ethtool_eeprom* %1, %struct.ethtool_eeprom** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load %struct.net_device*, %struct.net_device** %5, align 8
  %14 = call %struct.qede_dev* @netdev_priv(%struct.net_device* %13)
  store %struct.qede_dev* %14, %struct.qede_dev** %8, align 8
  %15 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %16 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %9, align 8
  store i64 0, i64* %10, align 8
  %18 = load i32*, i32** %7, align 8
  store i32* %18, i32** %11, align 8
  store i32 0, i32* %12, align 4
  %19 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %20 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @ETH_MODULE_SFF_8079_LEN, align 8
  %23 = icmp slt i64 %21, %22
  br i1 %23, label %24, label %74

24:                                               ; preds = %3
  %25 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %26 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %29 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %27, %30
  %32 = load i64, i64* @ETH_MODULE_SFF_8079_LEN, align 8
  %33 = icmp sgt i64 %31, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %24
  %35 = load i64, i64* @ETH_MODULE_SFF_8079_LEN, align 8
  %36 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %37 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = sub nsw i64 %35, %38
  store i64 %39, i64* %10, align 8
  br label %44

40:                                               ; preds = %24
  %41 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %42 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %10, align 8
  br label %44

44:                                               ; preds = %40, %34
  %45 = load %struct.qede_dev*, %struct.qede_dev** %8, align 8
  %46 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %45, i32 0, i32 1
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32 (i32, i32*, i32, i64, i64)*, i32 (i32, i32*, i32, i64, i64)** %50, align 8
  %52 = load %struct.qede_dev*, %struct.qede_dev** %8, align 8
  %53 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32*, i32** %11, align 8
  %56 = load i32, i32* @QED_I2C_DEV_ADDR_A0, align 4
  %57 = load i64, i64* %9, align 8
  %58 = load i64, i64* %10, align 8
  %59 = call i32 %51(i32 %54, i32* %55, i32 %56, i64 %57, i64 %58)
  store i32 %59, i32* %12, align 4
  %60 = load i32, i32* %12, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %44
  %63 = load %struct.qede_dev*, %struct.qede_dev** %8, align 8
  %64 = load i32, i32* %12, align 4
  %65 = call i32 @DP_ERR(%struct.qede_dev* %63, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %64)
  %66 = load i32, i32* %12, align 4
  store i32 %66, i32* %4, align 4
  br label %126

67:                                               ; preds = %44
  %68 = load i64, i64* %10, align 8
  %69 = load i32*, i32** %11, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 %68
  store i32* %70, i32** %11, align 8
  %71 = load i64, i64* %10, align 8
  %72 = load i64, i64* %9, align 8
  %73 = add nsw i64 %72, %71
  store i64 %73, i64* %9, align 8
  br label %74

74:                                               ; preds = %67, %3
  %75 = load i64, i64* %9, align 8
  %76 = load i64, i64* @ETH_MODULE_SFF_8079_LEN, align 8
  %77 = icmp sge i64 %75, %76
  br i1 %77, label %78, label %124

78:                                               ; preds = %74
  %79 = load i64, i64* %9, align 8
  %80 = load i64, i64* @ETH_MODULE_SFF_8472_LEN, align 8
  %81 = icmp slt i64 %79, %80
  br i1 %81, label %82, label %124

82:                                               ; preds = %78
  %83 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %84 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* %10, align 8
  %87 = sub nsw i64 %85, %86
  store i64 %87, i64* %10, align 8
  %88 = load i64, i64* %9, align 8
  %89 = load i64, i64* %10, align 8
  %90 = add nsw i64 %88, %89
  %91 = load i64, i64* @ETH_MODULE_SFF_8472_LEN, align 8
  %92 = icmp sgt i64 %90, %91
  br i1 %92, label %93, label %97

93:                                               ; preds = %82
  %94 = load i64, i64* @ETH_MODULE_SFF_8472_LEN, align 8
  %95 = load i64, i64* %9, align 8
  %96 = sub nsw i64 %94, %95
  store i64 %96, i64* %10, align 8
  br label %97

97:                                               ; preds = %93, %82
  %98 = load i64, i64* @ETH_MODULE_SFF_8079_LEN, align 8
  %99 = load i64, i64* %9, align 8
  %100 = sub nsw i64 %99, %98
  store i64 %100, i64* %9, align 8
  %101 = load %struct.qede_dev*, %struct.qede_dev** %8, align 8
  %102 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %101, i32 0, i32 1
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 0
  %107 = load i32 (i32, i32*, i32, i64, i64)*, i32 (i32, i32*, i32, i64, i64)** %106, align 8
  %108 = load %struct.qede_dev*, %struct.qede_dev** %8, align 8
  %109 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32*, i32** %11, align 8
  %112 = load i32, i32* @QED_I2C_DEV_ADDR_A2, align 4
  %113 = load i64, i64* %9, align 8
  %114 = load i64, i64* %10, align 8
  %115 = call i32 %107(i32 %110, i32* %111, i32 %112, i64 %113, i64 %114)
  store i32 %115, i32* %12, align 4
  %116 = load i32, i32* %12, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %97
  %119 = load %struct.qede_dev*, %struct.qede_dev** %8, align 8
  %120 = load i32, i32* @QED_MSG_DEBUG, align 4
  %121 = load i32, i32* %12, align 4
  %122 = call i32 @DP_VERBOSE(%struct.qede_dev* %119, i32 %120, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %121)
  store i32 0, i32* %4, align 4
  br label %126

123:                                              ; preds = %97
  br label %124

124:                                              ; preds = %123, %78, %74
  %125 = load i32, i32* %12, align 4
  store i32 %125, i32* %4, align 4
  br label %126

126:                                              ; preds = %124, %118, %62
  %127 = load i32, i32* %4, align 4
  ret i32 %127
}

declare dso_local %struct.qede_dev* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @DP_ERR(%struct.qede_dev*, i8*, i32) #1

declare dso_local i32 @DP_VERBOSE(%struct.qede_dev*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
