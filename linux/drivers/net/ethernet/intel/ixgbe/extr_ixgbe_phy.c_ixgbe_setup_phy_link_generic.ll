; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_phy.c_ixgbe_setup_phy_link_generic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_phy.c_ixgbe_setup_phy_link_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 (%struct.ixgbe_hw.0*, i32, i32, i32)*, i32 (%struct.ixgbe_hw.1*, i32, i32, i32*)* }
%struct.ixgbe_hw.0 = type opaque
%struct.ixgbe_hw.1 = type opaque
%struct.TYPE_4__ = type { i64 }

@IXGBE_MII_AUTONEG_REG = common dso_local global i32 0, align 4
@MDIO_AN_10GBT_CTRL = common dso_local global i32 0, align 4
@MDIO_MMD_AN = common dso_local global i32 0, align 4
@MDIO_AN_10GBT_CTRL_ADV10G = common dso_local global i32 0, align 4
@IXGBE_LINK_SPEED_10GB_FULL = common dso_local global i32 0, align 4
@IXGBE_MII_AUTONEG_VENDOR_PROVISION_1_REG = common dso_local global i32 0, align 4
@ixgbe_mac_X550 = common dso_local global i64 0, align 8
@IXGBE_MII_5GBASE_T_ADVERTISE = common dso_local global i32 0, align 4
@IXGBE_LINK_SPEED_5GB_FULL = common dso_local global i32 0, align 4
@IXGBE_MII_2_5GBASE_T_ADVERTISE = common dso_local global i32 0, align 4
@IXGBE_LINK_SPEED_2_5GB_FULL = common dso_local global i32 0, align 4
@IXGBE_MII_1GBASE_T_ADVERTISE = common dso_local global i32 0, align 4
@IXGBE_LINK_SPEED_1GB_FULL = common dso_local global i32 0, align 4
@MDIO_AN_ADVERTISE = common dso_local global i32 0, align 4
@ADVERTISE_100FULL = common dso_local global i32 0, align 4
@ADVERTISE_100HALF = common dso_local global i32 0, align 4
@IXGBE_LINK_SPEED_100_FULL = common dso_local global i32 0, align 4
@MDIO_CTRL1 = common dso_local global i32 0, align 4
@MDIO_AN_CTRL1_RESTART = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_setup_phy_link_generic(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ixgbe_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load i32, i32* @IXGBE_MII_AUTONEG_REG, align 4
  store i32 %8, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %9 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %10 = call i32 @ixgbe_get_copper_link_capabilities_generic(%struct.ixgbe_hw* %9, i32* %7, i32* %6)
  %11 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %12 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  %15 = load i32 (%struct.ixgbe_hw.1*, i32, i32, i32*)*, i32 (%struct.ixgbe_hw.1*, i32, i32, i32*)** %14, align 8
  %16 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %17 = bitcast %struct.ixgbe_hw* %16 to %struct.ixgbe_hw.1*
  %18 = load i32, i32* @MDIO_AN_10GBT_CTRL, align 4
  %19 = load i32, i32* @MDIO_MMD_AN, align 4
  %20 = call i32 %15(%struct.ixgbe_hw.1* %17, i32 %18, i32 %19, i32* %5)
  %21 = load i32, i32* @MDIO_AN_10GBT_CTRL_ADV10G, align 4
  %22 = xor i32 %21, -1
  %23 = load i32, i32* %5, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %5, align 4
  %25 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %26 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @IXGBE_LINK_SPEED_10GB_FULL, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %1
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @IXGBE_LINK_SPEED_10GB_FULL, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load i32, i32* @MDIO_AN_10GBT_CTRL_ADV10G, align 4
  %39 = load i32, i32* %5, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %5, align 4
  br label %41

41:                                               ; preds = %37, %32, %1
  %42 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %43 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32 (%struct.ixgbe_hw.0*, i32, i32, i32)*, i32 (%struct.ixgbe_hw.0*, i32, i32, i32)** %45, align 8
  %47 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %48 = bitcast %struct.ixgbe_hw* %47 to %struct.ixgbe_hw.0*
  %49 = load i32, i32* @MDIO_AN_10GBT_CTRL, align 4
  %50 = load i32, i32* @MDIO_MMD_AN, align 4
  %51 = load i32, i32* %5, align 4
  %52 = call i32 %46(%struct.ixgbe_hw.0* %48, i32 %49, i32 %50, i32 %51)
  %53 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %54 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  %57 = load i32 (%struct.ixgbe_hw.1*, i32, i32, i32*)*, i32 (%struct.ixgbe_hw.1*, i32, i32, i32*)** %56, align 8
  %58 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %59 = bitcast %struct.ixgbe_hw* %58 to %struct.ixgbe_hw.1*
  %60 = load i32, i32* @IXGBE_MII_AUTONEG_VENDOR_PROVISION_1_REG, align 4
  %61 = load i32, i32* @MDIO_MMD_AN, align 4
  %62 = call i32 %57(%struct.ixgbe_hw.1* %59, i32 %60, i32 %61, i32* %5)
  %63 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %64 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @ixgbe_mac_X550, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %112

69:                                               ; preds = %41
  %70 = load i32, i32* @IXGBE_MII_5GBASE_T_ADVERTISE, align 4
  %71 = xor i32 %70, -1
  %72 = load i32, i32* %5, align 4
  %73 = and i32 %72, %71
  store i32 %73, i32* %5, align 4
  %74 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %75 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @IXGBE_LINK_SPEED_5GB_FULL, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %90

81:                                               ; preds = %69
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* @IXGBE_LINK_SPEED_5GB_FULL, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %81
  %87 = load i32, i32* @IXGBE_MII_5GBASE_T_ADVERTISE, align 4
  %88 = load i32, i32* %5, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %5, align 4
  br label %90

90:                                               ; preds = %86, %81, %69
  %91 = load i32, i32* @IXGBE_MII_2_5GBASE_T_ADVERTISE, align 4
  %92 = xor i32 %91, -1
  %93 = load i32, i32* %5, align 4
  %94 = and i32 %93, %92
  store i32 %94, i32* %5, align 4
  %95 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %96 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @IXGBE_LINK_SPEED_2_5GB_FULL, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %111

102:                                              ; preds = %90
  %103 = load i32, i32* %7, align 4
  %104 = load i32, i32* @IXGBE_LINK_SPEED_2_5GB_FULL, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %102
  %108 = load i32, i32* @IXGBE_MII_2_5GBASE_T_ADVERTISE, align 4
  %109 = load i32, i32* %5, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %5, align 4
  br label %111

111:                                              ; preds = %107, %102, %90
  br label %112

112:                                              ; preds = %111, %41
  %113 = load i32, i32* @IXGBE_MII_1GBASE_T_ADVERTISE, align 4
  %114 = xor i32 %113, -1
  %115 = load i32, i32* %5, align 4
  %116 = and i32 %115, %114
  store i32 %116, i32* %5, align 4
  %117 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %118 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @IXGBE_LINK_SPEED_1GB_FULL, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %133

124:                                              ; preds = %112
  %125 = load i32, i32* %7, align 4
  %126 = load i32, i32* @IXGBE_LINK_SPEED_1GB_FULL, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %124
  %130 = load i32, i32* @IXGBE_MII_1GBASE_T_ADVERTISE, align 4
  %131 = load i32, i32* %5, align 4
  %132 = or i32 %131, %130
  store i32 %132, i32* %5, align 4
  br label %133

133:                                              ; preds = %129, %124, %112
  %134 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %135 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 0
  %138 = load i32 (%struct.ixgbe_hw.0*, i32, i32, i32)*, i32 (%struct.ixgbe_hw.0*, i32, i32, i32)** %137, align 8
  %139 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %140 = bitcast %struct.ixgbe_hw* %139 to %struct.ixgbe_hw.0*
  %141 = load i32, i32* @IXGBE_MII_AUTONEG_VENDOR_PROVISION_1_REG, align 4
  %142 = load i32, i32* @MDIO_MMD_AN, align 4
  %143 = load i32, i32* %5, align 4
  %144 = call i32 %138(%struct.ixgbe_hw.0* %140, i32 %141, i32 %142, i32 %143)
  %145 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %146 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 1
  %149 = load i32 (%struct.ixgbe_hw.1*, i32, i32, i32*)*, i32 (%struct.ixgbe_hw.1*, i32, i32, i32*)** %148, align 8
  %150 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %151 = bitcast %struct.ixgbe_hw* %150 to %struct.ixgbe_hw.1*
  %152 = load i32, i32* @MDIO_AN_ADVERTISE, align 4
  %153 = load i32, i32* @MDIO_MMD_AN, align 4
  %154 = call i32 %149(%struct.ixgbe_hw.1* %151, i32 %152, i32 %153, i32* %5)
  %155 = load i32, i32* @ADVERTISE_100FULL, align 4
  %156 = load i32, i32* @ADVERTISE_100HALF, align 4
  %157 = or i32 %155, %156
  %158 = xor i32 %157, -1
  %159 = load i32, i32* %5, align 4
  %160 = and i32 %159, %158
  store i32 %160, i32* %5, align 4
  %161 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %162 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = load i32, i32* @IXGBE_LINK_SPEED_100_FULL, align 4
  %166 = and i32 %164, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %177

168:                                              ; preds = %133
  %169 = load i32, i32* %7, align 4
  %170 = load i32, i32* @IXGBE_LINK_SPEED_100_FULL, align 4
  %171 = and i32 %169, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %177

173:                                              ; preds = %168
  %174 = load i32, i32* @ADVERTISE_100FULL, align 4
  %175 = load i32, i32* %5, align 4
  %176 = or i32 %175, %174
  store i32 %176, i32* %5, align 4
  br label %177

177:                                              ; preds = %173, %168, %133
  %178 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %179 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %179, i32 0, i32 1
  %181 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %180, i32 0, i32 0
  %182 = load i32 (%struct.ixgbe_hw.0*, i32, i32, i32)*, i32 (%struct.ixgbe_hw.0*, i32, i32, i32)** %181, align 8
  %183 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %184 = bitcast %struct.ixgbe_hw* %183 to %struct.ixgbe_hw.0*
  %185 = load i32, i32* @MDIO_AN_ADVERTISE, align 4
  %186 = load i32, i32* @MDIO_MMD_AN, align 4
  %187 = load i32, i32* %5, align 4
  %188 = call i32 %182(%struct.ixgbe_hw.0* %184, i32 %185, i32 %186, i32 %187)
  %189 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %190 = call i64 @ixgbe_check_reset_blocked(%struct.ixgbe_hw* %189)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %193

192:                                              ; preds = %177
  store i32 0, i32* %2, align 4
  br label %219

193:                                              ; preds = %177
  %194 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %195 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %195, i32 0, i32 1
  %197 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %196, i32 0, i32 1
  %198 = load i32 (%struct.ixgbe_hw.1*, i32, i32, i32*)*, i32 (%struct.ixgbe_hw.1*, i32, i32, i32*)** %197, align 8
  %199 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %200 = bitcast %struct.ixgbe_hw* %199 to %struct.ixgbe_hw.1*
  %201 = load i32, i32* @MDIO_CTRL1, align 4
  %202 = load i32, i32* @MDIO_MMD_AN, align 4
  %203 = call i32 %198(%struct.ixgbe_hw.1* %200, i32 %201, i32 %202, i32* %5)
  %204 = load i32, i32* @MDIO_AN_CTRL1_RESTART, align 4
  %205 = load i32, i32* %5, align 4
  %206 = or i32 %205, %204
  store i32 %206, i32* %5, align 4
  %207 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %208 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %208, i32 0, i32 1
  %210 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %209, i32 0, i32 0
  %211 = load i32 (%struct.ixgbe_hw.0*, i32, i32, i32)*, i32 (%struct.ixgbe_hw.0*, i32, i32, i32)** %210, align 8
  %212 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %213 = bitcast %struct.ixgbe_hw* %212 to %struct.ixgbe_hw.0*
  %214 = load i32, i32* @MDIO_CTRL1, align 4
  %215 = load i32, i32* @MDIO_MMD_AN, align 4
  %216 = load i32, i32* %5, align 4
  %217 = call i32 %211(%struct.ixgbe_hw.0* %213, i32 %214, i32 %215, i32 %216)
  %218 = load i32, i32* %4, align 4
  store i32 %218, i32* %2, align 4
  br label %219

219:                                              ; preds = %193, %192
  %220 = load i32, i32* %2, align 4
  ret i32 %220
}

declare dso_local i32 @ixgbe_get_copper_link_capabilities_generic(%struct.ixgbe_hw*, i32*, i32*) #1

declare dso_local i64 @ixgbe_check_reset_blocked(%struct.ixgbe_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
