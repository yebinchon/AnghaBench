; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_phy_device.c_genphy_read_abilities.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_phy_device.c_genphy_read_abilities.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i32 }

@phy_basic_ports_array = common dso_local global i32 0, align 4
@MII_BMSR = common dso_local global i32 0, align 4
@ETHTOOL_LINK_MODE_Autoneg_BIT = common dso_local global i32 0, align 4
@BMSR_ANEGCAPABLE = common dso_local global i32 0, align 4
@ETHTOOL_LINK_MODE_100baseT_Full_BIT = common dso_local global i32 0, align 4
@BMSR_100FULL = common dso_local global i32 0, align 4
@ETHTOOL_LINK_MODE_100baseT_Half_BIT = common dso_local global i32 0, align 4
@BMSR_100HALF = common dso_local global i32 0, align 4
@ETHTOOL_LINK_MODE_10baseT_Full_BIT = common dso_local global i32 0, align 4
@BMSR_10FULL = common dso_local global i32 0, align 4
@ETHTOOL_LINK_MODE_10baseT_Half_BIT = common dso_local global i32 0, align 4
@BMSR_10HALF = common dso_local global i32 0, align 4
@BMSR_ESTATEN = common dso_local global i32 0, align 4
@MII_ESTATUS = common dso_local global i32 0, align 4
@ETHTOOL_LINK_MODE_1000baseT_Full_BIT = common dso_local global i32 0, align 4
@ESTATUS_1000_TFULL = common dso_local global i32 0, align 4
@ETHTOOL_LINK_MODE_1000baseT_Half_BIT = common dso_local global i32 0, align 4
@ESTATUS_1000_THALF = common dso_local global i32 0, align 4
@ETHTOOL_LINK_MODE_1000baseX_Full_BIT = common dso_local global i32 0, align 4
@ESTATUS_1000_XFULL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @genphy_read_abilities(%struct.phy_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy_device*, align 8
  %4 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %3, align 8
  %5 = load i32, i32* @phy_basic_ports_array, align 4
  %6 = load i32, i32* @phy_basic_ports_array, align 4
  %7 = call i32 @ARRAY_SIZE(i32 %6)
  %8 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %9 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @linkmode_set_bit_array(i32 %5, i32 %7, i32 %10)
  %12 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %13 = load i32, i32* @MII_BMSR, align 4
  %14 = call i32 @phy_read(%struct.phy_device* %12, i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* %4, align 4
  store i32 %18, i32* %2, align 4
  br label %98

19:                                               ; preds = %1
  %20 = load i32, i32* @ETHTOOL_LINK_MODE_Autoneg_BIT, align 4
  %21 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %22 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @BMSR_ANEGCAPABLE, align 4
  %26 = and i32 %24, %25
  %27 = call i32 @linkmode_mod_bit(i32 %20, i32 %23, i32 %26)
  %28 = load i32, i32* @ETHTOOL_LINK_MODE_100baseT_Full_BIT, align 4
  %29 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %30 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @BMSR_100FULL, align 4
  %34 = and i32 %32, %33
  %35 = call i32 @linkmode_mod_bit(i32 %28, i32 %31, i32 %34)
  %36 = load i32, i32* @ETHTOOL_LINK_MODE_100baseT_Half_BIT, align 4
  %37 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %38 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @BMSR_100HALF, align 4
  %42 = and i32 %40, %41
  %43 = call i32 @linkmode_mod_bit(i32 %36, i32 %39, i32 %42)
  %44 = load i32, i32* @ETHTOOL_LINK_MODE_10baseT_Full_BIT, align 4
  %45 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %46 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* @BMSR_10FULL, align 4
  %50 = and i32 %48, %49
  %51 = call i32 @linkmode_mod_bit(i32 %44, i32 %47, i32 %50)
  %52 = load i32, i32* @ETHTOOL_LINK_MODE_10baseT_Half_BIT, align 4
  %53 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %54 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* @BMSR_10HALF, align 4
  %58 = and i32 %56, %57
  %59 = call i32 @linkmode_mod_bit(i32 %52, i32 %55, i32 %58)
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* @BMSR_ESTATEN, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %97

64:                                               ; preds = %19
  %65 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %66 = load i32, i32* @MII_ESTATUS, align 4
  %67 = call i32 @phy_read(%struct.phy_device* %65, i32 %66)
  store i32 %67, i32* %4, align 4
  %68 = load i32, i32* %4, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %64
  %71 = load i32, i32* %4, align 4
  store i32 %71, i32* %2, align 4
  br label %98

72:                                               ; preds = %64
  %73 = load i32, i32* @ETHTOOL_LINK_MODE_1000baseT_Full_BIT, align 4
  %74 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %75 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %4, align 4
  %78 = load i32, i32* @ESTATUS_1000_TFULL, align 4
  %79 = and i32 %77, %78
  %80 = call i32 @linkmode_mod_bit(i32 %73, i32 %76, i32 %79)
  %81 = load i32, i32* @ETHTOOL_LINK_MODE_1000baseT_Half_BIT, align 4
  %82 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %83 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %4, align 4
  %86 = load i32, i32* @ESTATUS_1000_THALF, align 4
  %87 = and i32 %85, %86
  %88 = call i32 @linkmode_mod_bit(i32 %81, i32 %84, i32 %87)
  %89 = load i32, i32* @ETHTOOL_LINK_MODE_1000baseX_Full_BIT, align 4
  %90 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %91 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %4, align 4
  %94 = load i32, i32* @ESTATUS_1000_XFULL, align 4
  %95 = and i32 %93, %94
  %96 = call i32 @linkmode_mod_bit(i32 %89, i32 %92, i32 %95)
  br label %97

97:                                               ; preds = %72, %19
  store i32 0, i32* %2, align 4
  br label %98

98:                                               ; preds = %97, %70, %17
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local i32 @linkmode_set_bit_array(i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @phy_read(%struct.phy_device*, i32) #1

declare dso_local i32 @linkmode_mod_bit(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
