; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ni/extr_nixge.c_nixge_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ni/extr_nixge.c_nixge_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.device_node = type { i32 }
%struct.nixge_priv = type { i64, i64, i64, %struct.net_device*, %struct.device_node*, i64, i32, i32, i32, %struct.TYPE_3__* }
%struct.net_device = type { i32, i32, i32, i32*, i32*, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@NETIF_F_SG = common dso_local global i32 0, align 4
@nixge_netdev_ops = common dso_local global i32 0, align 4
@nixge_ethtool_ops = common dso_local global i32 0, align 4
@NIXGE_JUMBO_MTU = common dso_local global i32 0, align 4
@nixge_poll = common dso_local global i32 0, align 4
@NAPI_POLL_WEIGHT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"could not find 'tx' irq\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"could not find 'rx' irq\00", align 1
@XAXIDMA_DFT_RX_THRESHOLD = common dso_local global i32 0, align 4
@XAXIDMA_DFT_TX_THRESHOLD = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"mdio\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"error registering mdio bus\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"not find \22phy-mode\22 property\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [11 x i8] c"phy-handle\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"broken fixed-link specification\0A\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"register_netdev() error (%i)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @nixge_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nixge_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.nixge_priv*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = call %struct.net_device* @alloc_etherdev(i32 72)
  store %struct.net_device* %10, %struct.net_device** %7, align 8
  %11 = load %struct.net_device*, %struct.net_device** %7, align 8
  %12 = icmp ne %struct.net_device* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %236

16:                                               ; preds = %1
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = load %struct.net_device*, %struct.net_device** %7, align 8
  %19 = call i32 @platform_set_drvdata(%struct.platform_device* %17, %struct.net_device* %18)
  %20 = load %struct.net_device*, %struct.net_device** %7, align 8
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 0
  %23 = call i32 @SET_NETDEV_DEV(%struct.net_device* %20, %struct.TYPE_3__* %22)
  %24 = load i32, i32* @NETIF_F_SG, align 4
  %25 = load %struct.net_device*, %struct.net_device** %7, align 8
  %26 = getelementptr inbounds %struct.net_device, %struct.net_device* %25, i32 0, i32 5
  store i32 %24, i32* %26, align 8
  %27 = load %struct.net_device*, %struct.net_device** %7, align 8
  %28 = getelementptr inbounds %struct.net_device, %struct.net_device* %27, i32 0, i32 4
  store i32* @nixge_netdev_ops, i32** %28, align 8
  %29 = load %struct.net_device*, %struct.net_device** %7, align 8
  %30 = getelementptr inbounds %struct.net_device, %struct.net_device* %29, i32 0, i32 3
  store i32* @nixge_ethtool_ops, i32** %30, align 8
  %31 = load %struct.net_device*, %struct.net_device** %7, align 8
  %32 = getelementptr inbounds %struct.net_device, %struct.net_device* %31, i32 0, i32 0
  store i32 64, i32* %32, align 8
  %33 = load i32, i32* @NIXGE_JUMBO_MTU, align 4
  %34 = load %struct.net_device*, %struct.net_device** %7, align 8
  %35 = getelementptr inbounds %struct.net_device, %struct.net_device* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 8
  %36 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %37 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %36, i32 0, i32 0
  %38 = call i32* @nixge_get_nvmem_address(%struct.TYPE_3__* %37)
  store i32* %38, i32** %8, align 8
  %39 = load i32*, i32** %8, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %53

41:                                               ; preds = %16
  %42 = load i32*, i32** %8, align 8
  %43 = call i64 @is_valid_ether_addr(i32* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %41
  %46 = load %struct.net_device*, %struct.net_device** %7, align 8
  %47 = getelementptr inbounds %struct.net_device, %struct.net_device* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32*, i32** %8, align 8
  %50 = call i32 @ether_addr_copy(i32 %48, i32* %49)
  %51 = load i32*, i32** %8, align 8
  %52 = call i32 @kfree(i32* %51)
  br label %56

53:                                               ; preds = %41, %16
  %54 = load %struct.net_device*, %struct.net_device** %7, align 8
  %55 = call i32 @eth_hw_addr_random(%struct.net_device* %54)
  br label %56

56:                                               ; preds = %53, %45
  %57 = load %struct.net_device*, %struct.net_device** %7, align 8
  %58 = call %struct.nixge_priv* @netdev_priv(%struct.net_device* %57)
  store %struct.nixge_priv* %58, %struct.nixge_priv** %6, align 8
  %59 = load %struct.net_device*, %struct.net_device** %7, align 8
  %60 = load %struct.nixge_priv*, %struct.nixge_priv** %6, align 8
  %61 = getelementptr inbounds %struct.nixge_priv, %struct.nixge_priv* %60, i32 0, i32 3
  store %struct.net_device* %59, %struct.net_device** %61, align 8
  %62 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %63 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %62, i32 0, i32 0
  %64 = load %struct.nixge_priv*, %struct.nixge_priv** %6, align 8
  %65 = getelementptr inbounds %struct.nixge_priv, %struct.nixge_priv* %64, i32 0, i32 9
  store %struct.TYPE_3__* %63, %struct.TYPE_3__** %65, align 8
  %66 = load %struct.net_device*, %struct.net_device** %7, align 8
  %67 = load %struct.nixge_priv*, %struct.nixge_priv** %6, align 8
  %68 = getelementptr inbounds %struct.nixge_priv, %struct.nixge_priv* %67, i32 0, i32 8
  %69 = load i32, i32* @nixge_poll, align 4
  %70 = load i32, i32* @NAPI_POLL_WEIGHT, align 4
  %71 = call i32 @netif_napi_add(%struct.net_device* %66, i32* %68, i32 %69, i32 %70)
  %72 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %73 = call i32 @nixge_of_get_resources(%struct.platform_device* %72)
  store i32 %73, i32* %9, align 4
  %74 = load i32, i32* %9, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %56
  %77 = load i32, i32* %9, align 4
  store i32 %77, i32* %2, align 4
  br label %236

78:                                               ; preds = %56
  %79 = load %struct.net_device*, %struct.net_device** %7, align 8
  %80 = call i32 @__nixge_hw_set_mac_address(%struct.net_device* %79)
  %81 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %82 = call i8* @platform_get_irq_byname(%struct.platform_device* %81, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %83 = ptrtoint i8* %82 to i64
  %84 = load %struct.nixge_priv*, %struct.nixge_priv** %6, align 8
  %85 = getelementptr inbounds %struct.nixge_priv, %struct.nixge_priv* %84, i32 0, i32 0
  store i64 %83, i64* %85, align 8
  %86 = load %struct.nixge_priv*, %struct.nixge_priv** %6, align 8
  %87 = getelementptr inbounds %struct.nixge_priv, %struct.nixge_priv* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp slt i64 %88, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %78
  %91 = load %struct.net_device*, %struct.net_device** %7, align 8
  %92 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %91, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %93 = load %struct.nixge_priv*, %struct.nixge_priv** %6, align 8
  %94 = getelementptr inbounds %struct.nixge_priv, %struct.nixge_priv* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = trunc i64 %95 to i32
  store i32 %96, i32* %2, align 4
  br label %236

97:                                               ; preds = %78
  %98 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %99 = call i8* @platform_get_irq_byname(%struct.platform_device* %98, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %100 = ptrtoint i8* %99 to i64
  %101 = load %struct.nixge_priv*, %struct.nixge_priv** %6, align 8
  %102 = getelementptr inbounds %struct.nixge_priv, %struct.nixge_priv* %101, i32 0, i32 1
  store i64 %100, i64* %102, align 8
  %103 = load %struct.nixge_priv*, %struct.nixge_priv** %6, align 8
  %104 = getelementptr inbounds %struct.nixge_priv, %struct.nixge_priv* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = icmp slt i64 %105, 0
  br i1 %106, label %107, label %114

107:                                              ; preds = %97
  %108 = load %struct.net_device*, %struct.net_device** %7, align 8
  %109 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %108, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %110 = load %struct.nixge_priv*, %struct.nixge_priv** %6, align 8
  %111 = getelementptr inbounds %struct.nixge_priv, %struct.nixge_priv* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = trunc i64 %112 to i32
  store i32 %113, i32* %2, align 4
  br label %236

114:                                              ; preds = %97
  %115 = load i32, i32* @XAXIDMA_DFT_RX_THRESHOLD, align 4
  %116 = load %struct.nixge_priv*, %struct.nixge_priv** %6, align 8
  %117 = getelementptr inbounds %struct.nixge_priv, %struct.nixge_priv* %116, i32 0, i32 7
  store i32 %115, i32* %117, align 4
  %118 = load i32, i32* @XAXIDMA_DFT_TX_THRESHOLD, align 4
  %119 = load %struct.nixge_priv*, %struct.nixge_priv** %6, align 8
  %120 = getelementptr inbounds %struct.nixge_priv, %struct.nixge_priv* %119, i32 0, i32 6
  store i32 %118, i32* %120, align 8
  %121 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %122 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call %struct.device_node* @of_get_child_by_name(i32 %124, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  store %struct.device_node* %125, %struct.device_node** %4, align 8
  %126 = load %struct.device_node*, %struct.device_node** %4, align 8
  %127 = icmp ne %struct.device_node* %126, null
  br i1 %127, label %128, label %140

128:                                              ; preds = %114
  %129 = load %struct.nixge_priv*, %struct.nixge_priv** %6, align 8
  %130 = load %struct.device_node*, %struct.device_node** %4, align 8
  %131 = call i32 @nixge_mdio_setup(%struct.nixge_priv* %129, %struct.device_node* %130)
  store i32 %131, i32* %9, align 4
  %132 = load %struct.device_node*, %struct.device_node** %4, align 8
  %133 = call i32 @of_node_put(%struct.device_node* %132)
  %134 = load i32, i32* %9, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %128
  %137 = load %struct.net_device*, %struct.net_device** %7, align 8
  %138 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %137, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  br label %232

139:                                              ; preds = %128
  br label %140

140:                                              ; preds = %139, %114
  %141 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %142 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = call i64 @of_get_phy_mode(i32 %144)
  %146 = load %struct.nixge_priv*, %struct.nixge_priv** %6, align 8
  %147 = getelementptr inbounds %struct.nixge_priv, %struct.nixge_priv* %146, i32 0, i32 5
  store i64 %145, i64* %147, align 8
  %148 = load %struct.nixge_priv*, %struct.nixge_priv** %6, align 8
  %149 = getelementptr inbounds %struct.nixge_priv, %struct.nixge_priv* %148, i32 0, i32 5
  %150 = load i64, i64* %149, align 8
  %151 = trunc i64 %150 to i32
  %152 = icmp slt i32 %151, 0
  br i1 %152, label %153, label %158

153:                                              ; preds = %140
  %154 = load %struct.net_device*, %struct.net_device** %7, align 8
  %155 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %154, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  %156 = load i32, i32* @EINVAL, align 4
  %157 = sub nsw i32 0, %156
  store i32 %157, i32* %9, align 4
  br label %221

158:                                              ; preds = %140
  %159 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %160 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = call %struct.device_node* @of_parse_phandle(i32 %162, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i32 0)
  store %struct.device_node* %163, %struct.device_node** %5, align 8
  %164 = load %struct.device_node*, %struct.device_node** %5, align 8
  %165 = icmp ne %struct.device_node* %164, null
  br i1 %165, label %190, label %166

166:                                              ; preds = %158
  %167 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %168 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = call i64 @of_phy_is_fixed_link(i32 %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %190

173:                                              ; preds = %166
  %174 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %175 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @of_phy_register_fixed_link(i32 %177)
  store i32 %178, i32* %9, align 4
  %179 = load i32, i32* %9, align 4
  %180 = icmp slt i32 %179, 0
  br i1 %180, label %181, label %184

181:                                              ; preds = %173
  %182 = load %struct.net_device*, %struct.net_device** %7, align 8
  %183 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %182, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0))
  br label %221

184:                                              ; preds = %173
  %185 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %186 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = call %struct.device_node* @of_node_get(i32 %188)
  store %struct.device_node* %189, %struct.device_node** %5, align 8
  br label %190

190:                                              ; preds = %184, %166, %158
  %191 = load %struct.device_node*, %struct.device_node** %5, align 8
  %192 = load %struct.nixge_priv*, %struct.nixge_priv** %6, align 8
  %193 = getelementptr inbounds %struct.nixge_priv, %struct.nixge_priv* %192, i32 0, i32 4
  store %struct.device_node* %191, %struct.device_node** %193, align 8
  %194 = load %struct.nixge_priv*, %struct.nixge_priv** %6, align 8
  %195 = getelementptr inbounds %struct.nixge_priv, %struct.nixge_priv* %194, i32 0, i32 3
  %196 = load %struct.net_device*, %struct.net_device** %195, align 8
  %197 = call i32 @register_netdev(%struct.net_device* %196)
  store i32 %197, i32* %9, align 4
  %198 = load i32, i32* %9, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %204

200:                                              ; preds = %190
  %201 = load %struct.net_device*, %struct.net_device** %7, align 8
  %202 = load i32, i32* %9, align 4
  %203 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %201, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0), i32 %202)
  br label %205

204:                                              ; preds = %190
  store i32 0, i32* %2, align 4
  br label %236

205:                                              ; preds = %200
  %206 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %207 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = call i64 @of_phy_is_fixed_link(i32 %209)
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %218

212:                                              ; preds = %205
  %213 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %214 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = call i32 @of_phy_deregister_fixed_link(i32 %216)
  br label %218

218:                                              ; preds = %212, %205
  %219 = load %struct.device_node*, %struct.device_node** %5, align 8
  %220 = call i32 @of_node_put(%struct.device_node* %219)
  br label %221

221:                                              ; preds = %218, %181, %153
  %222 = load %struct.nixge_priv*, %struct.nixge_priv** %6, align 8
  %223 = getelementptr inbounds %struct.nixge_priv, %struct.nixge_priv* %222, i32 0, i32 2
  %224 = load i64, i64* %223, align 8
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %231

226:                                              ; preds = %221
  %227 = load %struct.nixge_priv*, %struct.nixge_priv** %6, align 8
  %228 = getelementptr inbounds %struct.nixge_priv, %struct.nixge_priv* %227, i32 0, i32 2
  %229 = load i64, i64* %228, align 8
  %230 = call i32 @mdiobus_unregister(i64 %229)
  br label %231

231:                                              ; preds = %226, %221
  br label %232

232:                                              ; preds = %231, %136
  %233 = load %struct.net_device*, %struct.net_device** %7, align 8
  %234 = call i32 @free_netdev(%struct.net_device* %233)
  %235 = load i32, i32* %9, align 4
  store i32 %235, i32* %2, align 4
  br label %236

236:                                              ; preds = %232, %204, %107, %90, %76, %13
  %237 = load i32, i32* %2, align 4
  ret i32 %237
}

declare dso_local %struct.net_device* @alloc_etherdev(i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.net_device*) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, %struct.TYPE_3__*) #1

declare dso_local i32* @nixge_get_nvmem_address(%struct.TYPE_3__*) #1

declare dso_local i64 @is_valid_ether_addr(i32*) #1

declare dso_local i32 @ether_addr_copy(i32, i32*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @eth_hw_addr_random(%struct.net_device*) #1

declare dso_local %struct.nixge_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_napi_add(%struct.net_device*, i32*, i32, i32) #1

declare dso_local i32 @nixge_of_get_resources(%struct.platform_device*) #1

declare dso_local i32 @__nixge_hw_set_mac_address(%struct.net_device*) #1

declare dso_local i8* @platform_get_irq_byname(%struct.platform_device*, i8*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, ...) #1

declare dso_local %struct.device_node* @of_get_child_by_name(i32, i8*) #1

declare dso_local i32 @nixge_mdio_setup(%struct.nixge_priv*, %struct.device_node*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i64 @of_get_phy_mode(i32) #1

declare dso_local %struct.device_node* @of_parse_phandle(i32, i8*, i32) #1

declare dso_local i64 @of_phy_is_fixed_link(i32) #1

declare dso_local i32 @of_phy_register_fixed_link(i32) #1

declare dso_local %struct.device_node* @of_node_get(i32) #1

declare dso_local i32 @register_netdev(%struct.net_device*) #1

declare dso_local i32 @of_phy_deregister_fixed_link(i32) #1

declare dso_local i32 @mdiobus_unregister(i64) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
