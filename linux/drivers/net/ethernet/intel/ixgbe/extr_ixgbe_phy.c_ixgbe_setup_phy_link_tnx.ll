; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_phy.c_ixgbe_setup_phy_link_tnx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_phy.c_ixgbe_setup_phy_link_tnx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.ixgbe_hw.0*, i32, i32, i32)*, i32 (%struct.ixgbe_hw.1*, i32, i32, i32*)* }
%struct.ixgbe_hw.0 = type opaque
%struct.ixgbe_hw.1 = type opaque

@IXGBE_MII_AUTONEG_REG = common dso_local global i32 0, align 4
@IXGBE_LINK_SPEED_10GB_FULL = common dso_local global i32 0, align 4
@MDIO_AN_10GBT_CTRL = common dso_local global i32 0, align 4
@MDIO_MMD_AN = common dso_local global i32 0, align 4
@MDIO_AN_10GBT_CTRL_ADV10G = common dso_local global i32 0, align 4
@IXGBE_LINK_SPEED_1GB_FULL = common dso_local global i32 0, align 4
@IXGBE_MII_AUTONEG_XNP_TX_REG = common dso_local global i32 0, align 4
@IXGBE_MII_1GBASE_T_ADVERTISE_XNP_TX = common dso_local global i32 0, align 4
@IXGBE_LINK_SPEED_100_FULL = common dso_local global i32 0, align 4
@MDIO_AN_ADVERTISE = common dso_local global i32 0, align 4
@ADVERTISE_100FULL = common dso_local global i32 0, align 4
@ADVERTISE_100HALF = common dso_local global i32 0, align 4
@MDIO_CTRL1 = common dso_local global i32 0, align 4
@MDIO_AN_CTRL1_RESTART = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_setup_phy_link_tnx(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ixgbe_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %3, align 8
  %7 = load i32, i32* @IXGBE_MII_AUTONEG_REG, align 4
  store i32 %7, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %8 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %9 = call i32 @ixgbe_get_copper_link_capabilities_generic(%struct.ixgbe_hw* %8, i32* %6, i32* %5)
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @IXGBE_LINK_SPEED_10GB_FULL, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %52

14:                                               ; preds = %1
  %15 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %16 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load i32 (%struct.ixgbe_hw.1*, i32, i32, i32*)*, i32 (%struct.ixgbe_hw.1*, i32, i32, i32*)** %18, align 8
  %20 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %21 = bitcast %struct.ixgbe_hw* %20 to %struct.ixgbe_hw.1*
  %22 = load i32, i32* @MDIO_AN_10GBT_CTRL, align 4
  %23 = load i32, i32* @MDIO_MMD_AN, align 4
  %24 = call i32 %19(%struct.ixgbe_hw.1* %21, i32 %22, i32 %23, i32* %4)
  %25 = load i32, i32* @MDIO_AN_10GBT_CTRL_ADV10G, align 4
  %26 = xor i32 %25, -1
  %27 = load i32, i32* %4, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %4, align 4
  %29 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %30 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @IXGBE_LINK_SPEED_10GB_FULL, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %14
  %37 = load i32, i32* @MDIO_AN_10GBT_CTRL_ADV10G, align 4
  %38 = load i32, i32* %4, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %36, %14
  %41 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %42 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32 (%struct.ixgbe_hw.0*, i32, i32, i32)*, i32 (%struct.ixgbe_hw.0*, i32, i32, i32)** %44, align 8
  %46 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %47 = bitcast %struct.ixgbe_hw* %46 to %struct.ixgbe_hw.0*
  %48 = load i32, i32* @MDIO_AN_10GBT_CTRL, align 4
  %49 = load i32, i32* @MDIO_MMD_AN, align 4
  %50 = load i32, i32* %4, align 4
  %51 = call i32 %45(%struct.ixgbe_hw.0* %47, i32 %48, i32 %49, i32 %50)
  br label %52

52:                                               ; preds = %40, %1
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @IXGBE_LINK_SPEED_1GB_FULL, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %95

57:                                               ; preds = %52
  %58 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %59 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  %62 = load i32 (%struct.ixgbe_hw.1*, i32, i32, i32*)*, i32 (%struct.ixgbe_hw.1*, i32, i32, i32*)** %61, align 8
  %63 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %64 = bitcast %struct.ixgbe_hw* %63 to %struct.ixgbe_hw.1*
  %65 = load i32, i32* @IXGBE_MII_AUTONEG_XNP_TX_REG, align 4
  %66 = load i32, i32* @MDIO_MMD_AN, align 4
  %67 = call i32 %62(%struct.ixgbe_hw.1* %64, i32 %65, i32 %66, i32* %4)
  %68 = load i32, i32* @IXGBE_MII_1GBASE_T_ADVERTISE_XNP_TX, align 4
  %69 = xor i32 %68, -1
  %70 = load i32, i32* %4, align 4
  %71 = and i32 %70, %69
  store i32 %71, i32* %4, align 4
  %72 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %73 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @IXGBE_LINK_SPEED_1GB_FULL, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %57
  %80 = load i32, i32* @IXGBE_MII_1GBASE_T_ADVERTISE_XNP_TX, align 4
  %81 = load i32, i32* %4, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %4, align 4
  br label %83

83:                                               ; preds = %79, %57
  %84 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %85 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  %88 = load i32 (%struct.ixgbe_hw.0*, i32, i32, i32)*, i32 (%struct.ixgbe_hw.0*, i32, i32, i32)** %87, align 8
  %89 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %90 = bitcast %struct.ixgbe_hw* %89 to %struct.ixgbe_hw.0*
  %91 = load i32, i32* @IXGBE_MII_AUTONEG_XNP_TX_REG, align 4
  %92 = load i32, i32* @MDIO_MMD_AN, align 4
  %93 = load i32, i32* %4, align 4
  %94 = call i32 %88(%struct.ixgbe_hw.0* %90, i32 %91, i32 %92, i32 %93)
  br label %95

95:                                               ; preds = %83, %52
  %96 = load i32, i32* %6, align 4
  %97 = load i32, i32* @IXGBE_LINK_SPEED_100_FULL, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %140

100:                                              ; preds = %95
  %101 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %102 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 1
  %105 = load i32 (%struct.ixgbe_hw.1*, i32, i32, i32*)*, i32 (%struct.ixgbe_hw.1*, i32, i32, i32*)** %104, align 8
  %106 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %107 = bitcast %struct.ixgbe_hw* %106 to %struct.ixgbe_hw.1*
  %108 = load i32, i32* @MDIO_AN_ADVERTISE, align 4
  %109 = load i32, i32* @MDIO_MMD_AN, align 4
  %110 = call i32 %105(%struct.ixgbe_hw.1* %107, i32 %108, i32 %109, i32* %4)
  %111 = load i32, i32* @ADVERTISE_100FULL, align 4
  %112 = load i32, i32* @ADVERTISE_100HALF, align 4
  %113 = or i32 %111, %112
  %114 = xor i32 %113, -1
  %115 = load i32, i32* %4, align 4
  %116 = and i32 %115, %114
  store i32 %116, i32* %4, align 4
  %117 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %118 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @IXGBE_LINK_SPEED_100_FULL, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %100
  %125 = load i32, i32* @ADVERTISE_100FULL, align 4
  %126 = load i32, i32* %4, align 4
  %127 = or i32 %126, %125
  store i32 %127, i32* %4, align 4
  br label %128

128:                                              ; preds = %124, %100
  %129 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %130 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 0
  %133 = load i32 (%struct.ixgbe_hw.0*, i32, i32, i32)*, i32 (%struct.ixgbe_hw.0*, i32, i32, i32)** %132, align 8
  %134 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %135 = bitcast %struct.ixgbe_hw* %134 to %struct.ixgbe_hw.0*
  %136 = load i32, i32* @MDIO_AN_ADVERTISE, align 4
  %137 = load i32, i32* @MDIO_MMD_AN, align 4
  %138 = load i32, i32* %4, align 4
  %139 = call i32 %133(%struct.ixgbe_hw.0* %135, i32 %136, i32 %137, i32 %138)
  br label %140

140:                                              ; preds = %128, %95
  %141 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %142 = call i64 @ixgbe_check_reset_blocked(%struct.ixgbe_hw* %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %140
  store i32 0, i32* %2, align 4
  br label %170

145:                                              ; preds = %140
  %146 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %147 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 1
  %150 = load i32 (%struct.ixgbe_hw.1*, i32, i32, i32*)*, i32 (%struct.ixgbe_hw.1*, i32, i32, i32*)** %149, align 8
  %151 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %152 = bitcast %struct.ixgbe_hw* %151 to %struct.ixgbe_hw.1*
  %153 = load i32, i32* @MDIO_CTRL1, align 4
  %154 = load i32, i32* @MDIO_MMD_AN, align 4
  %155 = call i32 %150(%struct.ixgbe_hw.1* %152, i32 %153, i32 %154, i32* %4)
  %156 = load i32, i32* @MDIO_AN_CTRL1_RESTART, align 4
  %157 = load i32, i32* %4, align 4
  %158 = or i32 %157, %156
  store i32 %158, i32* %4, align 4
  %159 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %160 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %161, i32 0, i32 0
  %163 = load i32 (%struct.ixgbe_hw.0*, i32, i32, i32)*, i32 (%struct.ixgbe_hw.0*, i32, i32, i32)** %162, align 8
  %164 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %165 = bitcast %struct.ixgbe_hw* %164 to %struct.ixgbe_hw.0*
  %166 = load i32, i32* @MDIO_CTRL1, align 4
  %167 = load i32, i32* @MDIO_MMD_AN, align 4
  %168 = load i32, i32* %4, align 4
  %169 = call i32 %163(%struct.ixgbe_hw.0* %165, i32 %166, i32 %167, i32 %168)
  store i32 0, i32* %2, align 4
  br label %170

170:                                              ; preds = %145, %144
  %171 = load i32, i32* %2, align 4
  ret i32 %171
}

declare dso_local i32 @ixgbe_get_copper_link_capabilities_generic(%struct.ixgbe_hw*, i32*, i32*) #1

declare dso_local i64 @ixgbe_check_reset_blocked(%struct.ixgbe_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
