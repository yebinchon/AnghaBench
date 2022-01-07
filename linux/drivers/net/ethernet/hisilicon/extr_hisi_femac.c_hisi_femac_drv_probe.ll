; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/extr_hisi_femac.c_hisi_femac_drv_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/extr_hisi_femac.c_hisi_femac_drv_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, %struct.device }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.net_device = type { i32, i32, i32*, i32*, i32, i32 }
%struct.hisi_femac_priv = type { i8*, i8*, i8*, i8*, i8*, i32, i32, %struct.net_device*, %struct.device* }
%struct.phy_device = type { i32, i64 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"failed to get clk\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"failed to enable clk %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"mac\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"phy\00", align 1
@PHY_RESET_DELAYS_PROPERTY = common dso_local global i32 0, align 4
@DELAYS_NUM = common dso_local global i32 0, align 4
@hisi_femac_adjust_link = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"connect to PHY failed!\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"phy_id=0x%.8lx, phy_mode=%s\0A\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"using random MAC address %pM\0A\00", align 1
@HZ = common dso_local global i32 0, align 4
@IFF_UNICAST_FLT = common dso_local global i32 0, align 4
@hisi_femac_netdev_ops = common dso_local global i32 0, align 4
@hisi_femac_ethtools_ops = common dso_local global i32 0, align 4
@hisi_femac_poll = common dso_local global i32 0, align 4
@FEMAC_POLL_WEIGHT = common dso_local global i32 0, align 4
@hisi_femac_interrupt = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [29 x i8] c"devm_request_irq %d failed!\0A\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"register_netdev failed!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @hisi_femac_drv_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hisi_femac_drv_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.hisi_femac_priv*, align 8
  %8 = alloca %struct.phy_device*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 1
  store %struct.device* %12, %struct.device** %4, align 8
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = getelementptr inbounds %struct.device, %struct.device* %13, i32 0, i32 0
  %15 = load %struct.device_node*, %struct.device_node** %14, align 8
  store %struct.device_node* %15, %struct.device_node** %5, align 8
  %16 = call %struct.net_device* @alloc_etherdev(i32 64)
  store %struct.net_device* %16, %struct.net_device** %6, align 8
  %17 = load %struct.net_device*, %struct.net_device** %6, align 8
  %18 = icmp ne %struct.net_device* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %269

22:                                               ; preds = %1
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = load %struct.net_device*, %struct.net_device** %6, align 8
  %25 = call i32 @platform_set_drvdata(%struct.platform_device* %23, %struct.net_device* %24)
  %26 = load %struct.net_device*, %struct.net_device** %6, align 8
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %27, i32 0, i32 1
  %29 = call i32 @SET_NETDEV_DEV(%struct.net_device* %26, %struct.device* %28)
  %30 = load %struct.net_device*, %struct.net_device** %6, align 8
  %31 = call %struct.hisi_femac_priv* @netdev_priv(%struct.net_device* %30)
  store %struct.hisi_femac_priv* %31, %struct.hisi_femac_priv** %7, align 8
  %32 = load %struct.device*, %struct.device** %4, align 8
  %33 = load %struct.hisi_femac_priv*, %struct.hisi_femac_priv** %7, align 8
  %34 = getelementptr inbounds %struct.hisi_femac_priv, %struct.hisi_femac_priv* %33, i32 0, i32 8
  store %struct.device* %32, %struct.device** %34, align 8
  %35 = load %struct.net_device*, %struct.net_device** %6, align 8
  %36 = load %struct.hisi_femac_priv*, %struct.hisi_femac_priv** %7, align 8
  %37 = getelementptr inbounds %struct.hisi_femac_priv, %struct.hisi_femac_priv* %36, i32 0, i32 7
  store %struct.net_device* %35, %struct.net_device** %37, align 8
  %38 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %39 = call i8* @devm_platform_ioremap_resource(%struct.platform_device* %38, i32 0)
  %40 = load %struct.hisi_femac_priv*, %struct.hisi_femac_priv** %7, align 8
  %41 = getelementptr inbounds %struct.hisi_femac_priv, %struct.hisi_femac_priv* %40, i32 0, i32 0
  store i8* %39, i8** %41, align 8
  %42 = load %struct.hisi_femac_priv*, %struct.hisi_femac_priv** %7, align 8
  %43 = getelementptr inbounds %struct.hisi_femac_priv, %struct.hisi_femac_priv* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = call i64 @IS_ERR(i8* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %22
  %48 = load %struct.hisi_femac_priv*, %struct.hisi_femac_priv** %7, align 8
  %49 = getelementptr inbounds %struct.hisi_femac_priv, %struct.hisi_femac_priv* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 @PTR_ERR(i8* %50)
  store i32 %51, i32* %10, align 4
  br label %265

52:                                               ; preds = %22
  %53 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %54 = call i8* @devm_platform_ioremap_resource(%struct.platform_device* %53, i32 1)
  %55 = load %struct.hisi_femac_priv*, %struct.hisi_femac_priv** %7, align 8
  %56 = getelementptr inbounds %struct.hisi_femac_priv, %struct.hisi_femac_priv* %55, i32 0, i32 1
  store i8* %54, i8** %56, align 8
  %57 = load %struct.hisi_femac_priv*, %struct.hisi_femac_priv** %7, align 8
  %58 = getelementptr inbounds %struct.hisi_femac_priv, %struct.hisi_femac_priv* %57, i32 0, i32 1
  %59 = load i8*, i8** %58, align 8
  %60 = call i64 @IS_ERR(i8* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %52
  %63 = load %struct.hisi_femac_priv*, %struct.hisi_femac_priv** %7, align 8
  %64 = getelementptr inbounds %struct.hisi_femac_priv, %struct.hisi_femac_priv* %63, i32 0, i32 1
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 @PTR_ERR(i8* %65)
  store i32 %66, i32* %10, align 4
  br label %265

67:                                               ; preds = %52
  %68 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %69 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %68, i32 0, i32 1
  %70 = call i8* @devm_clk_get(%struct.device* %69, i32* null)
  %71 = load %struct.hisi_femac_priv*, %struct.hisi_femac_priv** %7, align 8
  %72 = getelementptr inbounds %struct.hisi_femac_priv, %struct.hisi_femac_priv* %71, i32 0, i32 2
  store i8* %70, i8** %72, align 8
  %73 = load %struct.hisi_femac_priv*, %struct.hisi_femac_priv** %7, align 8
  %74 = getelementptr inbounds %struct.hisi_femac_priv, %struct.hisi_femac_priv* %73, i32 0, i32 2
  %75 = load i8*, i8** %74, align 8
  %76 = call i64 @IS_ERR(i8* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %67
  %79 = load %struct.device*, %struct.device** %4, align 8
  %80 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %79, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %81 = load i32, i32* @ENODEV, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %10, align 4
  br label %265

83:                                               ; preds = %67
  %84 = load %struct.hisi_femac_priv*, %struct.hisi_femac_priv** %7, align 8
  %85 = getelementptr inbounds %struct.hisi_femac_priv, %struct.hisi_femac_priv* %84, i32 0, i32 2
  %86 = load i8*, i8** %85, align 8
  %87 = call i32 @clk_prepare_enable(i8* %86)
  store i32 %87, i32* %10, align 4
  %88 = load i32, i32* %10, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %83
  %91 = load %struct.device*, %struct.device** %4, align 8
  %92 = load i32, i32* %10, align 4
  %93 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %91, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %92)
  br label %265

94:                                               ; preds = %83
  %95 = load %struct.device*, %struct.device** %4, align 8
  %96 = call i8* @devm_reset_control_get(%struct.device* %95, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %97 = load %struct.hisi_femac_priv*, %struct.hisi_femac_priv** %7, align 8
  %98 = getelementptr inbounds %struct.hisi_femac_priv, %struct.hisi_femac_priv* %97, i32 0, i32 3
  store i8* %96, i8** %98, align 8
  %99 = load %struct.hisi_femac_priv*, %struct.hisi_femac_priv** %7, align 8
  %100 = getelementptr inbounds %struct.hisi_femac_priv, %struct.hisi_femac_priv* %99, i32 0, i32 3
  %101 = load i8*, i8** %100, align 8
  %102 = call i64 @IS_ERR(i8* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %94
  %105 = load %struct.hisi_femac_priv*, %struct.hisi_femac_priv** %7, align 8
  %106 = getelementptr inbounds %struct.hisi_femac_priv, %struct.hisi_femac_priv* %105, i32 0, i32 3
  %107 = load i8*, i8** %106, align 8
  %108 = call i32 @PTR_ERR(i8* %107)
  store i32 %108, i32* %10, align 4
  br label %260

109:                                              ; preds = %94
  %110 = load %struct.hisi_femac_priv*, %struct.hisi_femac_priv** %7, align 8
  %111 = call i32 @hisi_femac_core_reset(%struct.hisi_femac_priv* %110)
  %112 = load %struct.device*, %struct.device** %4, align 8
  %113 = call i8* @devm_reset_control_get(%struct.device* %112, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %114 = load %struct.hisi_femac_priv*, %struct.hisi_femac_priv** %7, align 8
  %115 = getelementptr inbounds %struct.hisi_femac_priv, %struct.hisi_femac_priv* %114, i32 0, i32 4
  store i8* %113, i8** %115, align 8
  %116 = load %struct.hisi_femac_priv*, %struct.hisi_femac_priv** %7, align 8
  %117 = getelementptr inbounds %struct.hisi_femac_priv, %struct.hisi_femac_priv* %116, i32 0, i32 4
  %118 = load i8*, i8** %117, align 8
  %119 = call i64 @IS_ERR(i8* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %109
  %122 = load %struct.hisi_femac_priv*, %struct.hisi_femac_priv** %7, align 8
  %123 = getelementptr inbounds %struct.hisi_femac_priv, %struct.hisi_femac_priv* %122, i32 0, i32 4
  store i8* null, i8** %123, align 8
  br label %138

124:                                              ; preds = %109
  %125 = load %struct.device_node*, %struct.device_node** %5, align 8
  %126 = load i32, i32* @PHY_RESET_DELAYS_PROPERTY, align 4
  %127 = load %struct.hisi_femac_priv*, %struct.hisi_femac_priv** %7, align 8
  %128 = getelementptr inbounds %struct.hisi_femac_priv, %struct.hisi_femac_priv* %127, i32 0, i32 6
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @DELAYS_NUM, align 4
  %131 = call i32 @of_property_read_u32_array(%struct.device_node* %125, i32 %126, i32 %129, i32 %130)
  store i32 %131, i32* %10, align 4
  %132 = load i32, i32* %10, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %124
  br label %260

135:                                              ; preds = %124
  %136 = load %struct.hisi_femac_priv*, %struct.hisi_femac_priv** %7, align 8
  %137 = call i32 @hisi_femac_phy_reset(%struct.hisi_femac_priv* %136)
  br label %138

138:                                              ; preds = %135, %121
  %139 = load %struct.net_device*, %struct.net_device** %6, align 8
  %140 = load %struct.device_node*, %struct.device_node** %5, align 8
  %141 = load i32, i32* @hisi_femac_adjust_link, align 4
  %142 = call %struct.phy_device* @of_phy_get_and_connect(%struct.net_device* %139, %struct.device_node* %140, i32 %141)
  store %struct.phy_device* %142, %struct.phy_device** %8, align 8
  %143 = load %struct.phy_device*, %struct.phy_device** %8, align 8
  %144 = icmp ne %struct.phy_device* %143, null
  br i1 %144, label %150, label %145

145:                                              ; preds = %138
  %146 = load %struct.device*, %struct.device** %4, align 8
  %147 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %146, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %148 = load i32, i32* @ENODEV, align 4
  %149 = sub nsw i32 0, %148
  store i32 %149, i32* %10, align 4
  br label %260

150:                                              ; preds = %138
  %151 = load %struct.phy_device*, %struct.phy_device** %8, align 8
  %152 = load %struct.phy_device*, %struct.phy_device** %8, align 8
  %153 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = load %struct.phy_device*, %struct.phy_device** %8, align 8
  %156 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = call i32 @phy_modes(i32 %157)
  %159 = call i32 @phy_attached_print(%struct.phy_device* %151, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i64 %154, i32 %158)
  %160 = load %struct.device_node*, %struct.device_node** %5, align 8
  %161 = call i8* @of_get_mac_address(%struct.device_node* %160)
  store i8* %161, i8** %9, align 8
  %162 = load i8*, i8** %9, align 8
  %163 = call i64 @IS_ERR(i8* %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %171, label %165

165:                                              ; preds = %150
  %166 = load %struct.net_device*, %struct.net_device** %6, align 8
  %167 = getelementptr inbounds %struct.net_device, %struct.net_device* %166, i32 0, i32 5
  %168 = load i32, i32* %167, align 4
  %169 = load i8*, i8** %9, align 8
  %170 = call i32 @ether_addr_copy(i32 %168, i8* %169)
  br label %171

171:                                              ; preds = %165, %150
  %172 = load %struct.net_device*, %struct.net_device** %6, align 8
  %173 = getelementptr inbounds %struct.net_device, %struct.net_device* %172, i32 0, i32 5
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @is_valid_ether_addr(i32 %174)
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %185, label %177

177:                                              ; preds = %171
  %178 = load %struct.net_device*, %struct.net_device** %6, align 8
  %179 = call i32 @eth_hw_addr_random(%struct.net_device* %178)
  %180 = load %struct.device*, %struct.device** %4, align 8
  %181 = load %struct.net_device*, %struct.net_device** %6, align 8
  %182 = getelementptr inbounds %struct.net_device, %struct.net_device* %181, i32 0, i32 5
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @dev_warn(%struct.device* %180, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i32 %183)
  br label %185

185:                                              ; preds = %177, %171
  %186 = load i32, i32* @HZ, align 4
  %187 = mul nsw i32 6, %186
  %188 = load %struct.net_device*, %struct.net_device** %6, align 8
  %189 = getelementptr inbounds %struct.net_device, %struct.net_device* %188, i32 0, i32 0
  store i32 %187, i32* %189, align 8
  %190 = load i32, i32* @IFF_UNICAST_FLT, align 4
  %191 = load %struct.net_device*, %struct.net_device** %6, align 8
  %192 = getelementptr inbounds %struct.net_device, %struct.net_device* %191, i32 0, i32 4
  %193 = load i32, i32* %192, align 8
  %194 = or i32 %193, %190
  store i32 %194, i32* %192, align 8
  %195 = load %struct.net_device*, %struct.net_device** %6, align 8
  %196 = getelementptr inbounds %struct.net_device, %struct.net_device* %195, i32 0, i32 3
  store i32* @hisi_femac_netdev_ops, i32** %196, align 8
  %197 = load %struct.net_device*, %struct.net_device** %6, align 8
  %198 = getelementptr inbounds %struct.net_device, %struct.net_device* %197, i32 0, i32 2
  store i32* @hisi_femac_ethtools_ops, i32** %198, align 8
  %199 = load %struct.net_device*, %struct.net_device** %6, align 8
  %200 = load %struct.hisi_femac_priv*, %struct.hisi_femac_priv** %7, align 8
  %201 = getelementptr inbounds %struct.hisi_femac_priv, %struct.hisi_femac_priv* %200, i32 0, i32 5
  %202 = load i32, i32* @hisi_femac_poll, align 4
  %203 = load i32, i32* @FEMAC_POLL_WEIGHT, align 4
  %204 = call i32 @netif_napi_add(%struct.net_device* %199, i32* %201, i32 %202, i32 %203)
  %205 = load %struct.hisi_femac_priv*, %struct.hisi_femac_priv** %7, align 8
  %206 = call i32 @hisi_femac_port_init(%struct.hisi_femac_priv* %205)
  %207 = load %struct.hisi_femac_priv*, %struct.hisi_femac_priv** %7, align 8
  %208 = call i32 @hisi_femac_init_tx_and_rx_queues(%struct.hisi_femac_priv* %207)
  store i32 %208, i32* %10, align 4
  %209 = load i32, i32* %10, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %212

211:                                              ; preds = %185
  br label %254

212:                                              ; preds = %185
  %213 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %214 = call i32 @platform_get_irq(%struct.platform_device* %213, i32 0)
  %215 = load %struct.net_device*, %struct.net_device** %6, align 8
  %216 = getelementptr inbounds %struct.net_device, %struct.net_device* %215, i32 0, i32 1
  store i32 %214, i32* %216, align 4
  %217 = load %struct.net_device*, %struct.net_device** %6, align 8
  %218 = getelementptr inbounds %struct.net_device, %struct.net_device* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  %220 = icmp sle i32 %219, 0
  br i1 %220, label %221, label %224

221:                                              ; preds = %212
  %222 = load i32, i32* @ENODEV, align 4
  %223 = sub nsw i32 0, %222
  store i32 %223, i32* %10, align 4
  br label %254

224:                                              ; preds = %212
  %225 = load %struct.device*, %struct.device** %4, align 8
  %226 = load %struct.net_device*, %struct.net_device** %6, align 8
  %227 = getelementptr inbounds %struct.net_device, %struct.net_device* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 4
  %229 = load i32, i32* @hisi_femac_interrupt, align 4
  %230 = load i32, i32* @IRQF_SHARED, align 4
  %231 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %232 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  %234 = load %struct.net_device*, %struct.net_device** %6, align 8
  %235 = call i32 @devm_request_irq(%struct.device* %225, i32 %228, i32 %229, i32 %230, i32 %233, %struct.net_device* %234)
  store i32 %235, i32* %10, align 4
  %236 = load i32, i32* %10, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %244

238:                                              ; preds = %224
  %239 = load %struct.device*, %struct.device** %4, align 8
  %240 = load %struct.net_device*, %struct.net_device** %6, align 8
  %241 = getelementptr inbounds %struct.net_device, %struct.net_device* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 4
  %243 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %239, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i32 %242)
  br label %254

244:                                              ; preds = %224
  %245 = load %struct.net_device*, %struct.net_device** %6, align 8
  %246 = call i32 @register_netdev(%struct.net_device* %245)
  store i32 %246, i32* %10, align 4
  %247 = load i32, i32* %10, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %252

249:                                              ; preds = %244
  %250 = load %struct.device*, %struct.device** %4, align 8
  %251 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %250, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0))
  br label %254

252:                                              ; preds = %244
  %253 = load i32, i32* %10, align 4
  store i32 %253, i32* %2, align 4
  br label %269

254:                                              ; preds = %249, %238, %221, %211
  %255 = load %struct.hisi_femac_priv*, %struct.hisi_femac_priv** %7, align 8
  %256 = getelementptr inbounds %struct.hisi_femac_priv, %struct.hisi_femac_priv* %255, i32 0, i32 5
  %257 = call i32 @netif_napi_del(i32* %256)
  %258 = load %struct.phy_device*, %struct.phy_device** %8, align 8
  %259 = call i32 @phy_disconnect(%struct.phy_device* %258)
  br label %260

260:                                              ; preds = %254, %145, %134, %104
  %261 = load %struct.hisi_femac_priv*, %struct.hisi_femac_priv** %7, align 8
  %262 = getelementptr inbounds %struct.hisi_femac_priv, %struct.hisi_femac_priv* %261, i32 0, i32 2
  %263 = load i8*, i8** %262, align 8
  %264 = call i32 @clk_disable_unprepare(i8* %263)
  br label %265

265:                                              ; preds = %260, %90, %78, %62, %47
  %266 = load %struct.net_device*, %struct.net_device** %6, align 8
  %267 = call i32 @free_netdev(%struct.net_device* %266)
  %268 = load i32, i32* %10, align 4
  store i32 %268, i32* %2, align 4
  br label %269

269:                                              ; preds = %265, %252, %19
  %270 = load i32, i32* %2, align 4
  ret i32 %270
}

declare dso_local %struct.net_device* @alloc_etherdev(i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.net_device*) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, %struct.device*) #1

declare dso_local %struct.hisi_femac_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i8* @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i8* @devm_clk_get(%struct.device*, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @clk_prepare_enable(i8*) #1

declare dso_local i8* @devm_reset_control_get(%struct.device*, i8*) #1

declare dso_local i32 @hisi_femac_core_reset(%struct.hisi_femac_priv*) #1

declare dso_local i32 @of_property_read_u32_array(%struct.device_node*, i32, i32, i32) #1

declare dso_local i32 @hisi_femac_phy_reset(%struct.hisi_femac_priv*) #1

declare dso_local %struct.phy_device* @of_phy_get_and_connect(%struct.net_device*, %struct.device_node*, i32) #1

declare dso_local i32 @phy_attached_print(%struct.phy_device*, i8*, i64, i32) #1

declare dso_local i32 @phy_modes(i32) #1

declare dso_local i8* @of_get_mac_address(%struct.device_node*) #1

declare dso_local i32 @ether_addr_copy(i32, i8*) #1

declare dso_local i32 @is_valid_ether_addr(i32) #1

declare dso_local i32 @eth_hw_addr_random(%struct.net_device*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32) #1

declare dso_local i32 @netif_napi_add(%struct.net_device*, i32*, i32, i32) #1

declare dso_local i32 @hisi_femac_port_init(%struct.hisi_femac_priv*) #1

declare dso_local i32 @hisi_femac_init_tx_and_rx_queues(%struct.hisi_femac_priv*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i32, i32, i32, i32, %struct.net_device*) #1

declare dso_local i32 @register_netdev(%struct.net_device*) #1

declare dso_local i32 @netif_napi_del(i32*) #1

declare dso_local i32 @phy_disconnect(%struct.phy_device*) #1

declare dso_local i32 @clk_disable_unprepare(i8*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
