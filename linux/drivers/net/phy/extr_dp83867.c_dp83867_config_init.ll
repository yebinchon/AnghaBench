; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_dp83867.c_dp83867_config_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_dp83867.c_dp83867_config_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i64, %struct.dp83867_private* }
%struct.dp83867_private = type { i32, i32, i32, i64, i64, i32, i64, i64, i64 }

@DP83867_DEVADDR = common dso_local global i32 0, align 4
@DP83867_CFG4 = common dso_local global i32 0, align 4
@MII_DP83867_PHYCTRL = common dso_local global i32 0, align 4
@DP83867_PHYCR_FIFO_DEPTH_MASK = common dso_local global i32 0, align 4
@DP83867_PHYCR_FIFO_DEPTH_SHIFT = common dso_local global i32 0, align 4
@DP83867_STRAP_STS1 = common dso_local global i32 0, align 4
@DP83867_STRAP_STS1_RESERVED = common dso_local global i32 0, align 4
@DP83867_PHYCR_RESERVED_MASK = common dso_local global i32 0, align 4
@DP83867_RGMIICTL = common dso_local global i32 0, align 4
@DP83867_RGMII_TX_CLK_DELAY_EN = common dso_local global i32 0, align 4
@DP83867_RGMII_RX_CLK_DELAY_EN = common dso_local global i32 0, align 4
@PHY_INTERFACE_MODE_RGMII_ID = common dso_local global i64 0, align 8
@PHY_INTERFACE_MODE_RGMII_TXID = common dso_local global i64 0, align 8
@PHY_INTERFACE_MODE_RGMII_RXID = common dso_local global i64 0, align 8
@DP83867_RGMII_TX_CLK_DELAY_SHIFT = common dso_local global i32 0, align 4
@DP83867_RGMIIDCTL = common dso_local global i32 0, align 4
@DP83867_IO_MUX_CFG = common dso_local global i32 0, align 4
@DP83867_IO_MUX_CFG_IO_IMPEDANCE_MASK = common dso_local global i32 0, align 4
@PHY_INTERFACE_MODE_SGMII = common dso_local global i64 0, align 8
@DP83867_10M_SGMII_CFG = common dso_local global i32 0, align 4
@DP83867_10M_SGMII_RATE_ADAPT_MASK = common dso_local global i32 0, align 4
@DP83867_CFG4_SGMII_ANEG_MASK = common dso_local global i32 0, align 4
@DP83867_CFG4_SGMII_ANEG_TIMER_16MS = common dso_local global i32 0, align 4
@DP83867_SGMIICTL = common dso_local global i32 0, align 4
@DP83867_SGMII_TYPE = common dso_local global i32 0, align 4
@DP83867_CFG3 = common dso_local global i32 0, align 4
@DP83867_PORT_MIRROING_KEEP = common dso_local global i64 0, align 8
@DP83867_IO_MUX_CFG_CLK_O_DISABLE = common dso_local global i32 0, align 4
@DP83867_CLK_O_SEL_OFF = common dso_local global i32 0, align 4
@DP83867_IO_MUX_CFG_CLK_O_SEL_MASK = common dso_local global i32 0, align 4
@DP83867_IO_MUX_CFG_CLK_O_SEL_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*)* @dp83867_config_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dp83867_config_init(%struct.phy_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy_device*, align 8
  %4 = alloca %struct.dp83867_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %3, align 8
  %10 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %11 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %10, i32 0, i32 1
  %12 = load %struct.dp83867_private*, %struct.dp83867_private** %11, align 8
  store %struct.dp83867_private* %12, %struct.dp83867_private** %4, align 8
  %13 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %14 = call i32 @dp83867_of_init(%struct.phy_device* %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* %5, align 4
  store i32 %18, i32* %2, align 4
  br label %259

19:                                               ; preds = %1
  %20 = load %struct.dp83867_private*, %struct.dp83867_private** %4, align 8
  %21 = getelementptr inbounds %struct.dp83867_private, %struct.dp83867_private* %20, i32 0, i32 8
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %19
  %25 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %26 = load i32, i32* @DP83867_DEVADDR, align 4
  %27 = load i32, i32* @DP83867_CFG4, align 4
  %28 = call i32 @BIT(i32 7)
  %29 = call i32 @phy_clear_bits_mmd(%struct.phy_device* %25, i32 %26, i32 %27, i32 %28)
  br label %30

30:                                               ; preds = %24, %19
  %31 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %32 = call i64 @phy_interface_is_rgmii(%struct.phy_device* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %138

34:                                               ; preds = %30
  %35 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %36 = load i32, i32* @MII_DP83867_PHYCTRL, align 4
  %37 = call i32 @phy_read(%struct.phy_device* %35, i32 %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i32, i32* %6, align 4
  store i32 %41, i32* %2, align 4
  br label %259

42:                                               ; preds = %34
  %43 = load i32, i32* @DP83867_PHYCR_FIFO_DEPTH_MASK, align 4
  %44 = xor i32 %43, -1
  %45 = load i32, i32* %6, align 4
  %46 = and i32 %45, %44
  store i32 %46, i32* %6, align 4
  %47 = load %struct.dp83867_private*, %struct.dp83867_private** %4, align 8
  %48 = getelementptr inbounds %struct.dp83867_private, %struct.dp83867_private* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @DP83867_PHYCR_FIFO_DEPTH_SHIFT, align 4
  %51 = shl i32 %49, %50
  %52 = load i32, i32* %6, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %6, align 4
  %54 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %55 = load i32, i32* @DP83867_DEVADDR, align 4
  %56 = load i32, i32* @DP83867_STRAP_STS1, align 4
  %57 = call i32 @phy_read_mmd(%struct.phy_device* %54, i32 %55, i32 %56)
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* @DP83867_STRAP_STS1_RESERVED, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %42
  %63 = load i32, i32* @DP83867_PHYCR_RESERVED_MASK, align 4
  %64 = xor i32 %63, -1
  %65 = load i32, i32* %6, align 4
  %66 = and i32 %65, %64
  store i32 %66, i32* %6, align 4
  br label %67

67:                                               ; preds = %62, %42
  %68 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %69 = load i32, i32* @MII_DP83867_PHYCTRL, align 4
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @phy_write(%struct.phy_device* %68, i32 %69, i32 %70)
  store i32 %71, i32* %5, align 4
  %72 = load i32, i32* %5, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %67
  %75 = load i32, i32* %5, align 4
  store i32 %75, i32* %2, align 4
  br label %259

76:                                               ; preds = %67
  %77 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %78 = load i32, i32* @DP83867_DEVADDR, align 4
  %79 = load i32, i32* @DP83867_RGMIICTL, align 4
  %80 = call i32 @phy_read_mmd(%struct.phy_device* %77, i32 %78, i32 %79)
  store i32 %80, i32* %6, align 4
  %81 = load i32, i32* @DP83867_RGMII_TX_CLK_DELAY_EN, align 4
  %82 = load i32, i32* @DP83867_RGMII_RX_CLK_DELAY_EN, align 4
  %83 = or i32 %81, %82
  %84 = xor i32 %83, -1
  %85 = load i32, i32* %6, align 4
  %86 = and i32 %85, %84
  store i32 %86, i32* %6, align 4
  %87 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %88 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @PHY_INTERFACE_MODE_RGMII_ID, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %98

92:                                               ; preds = %76
  %93 = load i32, i32* @DP83867_RGMII_TX_CLK_DELAY_EN, align 4
  %94 = load i32, i32* @DP83867_RGMII_RX_CLK_DELAY_EN, align 4
  %95 = or i32 %93, %94
  %96 = load i32, i32* %6, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %6, align 4
  br label %98

98:                                               ; preds = %92, %76
  %99 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %100 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @PHY_INTERFACE_MODE_RGMII_TXID, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %108

104:                                              ; preds = %98
  %105 = load i32, i32* @DP83867_RGMII_TX_CLK_DELAY_EN, align 4
  %106 = load i32, i32* %6, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %6, align 4
  br label %108

108:                                              ; preds = %104, %98
  %109 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %110 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @PHY_INTERFACE_MODE_RGMII_RXID, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %118

114:                                              ; preds = %108
  %115 = load i32, i32* @DP83867_RGMII_RX_CLK_DELAY_EN, align 4
  %116 = load i32, i32* %6, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* %6, align 4
  br label %118

118:                                              ; preds = %114, %108
  %119 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %120 = load i32, i32* @DP83867_DEVADDR, align 4
  %121 = load i32, i32* @DP83867_RGMIICTL, align 4
  %122 = load i32, i32* %6, align 4
  %123 = call i32 @phy_write_mmd(%struct.phy_device* %119, i32 %120, i32 %121, i32 %122)
  %124 = load %struct.dp83867_private*, %struct.dp83867_private** %4, align 8
  %125 = getelementptr inbounds %struct.dp83867_private, %struct.dp83867_private* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.dp83867_private*, %struct.dp83867_private** %4, align 8
  %128 = getelementptr inbounds %struct.dp83867_private, %struct.dp83867_private* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @DP83867_RGMII_TX_CLK_DELAY_SHIFT, align 4
  %131 = shl i32 %129, %130
  %132 = or i32 %126, %131
  store i32 %132, i32* %8, align 4
  %133 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %134 = load i32, i32* @DP83867_DEVADDR, align 4
  %135 = load i32, i32* @DP83867_RGMIIDCTL, align 4
  %136 = load i32, i32* %8, align 4
  %137 = call i32 @phy_write_mmd(%struct.phy_device* %133, i32 %134, i32 %135, i32 %136)
  br label %138

138:                                              ; preds = %118, %30
  %139 = load %struct.dp83867_private*, %struct.dp83867_private** %4, align 8
  %140 = getelementptr inbounds %struct.dp83867_private, %struct.dp83867_private* %139, i32 0, i32 3
  %141 = load i64, i64* %140, align 8
  %142 = icmp sge i64 %141, 0
  br i1 %142, label %143, label %153

143:                                              ; preds = %138
  %144 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %145 = load i32, i32* @DP83867_DEVADDR, align 4
  %146 = load i32, i32* @DP83867_IO_MUX_CFG, align 4
  %147 = load i32, i32* @DP83867_IO_MUX_CFG_IO_IMPEDANCE_MASK, align 4
  %148 = load %struct.dp83867_private*, %struct.dp83867_private** %4, align 8
  %149 = getelementptr inbounds %struct.dp83867_private, %struct.dp83867_private* %148, i32 0, i32 3
  %150 = load i64, i64* %149, align 8
  %151 = trunc i64 %150 to i32
  %152 = call i32 @phy_modify_mmd(%struct.phy_device* %144, i32 %145, i32 %146, i32 %147, i32 %151)
  br label %153

153:                                              ; preds = %143, %138
  %154 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %155 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* @PHY_INTERFACE_MODE_SGMII, align 8
  %158 = icmp eq i64 %156, %157
  br i1 %158, label %159, label %204

159:                                              ; preds = %153
  %160 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %161 = load i32, i32* @DP83867_DEVADDR, align 4
  %162 = load i32, i32* @DP83867_10M_SGMII_CFG, align 4
  %163 = load i32, i32* @DP83867_10M_SGMII_RATE_ADAPT_MASK, align 4
  %164 = call i32 @phy_modify_mmd(%struct.phy_device* %160, i32 %161, i32 %162, i32 %163, i32 0)
  store i32 %164, i32* %5, align 4
  %165 = load i32, i32* %5, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %169

167:                                              ; preds = %159
  %168 = load i32, i32* %5, align 4
  store i32 %168, i32* %2, align 4
  br label %259

169:                                              ; preds = %159
  %170 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %171 = load i32, i32* @DP83867_DEVADDR, align 4
  %172 = load i32, i32* @DP83867_CFG4, align 4
  %173 = load i32, i32* @DP83867_CFG4_SGMII_ANEG_MASK, align 4
  %174 = load i32, i32* @DP83867_CFG4_SGMII_ANEG_TIMER_16MS, align 4
  %175 = call i32 @phy_modify_mmd(%struct.phy_device* %170, i32 %171, i32 %172, i32 %173, i32 %174)
  store i32 %175, i32* %5, align 4
  %176 = load i32, i32* %5, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %180

178:                                              ; preds = %169
  %179 = load i32, i32* %5, align 4
  store i32 %179, i32* %2, align 4
  br label %259

180:                                              ; preds = %169
  %181 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %182 = load i32, i32* @DP83867_DEVADDR, align 4
  %183 = load i32, i32* @DP83867_SGMIICTL, align 4
  %184 = call i32 @phy_read_mmd(%struct.phy_device* %181, i32 %182, i32 %183)
  store i32 %184, i32* %6, align 4
  %185 = load %struct.dp83867_private*, %struct.dp83867_private** %4, align 8
  %186 = getelementptr inbounds %struct.dp83867_private, %struct.dp83867_private* %185, i32 0, i32 7
  %187 = load i64, i64* %186, align 8
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %193

189:                                              ; preds = %180
  %190 = load i32, i32* @DP83867_SGMII_TYPE, align 4
  %191 = load i32, i32* %6, align 4
  %192 = or i32 %191, %190
  store i32 %192, i32* %6, align 4
  br label %198

193:                                              ; preds = %180
  %194 = load i32, i32* @DP83867_SGMII_TYPE, align 4
  %195 = xor i32 %194, -1
  %196 = load i32, i32* %6, align 4
  %197 = and i32 %196, %195
  store i32 %197, i32* %6, align 4
  br label %198

198:                                              ; preds = %193, %189
  %199 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %200 = load i32, i32* @DP83867_DEVADDR, align 4
  %201 = load i32, i32* @DP83867_SGMIICTL, align 4
  %202 = load i32, i32* %6, align 4
  %203 = call i32 @phy_write_mmd(%struct.phy_device* %199, i32 %200, i32 %201, i32 %202)
  br label %204

204:                                              ; preds = %198, %153
  %205 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %206 = call i64 @phy_interrupt_is_valid(%struct.phy_device* %205)
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %219

208:                                              ; preds = %204
  %209 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %210 = load i32, i32* @DP83867_CFG3, align 4
  %211 = call i32 @phy_read(%struct.phy_device* %209, i32 %210)
  store i32 %211, i32* %6, align 4
  %212 = call i32 @BIT(i32 7)
  %213 = load i32, i32* %6, align 4
  %214 = or i32 %213, %212
  store i32 %214, i32* %6, align 4
  %215 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %216 = load i32, i32* @DP83867_CFG3, align 4
  %217 = load i32, i32* %6, align 4
  %218 = call i32 @phy_write(%struct.phy_device* %215, i32 %216, i32 %217)
  br label %219

219:                                              ; preds = %208, %204
  %220 = load %struct.dp83867_private*, %struct.dp83867_private** %4, align 8
  %221 = getelementptr inbounds %struct.dp83867_private, %struct.dp83867_private* %220, i32 0, i32 4
  %222 = load i64, i64* %221, align 8
  %223 = load i64, i64* @DP83867_PORT_MIRROING_KEEP, align 8
  %224 = icmp ne i64 %222, %223
  br i1 %224, label %225, label %228

225:                                              ; preds = %219
  %226 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %227 = call i32 @dp83867_config_port_mirroring(%struct.phy_device* %226)
  br label %228

228:                                              ; preds = %225, %219
  %229 = load %struct.dp83867_private*, %struct.dp83867_private** %4, align 8
  %230 = getelementptr inbounds %struct.dp83867_private, %struct.dp83867_private* %229, i32 0, i32 6
  %231 = load i64, i64* %230, align 8
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %258

233:                                              ; preds = %228
  %234 = load i32, i32* @DP83867_IO_MUX_CFG_CLK_O_DISABLE, align 4
  store i32 %234, i32* %9, align 4
  %235 = load %struct.dp83867_private*, %struct.dp83867_private** %4, align 8
  %236 = getelementptr inbounds %struct.dp83867_private, %struct.dp83867_private* %235, i32 0, i32 5
  %237 = load i32, i32* %236, align 8
  %238 = load i32, i32* @DP83867_CLK_O_SEL_OFF, align 4
  %239 = icmp eq i32 %237, %238
  br i1 %239, label %240, label %242

240:                                              ; preds = %233
  %241 = load i32, i32* @DP83867_IO_MUX_CFG_CLK_O_DISABLE, align 4
  store i32 %241, i32* %6, align 4
  br label %251

242:                                              ; preds = %233
  %243 = load i32, i32* @DP83867_IO_MUX_CFG_CLK_O_SEL_MASK, align 4
  %244 = load i32, i32* %9, align 4
  %245 = or i32 %244, %243
  store i32 %245, i32* %9, align 4
  %246 = load %struct.dp83867_private*, %struct.dp83867_private** %4, align 8
  %247 = getelementptr inbounds %struct.dp83867_private, %struct.dp83867_private* %246, i32 0, i32 5
  %248 = load i32, i32* %247, align 8
  %249 = load i32, i32* @DP83867_IO_MUX_CFG_CLK_O_SEL_SHIFT, align 4
  %250 = shl i32 %248, %249
  store i32 %250, i32* %6, align 4
  br label %251

251:                                              ; preds = %242, %240
  %252 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %253 = load i32, i32* @DP83867_DEVADDR, align 4
  %254 = load i32, i32* @DP83867_IO_MUX_CFG, align 4
  %255 = load i32, i32* %9, align 4
  %256 = load i32, i32* %6, align 4
  %257 = call i32 @phy_modify_mmd(%struct.phy_device* %252, i32 %253, i32 %254, i32 %255, i32 %256)
  br label %258

258:                                              ; preds = %251, %228
  store i32 0, i32* %2, align 4
  br label %259

259:                                              ; preds = %258, %178, %167, %74, %40, %17
  %260 = load i32, i32* %2, align 4
  ret i32 %260
}

declare dso_local i32 @dp83867_of_init(%struct.phy_device*) #1

declare dso_local i32 @phy_clear_bits_mmd(%struct.phy_device*, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i64 @phy_interface_is_rgmii(%struct.phy_device*) #1

declare dso_local i32 @phy_read(%struct.phy_device*, i32) #1

declare dso_local i32 @phy_read_mmd(%struct.phy_device*, i32, i32) #1

declare dso_local i32 @phy_write(%struct.phy_device*, i32, i32) #1

declare dso_local i32 @phy_write_mmd(%struct.phy_device*, i32, i32, i32) #1

declare dso_local i32 @phy_modify_mmd(%struct.phy_device*, i32, i32, i32, i32) #1

declare dso_local i64 @phy_interrupt_is_valid(%struct.phy_device*) #1

declare dso_local i32 @dp83867_config_port_mirroring(%struct.phy_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
