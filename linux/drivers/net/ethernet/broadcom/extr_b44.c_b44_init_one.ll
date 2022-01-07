; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_b44.c_b44_init_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_b44.c_b44_init_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssb_device = type { i32, i32, i32, i32 }
%struct.ssb_device_id = type { i32 }
%struct.net_device = type { i32, i32*, i32, i32, i32, i32, i32*, i32 }
%struct.b44 = type { i64, i32, i32, %struct.TYPE_4__, i32, i32, %struct.TYPE_3__, i32, i32, i64, %struct.net_device*, %struct.ssb_device* }
%struct.TYPE_4__ = type { i64, i32, i32, i32, i32, %struct.net_device* }
%struct.TYPE_3__ = type { i32 }

@instance = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"%s version %s\0A\00", align 1
@DRV_DESCRIPTION = common dso_local global i32 0, align 4
@DRV_MODULE_VERSION = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@b44_debug = common dso_local global i32 0, align 4
@B44_DEF_MSG_ENABLE = common dso_local global i32 0, align 4
@B44_DEF_RX_RING_PENDING = common dso_local global i32 0, align 4
@B44_DEF_TX_RING_PENDING = common dso_local global i32 0, align 4
@b44_netdev_ops = common dso_local global i32 0, align 4
@b44_poll = common dso_local global i32 0, align 4
@B44_TX_TIMEOUT = common dso_local global i32 0, align 4
@B44_MIN_MTU = common dso_local global i32 0, align 4
@B44_MAX_MTU = common dso_local global i32 0, align 4
@b44_ethtool_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Failed to powerup the bus\0A\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"Required 30BIT DMA mask unsupported by the system\0A\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"Problem fetching invariants of chip, aborting\0A\00", align 1
@B44_PHY_ADDR_NO_PHY = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [38 x i8] c"No PHY present on this MAC, aborting\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@b44_mdio_read_mii = common dso_local global i32 0, align 4
@b44_mdio_write_mii = common dso_local global i32 0, align 4
@B44_FLAG_ADV_10HALF = common dso_local global i32 0, align 4
@B44_FLAG_ADV_10FULL = common dso_local global i32 0, align 4
@B44_FLAG_ADV_100HALF = common dso_local global i32 0, align 4
@B44_FLAG_ADV_100FULL = common dso_local global i32 0, align 4
@B44_FLAG_PAUSE_AUTO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [38 x i8] c"Cannot register net device, aborting\0A\00", align 1
@B44_CHIP_RESET_FULL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [18 x i8] c"phy reset failed\0A\00", align 1
@B44_FLAG_EXTERNAL_PHY = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [31 x i8] c"Cannot register PHY, aborting\0A\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"%s %pM\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ssb_device*, %struct.ssb_device_id*)* @b44_init_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b44_init_one(%struct.ssb_device* %0, %struct.ssb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ssb_device*, align 8
  %5 = alloca %struct.ssb_device_id*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.b44*, align 8
  %8 = alloca i32, align 4
  store %struct.ssb_device* %0, %struct.ssb_device** %4, align 8
  store %struct.ssb_device_id* %1, %struct.ssb_device_id** %5, align 8
  %9 = load i32, i32* @instance, align 4
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* @instance, align 4
  %11 = load i32, i32* @DRV_DESCRIPTION, align 4
  %12 = load i32, i32* @DRV_MODULE_VERSION, align 4
  %13 = call i32 @pr_info_once(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %12)
  %14 = call %struct.net_device* @alloc_etherdev(i32 96)
  store %struct.net_device* %14, %struct.net_device** %6, align 8
  %15 = load %struct.net_device*, %struct.net_device** %6, align 8
  %16 = icmp ne %struct.net_device* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %8, align 4
  br label %237

20:                                               ; preds = %2
  %21 = load %struct.net_device*, %struct.net_device** %6, align 8
  %22 = load %struct.ssb_device*, %struct.ssb_device** %4, align 8
  %23 = getelementptr inbounds %struct.ssb_device, %struct.ssb_device* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @SET_NETDEV_DEV(%struct.net_device* %21, i32 %24)
  %26 = load %struct.net_device*, %struct.net_device** %6, align 8
  %27 = getelementptr inbounds %struct.net_device, %struct.net_device* %26, i32 0, i32 7
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %27, align 8
  %29 = load %struct.net_device*, %struct.net_device** %6, align 8
  %30 = call %struct.b44* @netdev_priv(%struct.net_device* %29)
  store %struct.b44* %30, %struct.b44** %7, align 8
  %31 = load %struct.ssb_device*, %struct.ssb_device** %4, align 8
  %32 = load %struct.b44*, %struct.b44** %7, align 8
  %33 = getelementptr inbounds %struct.b44, %struct.b44* %32, i32 0, i32 11
  store %struct.ssb_device* %31, %struct.ssb_device** %33, align 8
  %34 = load %struct.net_device*, %struct.net_device** %6, align 8
  %35 = load %struct.b44*, %struct.b44** %7, align 8
  %36 = getelementptr inbounds %struct.b44, %struct.b44* %35, i32 0, i32 10
  store %struct.net_device* %34, %struct.net_device** %36, align 8
  %37 = load %struct.b44*, %struct.b44** %7, align 8
  %38 = getelementptr inbounds %struct.b44, %struct.b44* %37, i32 0, i32 9
  store i64 0, i64* %38, align 8
  %39 = load i32, i32* @b44_debug, align 4
  %40 = load i32, i32* @B44_DEF_MSG_ENABLE, align 4
  %41 = call i32 @netif_msg_init(i32 %39, i32 %40)
  %42 = load %struct.b44*, %struct.b44** %7, align 8
  %43 = getelementptr inbounds %struct.b44, %struct.b44* %42, i32 0, i32 8
  store i32 %41, i32* %43, align 8
  %44 = load %struct.b44*, %struct.b44** %7, align 8
  %45 = getelementptr inbounds %struct.b44, %struct.b44* %44, i32 0, i32 7
  %46 = call i32 @spin_lock_init(i32* %45)
  %47 = load %struct.b44*, %struct.b44** %7, align 8
  %48 = getelementptr inbounds %struct.b44, %struct.b44* %47, i32 0, i32 6
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = call i32 @u64_stats_init(i32* %49)
  %51 = load i32, i32* @B44_DEF_RX_RING_PENDING, align 4
  %52 = load %struct.b44*, %struct.b44** %7, align 8
  %53 = getelementptr inbounds %struct.b44, %struct.b44* %52, i32 0, i32 5
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* @B44_DEF_TX_RING_PENDING, align 4
  %55 = load %struct.b44*, %struct.b44** %7, align 8
  %56 = getelementptr inbounds %struct.b44, %struct.b44* %55, i32 0, i32 4
  store i32 %54, i32* %56, align 8
  %57 = load %struct.net_device*, %struct.net_device** %6, align 8
  %58 = getelementptr inbounds %struct.net_device, %struct.net_device* %57, i32 0, i32 6
  store i32* @b44_netdev_ops, i32** %58, align 8
  %59 = load %struct.net_device*, %struct.net_device** %6, align 8
  %60 = load %struct.b44*, %struct.b44** %7, align 8
  %61 = getelementptr inbounds %struct.b44, %struct.b44* %60, i32 0, i32 2
  %62 = load i32, i32* @b44_poll, align 4
  %63 = call i32 @netif_napi_add(%struct.net_device* %59, i32* %61, i32 %62, i32 64)
  %64 = load i32, i32* @B44_TX_TIMEOUT, align 4
  %65 = load %struct.net_device*, %struct.net_device** %6, align 8
  %66 = getelementptr inbounds %struct.net_device, %struct.net_device* %65, i32 0, i32 5
  store i32 %64, i32* %66, align 4
  %67 = load i32, i32* @B44_MIN_MTU, align 4
  %68 = load %struct.net_device*, %struct.net_device** %6, align 8
  %69 = getelementptr inbounds %struct.net_device, %struct.net_device* %68, i32 0, i32 4
  store i32 %67, i32* %69, align 8
  %70 = load i32, i32* @B44_MAX_MTU, align 4
  %71 = load %struct.net_device*, %struct.net_device** %6, align 8
  %72 = getelementptr inbounds %struct.net_device, %struct.net_device* %71, i32 0, i32 3
  store i32 %70, i32* %72, align 4
  %73 = load %struct.ssb_device*, %struct.ssb_device** %4, align 8
  %74 = getelementptr inbounds %struct.ssb_device, %struct.ssb_device* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.net_device*, %struct.net_device** %6, align 8
  %77 = getelementptr inbounds %struct.net_device, %struct.net_device* %76, i32 0, i32 2
  store i32 %75, i32* %77, align 8
  %78 = load %struct.net_device*, %struct.net_device** %6, align 8
  %79 = getelementptr inbounds %struct.net_device, %struct.net_device* %78, i32 0, i32 1
  store i32* @b44_ethtool_ops, i32** %79, align 8
  %80 = load %struct.ssb_device*, %struct.ssb_device** %4, align 8
  %81 = getelementptr inbounds %struct.ssb_device, %struct.ssb_device* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @ssb_bus_powerup(i32 %82, i32 0)
  store i32 %83, i32* %8, align 4
  %84 = load i32, i32* %8, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %20
  %87 = load %struct.ssb_device*, %struct.ssb_device** %4, align 8
  %88 = getelementptr inbounds %struct.ssb_device, %struct.ssb_device* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @dev_err(i32 %89, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %231

91:                                               ; preds = %20
  %92 = load %struct.ssb_device*, %struct.ssb_device** %4, align 8
  %93 = getelementptr inbounds %struct.ssb_device, %struct.ssb_device* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @DMA_BIT_MASK(i32 30)
  %96 = call i64 @dma_set_mask_and_coherent(i32 %94, i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %91
  %99 = load %struct.ssb_device*, %struct.ssb_device** %4, align 8
  %100 = getelementptr inbounds %struct.ssb_device, %struct.ssb_device* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @dev_err(i32 %101, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0))
  br label %226

103:                                              ; preds = %91
  %104 = load %struct.b44*, %struct.b44** %7, align 8
  %105 = call i32 @b44_get_invariants(%struct.b44* %104)
  store i32 %105, i32* %8, align 4
  %106 = load i32, i32* %8, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %103
  %109 = load %struct.ssb_device*, %struct.ssb_device** %4, align 8
  %110 = getelementptr inbounds %struct.ssb_device, %struct.ssb_device* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @dev_err(i32 %111, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0))
  br label %226

113:                                              ; preds = %103
  %114 = load %struct.b44*, %struct.b44** %7, align 8
  %115 = getelementptr inbounds %struct.b44, %struct.b44* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @B44_PHY_ADDR_NO_PHY, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %126

119:                                              ; preds = %113
  %120 = load %struct.ssb_device*, %struct.ssb_device** %4, align 8
  %121 = getelementptr inbounds %struct.ssb_device, %struct.ssb_device* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @dev_err(i32 %122, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  %124 = load i32, i32* @ENODEV, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %8, align 4
  br label %226

126:                                              ; preds = %113
  %127 = load %struct.net_device*, %struct.net_device** %6, align 8
  %128 = load %struct.b44*, %struct.b44** %7, align 8
  %129 = getelementptr inbounds %struct.b44, %struct.b44* %128, i32 0, i32 3
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 5
  store %struct.net_device* %127, %struct.net_device** %130, align 8
  %131 = load i32, i32* @b44_mdio_read_mii, align 4
  %132 = load %struct.b44*, %struct.b44** %7, align 8
  %133 = getelementptr inbounds %struct.b44, %struct.b44* %132, i32 0, i32 3
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 4
  store i32 %131, i32* %134, align 4
  %135 = load i32, i32* @b44_mdio_write_mii, align 4
  %136 = load %struct.b44*, %struct.b44** %7, align 8
  %137 = getelementptr inbounds %struct.b44, %struct.b44* %136, i32 0, i32 3
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 3
  store i32 %135, i32* %138, align 8
  %139 = load %struct.b44*, %struct.b44** %7, align 8
  %140 = getelementptr inbounds %struct.b44, %struct.b44* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load %struct.b44*, %struct.b44** %7, align 8
  %143 = getelementptr inbounds %struct.b44, %struct.b44* %142, i32 0, i32 3
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 0
  store i64 %141, i64* %144, align 8
  %145 = load %struct.b44*, %struct.b44** %7, align 8
  %146 = getelementptr inbounds %struct.b44, %struct.b44* %145, i32 0, i32 3
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 1
  store i32 31, i32* %147, align 8
  %148 = load %struct.b44*, %struct.b44** %7, align 8
  %149 = getelementptr inbounds %struct.b44, %struct.b44* %148, i32 0, i32 3
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 2
  store i32 31, i32* %150, align 4
  %151 = load i32, i32* @B44_FLAG_ADV_10HALF, align 4
  %152 = load i32, i32* @B44_FLAG_ADV_10FULL, align 4
  %153 = or i32 %151, %152
  %154 = load i32, i32* @B44_FLAG_ADV_100HALF, align 4
  %155 = or i32 %153, %154
  %156 = load i32, i32* @B44_FLAG_ADV_100FULL, align 4
  %157 = or i32 %155, %156
  %158 = load %struct.b44*, %struct.b44** %7, align 8
  %159 = getelementptr inbounds %struct.b44, %struct.b44* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 8
  %161 = or i32 %160, %157
  store i32 %161, i32* %159, align 8
  %162 = load i32, i32* @B44_FLAG_PAUSE_AUTO, align 4
  %163 = load %struct.b44*, %struct.b44** %7, align 8
  %164 = getelementptr inbounds %struct.b44, %struct.b44* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 8
  %166 = or i32 %165, %162
  store i32 %166, i32* %164, align 8
  %167 = load %struct.net_device*, %struct.net_device** %6, align 8
  %168 = call i32 @register_netdev(%struct.net_device* %167)
  store i32 %168, i32* %8, align 4
  %169 = load i32, i32* %8, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %176

171:                                              ; preds = %126
  %172 = load %struct.ssb_device*, %struct.ssb_device** %4, align 8
  %173 = getelementptr inbounds %struct.ssb_device, %struct.ssb_device* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @dev_err(i32 %174, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0))
  br label %226

176:                                              ; preds = %126
  %177 = load %struct.net_device*, %struct.net_device** %6, align 8
  %178 = call i32 @netif_carrier_off(%struct.net_device* %177)
  %179 = load %struct.ssb_device*, %struct.ssb_device** %4, align 8
  %180 = load %struct.net_device*, %struct.net_device** %6, align 8
  %181 = call i32 @ssb_set_drvdata(%struct.ssb_device* %179, %struct.net_device* %180)
  %182 = load %struct.b44*, %struct.b44** %7, align 8
  %183 = load i32, i32* @B44_CHIP_RESET_FULL, align 4
  %184 = call i32 @b44_chip_reset(%struct.b44* %182, i32 %183)
  %185 = load %struct.b44*, %struct.b44** %7, align 8
  %186 = call i32 @b44_phy_reset(%struct.b44* %185)
  store i32 %186, i32* %8, align 4
  %187 = load i32, i32* %8, align 4
  %188 = icmp slt i32 %187, 0
  br i1 %188, label %189, label %194

189:                                              ; preds = %176
  %190 = load %struct.ssb_device*, %struct.ssb_device** %4, align 8
  %191 = getelementptr inbounds %struct.ssb_device, %struct.ssb_device* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = call i32 @dev_err(i32 %192, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  br label %223

194:                                              ; preds = %176
  %195 = load %struct.b44*, %struct.b44** %7, align 8
  %196 = getelementptr inbounds %struct.b44, %struct.b44* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 8
  %198 = load i32, i32* @B44_FLAG_EXTERNAL_PHY, align 4
  %199 = and i32 %197, %198
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %212

201:                                              ; preds = %194
  %202 = load %struct.b44*, %struct.b44** %7, align 8
  %203 = call i32 @b44_register_phy_one(%struct.b44* %202)
  store i32 %203, i32* %8, align 4
  %204 = load i32, i32* %8, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %211

206:                                              ; preds = %201
  %207 = load %struct.ssb_device*, %struct.ssb_device** %4, align 8
  %208 = getelementptr inbounds %struct.ssb_device, %struct.ssb_device* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = call i32 @dev_err(i32 %209, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0))
  br label %223

211:                                              ; preds = %201
  br label %212

212:                                              ; preds = %211, %194
  %213 = load %struct.ssb_device*, %struct.ssb_device** %4, align 8
  %214 = getelementptr inbounds %struct.ssb_device, %struct.ssb_device* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = call i32 @device_set_wakeup_capable(i32 %215, i32 1)
  %217 = load %struct.net_device*, %struct.net_device** %6, align 8
  %218 = load i32, i32* @DRV_DESCRIPTION, align 4
  %219 = load %struct.net_device*, %struct.net_device** %6, align 8
  %220 = getelementptr inbounds %struct.net_device, %struct.net_device* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = call i32 @netdev_info(%struct.net_device* %217, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i32 %218, i32 %221)
  store i32 0, i32* %3, align 4
  br label %239

223:                                              ; preds = %206, %189
  %224 = load %struct.net_device*, %struct.net_device** %6, align 8
  %225 = call i32 @unregister_netdev(%struct.net_device* %224)
  br label %226

226:                                              ; preds = %223, %171, %119, %108, %98
  %227 = load %struct.ssb_device*, %struct.ssb_device** %4, align 8
  %228 = getelementptr inbounds %struct.ssb_device, %struct.ssb_device* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = call i32 @ssb_bus_may_powerdown(i32 %229)
  br label %231

231:                                              ; preds = %226, %86
  %232 = load %struct.b44*, %struct.b44** %7, align 8
  %233 = getelementptr inbounds %struct.b44, %struct.b44* %232, i32 0, i32 2
  %234 = call i32 @netif_napi_del(i32* %233)
  %235 = load %struct.net_device*, %struct.net_device** %6, align 8
  %236 = call i32 @free_netdev(%struct.net_device* %235)
  br label %237

237:                                              ; preds = %231, %17
  %238 = load i32, i32* %8, align 4
  store i32 %238, i32* %3, align 4
  br label %239

239:                                              ; preds = %237, %212
  %240 = load i32, i32* %3, align 4
  ret i32 %240
}

declare dso_local i32 @pr_info_once(i8*, i32, i32) #1

declare dso_local %struct.net_device* @alloc_etherdev(i32) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, i32) #1

declare dso_local %struct.b44* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_msg_init(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @u64_stats_init(i32*) #1

declare dso_local i32 @netif_napi_add(%struct.net_device*, i32*, i32, i32) #1

declare dso_local i32 @ssb_bus_powerup(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i64 @dma_set_mask_and_coherent(i32, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @b44_get_invariants(%struct.b44*) #1

declare dso_local i32 @register_netdev(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @ssb_set_drvdata(%struct.ssb_device*, %struct.net_device*) #1

declare dso_local i32 @b44_chip_reset(%struct.b44*, i32) #1

declare dso_local i32 @b44_phy_reset(%struct.b44*) #1

declare dso_local i32 @b44_register_phy_one(%struct.b44*) #1

declare dso_local i32 @device_set_wakeup_capable(i32, i32) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*, i32, i32) #1

declare dso_local i32 @unregister_netdev(%struct.net_device*) #1

declare dso_local i32 @ssb_bus_may_powerdown(i32) #1

declare dso_local i32 @netif_napi_del(i32*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
