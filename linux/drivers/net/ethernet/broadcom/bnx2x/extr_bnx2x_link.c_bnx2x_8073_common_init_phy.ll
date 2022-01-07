; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_link.c_bnx2x_8073_common_init_phy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_link.c_bnx2x_8073_common_init_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_phy = type { i32 }

@PORT_MAX = common dso_local global i32 0, align 4
@NIG_REG_PORT_SWAP = common dso_local global i32 0, align 4
@NIG_REG_STRAP_OVERRIDE = common dso_local global i32 0, align 4
@PORT_0 = common dso_local global i32 0, align 4
@NETIF_MSG_LINK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"populate_phy failed\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@NIG_REG_MASK_INTERRUPT_PORT0 = common dso_local global i64 0, align 8
@NIG_MASK_XGXS0_LINK_STATUS = common dso_local global i32 0, align 4
@NIG_MASK_XGXS0_LINK10G = common dso_local global i32 0, align 4
@NIG_MASK_SERDES0_LINK_STATUS = common dso_local global i32 0, align 4
@NIG_MASK_MI_INT = common dso_local global i32 0, align 4
@MISC_REGISTERS_GPIO_2 = common dso_local global i32 0, align 4
@MISC_REGISTERS_GPIO_OUTPUT_HIGH = common dso_local global i32 0, align 4
@MDIO_PMA_DEVAD = common dso_local global i32 0, align 4
@MDIO_PMA_REG_CTRL = common dso_local global i32 0, align 4
@PORT_1 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"Loading spirom for phy address 0x%x\0A\00", align 1
@MDIO_PMA_REG_TX_POWER_DOWN = common dso_local global i32 0, align 4
@MDIO_PMA_REG_EDC_FFE_MAIN = common dso_local global i32 0, align 4
@MISC_REGISTERS_GPIO_OUTPUT_LOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*, i64*, i64*, i32, i64)* @bnx2x_8073_common_init_phy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_8073_common_init_phy(%struct.bnx2x* %0, i64* %1, i64* %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.bnx2x*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %7, align 8
  store i64* %1, i64** %8, align 8
  store i64* %2, i64** %9, align 8
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %23 = load i32, i32* @PORT_MAX, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %12, align 8
  %26 = alloca %struct.bnx2x_phy, i64 %24, align 16
  store i64 %24, i64* %13, align 8
  %27 = load i32, i32* @PORT_MAX, align 4
  %28 = zext i32 %27 to i64
  %29 = alloca %struct.bnx2x_phy*, i64 %28, align 16
  store i64 %28, i64* %14, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %30 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %31 = load i32, i32* @NIG_REG_PORT_SWAP, align 4
  %32 = call i64 @REG_RD(%struct.bnx2x* %30, i32 %31)
  store i64 %32, i64* %18, align 8
  %33 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %34 = load i32, i32* @NIG_REG_STRAP_OVERRIDE, align 4
  %35 = call i64 @REG_RD(%struct.bnx2x* %33, i32 %34)
  store i64 %35, i64* %19, align 8
  %36 = load i64, i64* %18, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %5
  %39 = load i64, i64* %19, align 8
  %40 = icmp ne i64 %39, 0
  br label %41

41:                                               ; preds = %38, %5
  %42 = phi i1 [ false, %5 ], [ %40, %38 ]
  %43 = zext i1 %42 to i32
  %44 = load i32, i32* %16, align 4
  %45 = xor i32 %44, %43
  store i32 %45, i32* %16, align 4
  %46 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %47 = load i32, i32* %16, align 4
  %48 = call i32 @bnx2x_ext_phy_hw_reset(%struct.bnx2x* %46, i32 %47)
  %49 = load i32, i32* @PORT_MAX, align 4
  %50 = sub nsw i32 %49, 1
  store i32 %50, i32* %16, align 4
  br label %51

51:                                               ; preds = %121, %41
  %52 = load i32, i32* %16, align 4
  %53 = load i32, i32* @PORT_0, align 4
  %54 = icmp sge i32 %52, %53
  br i1 %54, label %55, label %124

55:                                               ; preds = %51
  %56 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %57 = call i64 @CHIP_IS_E1x(%struct.bnx2x* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %55
  %60 = load i64*, i64** %8, align 8
  %61 = getelementptr inbounds i64, i64* %60, i64 0
  %62 = load i64, i64* %61, align 8
  store i64 %62, i64* %20, align 8
  %63 = load i64*, i64** %9, align 8
  %64 = getelementptr inbounds i64, i64* %63, i64 0
  %65 = load i64, i64* %64, align 8
  store i64 %65, i64* %21, align 8
  %66 = load i32, i32* %16, align 4
  store i32 %66, i32* %17, align 4
  br label %78

67:                                               ; preds = %55
  %68 = load i64*, i64** %8, align 8
  %69 = load i32, i32* %16, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i64, i64* %68, i64 %70
  %72 = load i64, i64* %71, align 8
  store i64 %72, i64* %20, align 8
  %73 = load i64*, i64** %9, align 8
  %74 = load i32, i32* %16, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i64, i64* %73, i64 %75
  %77 = load i64, i64* %76, align 8
  store i64 %77, i64* %21, align 8
  store i32 0, i32* %17, align 4
  br label %78

78:                                               ; preds = %67, %59
  %79 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %80 = load i32, i32* %10, align 4
  %81 = load i64, i64* %20, align 8
  %82 = load i64, i64* %21, align 8
  %83 = load i32, i32* %17, align 4
  %84 = load i32, i32* %16, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %26, i64 %85
  %87 = call i64 @bnx2x_populate_phy(%struct.bnx2x* %79, i32 %80, i64 %81, i64 %82, i32 %83, %struct.bnx2x_phy* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %78
  %90 = load i32, i32* @NETIF_MSG_LINK, align 4
  %91 = call i32 (i32, i8*, ...) @DP(i32 %90, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %92 = load i32, i32* @EINVAL, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %6, align 4
  store i32 1, i32* %22, align 4
  br label %266

94:                                               ; preds = %78
  %95 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %96 = load i64, i64* @NIG_REG_MASK_INTERRUPT_PORT0, align 8
  %97 = load i32, i32* %17, align 4
  %98 = mul nsw i32 %97, 4
  %99 = sext i32 %98 to i64
  %100 = add nsw i64 %96, %99
  %101 = load i32, i32* @NIG_MASK_XGXS0_LINK_STATUS, align 4
  %102 = load i32, i32* @NIG_MASK_XGXS0_LINK10G, align 4
  %103 = or i32 %101, %102
  %104 = load i32, i32* @NIG_MASK_SERDES0_LINK_STATUS, align 4
  %105 = or i32 %103, %104
  %106 = load i32, i32* @NIG_MASK_MI_INT, align 4
  %107 = or i32 %105, %106
  %108 = call i32 @bnx2x_bits_dis(%struct.bnx2x* %95, i64 %100, i32 %107)
  %109 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %110 = load i32, i32* @MISC_REGISTERS_GPIO_2, align 4
  %111 = load i32, i32* @MISC_REGISTERS_GPIO_OUTPUT_HIGH, align 4
  %112 = load i32, i32* %16, align 4
  %113 = call i32 @bnx2x_set_gpio(%struct.bnx2x* %109, i32 %110, i32 %111, i32 %112)
  %114 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %115 = load i32, i32* %16, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %26, i64 %116
  %118 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %119 = load i32, i32* @MDIO_PMA_REG_CTRL, align 4
  %120 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %114, %struct.bnx2x_phy* %117, i32 %118, i32 %119, i32 32768)
  br label %121

121:                                              ; preds = %94
  %122 = load i32, i32* %16, align 4
  %123 = add nsw i32 %122, -1
  store i32 %123, i32* %16, align 4
  br label %51

124:                                              ; preds = %51
  %125 = call i32 @msleep(i32 150)
  %126 = load i32, i32* @PORT_0, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %26, i64 %127
  %129 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = and i32 %130, 1
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %144

133:                                              ; preds = %124
  %134 = load i64, i64* @PORT_1, align 8
  %135 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %26, i64 %134
  %136 = load i32, i32* @PORT_0, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.bnx2x_phy*, %struct.bnx2x_phy** %29, i64 %137
  store %struct.bnx2x_phy* %135, %struct.bnx2x_phy** %138, align 8
  %139 = load i32, i32* @PORT_0, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %26, i64 %140
  %142 = load i64, i64* @PORT_1, align 8
  %143 = getelementptr inbounds %struct.bnx2x_phy*, %struct.bnx2x_phy** %29, i64 %142
  store %struct.bnx2x_phy* %141, %struct.bnx2x_phy** %143, align 8
  br label %155

144:                                              ; preds = %124
  %145 = load i32, i32* @PORT_0, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %26, i64 %146
  %148 = load i32, i32* @PORT_0, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.bnx2x_phy*, %struct.bnx2x_phy** %29, i64 %149
  store %struct.bnx2x_phy* %147, %struct.bnx2x_phy** %150, align 8
  %151 = load i64, i64* @PORT_1, align 8
  %152 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %26, i64 %151
  %153 = load i64, i64* @PORT_1, align 8
  %154 = getelementptr inbounds %struct.bnx2x_phy*, %struct.bnx2x_phy** %29, i64 %153
  store %struct.bnx2x_phy* %152, %struct.bnx2x_phy** %154, align 8
  br label %155

155:                                              ; preds = %144, %133
  %156 = load i32, i32* @PORT_MAX, align 4
  %157 = sub nsw i32 %156, 1
  store i32 %157, i32* %16, align 4
  br label %158

158:                                              ; preds = %208, %155
  %159 = load i32, i32* %16, align 4
  %160 = load i32, i32* @PORT_0, align 4
  %161 = icmp sge i32 %159, %160
  br i1 %161, label %162, label %211

162:                                              ; preds = %158
  %163 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %164 = call i64 @CHIP_IS_E1x(%struct.bnx2x* %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %168

166:                                              ; preds = %162
  %167 = load i32, i32* %16, align 4
  store i32 %167, i32* %17, align 4
  br label %169

168:                                              ; preds = %162
  store i32 0, i32* %17, align 4
  br label %169

169:                                              ; preds = %168, %166
  %170 = load i32, i32* @NETIF_MSG_LINK, align 4
  %171 = load i32, i32* %16, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.bnx2x_phy*, %struct.bnx2x_phy** %29, i64 %172
  %174 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %173, align 8
  %175 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = call i32 (i32, i8*, ...) @DP(i32 %170, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %176)
  %178 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %179 = load i32, i32* %16, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.bnx2x_phy*, %struct.bnx2x_phy** %29, i64 %180
  %182 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %181, align 8
  %183 = load i32, i32* %17, align 4
  %184 = call i64 @bnx2x_8073_8727_external_rom_boot(%struct.bnx2x* %178, %struct.bnx2x_phy* %182, i32 %183)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %189

186:                                              ; preds = %169
  %187 = load i32, i32* @EINVAL, align 4
  %188 = sub nsw i32 0, %187
  store i32 %188, i32* %6, align 4
  store i32 1, i32* %22, align 4
  br label %266

189:                                              ; preds = %169
  %190 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %191 = load i32, i32* %16, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.bnx2x_phy*, %struct.bnx2x_phy** %29, i64 %192
  %194 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %193, align 8
  %195 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %196 = load i32, i32* @MDIO_PMA_REG_TX_POWER_DOWN, align 4
  %197 = call i32 @bnx2x_cl45_read(%struct.bnx2x* %190, %struct.bnx2x_phy* %194, i32 %195, i32 %196, i32* %15)
  %198 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %199 = load i32, i32* %16, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.bnx2x_phy*, %struct.bnx2x_phy** %29, i64 %200
  %202 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %201, align 8
  %203 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %204 = load i32, i32* @MDIO_PMA_REG_TX_POWER_DOWN, align 4
  %205 = load i32, i32* %15, align 4
  %206 = or i32 %205, 1024
  %207 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %198, %struct.bnx2x_phy* %202, i32 %203, i32 %204, i32 %206)
  br label %208

208:                                              ; preds = %189
  %209 = load i32, i32* %16, align 4
  %210 = add nsw i32 %209, -1
  store i32 %210, i32* %16, align 4
  br label %158

211:                                              ; preds = %158
  %212 = call i32 @msleep(i32 600)
  %213 = load i32, i32* @PORT_MAX, align 4
  %214 = sub nsw i32 %213, 1
  store i32 %214, i32* %16, align 4
  br label %215

215:                                              ; preds = %262, %211
  %216 = load i32, i32* %16, align 4
  %217 = load i32, i32* @PORT_0, align 4
  %218 = icmp sge i32 %216, %217
  br i1 %218, label %219, label %265

219:                                              ; preds = %215
  %220 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %221 = load i32, i32* %16, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds %struct.bnx2x_phy*, %struct.bnx2x_phy** %29, i64 %222
  %224 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %223, align 8
  %225 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %226 = load i32, i32* @MDIO_PMA_REG_TX_POWER_DOWN, align 4
  %227 = call i32 @bnx2x_cl45_read(%struct.bnx2x* %220, %struct.bnx2x_phy* %224, i32 %225, i32 %226, i32* %15)
  %228 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %229 = load i32, i32* %16, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds %struct.bnx2x_phy*, %struct.bnx2x_phy** %29, i64 %230
  %232 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %231, align 8
  %233 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %234 = load i32, i32* @MDIO_PMA_REG_TX_POWER_DOWN, align 4
  %235 = load i32, i32* %15, align 4
  %236 = and i32 %235, -1025
  %237 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %228, %struct.bnx2x_phy* %232, i32 %233, i32 %234, i32 %236)
  %238 = call i32 @usleep_range(i32 15000, i32 30000)
  %239 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %240 = load i32, i32* %16, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds %struct.bnx2x_phy*, %struct.bnx2x_phy** %29, i64 %241
  %243 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %242, align 8
  %244 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %245 = load i32, i32* @MDIO_PMA_REG_EDC_FFE_MAIN, align 4
  %246 = call i32 @bnx2x_cl45_read(%struct.bnx2x* %239, %struct.bnx2x_phy* %243, i32 %244, i32 %245, i32* %15)
  %247 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %248 = load i32, i32* %16, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds %struct.bnx2x_phy*, %struct.bnx2x_phy** %29, i64 %249
  %251 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %250, align 8
  %252 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %253 = load i32, i32* @MDIO_PMA_REG_EDC_FFE_MAIN, align 4
  %254 = load i32, i32* %15, align 4
  %255 = or i32 %254, 4096
  %256 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %247, %struct.bnx2x_phy* %251, i32 %252, i32 %253, i32 %255)
  %257 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %258 = load i32, i32* @MISC_REGISTERS_GPIO_2, align 4
  %259 = load i32, i32* @MISC_REGISTERS_GPIO_OUTPUT_LOW, align 4
  %260 = load i32, i32* %16, align 4
  %261 = call i32 @bnx2x_set_gpio(%struct.bnx2x* %257, i32 %258, i32 %259, i32 %260)
  br label %262

262:                                              ; preds = %219
  %263 = load i32, i32* %16, align 4
  %264 = add nsw i32 %263, -1
  store i32 %264, i32* %16, align 4
  br label %215

265:                                              ; preds = %215
  store i32 0, i32* %6, align 4
  store i32 1, i32* %22, align 4
  br label %266

266:                                              ; preds = %265, %186, %89
  %267 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %267)
  %268 = load i32, i32* %6, align 4
  ret i32 %268
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @REG_RD(%struct.bnx2x*, i32) #2

declare dso_local i32 @bnx2x_ext_phy_hw_reset(%struct.bnx2x*, i32) #2

declare dso_local i64 @CHIP_IS_E1x(%struct.bnx2x*) #2

declare dso_local i64 @bnx2x_populate_phy(%struct.bnx2x*, i32, i64, i64, i32, %struct.bnx2x_phy*) #2

declare dso_local i32 @DP(i32, i8*, ...) #2

declare dso_local i32 @bnx2x_bits_dis(%struct.bnx2x*, i64, i32) #2

declare dso_local i32 @bnx2x_set_gpio(%struct.bnx2x*, i32, i32, i32) #2

declare dso_local i32 @bnx2x_cl45_write(%struct.bnx2x*, %struct.bnx2x_phy*, i32, i32, i32) #2

declare dso_local i32 @msleep(i32) #2

declare dso_local i64 @bnx2x_8073_8727_external_rom_boot(%struct.bnx2x*, %struct.bnx2x_phy*, i32) #2

declare dso_local i32 @bnx2x_cl45_read(%struct.bnx2x*, %struct.bnx2x_phy*, i32, i32, i32*) #2

declare dso_local i32 @usleep_range(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
