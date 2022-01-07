; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/extr_hix5hd2_gmac.c_hix5hd2_dev_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/extr_hix5hd2_gmac.c_hix5hd2_dev_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, %struct.device }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.of_device_id = type { i64 }
%struct.net_device = type { i64, i32, i32, i32, i32, i32*, i32*, i32, i32 }
%struct.hix5hd2_priv = type { i64, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, %struct.net_device*, i32, i64, %struct.mii_bus*, i32, %struct.device* }
%struct.mii_bus = type { i8*, i32, %struct.device*, i32, i32, %struct.hix5hd2_priv* }

@ENOMEM = common dso_local global i32 0, align 4
@hix5hd2_of_match = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"mac_core\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"failed to get mac core clk\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"failed to enable mac core clk %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"mac_ifc\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"failed to enable mac ifc clk %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"phy\00", align 1
@PHY_RESET_DELAYS_PROPERTY = common dso_local global i32 0, align 4
@DELAYS_NUM = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [16 x i8] c"hix5hd2_mii_bus\00", align 1
@hix5hd2_mdio_read = common dso_local global i32 0, align 4
@hix5hd2_mdio_write = common dso_local global i32 0, align 4
@MII_BUS_ID_SIZE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [7 x i8] c"%s-mii\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"not find phy-mode\0A\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"phy-handle\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"not find phy-handle\0A\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"No irq resource\0A\00", align 1
@hix5hd2_interrupt = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [25 x i8] c"devm_request_irq failed\0A\00", align 1
@.str.13 = private unnamed_addr constant [30 x i8] c"using random MAC address %pM\0A\00", align 1
@hix5hd2_tx_timeout_task = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@IFF_UNICAST_FLT = common dso_local global i32 0, align 4
@hix5hd2_netdev_ops = common dso_local global i32 0, align 4
@hix5hd2_ethtools_ops = common dso_local global i32 0, align 4
@NETIF_F_SG = common dso_local global i32 0, align 4
@NETIF_F_HIGHDMA = common dso_local global i32 0, align 4
@hix5hd2_poll = common dso_local global i32 0, align 4
@NAPI_POLL_WEIGHT = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [24 x i8] c"register_netdev failed!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @hix5hd2_dev_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hix5hd2_dev_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.of_device_id*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.hix5hd2_priv*, align 8
  %9 = alloca %struct.mii_bus*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 1
  store %struct.device* %13, %struct.device** %4, align 8
  %14 = load %struct.device*, %struct.device** %4, align 8
  %15 = getelementptr inbounds %struct.device, %struct.device* %14, i32 0, i32 0
  %16 = load %struct.device_node*, %struct.device_node** %15, align 8
  store %struct.device_node* %16, %struct.device_node** %5, align 8
  store %struct.of_device_id* null, %struct.of_device_id** %6, align 8
  %17 = call %struct.net_device* @alloc_etherdev(i32 120)
  store %struct.net_device* %17, %struct.net_device** %7, align 8
  %18 = load %struct.net_device*, %struct.net_device** %7, align 8
  %19 = icmp ne %struct.net_device* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %443

23:                                               ; preds = %1
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = load %struct.net_device*, %struct.net_device** %7, align 8
  %26 = call i32 @platform_set_drvdata(%struct.platform_device* %24, %struct.net_device* %25)
  %27 = load %struct.net_device*, %struct.net_device** %7, align 8
  %28 = call %struct.hix5hd2_priv* @netdev_priv(%struct.net_device* %27)
  store %struct.hix5hd2_priv* %28, %struct.hix5hd2_priv** %8, align 8
  %29 = load %struct.device*, %struct.device** %4, align 8
  %30 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %8, align 8
  %31 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %30, i32 0, i32 15
  store %struct.device* %29, %struct.device** %31, align 8
  %32 = load %struct.net_device*, %struct.net_device** %7, align 8
  %33 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %8, align 8
  %34 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %33, i32 0, i32 10
  store %struct.net_device* %32, %struct.net_device** %34, align 8
  %35 = load i32, i32* @hix5hd2_of_match, align 4
  %36 = load %struct.device*, %struct.device** %4, align 8
  %37 = call %struct.of_device_id* @of_match_device(i32 %35, %struct.device* %36)
  store %struct.of_device_id* %37, %struct.of_device_id** %6, align 8
  %38 = load %struct.of_device_id*, %struct.of_device_id** %6, align 8
  %39 = icmp ne %struct.of_device_id* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %23
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %11, align 4
  br label %439

43:                                               ; preds = %23
  %44 = load %struct.of_device_id*, %struct.of_device_id** %6, align 8
  %45 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %8, align 8
  %48 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %47, i32 0, i32 0
  store i64 %46, i64* %48, align 8
  %49 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %50 = call i8* @devm_platform_ioremap_resource(%struct.platform_device* %49, i32 0)
  %51 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %8, align 8
  %52 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %51, i32 0, i32 1
  store i8* %50, i8** %52, align 8
  %53 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %8, align 8
  %54 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %53, i32 0, i32 1
  %55 = load i8*, i8** %54, align 8
  %56 = call i64 @IS_ERR(i8* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %43
  %59 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %8, align 8
  %60 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %59, i32 0, i32 1
  %61 = load i8*, i8** %60, align 8
  %62 = call i32 @PTR_ERR(i8* %61)
  store i32 %62, i32* %11, align 4
  br label %439

63:                                               ; preds = %43
  %64 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %65 = call i8* @devm_platform_ioremap_resource(%struct.platform_device* %64, i32 1)
  %66 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %8, align 8
  %67 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %66, i32 0, i32 2
  store i8* %65, i8** %67, align 8
  %68 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %8, align 8
  %69 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %68, i32 0, i32 2
  %70 = load i8*, i8** %69, align 8
  %71 = call i64 @IS_ERR(i8* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %63
  %74 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %8, align 8
  %75 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %74, i32 0, i32 2
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 @PTR_ERR(i8* %76)
  store i32 %77, i32* %11, align 4
  br label %439

78:                                               ; preds = %63
  %79 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %80 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %79, i32 0, i32 1
  %81 = call i8* @devm_clk_get(%struct.device* %80, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %82 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %8, align 8
  %83 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %82, i32 0, i32 3
  store i8* %81, i8** %83, align 8
  %84 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %8, align 8
  %85 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %84, i32 0, i32 3
  %86 = load i8*, i8** %85, align 8
  %87 = call i64 @IS_ERR(i8* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %78
  %90 = load %struct.net_device*, %struct.net_device** %7, align 8
  %91 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %90, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %92 = load i32, i32* @ENODEV, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %11, align 4
  br label %439

94:                                               ; preds = %78
  %95 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %8, align 8
  %96 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %95, i32 0, i32 3
  %97 = load i8*, i8** %96, align 8
  %98 = call i32 @clk_prepare_enable(i8* %97)
  store i32 %98, i32* %11, align 4
  %99 = load i32, i32* %11, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %94
  %102 = load %struct.net_device*, %struct.net_device** %7, align 8
  %103 = load i32, i32* %11, align 4
  %104 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %102, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %103)
  br label %439

105:                                              ; preds = %94
  %106 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %107 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %106, i32 0, i32 1
  %108 = call i8* @devm_clk_get(%struct.device* %107, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %109 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %8, align 8
  %110 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %109, i32 0, i32 4
  store i8* %108, i8** %110, align 8
  %111 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %8, align 8
  %112 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %111, i32 0, i32 4
  %113 = load i8*, i8** %112, align 8
  %114 = call i64 @IS_ERR(i8* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %105
  %117 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %8, align 8
  %118 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %117, i32 0, i32 4
  store i8* null, i8** %118, align 8
  br label %119

119:                                              ; preds = %116, %105
  %120 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %8, align 8
  %121 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %120, i32 0, i32 4
  %122 = load i8*, i8** %121, align 8
  %123 = call i32 @clk_prepare_enable(i8* %122)
  store i32 %123, i32* %11, align 4
  %124 = load i32, i32* %11, align 4
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %119
  %127 = load %struct.net_device*, %struct.net_device** %7, align 8
  %128 = load i32, i32* %11, align 4
  %129 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %127, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %128)
  br label %434

130:                                              ; preds = %119
  %131 = load %struct.device*, %struct.device** %4, align 8
  %132 = call i8* @devm_reset_control_get(%struct.device* %131, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %133 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %8, align 8
  %134 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %133, i32 0, i32 5
  store i8* %132, i8** %134, align 8
  %135 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %8, align 8
  %136 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %135, i32 0, i32 5
  %137 = load i8*, i8** %136, align 8
  %138 = call i64 @IS_ERR(i8* %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %130
  %141 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %8, align 8
  %142 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %141, i32 0, i32 5
  store i8* null, i8** %142, align 8
  br label %143

143:                                              ; preds = %140, %130
  %144 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %8, align 8
  %145 = call i32 @hix5hd2_mac_core_reset(%struct.hix5hd2_priv* %144)
  %146 = load %struct.device*, %struct.device** %4, align 8
  %147 = call i8* @devm_reset_control_get(%struct.device* %146, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %148 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %8, align 8
  %149 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %148, i32 0, i32 6
  store i8* %147, i8** %149, align 8
  %150 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %8, align 8
  %151 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %150, i32 0, i32 6
  %152 = load i8*, i8** %151, align 8
  %153 = call i64 @IS_ERR(i8* %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %143
  %156 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %8, align 8
  %157 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %156, i32 0, i32 6
  store i8* null, i8** %157, align 8
  br label %158

158:                                              ; preds = %155, %143
  %159 = load %struct.device*, %struct.device** %4, align 8
  %160 = call i8* @devm_reset_control_get(%struct.device* %159, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %161 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %8, align 8
  %162 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %161, i32 0, i32 7
  store i8* %160, i8** %162, align 8
  %163 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %8, align 8
  %164 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %163, i32 0, i32 7
  %165 = load i8*, i8** %164, align 8
  %166 = call i64 @IS_ERR(i8* %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %171

168:                                              ; preds = %158
  %169 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %8, align 8
  %170 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %169, i32 0, i32 7
  store i8* null, i8** %170, align 8
  br label %185

171:                                              ; preds = %158
  %172 = load %struct.device_node*, %struct.device_node** %5, align 8
  %173 = load i32, i32* @PHY_RESET_DELAYS_PROPERTY, align 4
  %174 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %8, align 8
  %175 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %174, i32 0, i32 14
  %176 = load i32, i32* %175, align 8
  %177 = load i32, i32* @DELAYS_NUM, align 4
  %178 = call i32 @of_property_read_u32_array(%struct.device_node* %172, i32 %173, i32 %176, i32 %177)
  store i32 %178, i32* %11, align 4
  %179 = load i32, i32* %11, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %171
  br label %429

182:                                              ; preds = %171
  %183 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %8, align 8
  %184 = call i32 @hix5hd2_phy_reset(%struct.hix5hd2_priv* %183)
  br label %185

185:                                              ; preds = %182, %168
  %186 = call %struct.mii_bus* (...) @mdiobus_alloc()
  store %struct.mii_bus* %186, %struct.mii_bus** %9, align 8
  %187 = load %struct.mii_bus*, %struct.mii_bus** %9, align 8
  %188 = icmp eq %struct.mii_bus* %187, null
  br i1 %188, label %189, label %192

189:                                              ; preds = %185
  %190 = load i32, i32* @ENOMEM, align 4
  %191 = sub nsw i32 0, %190
  store i32 %191, i32* %11, align 4
  br label %429

192:                                              ; preds = %185
  %193 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %8, align 8
  %194 = load %struct.mii_bus*, %struct.mii_bus** %9, align 8
  %195 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %194, i32 0, i32 5
  store %struct.hix5hd2_priv* %193, %struct.hix5hd2_priv** %195, align 8
  %196 = load %struct.mii_bus*, %struct.mii_bus** %9, align 8
  %197 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %196, i32 0, i32 0
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i8** %197, align 8
  %198 = load i32, i32* @hix5hd2_mdio_read, align 4
  %199 = load %struct.mii_bus*, %struct.mii_bus** %9, align 8
  %200 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %199, i32 0, i32 4
  store i32 %198, i32* %200, align 4
  %201 = load i32, i32* @hix5hd2_mdio_write, align 4
  %202 = load %struct.mii_bus*, %struct.mii_bus** %9, align 8
  %203 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %202, i32 0, i32 3
  store i32 %201, i32* %203, align 8
  %204 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %205 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %204, i32 0, i32 1
  %206 = load %struct.mii_bus*, %struct.mii_bus** %9, align 8
  %207 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %206, i32 0, i32 2
  store %struct.device* %205, %struct.device** %207, align 8
  %208 = load %struct.mii_bus*, %struct.mii_bus** %9, align 8
  %209 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 8
  %211 = load i32, i32* @MII_BUS_ID_SIZE, align 4
  %212 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %213 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %212, i32 0, i32 1
  %214 = call i8* @dev_name(%struct.device* %213)
  %215 = call i32 @snprintf(i32 %210, i32 %211, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* %214)
  %216 = load %struct.mii_bus*, %struct.mii_bus** %9, align 8
  %217 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %8, align 8
  %218 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %217, i32 0, i32 13
  store %struct.mii_bus* %216, %struct.mii_bus** %218, align 8
  %219 = load %struct.mii_bus*, %struct.mii_bus** %9, align 8
  %220 = load %struct.device_node*, %struct.device_node** %5, align 8
  %221 = call i32 @of_mdiobus_register(%struct.mii_bus* %219, %struct.device_node* %220)
  store i32 %221, i32* %11, align 4
  %222 = load i32, i32* %11, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %225

224:                                              ; preds = %192
  br label %426

225:                                              ; preds = %192
  %226 = load %struct.device_node*, %struct.device_node** %5, align 8
  %227 = call i64 @of_get_phy_mode(%struct.device_node* %226)
  %228 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %8, align 8
  %229 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %228, i32 0, i32 12
  store i64 %227, i64* %229, align 8
  %230 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %8, align 8
  %231 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %230, i32 0, i32 12
  %232 = load i64, i64* %231, align 8
  %233 = trunc i64 %232 to i32
  %234 = icmp slt i32 %233, 0
  br i1 %234, label %235, label %240

235:                                              ; preds = %225
  %236 = load %struct.net_device*, %struct.net_device** %7, align 8
  %237 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %236, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0))
  %238 = load i32, i32* @EINVAL, align 4
  %239 = sub nsw i32 0, %238
  store i32 %239, i32* %11, align 4
  br label %423

240:                                              ; preds = %225
  %241 = load %struct.device_node*, %struct.device_node** %5, align 8
  %242 = call i32 @of_parse_phandle(%struct.device_node* %241, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i32 0)
  %243 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %8, align 8
  %244 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %243, i32 0, i32 8
  store i32 %242, i32* %244, align 8
  %245 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %8, align 8
  %246 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %245, i32 0, i32 8
  %247 = load i32, i32* %246, align 8
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %254, label %249

249:                                              ; preds = %240
  %250 = load %struct.net_device*, %struct.net_device** %7, align 8
  %251 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %250, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0))
  %252 = load i32, i32* @EINVAL, align 4
  %253 = sub nsw i32 0, %252
  store i32 %253, i32* %11, align 4
  br label %423

254:                                              ; preds = %240
  %255 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %256 = call i64 @platform_get_irq(%struct.platform_device* %255, i32 0)
  %257 = load %struct.net_device*, %struct.net_device** %7, align 8
  %258 = getelementptr inbounds %struct.net_device, %struct.net_device* %257, i32 0, i32 0
  store i64 %256, i64* %258, align 8
  %259 = load %struct.net_device*, %struct.net_device** %7, align 8
  %260 = getelementptr inbounds %struct.net_device, %struct.net_device* %259, i32 0, i32 0
  %261 = load i64, i64* %260, align 8
  %262 = icmp sle i64 %261, 0
  br i1 %262, label %263, label %268

263:                                              ; preds = %254
  %264 = load %struct.net_device*, %struct.net_device** %7, align 8
  %265 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %264, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0))
  %266 = load i32, i32* @EINVAL, align 4
  %267 = sub nsw i32 0, %266
  store i32 %267, i32* %11, align 4
  br label %418

268:                                              ; preds = %254
  %269 = load %struct.device*, %struct.device** %4, align 8
  %270 = load %struct.net_device*, %struct.net_device** %7, align 8
  %271 = getelementptr inbounds %struct.net_device, %struct.net_device* %270, i32 0, i32 0
  %272 = load i64, i64* %271, align 8
  %273 = load i32, i32* @hix5hd2_interrupt, align 4
  %274 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %275 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 8
  %277 = load %struct.net_device*, %struct.net_device** %7, align 8
  %278 = call i32 @devm_request_irq(%struct.device* %269, i64 %272, i32 %273, i32 0, i32 %276, %struct.net_device* %277)
  store i32 %278, i32* %11, align 4
  %279 = load i32, i32* %11, align 4
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %284

281:                                              ; preds = %268
  %282 = load %struct.net_device*, %struct.net_device** %7, align 8
  %283 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %282, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i64 0, i64 0))
  br label %418

284:                                              ; preds = %268
  %285 = load %struct.device_node*, %struct.device_node** %5, align 8
  %286 = call i8* @of_get_mac_address(%struct.device_node* %285)
  store i8* %286, i8** %10, align 8
  %287 = load i8*, i8** %10, align 8
  %288 = call i64 @IS_ERR(i8* %287)
  %289 = icmp ne i64 %288, 0
  br i1 %289, label %296, label %290

290:                                              ; preds = %284
  %291 = load %struct.net_device*, %struct.net_device** %7, align 8
  %292 = getelementptr inbounds %struct.net_device, %struct.net_device* %291, i32 0, i32 8
  %293 = load i32, i32* %292, align 4
  %294 = load i8*, i8** %10, align 8
  %295 = call i32 @ether_addr_copy(i32 %293, i8* %294)
  br label %296

296:                                              ; preds = %290, %284
  %297 = load %struct.net_device*, %struct.net_device** %7, align 8
  %298 = getelementptr inbounds %struct.net_device, %struct.net_device* %297, i32 0, i32 8
  %299 = load i32, i32* %298, align 4
  %300 = call i32 @is_valid_ether_addr(i32 %299)
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %310, label %302

302:                                              ; preds = %296
  %303 = load %struct.net_device*, %struct.net_device** %7, align 8
  %304 = call i32 @eth_hw_addr_random(%struct.net_device* %303)
  %305 = load %struct.net_device*, %struct.net_device** %7, align 8
  %306 = load %struct.net_device*, %struct.net_device** %7, align 8
  %307 = getelementptr inbounds %struct.net_device, %struct.net_device* %306, i32 0, i32 8
  %308 = load i32, i32* %307, align 4
  %309 = call i32 @netdev_warn(%struct.net_device* %305, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.13, i64 0, i64 0), i32 %308)
  br label %310

310:                                              ; preds = %302, %296
  %311 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %8, align 8
  %312 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %311, i32 0, i32 11
  %313 = load i32, i32* @hix5hd2_tx_timeout_task, align 4
  %314 = call i32 @INIT_WORK(i32* %312, i32 %313)
  %315 = load i32, i32* @HZ, align 4
  %316 = mul nsw i32 6, %315
  %317 = load %struct.net_device*, %struct.net_device** %7, align 8
  %318 = getelementptr inbounds %struct.net_device, %struct.net_device* %317, i32 0, i32 1
  store i32 %316, i32* %318, align 8
  %319 = load i32, i32* @IFF_UNICAST_FLT, align 4
  %320 = load %struct.net_device*, %struct.net_device** %7, align 8
  %321 = getelementptr inbounds %struct.net_device, %struct.net_device* %320, i32 0, i32 7
  %322 = load i32, i32* %321, align 8
  %323 = or i32 %322, %319
  store i32 %323, i32* %321, align 8
  %324 = load %struct.net_device*, %struct.net_device** %7, align 8
  %325 = getelementptr inbounds %struct.net_device, %struct.net_device* %324, i32 0, i32 6
  store i32* @hix5hd2_netdev_ops, i32** %325, align 8
  %326 = load %struct.net_device*, %struct.net_device** %7, align 8
  %327 = getelementptr inbounds %struct.net_device, %struct.net_device* %326, i32 0, i32 5
  store i32* @hix5hd2_ethtools_ops, i32** %327, align 8
  %328 = load %struct.net_device*, %struct.net_device** %7, align 8
  %329 = load %struct.device*, %struct.device** %4, align 8
  %330 = call i32 @SET_NETDEV_DEV(%struct.net_device* %328, %struct.device* %329)
  %331 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %8, align 8
  %332 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %331, i32 0, i32 0
  %333 = load i64, i64* %332, align 8
  %334 = call i64 @HAS_CAP_TSO(i64 %333)
  %335 = icmp ne i64 %334, 0
  br i1 %335, label %336, label %342

336:                                              ; preds = %310
  %337 = load i32, i32* @NETIF_F_SG, align 4
  %338 = load %struct.net_device*, %struct.net_device** %7, align 8
  %339 = getelementptr inbounds %struct.net_device, %struct.net_device* %338, i32 0, i32 2
  %340 = load i32, i32* %339, align 4
  %341 = or i32 %340, %337
  store i32 %341, i32* %339, align 4
  br label %342

342:                                              ; preds = %336, %310
  %343 = load %struct.net_device*, %struct.net_device** %7, align 8
  %344 = getelementptr inbounds %struct.net_device, %struct.net_device* %343, i32 0, i32 2
  %345 = load i32, i32* %344, align 4
  %346 = load i32, i32* @NETIF_F_HIGHDMA, align 4
  %347 = or i32 %345, %346
  %348 = load %struct.net_device*, %struct.net_device** %7, align 8
  %349 = getelementptr inbounds %struct.net_device, %struct.net_device* %348, i32 0, i32 3
  %350 = load i32, i32* %349, align 8
  %351 = or i32 %350, %347
  store i32 %351, i32* %349, align 8
  %352 = load %struct.net_device*, %struct.net_device** %7, align 8
  %353 = getelementptr inbounds %struct.net_device, %struct.net_device* %352, i32 0, i32 3
  %354 = load i32, i32* %353, align 8
  %355 = load %struct.net_device*, %struct.net_device** %7, align 8
  %356 = getelementptr inbounds %struct.net_device, %struct.net_device* %355, i32 0, i32 4
  %357 = load i32, i32* %356, align 4
  %358 = or i32 %357, %354
  store i32 %358, i32* %356, align 4
  %359 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %8, align 8
  %360 = call i32 @hix5hd2_init_hw_desc_queue(%struct.hix5hd2_priv* %359)
  store i32 %360, i32* %11, align 4
  %361 = load i32, i32* %11, align 4
  %362 = icmp ne i32 %361, 0
  br i1 %362, label %363, label %364

363:                                              ; preds = %342
  br label %418

364:                                              ; preds = %342
  %365 = load %struct.net_device*, %struct.net_device** %7, align 8
  %366 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %8, align 8
  %367 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %366, i32 0, i32 9
  %368 = load i32, i32* @hix5hd2_poll, align 4
  %369 = load i32, i32* @NAPI_POLL_WEIGHT, align 4
  %370 = call i32 @netif_napi_add(%struct.net_device* %365, i32* %367, i32 %368, i32 %369)
  %371 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %8, align 8
  %372 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %371, i32 0, i32 0
  %373 = load i64, i64* %372, align 8
  %374 = call i64 @HAS_CAP_TSO(i64 %373)
  %375 = icmp ne i64 %374, 0
  br i1 %375, label %376, label %383

376:                                              ; preds = %364
  %377 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %8, align 8
  %378 = call i32 @hix5hd2_init_sg_desc_queue(%struct.hix5hd2_priv* %377)
  store i32 %378, i32* %11, align 4
  %379 = load i32, i32* %11, align 4
  %380 = icmp ne i32 %379, 0
  br i1 %380, label %381, label %382

381:                                              ; preds = %376
  br label %403

382:                                              ; preds = %376
  br label %383

383:                                              ; preds = %382, %364
  %384 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %8, align 8
  %385 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %384, i32 0, i32 10
  %386 = load %struct.net_device*, %struct.net_device** %385, align 8
  %387 = call i32 @register_netdev(%struct.net_device* %386)
  store i32 %387, i32* %11, align 4
  %388 = load i32, i32* %11, align 4
  %389 = icmp ne i32 %388, 0
  br i1 %389, label %390, label %393

390:                                              ; preds = %383
  %391 = load %struct.net_device*, %struct.net_device** %7, align 8
  %392 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %391, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0))
  br label %403

393:                                              ; preds = %383
  %394 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %8, align 8
  %395 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %394, i32 0, i32 4
  %396 = load i8*, i8** %395, align 8
  %397 = call i32 @clk_disable_unprepare(i8* %396)
  %398 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %8, align 8
  %399 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %398, i32 0, i32 3
  %400 = load i8*, i8** %399, align 8
  %401 = call i32 @clk_disable_unprepare(i8* %400)
  %402 = load i32, i32* %11, align 4
  store i32 %402, i32* %2, align 4
  br label %443

403:                                              ; preds = %390, %381
  %404 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %8, align 8
  %405 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %404, i32 0, i32 0
  %406 = load i64, i64* %405, align 8
  %407 = call i64 @HAS_CAP_TSO(i64 %406)
  %408 = icmp ne i64 %407, 0
  br i1 %408, label %409, label %412

409:                                              ; preds = %403
  %410 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %8, align 8
  %411 = call i32 @hix5hd2_destroy_sg_desc_queue(%struct.hix5hd2_priv* %410)
  br label %412

412:                                              ; preds = %409, %403
  %413 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %8, align 8
  %414 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %413, i32 0, i32 9
  %415 = call i32 @netif_napi_del(i32* %414)
  %416 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %8, align 8
  %417 = call i32 @hix5hd2_destroy_hw_desc_queue(%struct.hix5hd2_priv* %416)
  br label %418

418:                                              ; preds = %412, %363, %281, %263
  %419 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %8, align 8
  %420 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %419, i32 0, i32 8
  %421 = load i32, i32* %420, align 8
  %422 = call i32 @of_node_put(i32 %421)
  br label %423

423:                                              ; preds = %418, %249, %235
  %424 = load %struct.mii_bus*, %struct.mii_bus** %9, align 8
  %425 = call i32 @mdiobus_unregister(%struct.mii_bus* %424)
  br label %426

426:                                              ; preds = %423, %224
  %427 = load %struct.mii_bus*, %struct.mii_bus** %9, align 8
  %428 = call i32 @mdiobus_free(%struct.mii_bus* %427)
  br label %429

429:                                              ; preds = %426, %189, %181
  %430 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %8, align 8
  %431 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %430, i32 0, i32 4
  %432 = load i8*, i8** %431, align 8
  %433 = call i32 @clk_disable_unprepare(i8* %432)
  br label %434

434:                                              ; preds = %429, %126
  %435 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %8, align 8
  %436 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %435, i32 0, i32 3
  %437 = load i8*, i8** %436, align 8
  %438 = call i32 @clk_disable_unprepare(i8* %437)
  br label %439

439:                                              ; preds = %434, %101, %89, %73, %58, %40
  %440 = load %struct.net_device*, %struct.net_device** %7, align 8
  %441 = call i32 @free_netdev(%struct.net_device* %440)
  %442 = load i32, i32* %11, align 4
  store i32 %442, i32* %2, align 4
  br label %443

443:                                              ; preds = %439, %393, %20
  %444 = load i32, i32* %2, align 4
  ret i32 %444
}

declare dso_local %struct.net_device* @alloc_etherdev(i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.net_device*) #1

declare dso_local %struct.hix5hd2_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.of_device_id* @of_match_device(i32, %struct.device*) #1

declare dso_local i8* @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i8* @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, ...) #1

declare dso_local i32 @clk_prepare_enable(i8*) #1

declare dso_local i8* @devm_reset_control_get(%struct.device*, i8*) #1

declare dso_local i32 @hix5hd2_mac_core_reset(%struct.hix5hd2_priv*) #1

declare dso_local i32 @of_property_read_u32_array(%struct.device_node*, i32, i32, i32) #1

declare dso_local i32 @hix5hd2_phy_reset(%struct.hix5hd2_priv*) #1

declare dso_local %struct.mii_bus* @mdiobus_alloc(...) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i8* @dev_name(%struct.device*) #1

declare dso_local i32 @of_mdiobus_register(%struct.mii_bus*, %struct.device_node*) #1

declare dso_local i64 @of_get_phy_mode(%struct.device_node*) #1

declare dso_local i32 @of_parse_phandle(%struct.device_node*, i8*, i32) #1

declare dso_local i64 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i64, i32, i32, i32, %struct.net_device*) #1

declare dso_local i8* @of_get_mac_address(%struct.device_node*) #1

declare dso_local i32 @ether_addr_copy(i32, i8*) #1

declare dso_local i32 @is_valid_ether_addr(i32) #1

declare dso_local i32 @eth_hw_addr_random(%struct.net_device*) #1

declare dso_local i32 @netdev_warn(%struct.net_device*, i8*, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, %struct.device*) #1

declare dso_local i64 @HAS_CAP_TSO(i64) #1

declare dso_local i32 @hix5hd2_init_hw_desc_queue(%struct.hix5hd2_priv*) #1

declare dso_local i32 @netif_napi_add(%struct.net_device*, i32*, i32, i32) #1

declare dso_local i32 @hix5hd2_init_sg_desc_queue(%struct.hix5hd2_priv*) #1

declare dso_local i32 @register_netdev(%struct.net_device*) #1

declare dso_local i32 @clk_disable_unprepare(i8*) #1

declare dso_local i32 @hix5hd2_destroy_sg_desc_queue(%struct.hix5hd2_priv*) #1

declare dso_local i32 @netif_napi_del(i32*) #1

declare dso_local i32 @hix5hd2_destroy_hw_desc_queue(%struct.hix5hd2_priv*) #1

declare dso_local i32 @of_node_put(i32) #1

declare dso_local i32 @mdiobus_unregister(%struct.mii_bus*) #1

declare dso_local i32 @mdiobus_free(%struct.mii_bus*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
