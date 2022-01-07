; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/genet/extr_bcmmii.c_bcmgenet_mii_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/genet/extr_bcmmii.c_bcmgenet_mii_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.phy_device* }
%struct.phy_device = type { i32 }
%struct.bcmgenet_priv = type { i32, i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@UMAC_CMD = common dso_local global i32 0, align 4
@CMD_SW_RESET = common dso_local global i32 0, align 4
@MII_BMCR = common dso_local global i32 0, align 4
@BMCR_ISOLATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"failed to isolate PHY\0A\00", align 1
@PORT_MODE_EXT_GPHY = common dso_local global i32 0, align 4
@SYS_PORT_CTRL = common dso_local global i32 0, align 4
@CMD_LCL_LOOP_EN = common dso_local global i32 0, align 4
@PORT_MODE_INT_GPHY = common dso_local global i32 0, align 4
@PORT_MODE_INT_EPHY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"internal PHY\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"MoCA\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"external MII\00", align 1
@SPEED_100 = common dso_local global i32 0, align 4
@PORT_MODE_EXT_EPHY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"external RvMII\00", align 1
@ETHTOOL_LINK_MODE_1000baseT_Full_BIT = common dso_local global i32 0, align 4
@PORT_MODE_EXT_RVMII_50 = common dso_local global i32 0, align 4
@PORT_MODE_EXT_RVMII_25 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [26 x i8] c"external RGMII (no delay)\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"external RGMII (TX delay)\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"unknown phy mode: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@EXT_RGMII_OOB_CTRL = common dso_local global i32 0, align 4
@RGMII_MODE_EN_V123 = common dso_local global i32 0, align 4
@RGMII_MODE_EN = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [29 x i8] c"configuring instance for %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bcmgenet_mii_config(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bcmgenet_priv*, align 8
  %7 = alloca %struct.phy_device*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %15 = load %struct.net_device*, %struct.net_device** %4, align 8
  %16 = call %struct.bcmgenet_priv* @netdev_priv(%struct.net_device* %15)
  store %struct.bcmgenet_priv* %16, %struct.bcmgenet_priv** %6, align 8
  %17 = load %struct.net_device*, %struct.net_device** %4, align 8
  %18 = getelementptr inbounds %struct.net_device, %struct.net_device* %17, i32 0, i32 0
  %19 = load %struct.phy_device*, %struct.phy_device** %18, align 8
  store %struct.phy_device* %19, %struct.phy_device** %7, align 8
  %20 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %6, align 8
  %21 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %20, i32 0, i32 3
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store %struct.device* %23, %struct.device** %8, align 8
  store i8* null, i8** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 -1, i32* %12, align 4
  %24 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %6, align 8
  %25 = load i32, i32* @UMAC_CMD, align 4
  %26 = call i32 @bcmgenet_umac_readl(%struct.bcmgenet_priv* %24, i32 %25)
  store i32 %26, i32* %14, align 4
  %27 = load i32, i32* %14, align 4
  %28 = load i32, i32* @CMD_SW_RESET, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %75

31:                                               ; preds = %2
  %32 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %6, align 8
  %33 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp eq i32 %34, 132
  br i1 %35, label %36, label %58

36:                                               ; preds = %31
  %37 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %38 = load i32, i32* @MII_BMCR, align 4
  %39 = call i32 @phy_read(%struct.phy_device* %37, i32 %38)
  store i32 %39, i32* %13, align 4
  %40 = load i32, i32* %13, align 4
  %41 = icmp sge i32 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %36
  %43 = load i32, i32* %13, align 4
  store i32 %43, i32* %12, align 4
  %44 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %45 = load i32, i32* @MII_BMCR, align 4
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* @BMCR_ISOLATE, align 4
  %48 = or i32 %46, %47
  %49 = call i32 @phy_write(%struct.phy_device* %44, i32 %45, i32 %48)
  store i32 %49, i32* %13, align 4
  br label %50

50:                                               ; preds = %42, %36
  %51 = load i32, i32* %13, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %50
  %54 = load %struct.net_device*, %struct.net_device** %4, align 8
  %55 = call i32 @netdev_err(%struct.net_device* %54, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %56 = load i32, i32* %13, align 4
  store i32 %56, i32* %3, align 4
  br label %219

57:                                               ; preds = %50
  br label %58

58:                                               ; preds = %57, %31
  %59 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %6, align 8
  %60 = load i32, i32* @PORT_MODE_EXT_GPHY, align 4
  %61 = load i32, i32* @SYS_PORT_CTRL, align 4
  %62 = call i32 @bcmgenet_sys_writel(%struct.bcmgenet_priv* %59, i32 %60, i32 %61)
  %63 = call i32 @udelay(i32 4)
  %64 = load i32, i32* @CMD_SW_RESET, align 4
  %65 = load i32, i32* @CMD_LCL_LOOP_EN, align 4
  %66 = or i32 %64, %65
  %67 = xor i32 %66, -1
  %68 = load i32, i32* %14, align 4
  %69 = and i32 %68, %67
  store i32 %69, i32* %14, align 4
  %70 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %6, align 8
  %71 = load i32, i32* %14, align 4
  %72 = load i32, i32* @UMAC_CMD, align 4
  %73 = call i32 @bcmgenet_umac_writel(%struct.bcmgenet_priv* %70, i32 %71, i32 %72)
  %74 = call i32 @udelay(i32 2)
  br label %75

75:                                               ; preds = %58, %2
  %76 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %6, align 8
  %77 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %85, label %80

80:                                               ; preds = %75
  %81 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %6, align 8
  %82 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp ne i32 %83, 131
  br label %85

85:                                               ; preds = %80, %75
  %86 = phi i1 [ false, %75 ], [ %84, %80 ]
  %87 = zext i1 %86 to i32
  %88 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %6, align 8
  %89 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 4
  %90 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %6, align 8
  %91 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  switch i32 %92, label %167 [
    i32 133, label %93
    i32 131, label %93
    i32 132, label %121
    i32 130, label %137
    i32 129, label %155
    i32 128, label %157
  ]

93:                                               ; preds = %85, %85
  %94 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %6, align 8
  %95 = call i32 @GENET_IS_V4(%struct.bcmgenet_priv* %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %93
  %98 = load i32, i32* @PORT_MODE_INT_GPHY, align 4
  store i32 %98, i32* %11, align 4
  br label %101

99:                                               ; preds = %93
  %100 = load i32, i32* @PORT_MODE_INT_EPHY, align 4
  store i32 %100, i32* %11, align 4
  br label %101

101:                                              ; preds = %99, %97
  %102 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %6, align 8
  %103 = load i32, i32* %11, align 4
  %104 = load i32, i32* @SYS_PORT_CTRL, align 4
  %105 = call i32 @bcmgenet_sys_writel(%struct.bcmgenet_priv* %102, i32 %103, i32 %104)
  %106 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %6, align 8
  %107 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %101
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  br label %120

111:                                              ; preds = %101
  %112 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %6, align 8
  %113 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = icmp eq i32 %114, 131
  br i1 %115, label %116, label %119

116:                                              ; preds = %111
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %9, align 8
  %117 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %6, align 8
  %118 = call i32 @bcmgenet_moca_phy_setup(%struct.bcmgenet_priv* %117)
  br label %119

119:                                              ; preds = %116, %111
  br label %120

120:                                              ; preds = %119, %110
  br label %175

121:                                              ; preds = %85
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8** %9, align 8
  %122 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %123 = load i32, i32* @SPEED_100, align 4
  %124 = call i32 @phy_set_max_speed(%struct.phy_device* %122, i32 %123)
  %125 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %6, align 8
  %126 = load i32, i32* @PORT_MODE_EXT_EPHY, align 4
  %127 = load i32, i32* @SYS_PORT_CTRL, align 4
  %128 = call i32 @bcmgenet_sys_writel(%struct.bcmgenet_priv* %125, i32 %126, i32 %127)
  %129 = load i32, i32* %12, align 4
  %130 = icmp sge i32 %129, 0
  br i1 %130, label %131, label %136

131:                                              ; preds = %121
  %132 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %133 = load i32, i32* @MII_BMCR, align 4
  %134 = load i32, i32* %12, align 4
  %135 = call i32 @phy_write(%struct.phy_device* %132, i32 %133, i32 %134)
  br label %136

136:                                              ; preds = %131, %121
  br label %175

137:                                              ; preds = %85
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8** %9, align 8
  %138 = load i32, i32* @ETHTOOL_LINK_MODE_1000baseT_Full_BIT, align 4
  %139 = load %struct.net_device*, %struct.net_device** %4, align 8
  %140 = getelementptr inbounds %struct.net_device, %struct.net_device* %139, i32 0, i32 0
  %141 = load %struct.phy_device*, %struct.phy_device** %140, align 8
  %142 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @linkmode_test_bit(i32 %138, i32 %143)
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %137
  %147 = load i32, i32* @PORT_MODE_EXT_RVMII_50, align 4
  store i32 %147, i32* %11, align 4
  br label %150

148:                                              ; preds = %137
  %149 = load i32, i32* @PORT_MODE_EXT_RVMII_25, align 4
  store i32 %149, i32* %11, align 4
  br label %150

150:                                              ; preds = %148, %146
  %151 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %6, align 8
  %152 = load i32, i32* %11, align 4
  %153 = load i32, i32* @SYS_PORT_CTRL, align 4
  %154 = call i32 @bcmgenet_sys_writel(%struct.bcmgenet_priv* %151, i32 %152, i32 %153)
  br label %175

155:                                              ; preds = %85
  %156 = call i32 @BIT(i32 16)
  store i32 %156, i32* %10, align 4
  br label %157

157:                                              ; preds = %85, %155
  %158 = load i32, i32* %10, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %157
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8** %9, align 8
  br label %162

161:                                              ; preds = %157
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i8** %9, align 8
  br label %162

162:                                              ; preds = %161, %160
  %163 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %6, align 8
  %164 = load i32, i32* @PORT_MODE_EXT_GPHY, align 4
  %165 = load i32, i32* @SYS_PORT_CTRL, align 4
  %166 = call i32 @bcmgenet_sys_writel(%struct.bcmgenet_priv* %163, i32 %164, i32 %165)
  br label %175

167:                                              ; preds = %85
  %168 = load %struct.device*, %struct.device** %8, align 8
  %169 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %6, align 8
  %170 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = call i32 @dev_err(%struct.device* %168, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i32 %171)
  %173 = load i32, i32* @EINVAL, align 4
  %174 = sub nsw i32 0, %173
  store i32 %174, i32* %3, align 4
  br label %219

175:                                              ; preds = %162, %150, %136, %120
  %176 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %6, align 8
  %177 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %211

180:                                              ; preds = %175
  %181 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %6, align 8
  %182 = load i32, i32* @EXT_RGMII_OOB_CTRL, align 4
  %183 = call i32 @bcmgenet_ext_readl(%struct.bcmgenet_priv* %181, i32 %182)
  store i32 %183, i32* %14, align 4
  %184 = load i32, i32* %10, align 4
  %185 = load i32, i32* %14, align 4
  %186 = or i32 %185, %184
  store i32 %186, i32* %14, align 4
  %187 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %6, align 8
  %188 = call i64 @GENET_IS_V1(%struct.bcmgenet_priv* %187)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %198, label %190

190:                                              ; preds = %180
  %191 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %6, align 8
  %192 = call i64 @GENET_IS_V2(%struct.bcmgenet_priv* %191)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %198, label %194

194:                                              ; preds = %190
  %195 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %6, align 8
  %196 = call i64 @GENET_IS_V3(%struct.bcmgenet_priv* %195)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %202

198:                                              ; preds = %194, %190, %180
  %199 = load i32, i32* @RGMII_MODE_EN_V123, align 4
  %200 = load i32, i32* %14, align 4
  %201 = or i32 %200, %199
  store i32 %201, i32* %14, align 4
  br label %206

202:                                              ; preds = %194
  %203 = load i32, i32* @RGMII_MODE_EN, align 4
  %204 = load i32, i32* %14, align 4
  %205 = or i32 %204, %203
  store i32 %205, i32* %14, align 4
  br label %206

206:                                              ; preds = %202, %198
  %207 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %6, align 8
  %208 = load i32, i32* %14, align 4
  %209 = load i32, i32* @EXT_RGMII_OOB_CTRL, align 4
  %210 = call i32 @bcmgenet_ext_writel(%struct.bcmgenet_priv* %207, i32 %208, i32 %209)
  br label %211

211:                                              ; preds = %206, %175
  %212 = load i32, i32* %5, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %218

214:                                              ; preds = %211
  %215 = load %struct.device*, %struct.device** %8, align 8
  %216 = load i8*, i8** %9, align 8
  %217 = call i32 @dev_info(%struct.device* %215, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i8* %216)
  br label %218

218:                                              ; preds = %214, %211
  store i32 0, i32* %3, align 4
  br label %219

219:                                              ; preds = %218, %167, %53
  %220 = load i32, i32* %3, align 4
  ret i32 %220
}

declare dso_local %struct.bcmgenet_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @bcmgenet_umac_readl(%struct.bcmgenet_priv*, i32) #1

declare dso_local i32 @phy_read(%struct.phy_device*, i32) #1

declare dso_local i32 @phy_write(%struct.phy_device*, i32, i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @bcmgenet_sys_writel(%struct.bcmgenet_priv*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @bcmgenet_umac_writel(%struct.bcmgenet_priv*, i32, i32) #1

declare dso_local i32 @GENET_IS_V4(%struct.bcmgenet_priv*) #1

declare dso_local i32 @bcmgenet_moca_phy_setup(%struct.bcmgenet_priv*) #1

declare dso_local i32 @phy_set_max_speed(%struct.phy_device*, i32) #1

declare dso_local i32 @linkmode_test_bit(i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @bcmgenet_ext_readl(%struct.bcmgenet_priv*, i32) #1

declare dso_local i64 @GENET_IS_V1(%struct.bcmgenet_priv*) #1

declare dso_local i64 @GENET_IS_V2(%struct.bcmgenet_priv*) #1

declare dso_local i64 @GENET_IS_V3(%struct.bcmgenet_priv*) #1

declare dso_local i32 @bcmgenet_ext_writel(%struct.bcmgenet_priv*, i32, i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
