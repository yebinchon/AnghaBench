; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/extr_hip04_eth.c_hip04_mac_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/extr_hip04_eth.c_hip04_mac_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, %struct.device }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.of_phandle_args = type { i32*, i32 }
%struct.net_device = type { i32, i32, i32, i32, i32*, i32* }
%struct.hip04_priv = type { i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i8*, %struct.TYPE_2__, i8*, i8*, %struct.net_device*, %struct.device* }
%struct.TYPE_2__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"port-handle\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"no port-handle\0A\00", align 1
@RX_DESC_NUM = common dso_local global i32 0, align 4
@CLOCK_MONOTONIC = common dso_local global i32 0, align 4
@HRTIMER_MODE_REL = common dso_local global i32 0, align 4
@TX_DESC_NUM = common dso_local global i32 0, align 4
@tx_done = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"no syscon hisilicon,hip04-ppe\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"not find phy-mode\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@hip04_mac_interrupt = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"devm_request_irq failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"phy-handle\00", align 1
@hip04_adjust_link = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@hip04_tx_timeout_task = common dso_local global i32 0, align 4
@hip04_netdev_ops = common dso_local global i32 0, align 4
@hip04_ethtool_ops = common dso_local global i32 0, align 4
@TX_TIMEOUT = common dso_local global i32 0, align 4
@IFF_UNICAST_FLT = common dso_local global i32 0, align 4
@hip04_rx_poll = common dso_local global i32 0, align 4
@NAPI_POLL_WEIGHT = common dso_local global i32 0, align 4
@PHY_INTERFACE_MODE_MII = common dso_local global i64 0, align 8
@SPEED_100 = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [17 x i8] c"alloc ring fail\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @hip04_mac_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hip04_mac_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.of_phandle_args, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.hip04_priv*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 1
  store %struct.device* %12, %struct.device** %4, align 8
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = getelementptr inbounds %struct.device, %struct.device* %13, i32 0, i32 0
  %15 = load %struct.device_node*, %struct.device_node** %14, align 8
  store %struct.device_node* %15, %struct.device_node** %5, align 8
  %16 = call %struct.net_device* @alloc_etherdev(i32 104)
  store %struct.net_device* %16, %struct.net_device** %7, align 8
  %17 = load %struct.net_device*, %struct.net_device** %7, align 8
  %18 = icmp ne %struct.net_device* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %254

22:                                               ; preds = %1
  %23 = load %struct.net_device*, %struct.net_device** %7, align 8
  %24 = call %struct.hip04_priv* @netdev_priv(%struct.net_device* %23)
  store %struct.hip04_priv* %24, %struct.hip04_priv** %8, align 8
  %25 = load %struct.device*, %struct.device** %4, align 8
  %26 = load %struct.hip04_priv*, %struct.hip04_priv** %8, align 8
  %27 = getelementptr inbounds %struct.hip04_priv, %struct.hip04_priv* %26, i32 0, i32 15
  store %struct.device* %25, %struct.device** %27, align 8
  %28 = load %struct.net_device*, %struct.net_device** %7, align 8
  %29 = load %struct.hip04_priv*, %struct.hip04_priv** %8, align 8
  %30 = getelementptr inbounds %struct.hip04_priv, %struct.hip04_priv* %29, i32 0, i32 14
  store %struct.net_device* %28, %struct.net_device** %30, align 8
  %31 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %32 = load %struct.net_device*, %struct.net_device** %7, align 8
  %33 = call i32 @platform_set_drvdata(%struct.platform_device* %31, %struct.net_device* %32)
  %34 = load %struct.net_device*, %struct.net_device** %7, align 8
  %35 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %36 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %35, i32 0, i32 1
  %37 = call i32 @SET_NETDEV_DEV(%struct.net_device* %34, %struct.device* %36)
  %38 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %39 = call i8* @devm_platform_ioremap_resource(%struct.platform_device* %38, i32 0)
  %40 = load %struct.hip04_priv*, %struct.hip04_priv** %8, align 8
  %41 = getelementptr inbounds %struct.hip04_priv, %struct.hip04_priv* %40, i32 0, i32 13
  store i8* %39, i8** %41, align 8
  %42 = load %struct.hip04_priv*, %struct.hip04_priv** %8, align 8
  %43 = getelementptr inbounds %struct.hip04_priv, %struct.hip04_priv* %42, i32 0, i32 13
  %44 = load i8*, i8** %43, align 8
  %45 = call i64 @IS_ERR(i8* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %22
  %48 = load %struct.hip04_priv*, %struct.hip04_priv** %8, align 8
  %49 = getelementptr inbounds %struct.hip04_priv, %struct.hip04_priv* %48, i32 0, i32 13
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 @PTR_ERR(i8* %50)
  store i32 %51, i32* %10, align 4
  br label %246

52:                                               ; preds = %22
  %53 = load %struct.device_node*, %struct.device_node** %5, align 8
  %54 = call i32 @of_parse_phandle_with_fixed_args(%struct.device_node* %53, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 3, i32 0, %struct.of_phandle_args* %6)
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %10, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load %struct.device*, %struct.device** %4, align 8
  %59 = call i32 @dev_warn(%struct.device* %58, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %246

60:                                               ; preds = %52
  %61 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %6, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.hip04_priv*, %struct.hip04_priv** %8, align 8
  %66 = getelementptr inbounds %struct.hip04_priv, %struct.hip04_priv* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  %67 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %6, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @RX_DESC_NUM, align 4
  %72 = mul nsw i32 %70, %71
  %73 = load %struct.hip04_priv*, %struct.hip04_priv** %8, align 8
  %74 = getelementptr inbounds %struct.hip04_priv, %struct.hip04_priv* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  %75 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %6, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 2
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.hip04_priv*, %struct.hip04_priv** %8, align 8
  %80 = getelementptr inbounds %struct.hip04_priv, %struct.hip04_priv* %79, i32 0, i32 2
  store i32 %78, i32* %80, align 8
  %81 = load %struct.hip04_priv*, %struct.hip04_priv** %8, align 8
  %82 = getelementptr inbounds %struct.hip04_priv, %struct.hip04_priv* %81, i32 0, i32 11
  %83 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %84 = load i32, i32* @HRTIMER_MODE_REL, align 4
  %85 = call i32 @hrtimer_init(%struct.TYPE_2__* %82, i32 %83, i32 %84)
  %86 = load i32, i32* @TX_DESC_NUM, align 4
  %87 = mul nsw i32 %86, 3
  %88 = sdiv i32 %87, 4
  %89 = load %struct.hip04_priv*, %struct.hip04_priv** %8, align 8
  %90 = getelementptr inbounds %struct.hip04_priv, %struct.hip04_priv* %89, i32 0, i32 3
  store i32 %88, i32* %90, align 4
  %91 = load %struct.hip04_priv*, %struct.hip04_priv** %8, align 8
  %92 = getelementptr inbounds %struct.hip04_priv, %struct.hip04_priv* %91, i32 0, i32 4
  store i32 200, i32* %92, align 8
  %93 = load i32, i32* @tx_done, align 4
  %94 = load %struct.hip04_priv*, %struct.hip04_priv** %8, align 8
  %95 = getelementptr inbounds %struct.hip04_priv, %struct.hip04_priv* %94, i32 0, i32 11
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  store i32 %93, i32* %96, align 8
  %97 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %6, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = call i8* @syscon_node_to_regmap(i32 %98)
  %100 = load %struct.hip04_priv*, %struct.hip04_priv** %8, align 8
  %101 = getelementptr inbounds %struct.hip04_priv, %struct.hip04_priv* %100, i32 0, i32 10
  store i8* %99, i8** %101, align 8
  %102 = load %struct.hip04_priv*, %struct.hip04_priv** %8, align 8
  %103 = getelementptr inbounds %struct.hip04_priv, %struct.hip04_priv* %102, i32 0, i32 10
  %104 = load i8*, i8** %103, align 8
  %105 = call i64 @IS_ERR(i8* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %114

107:                                              ; preds = %60
  %108 = load %struct.device*, %struct.device** %4, align 8
  %109 = call i32 @dev_warn(%struct.device* %108, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %110 = load %struct.hip04_priv*, %struct.hip04_priv** %8, align 8
  %111 = getelementptr inbounds %struct.hip04_priv, %struct.hip04_priv* %110, i32 0, i32 10
  %112 = load i8*, i8** %111, align 8
  %113 = call i32 @PTR_ERR(i8* %112)
  store i32 %113, i32* %10, align 4
  br label %246

114:                                              ; preds = %60
  %115 = load %struct.device_node*, %struct.device_node** %5, align 8
  %116 = call i64 @of_get_phy_mode(%struct.device_node* %115)
  %117 = load %struct.hip04_priv*, %struct.hip04_priv** %8, align 8
  %118 = getelementptr inbounds %struct.hip04_priv, %struct.hip04_priv* %117, i32 0, i32 5
  store i64 %116, i64* %118, align 8
  %119 = load %struct.hip04_priv*, %struct.hip04_priv** %8, align 8
  %120 = getelementptr inbounds %struct.hip04_priv, %struct.hip04_priv* %119, i32 0, i32 5
  %121 = load i64, i64* %120, align 8
  %122 = icmp slt i64 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %114
  %124 = load %struct.device*, %struct.device** %4, align 8
  %125 = call i32 @dev_warn(%struct.device* %124, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %126 = load i32, i32* @EINVAL, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %10, align 4
  br label %246

128:                                              ; preds = %114
  %129 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %130 = call i32 @platform_get_irq(%struct.platform_device* %129, i32 0)
  store i32 %130, i32* %9, align 4
  %131 = load i32, i32* %9, align 4
  %132 = icmp sle i32 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %128
  %134 = load i32, i32* @EINVAL, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %10, align 4
  br label %246

136:                                              ; preds = %128
  %137 = load %struct.device*, %struct.device** %4, align 8
  %138 = load i32, i32* %9, align 4
  %139 = load i32, i32* @hip04_mac_interrupt, align 4
  %140 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %141 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.net_device*, %struct.net_device** %7, align 8
  %144 = call i32 @devm_request_irq(%struct.device* %137, i32 %138, i32 %139, i32 0, i32 %142, %struct.net_device* %143)
  store i32 %144, i32* %10, align 4
  %145 = load i32, i32* %10, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %136
  %148 = load %struct.net_device*, %struct.net_device** %7, align 8
  %149 = call i32 @netdev_err(%struct.net_device* %148, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  br label %246

150:                                              ; preds = %136
  %151 = load %struct.device_node*, %struct.device_node** %5, align 8
  %152 = call i64 @of_parse_phandle(%struct.device_node* %151, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 0)
  %153 = load %struct.hip04_priv*, %struct.hip04_priv** %8, align 8
  %154 = getelementptr inbounds %struct.hip04_priv, %struct.hip04_priv* %153, i32 0, i32 6
  store i64 %152, i64* %154, align 8
  %155 = load %struct.hip04_priv*, %struct.hip04_priv** %8, align 8
  %156 = getelementptr inbounds %struct.hip04_priv, %struct.hip04_priv* %155, i32 0, i32 6
  %157 = load i64, i64* %156, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %178

159:                                              ; preds = %150
  %160 = load %struct.net_device*, %struct.net_device** %7, align 8
  %161 = load %struct.hip04_priv*, %struct.hip04_priv** %8, align 8
  %162 = getelementptr inbounds %struct.hip04_priv, %struct.hip04_priv* %161, i32 0, i32 6
  %163 = load i64, i64* %162, align 8
  %164 = load %struct.hip04_priv*, %struct.hip04_priv** %8, align 8
  %165 = getelementptr inbounds %struct.hip04_priv, %struct.hip04_priv* %164, i32 0, i32 5
  %166 = load i64, i64* %165, align 8
  %167 = call i32 @of_phy_connect(%struct.net_device* %160, i64 %163, i32* @hip04_adjust_link, i32 0, i64 %166)
  %168 = load %struct.hip04_priv*, %struct.hip04_priv** %8, align 8
  %169 = getelementptr inbounds %struct.hip04_priv, %struct.hip04_priv* %168, i32 0, i32 9
  store i32 %167, i32* %169, align 8
  %170 = load %struct.hip04_priv*, %struct.hip04_priv** %8, align 8
  %171 = getelementptr inbounds %struct.hip04_priv, %struct.hip04_priv* %170, i32 0, i32 9
  %172 = load i32, i32* %171, align 8
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %177, label %174

174:                                              ; preds = %159
  %175 = load i32, i32* @EPROBE_DEFER, align 4
  %176 = sub nsw i32 0, %175
  store i32 %176, i32* %10, align 4
  br label %246

177:                                              ; preds = %159
  br label %178

178:                                              ; preds = %177, %150
  %179 = load %struct.hip04_priv*, %struct.hip04_priv** %8, align 8
  %180 = getelementptr inbounds %struct.hip04_priv, %struct.hip04_priv* %179, i32 0, i32 8
  %181 = load i32, i32* @hip04_tx_timeout_task, align 4
  %182 = call i32 @INIT_WORK(i32* %180, i32 %181)
  %183 = load %struct.net_device*, %struct.net_device** %7, align 8
  %184 = getelementptr inbounds %struct.net_device, %struct.net_device* %183, i32 0, i32 5
  store i32* @hip04_netdev_ops, i32** %184, align 8
  %185 = load %struct.net_device*, %struct.net_device** %7, align 8
  %186 = getelementptr inbounds %struct.net_device, %struct.net_device* %185, i32 0, i32 4
  store i32* @hip04_ethtool_ops, i32** %186, align 8
  %187 = load i32, i32* @TX_TIMEOUT, align 4
  %188 = load %struct.net_device*, %struct.net_device** %7, align 8
  %189 = getelementptr inbounds %struct.net_device, %struct.net_device* %188, i32 0, i32 3
  store i32 %187, i32* %189, align 4
  %190 = load i32, i32* @IFF_UNICAST_FLT, align 4
  %191 = load %struct.net_device*, %struct.net_device** %7, align 8
  %192 = getelementptr inbounds %struct.net_device, %struct.net_device* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 8
  %194 = or i32 %193, %190
  store i32 %194, i32* %192, align 8
  %195 = load i32, i32* %9, align 4
  %196 = load %struct.net_device*, %struct.net_device** %7, align 8
  %197 = getelementptr inbounds %struct.net_device, %struct.net_device* %196, i32 0, i32 0
  store i32 %195, i32* %197, align 8
  %198 = load %struct.net_device*, %struct.net_device** %7, align 8
  %199 = load %struct.hip04_priv*, %struct.hip04_priv** %8, align 8
  %200 = getelementptr inbounds %struct.hip04_priv, %struct.hip04_priv* %199, i32 0, i32 7
  %201 = load i32, i32* @hip04_rx_poll, align 4
  %202 = load i32, i32* @NAPI_POLL_WEIGHT, align 4
  %203 = call i32 @netif_napi_add(%struct.net_device* %198, i32* %200, i32 %201, i32 %202)
  %204 = load %struct.hip04_priv*, %struct.hip04_priv** %8, align 8
  %205 = call i32 @hip04_reset_dreq(%struct.hip04_priv* %204)
  %206 = load %struct.hip04_priv*, %struct.hip04_priv** %8, align 8
  %207 = call i32 @hip04_reset_ppe(%struct.hip04_priv* %206)
  %208 = load %struct.hip04_priv*, %struct.hip04_priv** %8, align 8
  %209 = getelementptr inbounds %struct.hip04_priv, %struct.hip04_priv* %208, i32 0, i32 5
  %210 = load i64, i64* %209, align 8
  %211 = load i64, i64* @PHY_INTERFACE_MODE_MII, align 8
  %212 = icmp eq i64 %210, %211
  br i1 %212, label %213, label %218

213:                                              ; preds = %178
  %214 = load %struct.net_device*, %struct.net_device** %7, align 8
  %215 = load i32, i32* @SPEED_100, align 4
  %216 = load i32, i32* @DUPLEX_FULL, align 4
  %217 = call i32 @hip04_config_port(%struct.net_device* %214, i32 %215, i32 %216)
  br label %218

218:                                              ; preds = %213, %178
  %219 = load %struct.hip04_priv*, %struct.hip04_priv** %8, align 8
  %220 = call i32 @hip04_config_fifo(%struct.hip04_priv* %219)
  %221 = load %struct.net_device*, %struct.net_device** %7, align 8
  %222 = getelementptr inbounds %struct.net_device, %struct.net_device* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  %224 = call i32 @eth_random_addr(i32 %223)
  %225 = load %struct.net_device*, %struct.net_device** %7, align 8
  %226 = call i32 @hip04_update_mac_address(%struct.net_device* %225)
  %227 = load %struct.net_device*, %struct.net_device** %7, align 8
  %228 = load %struct.device*, %struct.device** %4, align 8
  %229 = call i32 @hip04_alloc_ring(%struct.net_device* %227, %struct.device* %228)
  store i32 %229, i32* %10, align 4
  %230 = load i32, i32* %10, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %235

232:                                              ; preds = %218
  %233 = load %struct.net_device*, %struct.net_device** %7, align 8
  %234 = call i32 @netdev_err(%struct.net_device* %233, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  br label %242

235:                                              ; preds = %218
  %236 = load %struct.net_device*, %struct.net_device** %7, align 8
  %237 = call i32 @register_netdev(%struct.net_device* %236)
  store i32 %237, i32* %10, align 4
  %238 = load i32, i32* %10, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %241

240:                                              ; preds = %235
  br label %242

241:                                              ; preds = %235
  store i32 0, i32* %2, align 4
  br label %254

242:                                              ; preds = %240, %232
  %243 = load %struct.net_device*, %struct.net_device** %7, align 8
  %244 = load %struct.device*, %struct.device** %4, align 8
  %245 = call i32 @hip04_free_ring(%struct.net_device* %243, %struct.device* %244)
  br label %246

246:                                              ; preds = %242, %174, %147, %133, %123, %107, %57, %47
  %247 = load %struct.hip04_priv*, %struct.hip04_priv** %8, align 8
  %248 = getelementptr inbounds %struct.hip04_priv, %struct.hip04_priv* %247, i32 0, i32 6
  %249 = load i64, i64* %248, align 8
  %250 = call i32 @of_node_put(i64 %249)
  %251 = load %struct.net_device*, %struct.net_device** %7, align 8
  %252 = call i32 @free_netdev(%struct.net_device* %251)
  %253 = load i32, i32* %10, align 4
  store i32 %253, i32* %2, align 4
  br label %254

254:                                              ; preds = %246, %241, %19
  %255 = load i32, i32* %2, align 4
  ret i32 %255
}

declare dso_local %struct.net_device* @alloc_etherdev(i32) #1

declare dso_local %struct.hip04_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.net_device*) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, %struct.device*) #1

declare dso_local i8* @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @of_parse_phandle_with_fixed_args(%struct.device_node*, i8*, i32, i32, %struct.of_phandle_args*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

declare dso_local i32 @hrtimer_init(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i8* @syscon_node_to_regmap(i32) #1

declare dso_local i64 @of_get_phy_mode(%struct.device_node*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i32, i32, i32, i32, %struct.net_device*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i64 @of_parse_phandle(%struct.device_node*, i8*, i32) #1

declare dso_local i32 @of_phy_connect(%struct.net_device*, i64, i32*, i32, i64) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @netif_napi_add(%struct.net_device*, i32*, i32, i32) #1

declare dso_local i32 @hip04_reset_dreq(%struct.hip04_priv*) #1

declare dso_local i32 @hip04_reset_ppe(%struct.hip04_priv*) #1

declare dso_local i32 @hip04_config_port(%struct.net_device*, i32, i32) #1

declare dso_local i32 @hip04_config_fifo(%struct.hip04_priv*) #1

declare dso_local i32 @eth_random_addr(i32) #1

declare dso_local i32 @hip04_update_mac_address(%struct.net_device*) #1

declare dso_local i32 @hip04_alloc_ring(%struct.net_device*, %struct.device*) #1

declare dso_local i32 @register_netdev(%struct.net_device*) #1

declare dso_local i32 @hip04_free_ring(%struct.net_device*, %struct.device*) #1

declare dso_local i32 @of_node_put(i64) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
