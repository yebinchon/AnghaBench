; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpmac.c_cpmac_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpmac.c_cpmac_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8* }
%struct.platform_device = type { i32, i32 }
%struct.resource = type { i64 }
%struct.cpmac_priv = type { i32, i32, i32, %struct.net_device*, i32, i32, i32, %struct.platform_device* }
%struct.net_device = type { i32, i32, i32*, i32* }
%struct.plat_cpmac_data = type { i32, i32 }
%struct.phy_device = type { i32 }

@MII_BUS_ID_SIZE = common dso_local global i32 0, align 4
@external_switch = common dso_local global i64 0, align 8
@dumb_switch = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"fixed-0\00", align 1
@PHY_MAX_ADDR = common dso_local global i32 0, align 4
@cpmac_mii = common dso_local global %struct.TYPE_3__* null, align 8
@.str.1 = private unnamed_addr constant [54 x i8] c"no PHY present, falling back to switch on MDIO bus 0\0A\00", align 1
@CPMAC_QUEUES = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"regs\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"irq\00", align 1
@cpmac_netdev_ops = common dso_local global i32 0, align 4
@cpmac_ethtool_ops = common dso_local global i32 0, align 4
@cpmac_poll = common dso_local global i32 0, align 4
@debug_level = common dso_local global i32 0, align 4
@PHY_ID_FMT = common dso_local global i8* null, align 8
@cpmac_adjust_link = common dso_local global i32 0, align 4
@PHY_INTERFACE_MODE_MII = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"Could not attach to PHY\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"Could not register net device\0A\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"regs: %p, irq: %d, phy: %s, mac: %pM\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @cpmac_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpmac_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.resource*, align 8
  %9 = alloca %struct.cpmac_priv*, align 8
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca %struct.plat_cpmac_data*, align 8
  %12 = alloca %struct.phy_device*, align 8
  %13 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %14 = load i32, i32* @MII_BUS_ID_SIZE, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %6, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %7, align 8
  store %struct.phy_device* null, %struct.phy_device** %12, align 8
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 1
  %20 = call %struct.plat_cpmac_data* @dev_get_platdata(i32* %19)
  store %struct.plat_cpmac_data* %20, %struct.plat_cpmac_data** %11, align 8
  %21 = load i64, i64* @external_switch, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %1
  %24 = load i64, i64* @dumb_switch, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %23, %1
  %27 = load i32, i32* @MII_BUS_ID_SIZE, align 4
  %28 = call i32 @strncpy(i8* %17, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %30 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %5, align 4
  br label %62

32:                                               ; preds = %23
  store i32 0, i32* %5, align 4
  br label %33

33:                                               ; preds = %58, %32
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @PHY_MAX_ADDR, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %61

37:                                               ; preds = %33
  %38 = load %struct.plat_cpmac_data*, %struct.plat_cpmac_data** %11, align 8
  %39 = getelementptr inbounds %struct.plat_cpmac_data, %struct.plat_cpmac_data* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %5, align 4
  %42 = shl i32 1, %41
  %43 = and i32 %40, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %37
  br label %58

46:                                               ; preds = %37
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cpmac_mii, align 8
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @mdiobus_get_phy(%struct.TYPE_3__* %47, i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %46
  br label %58

52:                                               ; preds = %46
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cpmac_mii, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = load i32, i32* @MII_BUS_ID_SIZE, align 4
  %57 = call i32 @strncpy(i8* %17, i8* %55, i32 %56)
  br label %61

58:                                               ; preds = %51, %45
  %59 = load i32, i32* %5, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %5, align 4
  br label %33

61:                                               ; preds = %52, %33
  br label %62

62:                                               ; preds = %61, %26
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* @PHY_MAX_ADDR, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %75

66:                                               ; preds = %62
  %67 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %68 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %67, i32 0, i32 1
  %69 = call i32 @dev_err(i32* %68, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0))
  %70 = load i32, i32* @MII_BUS_ID_SIZE, align 4
  %71 = call i32 @strncpy(i8* %17, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %70)
  %72 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %73 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %5, align 4
  br label %75

75:                                               ; preds = %66, %62
  %76 = sub i64 %15, 1
  %77 = getelementptr inbounds i8, i8* %17, i64 %76
  store i8 0, i8* %77, align 1
  %78 = load i32, i32* @CPMAC_QUEUES, align 4
  %79 = call %struct.net_device* @alloc_etherdev_mq(i32 48, i32 %78)
  store %struct.net_device* %79, %struct.net_device** %10, align 8
  %80 = load %struct.net_device*, %struct.net_device** %10, align 8
  %81 = icmp ne %struct.net_device* %80, null
  br i1 %81, label %85, label %82

82:                                               ; preds = %75
  %83 = load i32, i32* @ENOMEM, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %205

85:                                               ; preds = %75
  %86 = load %struct.net_device*, %struct.net_device** %10, align 8
  %87 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %88 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %87, i32 0, i32 1
  %89 = call i32 @SET_NETDEV_DEV(%struct.net_device* %86, i32* %88)
  %90 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %91 = load %struct.net_device*, %struct.net_device** %10, align 8
  %92 = call i32 @platform_set_drvdata(%struct.platform_device* %90, %struct.net_device* %91)
  %93 = load %struct.net_device*, %struct.net_device** %10, align 8
  %94 = call %struct.cpmac_priv* @netdev_priv(%struct.net_device* %93)
  store %struct.cpmac_priv* %94, %struct.cpmac_priv** %9, align 8
  %95 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %96 = load %struct.cpmac_priv*, %struct.cpmac_priv** %9, align 8
  %97 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %96, i32 0, i32 7
  store %struct.platform_device* %95, %struct.platform_device** %97, align 8
  %98 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %99 = load i32, i32* @IORESOURCE_MEM, align 4
  %100 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %98, i32 %99, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store %struct.resource* %100, %struct.resource** %8, align 8
  %101 = load %struct.resource*, %struct.resource** %8, align 8
  %102 = icmp ne %struct.resource* %101, null
  br i1 %102, label %106, label %103

103:                                              ; preds = %85
  %104 = load i32, i32* @ENODEV, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %4, align 4
  br label %201

106:                                              ; preds = %85
  %107 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %108 = call i32 @platform_get_irq_byname(%struct.platform_device* %107, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %109 = load %struct.net_device*, %struct.net_device** %10, align 8
  %110 = getelementptr inbounds %struct.net_device, %struct.net_device* %109, i32 0, i32 1
  store i32 %108, i32* %110, align 4
  %111 = load %struct.net_device*, %struct.net_device** %10, align 8
  %112 = getelementptr inbounds %struct.net_device, %struct.net_device* %111, i32 0, i32 3
  store i32* @cpmac_netdev_ops, i32** %112, align 8
  %113 = load %struct.net_device*, %struct.net_device** %10, align 8
  %114 = getelementptr inbounds %struct.net_device, %struct.net_device* %113, i32 0, i32 2
  store i32* @cpmac_ethtool_ops, i32** %114, align 8
  %115 = load %struct.net_device*, %struct.net_device** %10, align 8
  %116 = load %struct.cpmac_priv*, %struct.cpmac_priv** %9, align 8
  %117 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %116, i32 0, i32 6
  %118 = load i32, i32* @cpmac_poll, align 4
  %119 = call i32 @netif_napi_add(%struct.net_device* %115, i32* %117, i32 %118, i32 64)
  %120 = load %struct.cpmac_priv*, %struct.cpmac_priv** %9, align 8
  %121 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %120, i32 0, i32 5
  %122 = call i32 @spin_lock_init(i32* %121)
  %123 = load %struct.cpmac_priv*, %struct.cpmac_priv** %9, align 8
  %124 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %123, i32 0, i32 4
  %125 = call i32 @spin_lock_init(i32* %124)
  %126 = load %struct.net_device*, %struct.net_device** %10, align 8
  %127 = load %struct.cpmac_priv*, %struct.cpmac_priv** %9, align 8
  %128 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %127, i32 0, i32 3
  store %struct.net_device* %126, %struct.net_device** %128, align 8
  %129 = load %struct.cpmac_priv*, %struct.cpmac_priv** %9, align 8
  %130 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %129, i32 0, i32 0
  store i32 64, i32* %130, align 8
  %131 = load i32, i32* @debug_level, align 4
  %132 = call i32 @netif_msg_init(i32 %131, i32 255)
  %133 = load %struct.cpmac_priv*, %struct.cpmac_priv** %9, align 8
  %134 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %133, i32 0, i32 2
  store i32 %132, i32* %134, align 8
  %135 = load %struct.net_device*, %struct.net_device** %10, align 8
  %136 = getelementptr inbounds %struct.net_device, %struct.net_device* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.plat_cpmac_data*, %struct.plat_cpmac_data** %11, align 8
  %139 = getelementptr inbounds %struct.plat_cpmac_data, %struct.plat_cpmac_data* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @memcpy(i32 %137, i32 %140, i32 4)
  %142 = load %struct.cpmac_priv*, %struct.cpmac_priv** %9, align 8
  %143 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @MII_BUS_ID_SIZE, align 4
  %146 = load i8*, i8** @PHY_ID_FMT, align 8
  %147 = load i32, i32* %5, align 4
  %148 = call i32 @snprintf(i32 %144, i32 %145, i8* %146, i8* %17, i32 %147)
  %149 = load %struct.net_device*, %struct.net_device** %10, align 8
  %150 = load %struct.cpmac_priv*, %struct.cpmac_priv** %9, align 8
  %151 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* @cpmac_adjust_link, align 4
  %154 = load i32, i32* @PHY_INTERFACE_MODE_MII, align 4
  %155 = call %struct.phy_device* @phy_connect(%struct.net_device* %149, i32 %152, i32 %153, i32 %154)
  store %struct.phy_device* %155, %struct.phy_device** %12, align 8
  %156 = load %struct.phy_device*, %struct.phy_device** %12, align 8
  %157 = call i64 @IS_ERR(%struct.phy_device* %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %170

159:                                              ; preds = %106
  %160 = load %struct.cpmac_priv*, %struct.cpmac_priv** %9, align 8
  %161 = call i64 @netif_msg_drv(%struct.cpmac_priv* %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %167

163:                                              ; preds = %159
  %164 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %165 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %164, i32 0, i32 1
  %166 = call i32 @dev_err(i32* %165, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  br label %167

167:                                              ; preds = %163, %159
  %168 = load %struct.phy_device*, %struct.phy_device** %12, align 8
  %169 = call i32 @PTR_ERR(%struct.phy_device* %168)
  store i32 %169, i32* %4, align 4
  br label %201

170:                                              ; preds = %106
  %171 = load %struct.net_device*, %struct.net_device** %10, align 8
  %172 = call i32 @register_netdev(%struct.net_device* %171)
  store i32 %172, i32* %4, align 4
  %173 = load i32, i32* %4, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %179

175:                                              ; preds = %170
  %176 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %177 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %176, i32 0, i32 1
  %178 = call i32 @dev_err(i32* %177, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  br label %201

179:                                              ; preds = %170
  %180 = load %struct.cpmac_priv*, %struct.cpmac_priv** %9, align 8
  %181 = call i64 @netif_msg_probe(%struct.cpmac_priv* %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %200

183:                                              ; preds = %179
  %184 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %185 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %184, i32 0, i32 1
  %186 = load %struct.resource*, %struct.resource** %8, align 8
  %187 = getelementptr inbounds %struct.resource, %struct.resource* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = inttoptr i64 %188 to i8*
  %190 = load %struct.net_device*, %struct.net_device** %10, align 8
  %191 = getelementptr inbounds %struct.net_device, %struct.net_device* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.cpmac_priv*, %struct.cpmac_priv** %9, align 8
  %194 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.net_device*, %struct.net_device** %10, align 8
  %197 = getelementptr inbounds %struct.net_device, %struct.net_device* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = call i32 @dev_info(i32* %185, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0), i8* %189, i32 %192, i32 %195, i32 %198)
  br label %200

200:                                              ; preds = %183, %179
  store i32 0, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %205

201:                                              ; preds = %175, %167, %103
  %202 = load %struct.net_device*, %struct.net_device** %10, align 8
  %203 = call i32 @free_netdev(%struct.net_device* %202)
  %204 = load i32, i32* %4, align 4
  store i32 %204, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %205

205:                                              ; preds = %201, %200, %82
  %206 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %206)
  %207 = load i32, i32* %2, align 4
  ret i32 %207
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.plat_cpmac_data* @dev_get_platdata(i32*) #2

declare dso_local i32 @strncpy(i8*, i8*, i32) #2

declare dso_local i32 @mdiobus_get_phy(%struct.TYPE_3__*, i32) #2

declare dso_local i32 @dev_err(i32*, i8*) #2

declare dso_local %struct.net_device* @alloc_etherdev_mq(i32, i32) #2

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, i32*) #2

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.net_device*) #2

declare dso_local %struct.cpmac_priv* @netdev_priv(%struct.net_device*) #2

declare dso_local %struct.resource* @platform_get_resource_byname(%struct.platform_device*, i32, i8*) #2

declare dso_local i32 @platform_get_irq_byname(%struct.platform_device*, i8*) #2

declare dso_local i32 @netif_napi_add(%struct.net_device*, i32*, i32, i32) #2

declare dso_local i32 @spin_lock_init(i32*) #2

declare dso_local i32 @netif_msg_init(i32, i32) #2

declare dso_local i32 @memcpy(i32, i32, i32) #2

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i32) #2

declare dso_local %struct.phy_device* @phy_connect(%struct.net_device*, i32, i32, i32) #2

declare dso_local i64 @IS_ERR(%struct.phy_device*) #2

declare dso_local i64 @netif_msg_drv(%struct.cpmac_priv*) #2

declare dso_local i32 @PTR_ERR(%struct.phy_device*) #2

declare dso_local i32 @register_netdev(%struct.net_device*) #2

declare dso_local i64 @netif_msg_probe(%struct.cpmac_priv*) #2

declare dso_local i32 @dev_info(i32*, i8*, i8*, i32, i32, i32) #2

declare dso_local i32 @free_netdev(%struct.net_device*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
