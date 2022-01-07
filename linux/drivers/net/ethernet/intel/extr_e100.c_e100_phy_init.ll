; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/extr_e100.c_e100_phy_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/extr_e100.c_e100_phy_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nic = type { i32, i64, i32, i32*, %struct.TYPE_2__, i32, %struct.net_device* }
%struct.TYPE_2__ = type { i32, i64 }
%struct.net_device = type { i32 }

@MII_BMCR = common dso_local global i32 0, align 4
@MII_BMSR = common dso_local global i32 0, align 4
@hw = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Failed to locate any known PHY, aborting\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@KERN_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"phy_addr = %d\0A\00", align 1
@MII_PHYSID1 = common dso_local global i32 0, align 4
@MII_PHYSID2 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"phy ID = 0x%08X\0A\00", align 1
@BMCR_ISOLATE = common dso_local global i32 0, align 4
@phy_82552_v = common dso_local global i32 0, align 4
@phy_nsc_tx = common dso_local global i32 0, align 4
@MII_NSC_CONG = common dso_local global i32 0, align 4
@NSC_CONG_TXREADY = common dso_local global i32 0, align 4
@NSC_CONG_ENABLE = common dso_local global i32 0, align 4
@MII_ADVERTISE = common dso_local global i32 0, align 4
@mdio_ctrl_phy_82552_v = common dso_local global i32 0, align 4
@ADVERTISE_PAUSE_CAP = common dso_local global i32 0, align 4
@ADVERTISE_PAUSE_ASYM = common dso_local global i32 0, align 4
@BMCR_RESET = common dso_local global i32 0, align 4
@mac_82550_D102 = common dso_local global i64 0, align 8
@ich = common dso_local global i32 0, align 4
@MII_TPISTATUS = common dso_local global i32 0, align 4
@eeprom_cnfg_mdix = common dso_local global i64 0, align 8
@eeprom_mdix_enabled = common dso_local global i32 0, align 4
@MII_NCONFIG = common dso_local global i32 0, align 4
@NCONFIG_AUTO_SWITCH = common dso_local global i32 0, align 4
@NCS_PHY_MODEL_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nic*)* @e100_phy_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e100_phy_init(%struct.nic* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nic*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.nic* %0, %struct.nic** %3, align 8
  %12 = load %struct.nic*, %struct.nic** %3, align 8
  %13 = getelementptr inbounds %struct.nic, %struct.nic* %12, i32 0, i32 6
  %14 = load %struct.net_device*, %struct.net_device** %13, align 8
  store %struct.net_device* %14, %struct.net_device** %4, align 8
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %66, %1
  %16 = load i32, i32* %5, align 4
  %17 = icmp slt i32 %16, 32
  br i1 %17, label %18, label %69

18:                                               ; preds = %15
  %19 = load i32, i32* %5, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  br label %30

22:                                               ; preds = %18
  %23 = load i32, i32* %5, align 4
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  br label %28

26:                                               ; preds = %22
  %27 = load i32, i32* %5, align 4
  br label %28

28:                                               ; preds = %26, %25
  %29 = phi i32 [ 0, %25 ], [ %27, %26 ]
  br label %30

30:                                               ; preds = %28, %21
  %31 = phi i32 [ 1, %21 ], [ %29, %28 ]
  %32 = load %struct.nic*, %struct.nic** %3, align 8
  %33 = getelementptr inbounds %struct.nic, %struct.nic* %32, i32 0, i32 4
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  store i32 %31, i32* %34, align 8
  %35 = load %struct.net_device*, %struct.net_device** %4, align 8
  %36 = load %struct.nic*, %struct.nic** %3, align 8
  %37 = getelementptr inbounds %struct.nic, %struct.nic* %36, i32 0, i32 4
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @MII_BMCR, align 4
  %41 = call i32 @mdio_read(%struct.net_device* %35, i32 %39, i32 %40)
  store i32 %41, i32* %6, align 4
  %42 = load %struct.net_device*, %struct.net_device** %4, align 8
  %43 = load %struct.nic*, %struct.nic** %3, align 8
  %44 = getelementptr inbounds %struct.nic, %struct.nic* %43, i32 0, i32 4
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @MII_BMSR, align 4
  %48 = call i32 @mdio_read(%struct.net_device* %42, i32 %46, i32 %47)
  store i32 %48, i32* %7, align 4
  %49 = load %struct.net_device*, %struct.net_device** %4, align 8
  %50 = load %struct.nic*, %struct.nic** %3, align 8
  %51 = getelementptr inbounds %struct.nic, %struct.nic* %50, i32 0, i32 4
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @MII_BMSR, align 4
  %55 = call i32 @mdio_read(%struct.net_device* %49, i32 %53, i32 %54)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %6, align 4
  %57 = icmp eq i32 %56, 65535
  br i1 %57, label %65, label %58

58:                                               ; preds = %30
  %59 = load i32, i32* %7, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load i32, i32* %6, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %61, %58
  br label %69

65:                                               ; preds = %61, %30
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %5, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %5, align 4
  br label %15

69:                                               ; preds = %64, %15
  %70 = load i32, i32* %5, align 4
  %71 = icmp eq i32 %70, 32
  br i1 %71, label %72, label %86

72:                                               ; preds = %69
  %73 = load %struct.nic*, %struct.nic** %3, align 8
  %74 = call i64 @e100_phy_check_without_mii(%struct.nic* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %72
  store i32 0, i32* %2, align 4
  br label %318

77:                                               ; preds = %72
  %78 = load %struct.nic*, %struct.nic** %3, align 8
  %79 = load i32, i32* @hw, align 4
  %80 = load %struct.nic*, %struct.nic** %3, align 8
  %81 = getelementptr inbounds %struct.nic, %struct.nic* %80, i32 0, i32 6
  %82 = load %struct.net_device*, %struct.net_device** %81, align 8
  %83 = call i32 @netif_err(%struct.nic* %78, i32 %79, %struct.net_device* %82, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %84 = load i32, i32* @EAGAIN, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %2, align 4
  br label %318

86:                                               ; preds = %69
  %87 = load %struct.nic*, %struct.nic** %3, align 8
  %88 = load i32, i32* @hw, align 4
  %89 = load i32, i32* @KERN_DEBUG, align 4
  %90 = load %struct.nic*, %struct.nic** %3, align 8
  %91 = getelementptr inbounds %struct.nic, %struct.nic* %90, i32 0, i32 6
  %92 = load %struct.net_device*, %struct.net_device** %91, align 8
  %93 = load %struct.nic*, %struct.nic** %3, align 8
  %94 = getelementptr inbounds %struct.nic, %struct.nic* %93, i32 0, i32 4
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @netif_printk(%struct.nic* %87, i32 %88, i32 %89, %struct.net_device* %92, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %96)
  br label %98

98:                                               ; preds = %86
  %99 = load %struct.net_device*, %struct.net_device** %4, align 8
  %100 = load %struct.nic*, %struct.nic** %3, align 8
  %101 = getelementptr inbounds %struct.nic, %struct.nic* %100, i32 0, i32 4
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @MII_PHYSID1, align 4
  %105 = call i32 @mdio_read(%struct.net_device* %99, i32 %103, i32 %104)
  store i32 %105, i32* %8, align 4
  %106 = load %struct.net_device*, %struct.net_device** %4, align 8
  %107 = load %struct.nic*, %struct.nic** %3, align 8
  %108 = getelementptr inbounds %struct.nic, %struct.nic* %107, i32 0, i32 4
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @MII_PHYSID2, align 4
  %112 = call i32 @mdio_read(%struct.net_device* %106, i32 %110, i32 %111)
  store i32 %112, i32* %9, align 4
  %113 = load i32, i32* %9, align 4
  %114 = shl i32 %113, 16
  %115 = load i32, i32* %8, align 4
  %116 = or i32 %114, %115
  %117 = load %struct.nic*, %struct.nic** %3, align 8
  %118 = getelementptr inbounds %struct.nic, %struct.nic* %117, i32 0, i32 0
  store i32 %116, i32* %118, align 8
  %119 = load %struct.nic*, %struct.nic** %3, align 8
  %120 = load i32, i32* @hw, align 4
  %121 = load i32, i32* @KERN_DEBUG, align 4
  %122 = load %struct.nic*, %struct.nic** %3, align 8
  %123 = getelementptr inbounds %struct.nic, %struct.nic* %122, i32 0, i32 6
  %124 = load %struct.net_device*, %struct.net_device** %123, align 8
  %125 = load %struct.nic*, %struct.nic** %3, align 8
  %126 = getelementptr inbounds %struct.nic, %struct.nic* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @netif_printk(%struct.nic* %119, i32 %120, i32 %121, %struct.net_device* %124, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %127)
  store i32 0, i32* %5, align 4
  br label %129

129:                                              ; preds = %166, %98
  %130 = load i32, i32* %5, align 4
  %131 = icmp slt i32 %130, 32
  br i1 %131, label %132, label %169

132:                                              ; preds = %129
  %133 = load i32, i32* %5, align 4
  %134 = load %struct.nic*, %struct.nic** %3, align 8
  %135 = getelementptr inbounds %struct.nic, %struct.nic* %134, i32 0, i32 4
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = icmp ne i32 %133, %137
  br i1 %138, label %139, label %145

139:                                              ; preds = %132
  %140 = load %struct.net_device*, %struct.net_device** %4, align 8
  %141 = load i32, i32* %5, align 4
  %142 = load i32, i32* @MII_BMCR, align 4
  %143 = load i32, i32* @BMCR_ISOLATE, align 4
  %144 = call i32 @mdio_write(%struct.net_device* %140, i32 %141, i32 %142, i32 %143)
  br label %165

145:                                              ; preds = %132
  %146 = load %struct.nic*, %struct.nic** %3, align 8
  %147 = getelementptr inbounds %struct.nic, %struct.nic* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* @phy_82552_v, align 4
  %150 = icmp ne i32 %148, %149
  br i1 %150, label %151, label %164

151:                                              ; preds = %145
  %152 = load %struct.net_device*, %struct.net_device** %4, align 8
  %153 = load i32, i32* %5, align 4
  %154 = load i32, i32* @MII_BMCR, align 4
  %155 = call i32 @mdio_read(%struct.net_device* %152, i32 %153, i32 %154)
  store i32 %155, i32* %6, align 4
  %156 = load %struct.net_device*, %struct.net_device** %4, align 8
  %157 = load i32, i32* %5, align 4
  %158 = load i32, i32* @MII_BMCR, align 4
  %159 = load i32, i32* %6, align 4
  %160 = load i32, i32* @BMCR_ISOLATE, align 4
  %161 = xor i32 %160, -1
  %162 = and i32 %159, %161
  %163 = call i32 @mdio_write(%struct.net_device* %156, i32 %157, i32 %158, i32 %162)
  br label %164

164:                                              ; preds = %151, %145
  br label %165

165:                                              ; preds = %164, %139
  br label %166

166:                                              ; preds = %165
  %167 = load i32, i32* %5, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %5, align 4
  br label %129

169:                                              ; preds = %129
  %170 = load %struct.nic*, %struct.nic** %3, align 8
  %171 = getelementptr inbounds %struct.nic, %struct.nic* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = load i32, i32* @phy_82552_v, align 4
  %174 = icmp eq i32 %172, %173
  br i1 %174, label %175, label %187

175:                                              ; preds = %169
  %176 = load %struct.net_device*, %struct.net_device** %4, align 8
  %177 = load %struct.nic*, %struct.nic** %3, align 8
  %178 = getelementptr inbounds %struct.nic, %struct.nic* %177, i32 0, i32 4
  %179 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = load i32, i32* @MII_BMCR, align 4
  %182 = load i32, i32* %6, align 4
  %183 = load i32, i32* @BMCR_ISOLATE, align 4
  %184 = xor i32 %183, -1
  %185 = and i32 %182, %184
  %186 = call i32 @mdio_write(%struct.net_device* %176, i32 %180, i32 %181, i32 %185)
  br label %187

187:                                              ; preds = %175, %169
  %188 = load %struct.nic*, %struct.nic** %3, align 8
  %189 = getelementptr inbounds %struct.nic, %struct.nic* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = and i32 %190, -983041
  %192 = load i32, i32* @phy_nsc_tx, align 4
  %193 = icmp eq i32 %191, %192
  br i1 %193, label %194, label %217

194:                                              ; preds = %187
  %195 = load %struct.net_device*, %struct.net_device** %4, align 8
  %196 = load %struct.nic*, %struct.nic** %3, align 8
  %197 = getelementptr inbounds %struct.nic, %struct.nic* %196, i32 0, i32 4
  %198 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = load i32, i32* @MII_NSC_CONG, align 4
  %201 = call i32 @mdio_read(%struct.net_device* %195, i32 %199, i32 %200)
  store i32 %201, i32* %10, align 4
  %202 = load i32, i32* @NSC_CONG_TXREADY, align 4
  %203 = load i32, i32* %10, align 4
  %204 = or i32 %203, %202
  store i32 %204, i32* %10, align 4
  %205 = load i32, i32* @NSC_CONG_ENABLE, align 4
  %206 = xor i32 %205, -1
  %207 = load i32, i32* %10, align 4
  %208 = and i32 %207, %206
  store i32 %208, i32* %10, align 4
  %209 = load %struct.net_device*, %struct.net_device** %4, align 8
  %210 = load %struct.nic*, %struct.nic** %3, align 8
  %211 = getelementptr inbounds %struct.nic, %struct.nic* %210, i32 0, i32 4
  %212 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = load i32, i32* @MII_NSC_CONG, align 4
  %215 = load i32, i32* %10, align 4
  %216 = call i32 @mdio_write(%struct.net_device* %209, i32 %213, i32 %214, i32 %215)
  br label %217

217:                                              ; preds = %194, %187
  %218 = load %struct.nic*, %struct.nic** %3, align 8
  %219 = getelementptr inbounds %struct.nic, %struct.nic* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = load i32, i32* @phy_82552_v, align 4
  %222 = icmp eq i32 %220, %221
  br i1 %222, label %223, label %265

223:                                              ; preds = %217
  %224 = load %struct.net_device*, %struct.net_device** %4, align 8
  %225 = load %struct.nic*, %struct.nic** %3, align 8
  %226 = getelementptr inbounds %struct.nic, %struct.nic* %225, i32 0, i32 4
  %227 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = load i32, i32* @MII_ADVERTISE, align 4
  %230 = call i32 @mdio_read(%struct.net_device* %224, i32 %228, i32 %229)
  store i32 %230, i32* %11, align 4
  %231 = load i32, i32* @mdio_ctrl_phy_82552_v, align 4
  %232 = load %struct.nic*, %struct.nic** %3, align 8
  %233 = getelementptr inbounds %struct.nic, %struct.nic* %232, i32 0, i32 5
  store i32 %231, i32* %233, align 8
  %234 = load i32, i32* @ADVERTISE_PAUSE_CAP, align 4
  %235 = load i32, i32* @ADVERTISE_PAUSE_ASYM, align 4
  %236 = or i32 %234, %235
  %237 = load i32, i32* %11, align 4
  %238 = or i32 %237, %236
  store i32 %238, i32* %11, align 4
  %239 = load %struct.net_device*, %struct.net_device** %4, align 8
  %240 = load %struct.nic*, %struct.nic** %3, align 8
  %241 = getelementptr inbounds %struct.nic, %struct.nic* %240, i32 0, i32 4
  %242 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  %244 = load i32, i32* @MII_ADVERTISE, align 4
  %245 = load i32, i32* %11, align 4
  %246 = call i32 @mdio_write(%struct.net_device* %239, i32 %243, i32 %244, i32 %245)
  %247 = load %struct.net_device*, %struct.net_device** %4, align 8
  %248 = load %struct.nic*, %struct.nic** %3, align 8
  %249 = getelementptr inbounds %struct.nic, %struct.nic* %248, i32 0, i32 4
  %250 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  %252 = load i32, i32* @MII_BMCR, align 4
  %253 = call i32 @mdio_read(%struct.net_device* %247, i32 %251, i32 %252)
  store i32 %253, i32* %6, align 4
  %254 = load i32, i32* @BMCR_RESET, align 4
  %255 = load i32, i32* %6, align 4
  %256 = or i32 %255, %254
  store i32 %256, i32* %6, align 4
  %257 = load %struct.net_device*, %struct.net_device** %4, align 8
  %258 = load %struct.nic*, %struct.nic** %3, align 8
  %259 = getelementptr inbounds %struct.nic, %struct.nic* %258, i32 0, i32 4
  %260 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 8
  %262 = load i32, i32* @MII_BMCR, align 4
  %263 = load i32, i32* %6, align 4
  %264 = call i32 @mdio_write(%struct.net_device* %257, i32 %261, i32 %262, i32 %263)
  br label %317

265:                                              ; preds = %217
  %266 = load %struct.nic*, %struct.nic** %3, align 8
  %267 = getelementptr inbounds %struct.nic, %struct.nic* %266, i32 0, i32 1
  %268 = load i64, i64* %267, align 8
  %269 = load i64, i64* @mac_82550_D102, align 8
  %270 = icmp sge i64 %268, %269
  br i1 %270, label %298, label %271

271:                                              ; preds = %265
  %272 = load %struct.nic*, %struct.nic** %3, align 8
  %273 = getelementptr inbounds %struct.nic, %struct.nic* %272, i32 0, i32 2
  %274 = load i32, i32* %273, align 8
  %275 = load i32, i32* @ich, align 4
  %276 = and i32 %274, %275
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %316

278:                                              ; preds = %271
  %279 = load %struct.net_device*, %struct.net_device** %4, align 8
  %280 = load %struct.nic*, %struct.nic** %3, align 8
  %281 = getelementptr inbounds %struct.nic, %struct.nic* %280, i32 0, i32 4
  %282 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 8
  %284 = load i32, i32* @MII_TPISTATUS, align 4
  %285 = call i32 @mdio_read(%struct.net_device* %279, i32 %283, i32 %284)
  %286 = and i32 %285, 32768
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %316

288:                                              ; preds = %278
  %289 = load %struct.nic*, %struct.nic** %3, align 8
  %290 = getelementptr inbounds %struct.nic, %struct.nic* %289, i32 0, i32 3
  %291 = load i32*, i32** %290, align 8
  %292 = load i64, i64* @eeprom_cnfg_mdix, align 8
  %293 = getelementptr inbounds i32, i32* %291, i64 %292
  %294 = load i32, i32* %293, align 4
  %295 = load i32, i32* @eeprom_mdix_enabled, align 4
  %296 = and i32 %294, %295
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %298, label %316

298:                                              ; preds = %288, %265
  %299 = load %struct.net_device*, %struct.net_device** %4, align 8
  %300 = load %struct.nic*, %struct.nic** %3, align 8
  %301 = getelementptr inbounds %struct.nic, %struct.nic* %300, i32 0, i32 4
  %302 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %301, i32 0, i32 0
  %303 = load i32, i32* %302, align 8
  %304 = load i32, i32* @MII_NCONFIG, align 4
  %305 = load %struct.nic*, %struct.nic** %3, align 8
  %306 = getelementptr inbounds %struct.nic, %struct.nic* %305, i32 0, i32 4
  %307 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %306, i32 0, i32 1
  %308 = load i64, i64* %307, align 8
  %309 = icmp ne i64 %308, 0
  br i1 %309, label %310, label %311

310:                                              ; preds = %298
  br label %313

311:                                              ; preds = %298
  %312 = load i32, i32* @NCONFIG_AUTO_SWITCH, align 4
  br label %313

313:                                              ; preds = %311, %310
  %314 = phi i32 [ 0, %310 ], [ %312, %311 ]
  %315 = call i32 @mdio_write(%struct.net_device* %299, i32 %303, i32 %304, i32 %314)
  br label %316

316:                                              ; preds = %313, %288, %278, %271
  br label %317

317:                                              ; preds = %316, %223
  store i32 0, i32* %2, align 4
  br label %318

318:                                              ; preds = %317, %77, %76
  %319 = load i32, i32* %2, align 4
  ret i32 %319
}

declare dso_local i32 @mdio_read(%struct.net_device*, i32, i32) #1

declare dso_local i64 @e100_phy_check_without_mii(%struct.nic*) #1

declare dso_local i32 @netif_err(%struct.nic*, i32, %struct.net_device*, i8*) #1

declare dso_local i32 @netif_printk(%struct.nic*, i32, i32, %struct.net_device*, i8*, i32) #1

declare dso_local i32 @mdio_write(%struct.net_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
