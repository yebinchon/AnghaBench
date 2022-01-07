; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mv643xx_eth.c_mv643xx_eth_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mv643xx_eth.c_mv643xx_eth_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.mv643xx_eth_platform_data = type { i32, i64, i32, i32, i64, i32* }
%struct.mv643xx_eth_private = type { i32, i32, i64, %struct.phy_device*, %struct.TYPE_10__*, %struct.TYPE_9__, i32, i32, i32, %struct.TYPE_9__, %struct.net_device*, i32, i32, i64 }
%struct.phy_device = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { i64, %struct.phy_device*, i64 }
%struct.TYPE_9__ = type { i64 }
%struct.net_device = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32*, i32, i32* }
%struct.resource = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"no mv643xx_eth_platform_data\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"no mv643xx_eth_platform_data->shared\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"marvell,kirkwood-eth-port\00", align 1
@PORT_SERIAL_CONTROL1 = common dso_local global i32 0, align 4
@CLK125_BYPASS_EN = common dso_local global i32 0, align 4
@mv643xx_eth_adjust_link = common dso_local global i32 0, align 4
@MV643XX_ETH_PHY_NONE = common dso_local global i64 0, align 8
@EPROBE_DEFER = common dso_local global i32 0, align 4
@mv643xx_eth_ethtool_ops = common dso_local global i32 0, align 4
@mib_counters_timer_wrapper = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@tx_timeout_task = common dso_local global i32 0, align 4
@mv643xx_eth_poll = common dso_local global i32 0, align 4
@NAPI_POLL_WEIGHT = common dso_local global i32 0, align 4
@oom_timer_wrapper = common dso_local global i32 0, align 4
@IORESOURCE_IRQ = common dso_local global i32 0, align 4
@mv643xx_eth_netdev_ops = common dso_local global i32 0, align 4
@NETIF_F_SG = common dso_local global i32 0, align 4
@NETIF_F_IP_CSUM = common dso_local global i32 0, align 4
@NETIF_F_TSO = common dso_local global i32 0, align 4
@NETIF_F_RXCSUM = common dso_local global i32 0, align 4
@IFF_UNICAST_FLT = common dso_local global i32 0, align 4
@MV643XX_MAX_TSO_SEGS = common dso_local global i32 0, align 4
@SDMA_CONFIG = common dso_local global i32 0, align 4
@PORT_SDMA_CONFIG_DEFAULT_VALUE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"port %d with MAC address %pM\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"configured with sram\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mv643xx_eth_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv643xx_eth_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.mv643xx_eth_platform_data*, align 8
  %5 = alloca %struct.mv643xx_eth_private*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.phy_device*, align 8
  %8 = alloca %struct.resource*, align 8
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store %struct.phy_device* null, %struct.phy_device** %7, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = call %struct.mv643xx_eth_platform_data* @dev_get_platdata(%struct.TYPE_11__* %11)
  store %struct.mv643xx_eth_platform_data* %12, %struct.mv643xx_eth_platform_data** %4, align 8
  %13 = load %struct.mv643xx_eth_platform_data*, %struct.mv643xx_eth_platform_data** %4, align 8
  %14 = icmp eq %struct.mv643xx_eth_platform_data* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %1
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  %18 = call i32 @dev_err(%struct.TYPE_11__* %17, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @ENODEV, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %383

21:                                               ; preds = %1
  %22 = load %struct.mv643xx_eth_platform_data*, %struct.mv643xx_eth_platform_data** %4, align 8
  %23 = getelementptr inbounds %struct.mv643xx_eth_platform_data, %struct.mv643xx_eth_platform_data* %22, i32 0, i32 5
  %24 = load i32*, i32** %23, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %27, i32 0, i32 0
  %29 = call i32 @dev_err(%struct.TYPE_11__* %28, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i32, i32* @ENODEV, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %383

32:                                               ; preds = %21
  %33 = call %struct.net_device* @alloc_etherdev_mq(i32 88, i32 8)
  store %struct.net_device* %33, %struct.net_device** %6, align 8
  %34 = load %struct.net_device*, %struct.net_device** %6, align 8
  %35 = icmp ne %struct.net_device* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %32
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %383

39:                                               ; preds = %32
  %40 = load %struct.net_device*, %struct.net_device** %6, align 8
  %41 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %42 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %41, i32 0, i32 0
  %43 = call i32 @SET_NETDEV_DEV(%struct.net_device* %40, %struct.TYPE_11__* %42)
  %44 = load %struct.net_device*, %struct.net_device** %6, align 8
  %45 = call %struct.mv643xx_eth_private* @netdev_priv(%struct.net_device* %44)
  store %struct.mv643xx_eth_private* %45, %struct.mv643xx_eth_private** %5, align 8
  %46 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %47 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %5, align 8
  %48 = call i32 @platform_set_drvdata(%struct.platform_device* %46, %struct.mv643xx_eth_private* %47)
  %49 = load %struct.mv643xx_eth_platform_data*, %struct.mv643xx_eth_platform_data** %4, align 8
  %50 = getelementptr inbounds %struct.mv643xx_eth_platform_data, %struct.mv643xx_eth_platform_data* %49, i32 0, i32 5
  %51 = load i32*, i32** %50, align 8
  %52 = call %struct.TYPE_10__* @platform_get_drvdata(i32* %51)
  %53 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %5, align 8
  %54 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %53, i32 0, i32 4
  store %struct.TYPE_10__* %52, %struct.TYPE_10__** %54, align 8
  %55 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %5, align 8
  %56 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %55, i32 0, i32 4
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %59, 1024
  %61 = load %struct.mv643xx_eth_platform_data*, %struct.mv643xx_eth_platform_data** %4, align 8
  %62 = getelementptr inbounds %struct.mv643xx_eth_platform_data, %struct.mv643xx_eth_platform_data* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = shl i32 %63, 10
  %65 = sext i32 %64 to i64
  %66 = add nsw i64 %60, %65
  %67 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %5, align 8
  %68 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %67, i32 0, i32 13
  store i64 %66, i64* %68, align 8
  %69 = load %struct.mv643xx_eth_platform_data*, %struct.mv643xx_eth_platform_data** %4, align 8
  %70 = getelementptr inbounds %struct.mv643xx_eth_platform_data, %struct.mv643xx_eth_platform_data* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %5, align 8
  %73 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  %74 = load %struct.net_device*, %struct.net_device** %6, align 8
  %75 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %5, align 8
  %76 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %75, i32 0, i32 10
  store %struct.net_device* %74, %struct.net_device** %76, align 8
  %77 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %78 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i64 @of_device_is_compatible(i32 %80, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %93

83:                                               ; preds = %39
  %84 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %5, align 8
  %85 = load i32, i32* @PORT_SERIAL_CONTROL1, align 4
  %86 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %5, align 8
  %87 = load i32, i32* @PORT_SERIAL_CONTROL1, align 4
  %88 = call i32 @rdlp(%struct.mv643xx_eth_private* %86, i32 %87)
  %89 = load i32, i32* @CLK125_BYPASS_EN, align 4
  %90 = xor i32 %89, -1
  %91 = and i32 %88, %90
  %92 = call i32 @wrlp(%struct.mv643xx_eth_private* %84, i32 %85, i32 %91)
  br label %93

93:                                               ; preds = %83, %39
  %94 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %5, align 8
  %95 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %94, i32 0, i32 1
  store i32 133000000, i32* %95, align 4
  %96 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %97 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %96, i32 0, i32 0
  %98 = call %struct.phy_device* @devm_clk_get(%struct.TYPE_11__* %97, i32* null)
  %99 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %5, align 8
  %100 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %99, i32 0, i32 3
  store %struct.phy_device* %98, %struct.phy_device** %100, align 8
  %101 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %5, align 8
  %102 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %101, i32 0, i32 3
  %103 = load %struct.phy_device*, %struct.phy_device** %102, align 8
  %104 = call i64 @IS_ERR(%struct.phy_device* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %118, label %106

106:                                              ; preds = %93
  %107 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %5, align 8
  %108 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %107, i32 0, i32 3
  %109 = load %struct.phy_device*, %struct.phy_device** %108, align 8
  %110 = call i32 @clk_prepare_enable(%struct.phy_device* %109)
  %111 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %5, align 8
  %112 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %111, i32 0, i32 3
  %113 = load %struct.phy_device*, %struct.phy_device** %112, align 8
  %114 = call i8* @clk_get_rate(%struct.phy_device* %113)
  %115 = ptrtoint i8* %114 to i32
  %116 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %5, align 8
  %117 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %116, i32 0, i32 1
  store i32 %115, i32* %117, align 4
  br label %137

118:                                              ; preds = %93
  %119 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %5, align 8
  %120 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %119, i32 0, i32 4
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 1
  %123 = load %struct.phy_device*, %struct.phy_device** %122, align 8
  %124 = call i64 @IS_ERR(%struct.phy_device* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %136, label %126

126:                                              ; preds = %118
  %127 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %5, align 8
  %128 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %127, i32 0, i32 4
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 1
  %131 = load %struct.phy_device*, %struct.phy_device** %130, align 8
  %132 = call i8* @clk_get_rate(%struct.phy_device* %131)
  %133 = ptrtoint i8* %132 to i32
  %134 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %5, align 8
  %135 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %134, i32 0, i32 1
  store i32 %133, i32* %135, align 4
  br label %136

136:                                              ; preds = %126, %118
  br label %137

137:                                              ; preds = %136, %106
  %138 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %5, align 8
  %139 = load %struct.mv643xx_eth_platform_data*, %struct.mv643xx_eth_platform_data** %4, align 8
  %140 = call i32 @set_params(%struct.mv643xx_eth_private* %138, %struct.mv643xx_eth_platform_data* %139)
  %141 = load %struct.net_device*, %struct.net_device** %6, align 8
  %142 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %5, align 8
  %143 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %142, i32 0, i32 12
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @netif_set_real_num_tx_queues(%struct.net_device* %141, i32 %144)
  %146 = load %struct.net_device*, %struct.net_device** %6, align 8
  %147 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %5, align 8
  %148 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %147, i32 0, i32 11
  %149 = load i32, i32* %148, align 8
  %150 = call i32 @netif_set_real_num_rx_queues(%struct.net_device* %146, i32 %149)
  store i32 0, i32* %9, align 4
  %151 = load %struct.mv643xx_eth_platform_data*, %struct.mv643xx_eth_platform_data** %4, align 8
  %152 = getelementptr inbounds %struct.mv643xx_eth_platform_data, %struct.mv643xx_eth_platform_data* %151, i32 0, i32 4
  %153 = load i64, i64* %152, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %179

155:                                              ; preds = %137
  %156 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %5, align 8
  %157 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %156, i32 0, i32 10
  %158 = load %struct.net_device*, %struct.net_device** %157, align 8
  %159 = load %struct.mv643xx_eth_platform_data*, %struct.mv643xx_eth_platform_data** %4, align 8
  %160 = getelementptr inbounds %struct.mv643xx_eth_platform_data, %struct.mv643xx_eth_platform_data* %159, i32 0, i32 4
  %161 = load i64, i64* %160, align 8
  %162 = load i32, i32* @mv643xx_eth_adjust_link, align 4
  %163 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %5, align 8
  %164 = call i32 @get_phy_mode(%struct.mv643xx_eth_private* %163)
  %165 = call %struct.phy_device* @of_phy_connect(%struct.net_device* %158, i64 %161, i32 %162, i32 0, i32 %164)
  store %struct.phy_device* %165, %struct.phy_device** %7, align 8
  %166 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %167 = icmp ne %struct.phy_device* %166, null
  br i1 %167, label %171, label %168

168:                                              ; preds = %155
  %169 = load i32, i32* @ENODEV, align 4
  %170 = sub nsw i32 0, %169
  store i32 %170, i32* %9, align 4
  br label %178

171:                                              ; preds = %155
  %172 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %5, align 8
  %173 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %174 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = call i32 @phy_addr_set(%struct.mv643xx_eth_private* %172, i32 %176)
  br label %178

178:                                              ; preds = %171, %168
  br label %208

179:                                              ; preds = %137
  %180 = load %struct.mv643xx_eth_platform_data*, %struct.mv643xx_eth_platform_data** %4, align 8
  %181 = getelementptr inbounds %struct.mv643xx_eth_platform_data, %struct.mv643xx_eth_platform_data* %180, i32 0, i32 1
  %182 = load i64, i64* %181, align 8
  %183 = load i64, i64* @MV643XX_ETH_PHY_NONE, align 8
  %184 = icmp ne i64 %182, %183
  br i1 %184, label %185, label %207

185:                                              ; preds = %179
  %186 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %5, align 8
  %187 = load %struct.mv643xx_eth_platform_data*, %struct.mv643xx_eth_platform_data** %4, align 8
  %188 = getelementptr inbounds %struct.mv643xx_eth_platform_data, %struct.mv643xx_eth_platform_data* %187, i32 0, i32 1
  %189 = load i64, i64* %188, align 8
  %190 = call %struct.phy_device* @phy_scan(%struct.mv643xx_eth_private* %186, i64 %189)
  store %struct.phy_device* %190, %struct.phy_device** %7, align 8
  %191 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %192 = call i64 @IS_ERR(%struct.phy_device* %191)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %197

194:                                              ; preds = %185
  %195 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %196 = call i32 @PTR_ERR(%struct.phy_device* %195)
  store i32 %196, i32* %9, align 4
  br label %206

197:                                              ; preds = %185
  %198 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %5, align 8
  %199 = load %struct.mv643xx_eth_platform_data*, %struct.mv643xx_eth_platform_data** %4, align 8
  %200 = getelementptr inbounds %struct.mv643xx_eth_platform_data, %struct.mv643xx_eth_platform_data* %199, i32 0, i32 3
  %201 = load i32, i32* %200, align 4
  %202 = load %struct.mv643xx_eth_platform_data*, %struct.mv643xx_eth_platform_data** %4, align 8
  %203 = getelementptr inbounds %struct.mv643xx_eth_platform_data, %struct.mv643xx_eth_platform_data* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 8
  %205 = call i32 @phy_init(%struct.mv643xx_eth_private* %198, i32 %201, i32 %204)
  br label %206

206:                                              ; preds = %197, %194
  br label %207

207:                                              ; preds = %206, %179
  br label %208

208:                                              ; preds = %207, %178
  %209 = load i32, i32* %9, align 4
  %210 = load i32, i32* @ENODEV, align 4
  %211 = sub nsw i32 0, %210
  %212 = icmp eq i32 %209, %211
  br i1 %212, label %213, label %216

213:                                              ; preds = %208
  %214 = load i32, i32* @EPROBE_DEFER, align 4
  %215 = sub nsw i32 0, %214
  store i32 %215, i32* %9, align 4
  br label %368

216:                                              ; preds = %208
  %217 = load i32, i32* %9, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %220

219:                                              ; preds = %216
  br label %368

220:                                              ; preds = %216
  %221 = load %struct.net_device*, %struct.net_device** %6, align 8
  %222 = getelementptr inbounds %struct.net_device, %struct.net_device* %221, i32 0, i32 12
  store i32* @mv643xx_eth_ethtool_ops, i32** %222, align 8
  %223 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %5, align 8
  %224 = load %struct.mv643xx_eth_platform_data*, %struct.mv643xx_eth_platform_data** %4, align 8
  %225 = getelementptr inbounds %struct.mv643xx_eth_platform_data, %struct.mv643xx_eth_platform_data* %224, i32 0, i32 3
  %226 = load i32, i32* %225, align 4
  %227 = load %struct.mv643xx_eth_platform_data*, %struct.mv643xx_eth_platform_data** %4, align 8
  %228 = getelementptr inbounds %struct.mv643xx_eth_platform_data, %struct.mv643xx_eth_platform_data* %227, i32 0, i32 2
  %229 = load i32, i32* %228, align 8
  %230 = call i32 @init_pscr(%struct.mv643xx_eth_private* %223, i32 %226, i32 %229)
  %231 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %5, align 8
  %232 = call i32 @mib_counters_clear(%struct.mv643xx_eth_private* %231)
  %233 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %5, align 8
  %234 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %233, i32 0, i32 9
  %235 = load i32, i32* @mib_counters_timer_wrapper, align 4
  %236 = call i32 @timer_setup(%struct.TYPE_9__* %234, i32 %235, i32 0)
  %237 = load i64, i64* @jiffies, align 8
  %238 = load i32, i32* @HZ, align 4
  %239 = mul nsw i32 30, %238
  %240 = sext i32 %239 to i64
  %241 = add nsw i64 %237, %240
  %242 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %5, align 8
  %243 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %242, i32 0, i32 9
  %244 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %243, i32 0, i32 0
  store i64 %241, i64* %244, align 8
  %245 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %5, align 8
  %246 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %245, i32 0, i32 8
  %247 = call i32 @spin_lock_init(i32* %246)
  %248 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %5, align 8
  %249 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %248, i32 0, i32 7
  %250 = load i32, i32* @tx_timeout_task, align 4
  %251 = call i32 @INIT_WORK(i32* %249, i32 %250)
  %252 = load %struct.net_device*, %struct.net_device** %6, align 8
  %253 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %5, align 8
  %254 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %253, i32 0, i32 6
  %255 = load i32, i32* @mv643xx_eth_poll, align 4
  %256 = load i32, i32* @NAPI_POLL_WEIGHT, align 4
  %257 = call i32 @netif_napi_add(%struct.net_device* %252, i32* %254, i32 %255, i32 %256)
  %258 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %5, align 8
  %259 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %258, i32 0, i32 5
  %260 = load i32, i32* @oom_timer_wrapper, align 4
  %261 = call i32 @timer_setup(%struct.TYPE_9__* %259, i32 %260, i32 0)
  %262 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %263 = load i32, i32* @IORESOURCE_IRQ, align 4
  %264 = call %struct.resource* @platform_get_resource(%struct.platform_device* %262, i32 %263, i32 0)
  store %struct.resource* %264, %struct.resource** %8, align 8
  %265 = load %struct.resource*, %struct.resource** %8, align 8
  %266 = icmp ne %struct.resource* %265, null
  %267 = xor i1 %266, true
  %268 = zext i1 %267 to i32
  %269 = call i32 @BUG_ON(i32 %268)
  %270 = load %struct.resource*, %struct.resource** %8, align 8
  %271 = getelementptr inbounds %struct.resource, %struct.resource* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 4
  %273 = load %struct.net_device*, %struct.net_device** %6, align 8
  %274 = getelementptr inbounds %struct.net_device, %struct.net_device* %273, i32 0, i32 11
  store i32 %272, i32* %274, align 8
  %275 = load %struct.net_device*, %struct.net_device** %6, align 8
  %276 = getelementptr inbounds %struct.net_device, %struct.net_device* %275, i32 0, i32 10
  store i32* @mv643xx_eth_netdev_ops, i32** %276, align 8
  %277 = load i32, i32* @HZ, align 4
  %278 = mul nsw i32 2, %277
  %279 = load %struct.net_device*, %struct.net_device** %6, align 8
  %280 = getelementptr inbounds %struct.net_device, %struct.net_device* %279, i32 0, i32 0
  store i32 %278, i32* %280, align 8
  %281 = load %struct.net_device*, %struct.net_device** %6, align 8
  %282 = getelementptr inbounds %struct.net_device, %struct.net_device* %281, i32 0, i32 9
  store i64 0, i64* %282, align 8
  %283 = load i32, i32* @NETIF_F_SG, align 4
  %284 = load i32, i32* @NETIF_F_IP_CSUM, align 4
  %285 = or i32 %283, %284
  %286 = load i32, i32* @NETIF_F_TSO, align 4
  %287 = or i32 %285, %286
  %288 = load %struct.net_device*, %struct.net_device** %6, align 8
  %289 = getelementptr inbounds %struct.net_device, %struct.net_device* %288, i32 0, i32 1
  store i32 %287, i32* %289, align 4
  %290 = load %struct.net_device*, %struct.net_device** %6, align 8
  %291 = getelementptr inbounds %struct.net_device, %struct.net_device* %290, i32 0, i32 1
  %292 = load i32, i32* %291, align 4
  %293 = load %struct.net_device*, %struct.net_device** %6, align 8
  %294 = getelementptr inbounds %struct.net_device, %struct.net_device* %293, i32 0, i32 2
  store i32 %292, i32* %294, align 8
  %295 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %296 = load %struct.net_device*, %struct.net_device** %6, align 8
  %297 = getelementptr inbounds %struct.net_device, %struct.net_device* %296, i32 0, i32 1
  %298 = load i32, i32* %297, align 4
  %299 = or i32 %298, %295
  store i32 %299, i32* %297, align 4
  %300 = load %struct.net_device*, %struct.net_device** %6, align 8
  %301 = getelementptr inbounds %struct.net_device, %struct.net_device* %300, i32 0, i32 1
  %302 = load i32, i32* %301, align 4
  %303 = load %struct.net_device*, %struct.net_device** %6, align 8
  %304 = getelementptr inbounds %struct.net_device, %struct.net_device* %303, i32 0, i32 3
  store i32 %302, i32* %304, align 4
  %305 = load i32, i32* @IFF_UNICAST_FLT, align 4
  %306 = load %struct.net_device*, %struct.net_device** %6, align 8
  %307 = getelementptr inbounds %struct.net_device, %struct.net_device* %306, i32 0, i32 8
  %308 = load i32, i32* %307, align 8
  %309 = or i32 %308, %305
  store i32 %309, i32* %307, align 8
  %310 = load i32, i32* @MV643XX_MAX_TSO_SEGS, align 4
  %311 = load %struct.net_device*, %struct.net_device** %6, align 8
  %312 = getelementptr inbounds %struct.net_device, %struct.net_device* %311, i32 0, i32 7
  store i32 %310, i32* %312, align 4
  %313 = load %struct.net_device*, %struct.net_device** %6, align 8
  %314 = getelementptr inbounds %struct.net_device, %struct.net_device* %313, i32 0, i32 4
  store i32 64, i32* %314, align 8
  %315 = load %struct.net_device*, %struct.net_device** %6, align 8
  %316 = getelementptr inbounds %struct.net_device, %struct.net_device* %315, i32 0, i32 5
  store i32 9500, i32* %316, align 4
  %317 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %5, align 8
  %318 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %317, i32 0, i32 4
  %319 = load %struct.TYPE_10__*, %struct.TYPE_10__** %318, align 8
  %320 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %319, i32 0, i32 0
  %321 = load i64, i64* %320, align 8
  %322 = icmp ne i64 %321, 0
  br i1 %322, label %323, label %335

323:                                              ; preds = %220
  %324 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %5, align 8
  %325 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %5, align 8
  %326 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %325, i32 0, i32 0
  %327 = load i32, i32* %326, align 8
  %328 = call i32 @WINDOW_PROTECT(i32 %327)
  %329 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %5, align 8
  %330 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %329, i32 0, i32 4
  %331 = load %struct.TYPE_10__*, %struct.TYPE_10__** %330, align 8
  %332 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %331, i32 0, i32 0
  %333 = load i64, i64* %332, align 8
  %334 = call i32 @wrl(%struct.mv643xx_eth_private* %324, i32 %328, i64 %333)
  br label %335

335:                                              ; preds = %323, %220
  %336 = load %struct.net_device*, %struct.net_device** %6, align 8
  %337 = call i32 @netif_carrier_off(%struct.net_device* %336)
  %338 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %5, align 8
  %339 = load i32, i32* @SDMA_CONFIG, align 4
  %340 = load i32, i32* @PORT_SDMA_CONFIG_DEFAULT_VALUE, align 4
  %341 = call i32 @wrlp(%struct.mv643xx_eth_private* %338, i32 %339, i32 %340)
  %342 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %5, align 8
  %343 = call i32 @set_rx_coal(%struct.mv643xx_eth_private* %342, i32 250)
  %344 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %5, align 8
  %345 = call i32 @set_tx_coal(%struct.mv643xx_eth_private* %344, i32 0)
  %346 = load %struct.net_device*, %struct.net_device** %6, align 8
  %347 = call i32 @register_netdev(%struct.net_device* %346)
  store i32 %347, i32* %9, align 4
  %348 = load i32, i32* %9, align 4
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %350, label %351

350:                                              ; preds = %335
  br label %368

351:                                              ; preds = %335
  %352 = load %struct.net_device*, %struct.net_device** %6, align 8
  %353 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %5, align 8
  %354 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %353, i32 0, i32 0
  %355 = load i32, i32* %354, align 8
  %356 = load %struct.net_device*, %struct.net_device** %6, align 8
  %357 = getelementptr inbounds %struct.net_device, %struct.net_device* %356, i32 0, i32 6
  %358 = load i32, i32* %357, align 8
  %359 = call i32 (%struct.net_device*, i8*, ...) @netdev_notice(%struct.net_device* %352, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %355, i32 %358)
  %360 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %5, align 8
  %361 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %360, i32 0, i32 2
  %362 = load i64, i64* %361, align 8
  %363 = icmp sgt i64 %362, 0
  br i1 %363, label %364, label %367

364:                                              ; preds = %351
  %365 = load %struct.net_device*, %struct.net_device** %6, align 8
  %366 = call i32 (%struct.net_device*, i8*, ...) @netdev_notice(%struct.net_device* %365, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  br label %367

367:                                              ; preds = %364, %351
  store i32 0, i32* %2, align 4
  br label %383

368:                                              ; preds = %350, %219, %213
  %369 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %5, align 8
  %370 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %369, i32 0, i32 3
  %371 = load %struct.phy_device*, %struct.phy_device** %370, align 8
  %372 = call i64 @IS_ERR(%struct.phy_device* %371)
  %373 = icmp ne i64 %372, 0
  br i1 %373, label %379, label %374

374:                                              ; preds = %368
  %375 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %5, align 8
  %376 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %375, i32 0, i32 3
  %377 = load %struct.phy_device*, %struct.phy_device** %376, align 8
  %378 = call i32 @clk_disable_unprepare(%struct.phy_device* %377)
  br label %379

379:                                              ; preds = %374, %368
  %380 = load %struct.net_device*, %struct.net_device** %6, align 8
  %381 = call i32 @free_netdev(%struct.net_device* %380)
  %382 = load i32, i32* %9, align 4
  store i32 %382, i32* %2, align 4
  br label %383

383:                                              ; preds = %379, %367, %36, %26, %15
  %384 = load i32, i32* %2, align 4
  ret i32 %384
}

declare dso_local %struct.mv643xx_eth_platform_data* @dev_get_platdata(%struct.TYPE_11__*) #1

declare dso_local i32 @dev_err(%struct.TYPE_11__*, i8*) #1

declare dso_local %struct.net_device* @alloc_etherdev_mq(i32, i32) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, %struct.TYPE_11__*) #1

declare dso_local %struct.mv643xx_eth_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.mv643xx_eth_private*) #1

declare dso_local %struct.TYPE_10__* @platform_get_drvdata(i32*) #1

declare dso_local i64 @of_device_is_compatible(i32, i8*) #1

declare dso_local i32 @wrlp(%struct.mv643xx_eth_private*, i32, i32) #1

declare dso_local i32 @rdlp(%struct.mv643xx_eth_private*, i32) #1

declare dso_local %struct.phy_device* @devm_clk_get(%struct.TYPE_11__*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.phy_device*) #1

declare dso_local i32 @clk_prepare_enable(%struct.phy_device*) #1

declare dso_local i8* @clk_get_rate(%struct.phy_device*) #1

declare dso_local i32 @set_params(%struct.mv643xx_eth_private*, %struct.mv643xx_eth_platform_data*) #1

declare dso_local i32 @netif_set_real_num_tx_queues(%struct.net_device*, i32) #1

declare dso_local i32 @netif_set_real_num_rx_queues(%struct.net_device*, i32) #1

declare dso_local %struct.phy_device* @of_phy_connect(%struct.net_device*, i64, i32, i32, i32) #1

declare dso_local i32 @get_phy_mode(%struct.mv643xx_eth_private*) #1

declare dso_local i32 @phy_addr_set(%struct.mv643xx_eth_private*, i32) #1

declare dso_local %struct.phy_device* @phy_scan(%struct.mv643xx_eth_private*, i64) #1

declare dso_local i32 @PTR_ERR(%struct.phy_device*) #1

declare dso_local i32 @phy_init(%struct.mv643xx_eth_private*, i32, i32) #1

declare dso_local i32 @init_pscr(%struct.mv643xx_eth_private*, i32, i32) #1

declare dso_local i32 @mib_counters_clear(%struct.mv643xx_eth_private*) #1

declare dso_local i32 @timer_setup(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @netif_napi_add(%struct.net_device*, i32*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @wrl(%struct.mv643xx_eth_private*, i32, i64) #1

declare dso_local i32 @WINDOW_PROTECT(i32) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @set_rx_coal(%struct.mv643xx_eth_private*, i32) #1

declare dso_local i32 @set_tx_coal(%struct.mv643xx_eth_private*, i32) #1

declare dso_local i32 @register_netdev(%struct.net_device*) #1

declare dso_local i32 @netdev_notice(%struct.net_device*, i8*, ...) #1

declare dso_local i32 @clk_disable_unprepare(%struct.phy_device*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
