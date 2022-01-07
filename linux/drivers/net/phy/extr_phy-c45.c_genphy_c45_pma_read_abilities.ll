; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_phy-c45.c_genphy_c45_pma_read_abilities.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_phy-c45.c_genphy_c45_pma_read_abilities.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ETHTOOL_LINK_MODE_Autoneg_BIT = common dso_local global i32 0, align 4
@MDIO_DEVS_AN = common dso_local global i32 0, align 4
@MDIO_MMD_AN = common dso_local global i32 0, align 4
@MDIO_STAT1 = common dso_local global i32 0, align 4
@MDIO_AN_STAT1_ABLE = common dso_local global i32 0, align 4
@MDIO_MMD_PMAPMD = common dso_local global i32 0, align 4
@MDIO_STAT2 = common dso_local global i32 0, align 4
@ETHTOOL_LINK_MODE_10000baseSR_Full_BIT = common dso_local global i32 0, align 4
@MDIO_PMA_STAT2_10GBSR = common dso_local global i32 0, align 4
@ETHTOOL_LINK_MODE_10000baseLR_Full_BIT = common dso_local global i32 0, align 4
@MDIO_PMA_STAT2_10GBLR = common dso_local global i32 0, align 4
@ETHTOOL_LINK_MODE_10000baseER_Full_BIT = common dso_local global i32 0, align 4
@MDIO_PMA_STAT2_10GBER = common dso_local global i32 0, align 4
@MDIO_PMA_STAT2_EXTABLE = common dso_local global i32 0, align 4
@MDIO_PMA_EXTABLE = common dso_local global i32 0, align 4
@ETHTOOL_LINK_MODE_10000baseLRM_Full_BIT = common dso_local global i32 0, align 4
@MDIO_PMA_EXTABLE_10GBLRM = common dso_local global i32 0, align 4
@ETHTOOL_LINK_MODE_10000baseT_Full_BIT = common dso_local global i32 0, align 4
@MDIO_PMA_EXTABLE_10GBT = common dso_local global i32 0, align 4
@ETHTOOL_LINK_MODE_10000baseKX4_Full_BIT = common dso_local global i32 0, align 4
@MDIO_PMA_EXTABLE_10GBKX4 = common dso_local global i32 0, align 4
@ETHTOOL_LINK_MODE_10000baseKR_Full_BIT = common dso_local global i32 0, align 4
@MDIO_PMA_EXTABLE_10GBKR = common dso_local global i32 0, align 4
@ETHTOOL_LINK_MODE_1000baseT_Full_BIT = common dso_local global i32 0, align 4
@MDIO_PMA_EXTABLE_1000BT = common dso_local global i32 0, align 4
@ETHTOOL_LINK_MODE_1000baseKX_Full_BIT = common dso_local global i32 0, align 4
@MDIO_PMA_EXTABLE_1000BKX = common dso_local global i32 0, align 4
@ETHTOOL_LINK_MODE_100baseT_Full_BIT = common dso_local global i32 0, align 4
@MDIO_PMA_EXTABLE_100BTX = common dso_local global i32 0, align 4
@ETHTOOL_LINK_MODE_100baseT_Half_BIT = common dso_local global i32 0, align 4
@ETHTOOL_LINK_MODE_10baseT_Full_BIT = common dso_local global i32 0, align 4
@MDIO_PMA_EXTABLE_10BT = common dso_local global i32 0, align 4
@ETHTOOL_LINK_MODE_10baseT_Half_BIT = common dso_local global i32 0, align 4
@MDIO_PMA_EXTABLE_NBT = common dso_local global i32 0, align 4
@MDIO_PMA_NG_EXTABLE = common dso_local global i32 0, align 4
@ETHTOOL_LINK_MODE_2500baseT_Full_BIT = common dso_local global i32 0, align 4
@MDIO_PMA_NG_EXTABLE_2_5GBT = common dso_local global i32 0, align 4
@ETHTOOL_LINK_MODE_5000baseT_Full_BIT = common dso_local global i32 0, align 4
@MDIO_PMA_NG_EXTABLE_5GBT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @genphy_c45_pma_read_abilities(%struct.phy_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy_device*, align 8
  %4 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %3, align 8
  %5 = load i32, i32* @ETHTOOL_LINK_MODE_Autoneg_BIT, align 4
  %6 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %7 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @linkmode_clear_bit(i32 %5, i32 %8)
  %10 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %11 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @MDIO_DEVS_AN, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %38

17:                                               ; preds = %1
  %18 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %19 = load i32, i32* @MDIO_MMD_AN, align 4
  %20 = load i32, i32* @MDIO_STAT1, align 4
  %21 = call i32 @phy_read_mmd(%struct.phy_device* %18, i32 %19, i32 %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = load i32, i32* %4, align 4
  store i32 %25, i32* %2, align 4
  br label %198

26:                                               ; preds = %17
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @MDIO_AN_STAT1_ABLE, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %26
  %32 = load i32, i32* @ETHTOOL_LINK_MODE_Autoneg_BIT, align 4
  %33 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %34 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @linkmode_set_bit(i32 %32, i32 %35)
  br label %37

37:                                               ; preds = %31, %26
  br label %38

38:                                               ; preds = %37, %1
  %39 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %40 = load i32, i32* @MDIO_MMD_PMAPMD, align 4
  %41 = load i32, i32* @MDIO_STAT2, align 4
  %42 = call i32 @phy_read_mmd(%struct.phy_device* %39, i32 %40, i32 %41)
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* %4, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %38
  %46 = load i32, i32* %4, align 4
  store i32 %46, i32* %2, align 4
  br label %198

47:                                               ; preds = %38
  %48 = load i32, i32* @ETHTOOL_LINK_MODE_10000baseSR_Full_BIT, align 4
  %49 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %50 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @MDIO_PMA_STAT2_10GBSR, align 4
  %54 = and i32 %52, %53
  %55 = call i32 @linkmode_mod_bit(i32 %48, i32 %51, i32 %54)
  %56 = load i32, i32* @ETHTOOL_LINK_MODE_10000baseLR_Full_BIT, align 4
  %57 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %58 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* @MDIO_PMA_STAT2_10GBLR, align 4
  %62 = and i32 %60, %61
  %63 = call i32 @linkmode_mod_bit(i32 %56, i32 %59, i32 %62)
  %64 = load i32, i32* @ETHTOOL_LINK_MODE_10000baseER_Full_BIT, align 4
  %65 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %66 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* @MDIO_PMA_STAT2_10GBER, align 4
  %70 = and i32 %68, %69
  %71 = call i32 @linkmode_mod_bit(i32 %64, i32 %67, i32 %70)
  %72 = load i32, i32* %4, align 4
  %73 = load i32, i32* @MDIO_PMA_STAT2_EXTABLE, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %197

76:                                               ; preds = %47
  %77 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %78 = load i32, i32* @MDIO_MMD_PMAPMD, align 4
  %79 = load i32, i32* @MDIO_PMA_EXTABLE, align 4
  %80 = call i32 @phy_read_mmd(%struct.phy_device* %77, i32 %78, i32 %79)
  store i32 %80, i32* %4, align 4
  %81 = load i32, i32* %4, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %76
  %84 = load i32, i32* %4, align 4
  store i32 %84, i32* %2, align 4
  br label %198

85:                                               ; preds = %76
  %86 = load i32, i32* @ETHTOOL_LINK_MODE_10000baseLRM_Full_BIT, align 4
  %87 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %88 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %4, align 4
  %91 = load i32, i32* @MDIO_PMA_EXTABLE_10GBLRM, align 4
  %92 = and i32 %90, %91
  %93 = call i32 @linkmode_mod_bit(i32 %86, i32 %89, i32 %92)
  %94 = load i32, i32* @ETHTOOL_LINK_MODE_10000baseT_Full_BIT, align 4
  %95 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %96 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %4, align 4
  %99 = load i32, i32* @MDIO_PMA_EXTABLE_10GBT, align 4
  %100 = and i32 %98, %99
  %101 = call i32 @linkmode_mod_bit(i32 %94, i32 %97, i32 %100)
  %102 = load i32, i32* @ETHTOOL_LINK_MODE_10000baseKX4_Full_BIT, align 4
  %103 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %104 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %4, align 4
  %107 = load i32, i32* @MDIO_PMA_EXTABLE_10GBKX4, align 4
  %108 = and i32 %106, %107
  %109 = call i32 @linkmode_mod_bit(i32 %102, i32 %105, i32 %108)
  %110 = load i32, i32* @ETHTOOL_LINK_MODE_10000baseKR_Full_BIT, align 4
  %111 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %112 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %4, align 4
  %115 = load i32, i32* @MDIO_PMA_EXTABLE_10GBKR, align 4
  %116 = and i32 %114, %115
  %117 = call i32 @linkmode_mod_bit(i32 %110, i32 %113, i32 %116)
  %118 = load i32, i32* @ETHTOOL_LINK_MODE_1000baseT_Full_BIT, align 4
  %119 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %120 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* %4, align 4
  %123 = load i32, i32* @MDIO_PMA_EXTABLE_1000BT, align 4
  %124 = and i32 %122, %123
  %125 = call i32 @linkmode_mod_bit(i32 %118, i32 %121, i32 %124)
  %126 = load i32, i32* @ETHTOOL_LINK_MODE_1000baseKX_Full_BIT, align 4
  %127 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %128 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* %4, align 4
  %131 = load i32, i32* @MDIO_PMA_EXTABLE_1000BKX, align 4
  %132 = and i32 %130, %131
  %133 = call i32 @linkmode_mod_bit(i32 %126, i32 %129, i32 %132)
  %134 = load i32, i32* @ETHTOOL_LINK_MODE_100baseT_Full_BIT, align 4
  %135 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %136 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* %4, align 4
  %139 = load i32, i32* @MDIO_PMA_EXTABLE_100BTX, align 4
  %140 = and i32 %138, %139
  %141 = call i32 @linkmode_mod_bit(i32 %134, i32 %137, i32 %140)
  %142 = load i32, i32* @ETHTOOL_LINK_MODE_100baseT_Half_BIT, align 4
  %143 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %144 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* %4, align 4
  %147 = load i32, i32* @MDIO_PMA_EXTABLE_100BTX, align 4
  %148 = and i32 %146, %147
  %149 = call i32 @linkmode_mod_bit(i32 %142, i32 %145, i32 %148)
  %150 = load i32, i32* @ETHTOOL_LINK_MODE_10baseT_Full_BIT, align 4
  %151 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %152 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* %4, align 4
  %155 = load i32, i32* @MDIO_PMA_EXTABLE_10BT, align 4
  %156 = and i32 %154, %155
  %157 = call i32 @linkmode_mod_bit(i32 %150, i32 %153, i32 %156)
  %158 = load i32, i32* @ETHTOOL_LINK_MODE_10baseT_Half_BIT, align 4
  %159 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %160 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* %4, align 4
  %163 = load i32, i32* @MDIO_PMA_EXTABLE_10BT, align 4
  %164 = and i32 %162, %163
  %165 = call i32 @linkmode_mod_bit(i32 %158, i32 %161, i32 %164)
  %166 = load i32, i32* %4, align 4
  %167 = load i32, i32* @MDIO_PMA_EXTABLE_NBT, align 4
  %168 = and i32 %166, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %196

170:                                              ; preds = %85
  %171 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %172 = load i32, i32* @MDIO_MMD_PMAPMD, align 4
  %173 = load i32, i32* @MDIO_PMA_NG_EXTABLE, align 4
  %174 = call i32 @phy_read_mmd(%struct.phy_device* %171, i32 %172, i32 %173)
  store i32 %174, i32* %4, align 4
  %175 = load i32, i32* %4, align 4
  %176 = icmp slt i32 %175, 0
  br i1 %176, label %177, label %179

177:                                              ; preds = %170
  %178 = load i32, i32* %4, align 4
  store i32 %178, i32* %2, align 4
  br label %198

179:                                              ; preds = %170
  %180 = load i32, i32* @ETHTOOL_LINK_MODE_2500baseT_Full_BIT, align 4
  %181 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %182 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* %4, align 4
  %185 = load i32, i32* @MDIO_PMA_NG_EXTABLE_2_5GBT, align 4
  %186 = and i32 %184, %185
  %187 = call i32 @linkmode_mod_bit(i32 %180, i32 %183, i32 %186)
  %188 = load i32, i32* @ETHTOOL_LINK_MODE_5000baseT_Full_BIT, align 4
  %189 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %190 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* %4, align 4
  %193 = load i32, i32* @MDIO_PMA_NG_EXTABLE_5GBT, align 4
  %194 = and i32 %192, %193
  %195 = call i32 @linkmode_mod_bit(i32 %188, i32 %191, i32 %194)
  br label %196

196:                                              ; preds = %179, %85
  br label %197

197:                                              ; preds = %196, %47
  store i32 0, i32* %2, align 4
  br label %198

198:                                              ; preds = %197, %177, %83, %45, %24
  %199 = load i32, i32* %2, align 4
  ret i32 %199
}

declare dso_local i32 @linkmode_clear_bit(i32, i32) #1

declare dso_local i32 @phy_read_mmd(%struct.phy_device*, i32, i32) #1

declare dso_local i32 @linkmode_set_bit(i32, i32) #1

declare dso_local i32 @linkmode_mod_bit(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
