; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_82598.c_ixgbe_read_i2c_phy_82598.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_82598.c_ixgbe_read_i2c_phy_82598.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 (%struct.ixgbe_hw.0*, i32)*, i32 (%struct.ixgbe_hw.1*, i32)* }
%struct.ixgbe_hw.0 = type opaque
%struct.ixgbe_hw.1 = type opaque
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 (%struct.ixgbe_hw.2*, i32, i32, i32*)*, i32 (%struct.ixgbe_hw.3*, i32, i32, i32)* }
%struct.ixgbe_hw.2 = type opaque
%struct.ixgbe_hw.3 = type opaque

@IXGBE_STATUS = common dso_local global i32 0, align 4
@IXGBE_STATUS_LAN_ID_1 = common dso_local global i32 0, align 4
@IXGBE_GSSR_PHY1_SM = common dso_local global i32 0, align 4
@IXGBE_GSSR_PHY0_SM = common dso_local global i32 0, align 4
@IXGBE_ERR_SWFW_SYNC = common dso_local global i32 0, align 4
@ixgbe_phy_nl = common dso_local global i64 0, align 8
@IXGBE_I2C_EEPROM_READ_MASK = common dso_local global i32 0, align 4
@IXGBE_MDIO_PMA_PMD_SDA_SCL_ADDR = common dso_local global i32 0, align 4
@MDIO_MMD_PMAPMD = common dso_local global i32 0, align 4
@IXGBE_MDIO_PMA_PMD_SDA_SCL_STAT = common dso_local global i32 0, align 4
@IXGBE_I2C_EEPROM_STATUS_MASK = common dso_local global i32 0, align 4
@IXGBE_I2C_EEPROM_STATUS_IN_PROGRESS = common dso_local global i32 0, align 4
@IXGBE_I2C_EEPROM_STATUS_PASS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"EEPROM read did not pass.\0A\00", align 1
@IXGBE_ERR_SFP_NOT_PRESENT = common dso_local global i32 0, align 4
@IXGBE_MDIO_PMA_PMD_SDA_SCL_DATA = common dso_local global i32 0, align 4
@IXGBE_ERR_PHY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbe_hw*, i32, i32, i32*)* @ixgbe_read_i2c_phy_82598 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_read_i2c_phy_82598(%struct.ixgbe_hw* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ixgbe_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %16 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %17 = load i32, i32* @IXGBE_STATUS, align 4
  %18 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %16, i32 %17)
  %19 = load i32, i32* @IXGBE_STATUS_LAN_ID_1, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load i32, i32* @IXGBE_GSSR_PHY1_SM, align 4
  store i32 %23, i32* %14, align 4
  br label %26

24:                                               ; preds = %4
  %25 = load i32, i32* @IXGBE_GSSR_PHY0_SM, align 4
  store i32 %25, i32* %14, align 4
  br label %26

26:                                               ; preds = %24, %22
  %27 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %28 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i64 (%struct.ixgbe_hw.0*, i32)*, i64 (%struct.ixgbe_hw.0*, i32)** %30, align 8
  %32 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %33 = bitcast %struct.ixgbe_hw* %32 to %struct.ixgbe_hw.0*
  %34 = load i32, i32* %14, align 4
  %35 = call i64 %31(%struct.ixgbe_hw.0* %33, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %26
  %38 = load i32, i32* @IXGBE_ERR_SWFW_SYNC, align 4
  store i32 %38, i32* %5, align 4
  br label %127

39:                                               ; preds = %26
  %40 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %41 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @ixgbe_phy_nl, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %113

46:                                               ; preds = %39
  %47 = load i32, i32* %7, align 4
  %48 = shl i32 %47, 8
  %49 = load i32, i32* %8, align 4
  %50 = add nsw i32 %48, %49
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* @IXGBE_I2C_EEPROM_READ_MASK, align 4
  %53 = or i32 %51, %52
  store i32 %53, i32* %11, align 4
  %54 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %55 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  %58 = load i32 (%struct.ixgbe_hw.3*, i32, i32, i32)*, i32 (%struct.ixgbe_hw.3*, i32, i32, i32)** %57, align 8
  %59 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %60 = bitcast %struct.ixgbe_hw* %59 to %struct.ixgbe_hw.3*
  %61 = load i32, i32* @IXGBE_MDIO_PMA_PMD_SDA_SCL_ADDR, align 4
  %62 = load i32, i32* @MDIO_MMD_PMAPMD, align 4
  %63 = load i32, i32* %11, align 4
  %64 = call i32 %58(%struct.ixgbe_hw.3* %60, i32 %61, i32 %62, i32 %63)
  store i32 0, i32* %15, align 4
  br label %65

65:                                               ; preds = %88, %46
  %66 = load i32, i32* %15, align 4
  %67 = icmp slt i32 %66, 100
  br i1 %67, label %68, label %91

68:                                               ; preds = %65
  %69 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %70 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i32 (%struct.ixgbe_hw.2*, i32, i32, i32*)*, i32 (%struct.ixgbe_hw.2*, i32, i32, i32*)** %72, align 8
  %74 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %75 = bitcast %struct.ixgbe_hw* %74 to %struct.ixgbe_hw.2*
  %76 = load i32, i32* @IXGBE_MDIO_PMA_PMD_SDA_SCL_STAT, align 4
  %77 = load i32, i32* @MDIO_MMD_PMAPMD, align 4
  %78 = call i32 %73(%struct.ixgbe_hw.2* %75, i32 %76, i32 %77, i32* %13)
  %79 = load i32, i32* %13, align 4
  %80 = load i32, i32* @IXGBE_I2C_EEPROM_STATUS_MASK, align 4
  %81 = and i32 %79, %80
  store i32 %81, i32* %13, align 4
  %82 = load i32, i32* %13, align 4
  %83 = load i32, i32* @IXGBE_I2C_EEPROM_STATUS_IN_PROGRESS, align 4
  %84 = icmp ne i32 %82, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %68
  br label %91

86:                                               ; preds = %68
  %87 = call i32 @usleep_range(i32 10000, i32 20000)
  br label %88

88:                                               ; preds = %86
  %89 = load i32, i32* %15, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %15, align 4
  br label %65

91:                                               ; preds = %85, %65
  %92 = load i32, i32* %13, align 4
  %93 = load i32, i32* @IXGBE_I2C_EEPROM_STATUS_PASS, align 4
  %94 = icmp ne i32 %92, %93
  br i1 %94, label %95, label %99

95:                                               ; preds = %91
  %96 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %97 = call i32 @hw_dbg(%struct.ixgbe_hw* %96, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %98 = load i32, i32* @IXGBE_ERR_SFP_NOT_PRESENT, align 4
  store i32 %98, i32* %10, align 4
  br label %116

99:                                               ; preds = %91
  %100 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %101 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 0
  %104 = load i32 (%struct.ixgbe_hw.2*, i32, i32, i32*)*, i32 (%struct.ixgbe_hw.2*, i32, i32, i32*)** %103, align 8
  %105 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %106 = bitcast %struct.ixgbe_hw* %105 to %struct.ixgbe_hw.2*
  %107 = load i32, i32* @IXGBE_MDIO_PMA_PMD_SDA_SCL_DATA, align 4
  %108 = load i32, i32* @MDIO_MMD_PMAPMD, align 4
  %109 = call i32 %104(%struct.ixgbe_hw.2* %106, i32 %107, i32 %108, i32* %12)
  %110 = load i32, i32* %12, align 4
  %111 = ashr i32 %110, 8
  %112 = load i32*, i32** %9, align 8
  store i32 %111, i32* %112, align 4
  br label %115

113:                                              ; preds = %39
  %114 = load i32, i32* @IXGBE_ERR_PHY, align 4
  store i32 %114, i32* %10, align 4
  br label %115

115:                                              ; preds = %113, %99
  br label %116

116:                                              ; preds = %115, %95
  %117 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %118 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 1
  %121 = load i32 (%struct.ixgbe_hw.1*, i32)*, i32 (%struct.ixgbe_hw.1*, i32)** %120, align 8
  %122 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %123 = bitcast %struct.ixgbe_hw* %122 to %struct.ixgbe_hw.1*
  %124 = load i32, i32* %14, align 4
  %125 = call i32 %121(%struct.ixgbe_hw.1* %123, i32 %124)
  %126 = load i32, i32* %10, align 4
  store i32 %126, i32* %5, align 4
  br label %127

127:                                              ; preds = %116, %37
  %128 = load i32, i32* %5, align 4
  ret i32 %128
}

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @hw_dbg(%struct.ixgbe_hw*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
