; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_x550.c_ixgbe_get_lasi_ext_t_x550em.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_x550.c_ixgbe_get_lasi_ext_t_x550em.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 (%struct.ixgbe_hw.0*, i32, i32, i32*)* }
%struct.ixgbe_hw.0 = type opaque

@IXGBE_MDIO_GLOBAL_CHIP_STD_INT_FLAG = common dso_local global i32 0, align 4
@MDIO_MMD_VEND1 = common dso_local global i32 0, align 4
@IXGBE_MDIO_GLOBAL_VEN_ALM_INT_EN = common dso_local global i32 0, align 4
@IXGBE_MDIO_GLOBAL_INT_CHIP_VEN_FLAG = common dso_local global i32 0, align 4
@IXGBE_MDIO_GLOBAL_AN_VEN_ALM_INT_EN = common dso_local global i32 0, align 4
@IXGBE_MDIO_GLOBAL_ALARM_1_INT = common dso_local global i32 0, align 4
@IXGBE_MDIO_GLOBAL_ALARM_1 = common dso_local global i32 0, align 4
@IXGBE_MDIO_GLOBAL_ALM_1_HI_TMP_FAIL = common dso_local global i32 0, align 4
@IXGBE_ERR_OVERTEMP = common dso_local global i64 0, align 8
@IXGBE_MDIO_GLOBAL_ALM_1_DEV_FAULT = common dso_local global i32 0, align 4
@IXGBE_MDIO_GLOBAL_FAULT_MSG = common dso_local global i32 0, align 4
@IXGBE_MDIO_GLOBAL_FAULT_MSG_HI_TMP = common dso_local global i32 0, align 4
@MDIO_MMD_AN = common dso_local global i32 0, align 4
@IXGBE_MDIO_GLOBAL_STD_ALM2_INT = common dso_local global i32 0, align 4
@IXGBE_MDIO_AUTO_NEG_VENDOR_TX_ALARM2 = common dso_local global i32 0, align 4
@IXGBE_MDIO_AUTO_NEG_VEN_LSC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ixgbe_hw*, i32*)* @ixgbe_get_lasi_ext_t_x550em to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ixgbe_get_lasi_ext_t_x550em(%struct.ixgbe_hw* %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.ixgbe_hw*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i32*, i32** %5, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %10 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i64 (%struct.ixgbe_hw.0*, i32, i32, i32*)*, i64 (%struct.ixgbe_hw.0*, i32, i32, i32*)** %12, align 8
  %14 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %15 = bitcast %struct.ixgbe_hw* %14 to %struct.ixgbe_hw.0*
  %16 = load i32, i32* @IXGBE_MDIO_GLOBAL_CHIP_STD_INT_FLAG, align 4
  %17 = load i32, i32* @MDIO_MMD_VEND1, align 4
  %18 = call i64 %13(%struct.ixgbe_hw.0* %15, i32 %16, i32 %17, i32* %7)
  store i64 %18, i64* %6, align 8
  %19 = load i64, i64* %6, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @IXGBE_MDIO_GLOBAL_VEN_ALM_INT_EN, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %21, %2
  %27 = load i64, i64* %6, align 8
  store i64 %27, i64* %3, align 8
  br label %146

28:                                               ; preds = %21
  %29 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %30 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i64 (%struct.ixgbe_hw.0*, i32, i32, i32*)*, i64 (%struct.ixgbe_hw.0*, i32, i32, i32*)** %32, align 8
  %34 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %35 = bitcast %struct.ixgbe_hw* %34 to %struct.ixgbe_hw.0*
  %36 = load i32, i32* @IXGBE_MDIO_GLOBAL_INT_CHIP_VEN_FLAG, align 4
  %37 = load i32, i32* @MDIO_MMD_VEND1, align 4
  %38 = call i64 %33(%struct.ixgbe_hw.0* %35, i32 %36, i32 %37, i32* %7)
  store i64 %38, i64* %6, align 8
  %39 = load i64, i64* %6, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %48, label %41

41:                                               ; preds = %28
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @IXGBE_MDIO_GLOBAL_AN_VEN_ALM_INT_EN, align 4
  %44 = load i32, i32* @IXGBE_MDIO_GLOBAL_ALARM_1_INT, align 4
  %45 = or i32 %43, %44
  %46 = and i32 %42, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %41, %28
  %49 = load i64, i64* %6, align 8
  store i64 %49, i64* %3, align 8
  br label %146

50:                                               ; preds = %41
  %51 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %52 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i64 (%struct.ixgbe_hw.0*, i32, i32, i32*)*, i64 (%struct.ixgbe_hw.0*, i32, i32, i32*)** %54, align 8
  %56 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %57 = bitcast %struct.ixgbe_hw* %56 to %struct.ixgbe_hw.0*
  %58 = load i32, i32* @IXGBE_MDIO_GLOBAL_ALARM_1, align 4
  %59 = load i32, i32* @MDIO_MMD_VEND1, align 4
  %60 = call i64 %55(%struct.ixgbe_hw.0* %57, i32 %58, i32 %59, i32* %7)
  store i64 %60, i64* %6, align 8
  %61 = load i64, i64* %6, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %50
  %64 = load i64, i64* %6, align 8
  store i64 %64, i64* %3, align 8
  br label %146

65:                                               ; preds = %50
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* @IXGBE_MDIO_GLOBAL_ALM_1_HI_TMP_FAIL, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %65
  %71 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %72 = call i32 @ixgbe_set_copper_phy_power(%struct.ixgbe_hw* %71, i32 0)
  %73 = load i64, i64* @IXGBE_ERR_OVERTEMP, align 8
  store i64 %73, i64* %3, align 8
  br label %146

74:                                               ; preds = %65
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* @IXGBE_MDIO_GLOBAL_ALM_1_DEV_FAULT, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %103

79:                                               ; preds = %74
  %80 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %81 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  %84 = load i64 (%struct.ixgbe_hw.0*, i32, i32, i32*)*, i64 (%struct.ixgbe_hw.0*, i32, i32, i32*)** %83, align 8
  %85 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %86 = bitcast %struct.ixgbe_hw* %85 to %struct.ixgbe_hw.0*
  %87 = load i32, i32* @IXGBE_MDIO_GLOBAL_FAULT_MSG, align 4
  %88 = load i32, i32* @MDIO_MMD_VEND1, align 4
  %89 = call i64 %84(%struct.ixgbe_hw.0* %86, i32 %87, i32 %88, i32* %7)
  store i64 %89, i64* %6, align 8
  %90 = load i64, i64* %6, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %79
  %93 = load i64, i64* %6, align 8
  store i64 %93, i64* %3, align 8
  br label %146

94:                                               ; preds = %79
  %95 = load i32, i32* %7, align 4
  %96 = load i32, i32* @IXGBE_MDIO_GLOBAL_FAULT_MSG_HI_TMP, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %102

98:                                               ; preds = %94
  %99 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %100 = call i32 @ixgbe_set_copper_phy_power(%struct.ixgbe_hw* %99, i32 0)
  %101 = load i64, i64* @IXGBE_ERR_OVERTEMP, align 8
  store i64 %101, i64* %3, align 8
  br label %146

102:                                              ; preds = %94
  br label %103

103:                                              ; preds = %102, %74
  %104 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %105 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 0
  %108 = load i64 (%struct.ixgbe_hw.0*, i32, i32, i32*)*, i64 (%struct.ixgbe_hw.0*, i32, i32, i32*)** %107, align 8
  %109 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %110 = bitcast %struct.ixgbe_hw* %109 to %struct.ixgbe_hw.0*
  %111 = load i32, i32* @IXGBE_MDIO_GLOBAL_CHIP_STD_INT_FLAG, align 4
  %112 = load i32, i32* @MDIO_MMD_AN, align 4
  %113 = call i64 %108(%struct.ixgbe_hw.0* %110, i32 %111, i32 %112, i32* %7)
  store i64 %113, i64* %6, align 8
  %114 = load i64, i64* %6, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %121, label %116

116:                                              ; preds = %103
  %117 = load i32, i32* %7, align 4
  %118 = load i32, i32* @IXGBE_MDIO_GLOBAL_STD_ALM2_INT, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %123, label %121

121:                                              ; preds = %116, %103
  %122 = load i64, i64* %6, align 8
  store i64 %122, i64* %3, align 8
  br label %146

123:                                              ; preds = %116
  %124 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %125 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 0
  %128 = load i64 (%struct.ixgbe_hw.0*, i32, i32, i32*)*, i64 (%struct.ixgbe_hw.0*, i32, i32, i32*)** %127, align 8
  %129 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %130 = bitcast %struct.ixgbe_hw* %129 to %struct.ixgbe_hw.0*
  %131 = load i32, i32* @IXGBE_MDIO_AUTO_NEG_VENDOR_TX_ALARM2, align 4
  %132 = load i32, i32* @MDIO_MMD_AN, align 4
  %133 = call i64 %128(%struct.ixgbe_hw.0* %130, i32 %131, i32 %132, i32* %7)
  store i64 %133, i64* %6, align 8
  %134 = load i64, i64* %6, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %123
  %137 = load i64, i64* %6, align 8
  store i64 %137, i64* %3, align 8
  br label %146

138:                                              ; preds = %123
  %139 = load i32, i32* %7, align 4
  %140 = load i32, i32* @IXGBE_MDIO_AUTO_NEG_VEN_LSC, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %138
  %144 = load i32*, i32** %5, align 8
  store i32 1, i32* %144, align 4
  br label %145

145:                                              ; preds = %143, %138
  store i64 0, i64* %3, align 8
  br label %146

146:                                              ; preds = %145, %136, %121, %98, %92, %70, %63, %48, %26
  %147 = load i64, i64* %3, align 8
  ret i64 %147
}

declare dso_local i32 @ixgbe_set_copper_phy_power(%struct.ixgbe_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
