; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/alx/extr_hw.c_alx_setup_speed_duplex.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/alx/extr_hw.c_alx_setup_speed_duplex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alx_hw = type { i32 }

@ALX_MII_DBG_ADDR = common dso_local global i32 0, align 4
@ALX_DRV = common dso_local global i32 0, align 4
@ALX_DRV_PHY = common dso_local global i32 0, align 4
@ADVERTISED_Autoneg = common dso_local global i32 0, align 4
@ADVERTISE_CSMA = common dso_local global i32 0, align 4
@ALX_FC_ANEG = common dso_local global i32 0, align 4
@ALX_FC_RX = common dso_local global i32 0, align 4
@ADVERTISED_Pause = common dso_local global i32 0, align 4
@ALX_FC_TX = common dso_local global i32 0, align 4
@ADVERTISED_Asym_Pause = common dso_local global i32 0, align 4
@BMCR_RESET = common dso_local global i32 0, align 4
@BMCR_ANENABLE = common dso_local global i32 0, align 4
@BMCR_ANRESTART = common dso_local global i32 0, align 4
@MII_ADVERTISE = common dso_local global i32 0, align 4
@MII_CTRL1000 = common dso_local global i32 0, align 4
@MII_BMCR = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@ADVERTISED_100baseT_Half = common dso_local global i32 0, align 4
@ADVERTISED_100baseT_Full = common dso_local global i32 0, align 4
@BMCR_SPEED100 = common dso_local global i32 0, align 4
@ADVERTISED_10baseT_Full = common dso_local global i32 0, align 4
@BMCR_FULLDPLX = common dso_local global i32 0, align 4
@ALX_PHY_INITED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @alx_setup_speed_duplex(%struct.alx_hw* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.alx_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.alx_hw* %0, %struct.alx_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %11, align 4
  %12 = load %struct.alx_hw*, %struct.alx_hw** %4, align 8
  %13 = load i32, i32* @ALX_MII_DBG_ADDR, align 4
  %14 = call i32 @alx_write_phy_reg(%struct.alx_hw* %12, i32 %13, i32 0)
  %15 = load %struct.alx_hw*, %struct.alx_hw** %4, align 8
  %16 = load i32, i32* @ALX_DRV, align 4
  %17 = call i32 @alx_read_mem32(%struct.alx_hw* %15, i32 %16)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* @ALX_DRV_PHY, align 4
  %20 = call i32 @ALX_SET_FIELD(i32 %18, i32 %19, i32 0)
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @ADVERTISED_Autoneg, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %98

25:                                               ; preds = %3
  %26 = load i32, i32* @ADVERTISE_CSMA, align 4
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @ethtool_adv_to_mii_adv_t(i32 %27)
  %29 = load i32, i32* %7, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @ALX_FC_ANEG, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %64

35:                                               ; preds = %25
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @ALX_FC_RX, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %53

40:                                               ; preds = %35
  %41 = load i32, i32* @ADVERTISED_Pause, align 4
  %42 = load i32, i32* %7, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @ALX_FC_TX, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %40
  %49 = load i32, i32* @ADVERTISED_Asym_Pause, align 4
  %50 = load i32, i32* %7, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %7, align 4
  br label %52

52:                                               ; preds = %48, %40
  br label %63

53:                                               ; preds = %35
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* @ALX_FC_TX, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %53
  %59 = load i32, i32* @ADVERTISED_Asym_Pause, align 4
  %60 = load i32, i32* %7, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %7, align 4
  br label %62

62:                                               ; preds = %58, %53
  br label %63

63:                                               ; preds = %62, %52
  br label %64

64:                                               ; preds = %63, %25
  store i32 0, i32* %8, align 4
  %65 = load %struct.alx_hw*, %struct.alx_hw** %4, align 8
  %66 = call i64 @alx_hw_giga(%struct.alx_hw* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %64
  %69 = load i32, i32* %5, align 4
  %70 = call i32 @ethtool_adv_to_mii_ctrl1000_t(i32 %69)
  store i32 %70, i32* %8, align 4
  br label %71

71:                                               ; preds = %68, %64
  %72 = load i32, i32* @BMCR_RESET, align 4
  %73 = load i32, i32* @BMCR_ANENABLE, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* @BMCR_ANRESTART, align 4
  %76 = or i32 %74, %75
  store i32 %76, i32* %9, align 4
  %77 = load %struct.alx_hw*, %struct.alx_hw** %4, align 8
  %78 = load i32, i32* @MII_ADVERTISE, align 4
  %79 = load i32, i32* %7, align 4
  %80 = call i32 @alx_write_phy_reg(%struct.alx_hw* %77, i32 %78, i32 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %94, label %82

82:                                               ; preds = %71
  %83 = load %struct.alx_hw*, %struct.alx_hw** %4, align 8
  %84 = load i32, i32* @MII_CTRL1000, align 4
  %85 = load i32, i32* %8, align 4
  %86 = call i32 @alx_write_phy_reg(%struct.alx_hw* %83, i32 %84, i32 %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %94, label %88

88:                                               ; preds = %82
  %89 = load %struct.alx_hw*, %struct.alx_hw** %4, align 8
  %90 = load i32, i32* @MII_BMCR, align 4
  %91 = load i32, i32* %9, align 4
  %92 = call i32 @alx_write_phy_reg(%struct.alx_hw* %89, i32 %90, i32 %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %88, %82, %71
  %95 = load i32, i32* @EBUSY, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %11, align 4
  br label %97

97:                                               ; preds = %94, %88
  br label %128

98:                                               ; preds = %3
  %99 = load i32, i32* @BMCR_RESET, align 4
  store i32 %99, i32* %9, align 4
  %100 = load i32, i32* %5, align 4
  %101 = load i32, i32* @ADVERTISED_100baseT_Half, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %107, label %103

103:                                              ; preds = %98
  %104 = load i32, i32* %5, align 4
  %105 = load i32, i32* @ADVERTISED_100baseT_Full, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %107, label %111

107:                                              ; preds = %103, %98
  %108 = load i32, i32* @BMCR_SPEED100, align 4
  %109 = load i32, i32* %9, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %9, align 4
  br label %111

111:                                              ; preds = %107, %103
  %112 = load i32, i32* %5, align 4
  %113 = load i32, i32* @ADVERTISED_10baseT_Full, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %119, label %115

115:                                              ; preds = %111
  %116 = load i32, i32* %5, align 4
  %117 = load i32, i32* @ADVERTISED_100baseT_Full, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %119, label %123

119:                                              ; preds = %115, %111
  %120 = load i32, i32* @BMCR_FULLDPLX, align 4
  %121 = load i32, i32* %9, align 4
  %122 = or i32 %121, %120
  store i32 %122, i32* %9, align 4
  br label %123

123:                                              ; preds = %119, %115
  %124 = load %struct.alx_hw*, %struct.alx_hw** %4, align 8
  %125 = load i32, i32* @MII_BMCR, align 4
  %126 = load i32, i32* %9, align 4
  %127 = call i32 @alx_write_phy_reg(%struct.alx_hw* %124, i32 %125, i32 %126)
  store i32 %127, i32* %11, align 4
  br label %128

128:                                              ; preds = %123, %97
  %129 = load i32, i32* %11, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %141, label %131

131:                                              ; preds = %128
  %132 = load %struct.alx_hw*, %struct.alx_hw** %4, align 8
  %133 = load i32, i32* @ALX_MII_DBG_ADDR, align 4
  %134 = load i32, i32* @ALX_PHY_INITED, align 4
  %135 = call i32 @alx_write_phy_reg(%struct.alx_hw* %132, i32 %133, i32 %134)
  %136 = load %struct.alx_hw*, %struct.alx_hw** %4, align 8
  %137 = load i32, i32* %5, align 4
  %138 = call i32 @ethadv_to_hw_cfg(%struct.alx_hw* %136, i32 %137)
  %139 = load i32, i32* %10, align 4
  %140 = or i32 %139, %138
  store i32 %140, i32* %10, align 4
  br label %141

141:                                              ; preds = %131, %128
  %142 = load %struct.alx_hw*, %struct.alx_hw** %4, align 8
  %143 = load i32, i32* @ALX_DRV, align 4
  %144 = load i32, i32* %10, align 4
  %145 = call i32 @alx_write_mem32(%struct.alx_hw* %142, i32 %143, i32 %144)
  %146 = load i32, i32* %11, align 4
  ret i32 %146
}

declare dso_local i32 @alx_write_phy_reg(%struct.alx_hw*, i32, i32) #1

declare dso_local i32 @alx_read_mem32(%struct.alx_hw*, i32) #1

declare dso_local i32 @ALX_SET_FIELD(i32, i32, i32) #1

declare dso_local i32 @ethtool_adv_to_mii_adv_t(i32) #1

declare dso_local i64 @alx_hw_giga(%struct.alx_hw*) #1

declare dso_local i32 @ethtool_adv_to_mii_ctrl1000_t(i32) #1

declare dso_local i32 @ethadv_to_hw_cfg(%struct.alx_hw*, i32) #1

declare dso_local i32 @alx_write_mem32(%struct.alx_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
