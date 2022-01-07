; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_link.c_bnx2x_848xx_cmn_config_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_link.c_bnx2x_848xx_cmn_config_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x_phy = type { i64, i32, i64, i32 }
%struct.link_params = type { %struct.bnx2x* }
%struct.bnx2x = type { i32 }
%struct.link_vars = type { i32 }

@PHY_INIT = common dso_local global i32 0, align 4
@MDIO_PMA_DEVAD = common dso_local global i32 0, align 4
@MDIO_PMA_REG_CTRL = common dso_local global i32 0, align 4
@MDIO_AN_DEVAD = common dso_local global i32 0, align 4
@MDIO_AN_REG_8481_1000T_CTRL = common dso_local global i32 0, align 4
@MDIO_AN_REG_8481_LEGACY_AN_ADV = common dso_local global i32 0, align 4
@MDIO_AN_REG_8481_LEGACY_MII_CTRL = common dso_local global i32 0, align 4
@SPEED_AUTO_NEG = common dso_local global i64 0, align 8
@PORT_HW_CFG_SPEED_CAPABILITY_D0_1G = common dso_local global i32 0, align 4
@SPEED_1000 = common dso_local global i64 0, align 8
@DUPLEX_FULL = common dso_local global i64 0, align 8
@NETIF_MSG_LINK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Advertising 1G\0A\00", align 1
@PORT_HW_CFG_SPEED_CAPABILITY_D0_100M_FULL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Advertising 100M-FD\0A\00", align 1
@PORT_HW_CFG_SPEED_CAPABILITY_D0_100M_HALF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"Advertising 100M-HD\0A\00", align 1
@PORT_HW_CFG_SPEED_CAPABILITY_D0_10M_FULL = common dso_local global i32 0, align 4
@SUPPORTED_10baseT_Full = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"Advertising 10M-FD\0A\00", align 1
@PORT_HW_CFG_SPEED_CAPABILITY_D0_10M_HALF = common dso_local global i32 0, align 4
@SUPPORTED_10baseT_Half = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"Advertising 10M-HD\0A\00", align 1
@SPEED_100 = common dso_local global i64 0, align 8
@SUPPORTED_100baseT_Half = common dso_local global i32 0, align 4
@SUPPORTED_100baseT_Full = common dso_local global i32 0, align 4
@MDIO_AN_REG_8481_AUX_CTRL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [20 x i8] c"Setting 100M force\0A\00", align 1
@SPEED_10 = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [19 x i8] c"Setting 10M force\0A\00", align 1
@PORT_HW_CFG_SPEED_CAPABILITY_D0_10G = common dso_local global i32 0, align 4
@SPEED_10000 = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [17 x i8] c"Advertising 10G\0A\00", align 1
@MDIO_AN_REG_8481_10GBASE_T_AN_CTRL = common dso_local global i32 0, align 4
@MDIO_AN_REG_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x_phy*, %struct.link_params*, %struct.link_vars*)* @bnx2x_848xx_cmn_config_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_848xx_cmn_config_init(%struct.bnx2x_phy* %0, %struct.link_params* %1, %struct.link_vars* %2) #0 {
  %4 = alloca %struct.bnx2x_phy*, align 8
  %5 = alloca %struct.link_params*, align 8
  %6 = alloca %struct.link_vars*, align 8
  %7 = alloca %struct.bnx2x*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.bnx2x_phy* %0, %struct.bnx2x_phy** %4, align 8
  store %struct.link_params* %1, %struct.link_params** %5, align 8
  store %struct.link_vars* %2, %struct.link_vars** %6, align 8
  %11 = load %struct.link_params*, %struct.link_params** %5, align 8
  %12 = getelementptr inbounds %struct.link_params, %struct.link_params* %11, i32 0, i32 0
  %13 = load %struct.bnx2x*, %struct.bnx2x** %12, align 8
  store %struct.bnx2x* %13, %struct.bnx2x** %7, align 8
  %14 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %15 = load %struct.link_params*, %struct.link_params** %5, align 8
  %16 = load i32, i32* @PHY_INIT, align 4
  %17 = call i32 @bnx2x_848xx_specific_func(%struct.bnx2x_phy* %14, %struct.link_params* %15, i32 %16)
  %18 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %19 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %20 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %21 = load i32, i32* @MDIO_PMA_REG_CTRL, align 4
  %22 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %18, %struct.bnx2x_phy* %19, i32 %20, i32 %21, i32 0)
  %23 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %24 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %25 = load i32, i32* @MDIO_AN_DEVAD, align 4
  %26 = load i32, i32* @MDIO_AN_REG_8481_1000T_CTRL, align 4
  %27 = call i32 @bnx2x_cl45_read(%struct.bnx2x* %23, %struct.bnx2x_phy* %24, i32 %25, i32 %26, i32* %9)
  %28 = load %struct.link_params*, %struct.link_params** %5, align 8
  %29 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %30 = load %struct.link_vars*, %struct.link_vars** %6, align 8
  %31 = call i32 @bnx2x_ext_phy_set_pause(%struct.link_params* %28, %struct.bnx2x_phy* %29, %struct.link_vars* %30)
  %32 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %33 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %34 = load i32, i32* @MDIO_AN_DEVAD, align 4
  %35 = load i32, i32* @MDIO_AN_REG_8481_LEGACY_AN_ADV, align 4
  %36 = call i32 @bnx2x_cl45_read(%struct.bnx2x* %32, %struct.bnx2x_phy* %33, i32 %34, i32 %35, i32* %10)
  %37 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %38 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %39 = load i32, i32* @MDIO_AN_DEVAD, align 4
  %40 = load i32, i32* @MDIO_AN_REG_8481_LEGACY_MII_CTRL, align 4
  %41 = call i32 @bnx2x_cl45_read(%struct.bnx2x* %37, %struct.bnx2x_phy* %38, i32 %39, i32 %40, i32* %8)
  %42 = load i32, i32* %8, align 4
  %43 = and i32 %42, -13121
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %10, align 4
  %45 = and i32 %44, -481
  store i32 %45, i32* %10, align 4
  %46 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %47 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @SPEED_AUTO_NEG, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %3
  %52 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %53 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @PORT_HW_CFG_SPEED_CAPABILITY_D0_1G, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %64, label %58

58:                                               ; preds = %51, %3
  %59 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %60 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @SPEED_1000, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %80

64:                                               ; preds = %58, %51
  %65 = load i32, i32* %9, align 4
  %66 = or i32 %65, 256
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* %8, align 4
  %68 = or i32 %67, 4608
  store i32 %68, i32* %8, align 4
  %69 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %70 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @DUPLEX_FULL, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %64
  %75 = load i32, i32* %9, align 4
  %76 = or i32 %75, 512
  store i32 %76, i32* %9, align 4
  br label %77

77:                                               ; preds = %74, %64
  %78 = load i32, i32* @NETIF_MSG_LINK, align 4
  %79 = call i32 @DP(i32 %78, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %83

80:                                               ; preds = %58
  %81 = load i32, i32* %9, align 4
  %82 = and i32 %81, -769
  store i32 %82, i32* %9, align 4
  br label %83

83:                                               ; preds = %80, %77
  %84 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %85 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %86 = load i32, i32* @MDIO_AN_DEVAD, align 4
  %87 = load i32, i32* @MDIO_AN_REG_8481_1000T_CTRL, align 4
  %88 = load i32, i32* %9, align 4
  %89 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %84, %struct.bnx2x_phy* %85, i32 %86, i32 %87, i32 %88)
  %90 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %91 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @SPEED_AUTO_NEG, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %166

95:                                               ; preds = %83
  %96 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %97 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @PORT_HW_CFG_SPEED_CAPABILITY_D0_100M_FULL, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %109

102:                                              ; preds = %95
  %103 = load i32, i32* %8, align 4
  %104 = or i32 %103, 4608
  store i32 %104, i32* %8, align 4
  %105 = load i32, i32* %10, align 4
  %106 = or i32 %105, 256
  store i32 %106, i32* %10, align 4
  %107 = load i32, i32* @NETIF_MSG_LINK, align 4
  %108 = call i32 @DP(i32 %107, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %109

109:                                              ; preds = %102, %95
  %110 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %111 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @PORT_HW_CFG_SPEED_CAPABILITY_D0_100M_HALF, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %123

116:                                              ; preds = %109
  %117 = load i32, i32* %8, align 4
  %118 = or i32 %117, 4608
  store i32 %118, i32* %8, align 4
  %119 = load i32, i32* %10, align 4
  %120 = or i32 %119, 128
  store i32 %120, i32* %10, align 4
  %121 = load i32, i32* @NETIF_MSG_LINK, align 4
  %122 = call i32 @DP(i32 %121, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %123

123:                                              ; preds = %116, %109
  %124 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %125 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @PORT_HW_CFG_SPEED_CAPABILITY_D0_10M_FULL, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %144

130:                                              ; preds = %123
  %131 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %132 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* @SUPPORTED_10baseT_Full, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %144

137:                                              ; preds = %130
  %138 = load i32, i32* %10, align 4
  %139 = or i32 %138, 64
  store i32 %139, i32* %10, align 4
  %140 = load i32, i32* %8, align 4
  %141 = or i32 %140, 4608
  store i32 %141, i32* %8, align 4
  %142 = load i32, i32* @NETIF_MSG_LINK, align 4
  %143 = call i32 @DP(i32 %142, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  br label %144

144:                                              ; preds = %137, %130, %123
  %145 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %146 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* @PORT_HW_CFG_SPEED_CAPABILITY_D0_10M_HALF, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %165

151:                                              ; preds = %144
  %152 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %153 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* @SUPPORTED_10baseT_Half, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %165

158:                                              ; preds = %151
  %159 = load i32, i32* %10, align 4
  %160 = or i32 %159, 32
  store i32 %160, i32* %10, align 4
  %161 = load i32, i32* %8, align 4
  %162 = or i32 %161, 4608
  store i32 %162, i32* %8, align 4
  %163 = load i32, i32* @NETIF_MSG_LINK, align 4
  %164 = call i32 @DP(i32 %163, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  br label %165

165:                                              ; preds = %158, %151, %144
  br label %166

166:                                              ; preds = %165, %83
  %167 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %168 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* @SPEED_100, align 8
  %171 = icmp eq i64 %169, %170
  br i1 %171, label %172, label %193

172:                                              ; preds = %166
  %173 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %174 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %173, i32 0, i32 3
  %175 = load i32, i32* %174, align 8
  %176 = load i32, i32* @SUPPORTED_100baseT_Half, align 4
  %177 = load i32, i32* @SUPPORTED_100baseT_Full, align 4
  %178 = or i32 %176, %177
  %179 = and i32 %175, %178
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %193

181:                                              ; preds = %172
  %182 = load i32, i32* %8, align 4
  %183 = or i32 %182, 8192
  store i32 %183, i32* %8, align 4
  %184 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %185 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %186 = load i32, i32* @MDIO_AN_DEVAD, align 4
  %187 = load i32, i32* @MDIO_AN_REG_8481_AUX_CTRL, align 4
  %188 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %184, %struct.bnx2x_phy* %185, i32 %186, i32 %187, i32 33287)
  %189 = load i32, i32* %10, align 4
  %190 = or i32 %189, 384
  store i32 %190, i32* %10, align 4
  %191 = load i32, i32* @NETIF_MSG_LINK, align 4
  %192 = call i32 @DP(i32 %191, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  br label %193

193:                                              ; preds = %181, %172, %166
  %194 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %195 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = load i64, i64* @SPEED_10, align 8
  %198 = icmp eq i64 %196, %197
  br i1 %198, label %199, label %216

199:                                              ; preds = %193
  %200 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %201 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %200, i32 0, i32 3
  %202 = load i32, i32* %201, align 8
  %203 = load i32, i32* @SUPPORTED_10baseT_Half, align 4
  %204 = load i32, i32* @SUPPORTED_10baseT_Full, align 4
  %205 = or i32 %203, %204
  %206 = and i32 %202, %205
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %216

208:                                              ; preds = %199
  %209 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %210 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %211 = load i32, i32* @MDIO_AN_DEVAD, align 4
  %212 = load i32, i32* @MDIO_AN_REG_8481_AUX_CTRL, align 4
  %213 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %209, %struct.bnx2x_phy* %210, i32 %211, i32 %212, i32 33287)
  %214 = load i32, i32* @NETIF_MSG_LINK, align 4
  %215 = call i32 @DP(i32 %214, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  br label %216

216:                                              ; preds = %208, %199, %193
  %217 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %218 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %219 = load i32, i32* @MDIO_AN_DEVAD, align 4
  %220 = load i32, i32* @MDIO_AN_REG_8481_LEGACY_AN_ADV, align 4
  %221 = load i32, i32* %10, align 4
  %222 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %217, %struct.bnx2x_phy* %218, i32 %219, i32 %220, i32 %221)
  %223 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %224 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %223, i32 0, i32 2
  %225 = load i64, i64* %224, align 8
  %226 = load i64, i64* @DUPLEX_FULL, align 8
  %227 = icmp eq i64 %225, %226
  br i1 %227, label %228, label %231

228:                                              ; preds = %216
  %229 = load i32, i32* %8, align 4
  %230 = or i32 %229, 256
  store i32 %230, i32* %8, align 4
  br label %231

231:                                              ; preds = %228, %216
  %232 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %233 = call i32 @bnx2x_is_8483x_8485x(%struct.bnx2x_phy* %232)
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %239

235:                                              ; preds = %231
  %236 = load i32, i32* %8, align 4
  %237 = and i32 %236, 4096
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %239, label %246

239:                                              ; preds = %235, %231
  %240 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %241 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %242 = load i32, i32* @MDIO_AN_DEVAD, align 4
  %243 = load i32, i32* @MDIO_AN_REG_8481_LEGACY_MII_CTRL, align 4
  %244 = load i32, i32* %8, align 4
  %245 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %240, %struct.bnx2x_phy* %241, i32 %242, i32 %243, i32 %244)
  br label %246

246:                                              ; preds = %239, %235
  %247 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %248 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %247, i32 0, i32 0
  %249 = load i64, i64* %248, align 8
  %250 = load i64, i64* @SPEED_AUTO_NEG, align 8
  %251 = icmp eq i64 %249, %250
  br i1 %251, label %252, label %259

252:                                              ; preds = %246
  %253 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %254 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %253, i32 0, i32 1
  %255 = load i32, i32* %254, align 8
  %256 = load i32, i32* @PORT_HW_CFG_SPEED_CAPABILITY_D0_10G, align 4
  %257 = and i32 %255, %256
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %265, label %259

259:                                              ; preds = %252, %246
  %260 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %261 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %260, i32 0, i32 0
  %262 = load i64, i64* %261, align 8
  %263 = load i64, i64* @SPEED_10000, align 8
  %264 = icmp eq i64 %262, %263
  br i1 %264, label %265, label %278

265:                                              ; preds = %259, %252
  %266 = load i32, i32* @NETIF_MSG_LINK, align 4
  %267 = call i32 @DP(i32 %266, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  %268 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %269 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %270 = load i32, i32* @MDIO_AN_DEVAD, align 4
  %271 = load i32, i32* @MDIO_AN_REG_8481_10GBASE_T_AN_CTRL, align 4
  %272 = call i32 @bnx2x_cl45_read_or_write(%struct.bnx2x* %268, %struct.bnx2x_phy* %269, i32 %270, i32 %271, i32 4096)
  %273 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %274 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %275 = load i32, i32* @MDIO_AN_DEVAD, align 4
  %276 = load i32, i32* @MDIO_AN_REG_CTRL, align 4
  %277 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %273, %struct.bnx2x_phy* %274, i32 %275, i32 %276, i32 12800)
  br label %284

278:                                              ; preds = %259
  %279 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %280 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %281 = load i32, i32* @MDIO_AN_DEVAD, align 4
  %282 = load i32, i32* @MDIO_AN_REG_8481_10GBASE_T_AN_CTRL, align 4
  %283 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %279, %struct.bnx2x_phy* %280, i32 %281, i32 %282, i32 1)
  br label %284

284:                                              ; preds = %278, %265
  ret i32 0
}

declare dso_local i32 @bnx2x_848xx_specific_func(%struct.bnx2x_phy*, %struct.link_params*, i32) #1

declare dso_local i32 @bnx2x_cl45_write(%struct.bnx2x*, %struct.bnx2x_phy*, i32, i32, i32) #1

declare dso_local i32 @bnx2x_cl45_read(%struct.bnx2x*, %struct.bnx2x_phy*, i32, i32, i32*) #1

declare dso_local i32 @bnx2x_ext_phy_set_pause(%struct.link_params*, %struct.bnx2x_phy*, %struct.link_vars*) #1

declare dso_local i32 @DP(i32, i8*) #1

declare dso_local i32 @bnx2x_is_8483x_8485x(%struct.bnx2x_phy*) #1

declare dso_local i32 @bnx2x_cl45_read_or_write(%struct.bnx2x*, %struct.bnx2x_phy*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
