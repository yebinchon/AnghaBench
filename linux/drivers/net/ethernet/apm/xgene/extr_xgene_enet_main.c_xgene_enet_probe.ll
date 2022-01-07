; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene/extr_xgene_enet_main.c_xgene_enet_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene/extr_xgene_enet_main.c_xgene_enet_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.net_device = type { i32, i32, i32* }
%struct.xgene_enet_pdata = type { i32, i64, i64, i32, i32, %struct.TYPE_2__*, i32, i32, %struct.net_device*, %struct.platform_device* }
%struct.TYPE_2__ = type { void (%struct.work_struct*)* }
%struct.work_struct = type opaque
%struct.work_struct.0 = type opaque
%struct.of_device_id = type { i64 }
%struct.work_struct.1 = type opaque

@XGENE_NUM_RX_RING = common dso_local global i32 0, align 4
@XGENE_NUM_TX_RING = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@xgene_ndev_ops = common dso_local global i32 0, align 4
@NETIF_F_IP_CSUM = common dso_local global i32 0, align 4
@NETIF_F_GSO = common dso_local global i32 0, align 4
@NETIF_F_GRO = common dso_local global i32 0, align 4
@NETIF_F_SG = common dso_local global i32 0, align 4
@xgene_enet_of_match = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@PHY_INTERFACE_MODE_XGMII = common dso_local global i64 0, align 8
@NETIF_F_TSO = common dso_local global i32 0, align 4
@NETIF_F_RXCSUM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"No usable DMA configuration\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Failed to register netdev\0A\00", align 1
@xgene_enet_acpi_match = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @xgene_enet_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgene_enet_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.xgene_enet_pdata*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca void (%struct.work_struct.0*)*, align 8
  %8 = alloca %struct.of_device_id*, align 8
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %6, align 8
  %12 = load i32, i32* @XGENE_NUM_RX_RING, align 4
  %13 = load i32, i32* @XGENE_NUM_TX_RING, align 4
  %14 = call %struct.net_device* @alloc_etherdev_mqs(i32 64, i32 %12, i32 %13)
  store %struct.net_device* %14, %struct.net_device** %4, align 8
  %15 = load %struct.net_device*, %struct.net_device** %4, align 8
  %16 = icmp ne %struct.net_device* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %211

20:                                               ; preds = %1
  %21 = load %struct.net_device*, %struct.net_device** %4, align 8
  %22 = call %struct.xgene_enet_pdata* @netdev_priv(%struct.net_device* %21)
  store %struct.xgene_enet_pdata* %22, %struct.xgene_enet_pdata** %5, align 8
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %5, align 8
  %25 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %24, i32 0, i32 9
  store %struct.platform_device* %23, %struct.platform_device** %25, align 8
  %26 = load %struct.net_device*, %struct.net_device** %4, align 8
  %27 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %5, align 8
  %28 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %27, i32 0, i32 8
  store %struct.net_device* %26, %struct.net_device** %28, align 8
  %29 = load %struct.net_device*, %struct.net_device** %4, align 8
  %30 = load %struct.device*, %struct.device** %6, align 8
  %31 = call i32 @SET_NETDEV_DEV(%struct.net_device* %29, %struct.device* %30)
  %32 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %33 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %5, align 8
  %34 = call i32 @platform_set_drvdata(%struct.platform_device* %32, %struct.xgene_enet_pdata* %33)
  %35 = load %struct.net_device*, %struct.net_device** %4, align 8
  %36 = getelementptr inbounds %struct.net_device, %struct.net_device* %35, i32 0, i32 2
  store i32* @xgene_ndev_ops, i32** %36, align 8
  %37 = load %struct.net_device*, %struct.net_device** %4, align 8
  %38 = call i32 @xgene_enet_set_ethtool_ops(%struct.net_device* %37)
  %39 = load i32, i32* @NETIF_F_IP_CSUM, align 4
  %40 = load i32, i32* @NETIF_F_GSO, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @NETIF_F_GRO, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @NETIF_F_SG, align 4
  %45 = or i32 %43, %44
  %46 = load %struct.net_device*, %struct.net_device** %4, align 8
  %47 = getelementptr inbounds %struct.net_device, %struct.net_device* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 8
  %50 = load i32, i32* @xgene_enet_of_match, align 4
  %51 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %52 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %51, i32 0, i32 0
  %53 = call %struct.of_device_id* @of_match_device(i32 %50, %struct.device* %52)
  store %struct.of_device_id* %53, %struct.of_device_id** %8, align 8
  %54 = load %struct.of_device_id*, %struct.of_device_id** %8, align 8
  %55 = icmp ne %struct.of_device_id* %54, null
  br i1 %55, label %56, label %63

56:                                               ; preds = %20
  %57 = load %struct.of_device_id*, %struct.of_device_id** %8, align 8
  %58 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = trunc i64 %59 to i32
  %61 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %5, align 8
  %62 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  br label %63

63:                                               ; preds = %56, %20
  %64 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %5, align 8
  %65 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %63
  %69 = load i32, i32* @ENODEV, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %9, align 4
  br label %207

71:                                               ; preds = %63
  %72 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %5, align 8
  %73 = call i32 @xgene_enet_get_resources(%struct.xgene_enet_pdata* %72)
  store i32 %73, i32* %9, align 4
  %74 = load i32, i32* %9, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %71
  br label %207

77:                                               ; preds = %71
  %78 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %5, align 8
  %79 = call i32 @xgene_enet_setup_ops(%struct.xgene_enet_pdata* %78)
  %80 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %5, align 8
  %81 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %80, i32 0, i32 7
  %82 = call i32 @spin_lock_init(i32* %81)
  %83 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %5, align 8
  %84 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @PHY_INTERFACE_MODE_XGMII, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %99

88:                                               ; preds = %77
  %89 = load i32, i32* @NETIF_F_TSO, align 4
  %90 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %91 = or i32 %89, %90
  %92 = load %struct.net_device*, %struct.net_device** %4, align 8
  %93 = getelementptr inbounds %struct.net_device, %struct.net_device* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = or i32 %94, %91
  store i32 %95, i32* %93, align 8
  %96 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %5, align 8
  %97 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %96, i32 0, i32 6
  %98 = call i32 @spin_lock_init(i32* %97)
  br label %99

99:                                               ; preds = %88, %77
  %100 = load %struct.net_device*, %struct.net_device** %4, align 8
  %101 = getelementptr inbounds %struct.net_device, %struct.net_device* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.net_device*, %struct.net_device** %4, align 8
  %104 = getelementptr inbounds %struct.net_device, %struct.net_device* %103, i32 0, i32 1
  store i32 %102, i32* %104, align 4
  %105 = load %struct.device*, %struct.device** %6, align 8
  %106 = call i32 @DMA_BIT_MASK(i32 64)
  %107 = call i32 @dma_coerce_mask_and_coherent(%struct.device* %105, i32 %106)
  store i32 %107, i32* %9, align 4
  %108 = load i32, i32* %9, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %99
  %111 = load %struct.net_device*, %struct.net_device** %4, align 8
  %112 = call i32 @netdev_err(%struct.net_device* %111, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %207

113:                                              ; preds = %99
  %114 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %5, align 8
  %115 = call i32 @xgene_enet_check_phy_handle(%struct.xgene_enet_pdata* %114)
  %116 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %5, align 8
  %117 = call i32 @xgene_enet_init_hw(%struct.xgene_enet_pdata* %116)
  store i32 %117, i32* %9, align 4
  %118 = load i32, i32* %9, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %113
  br label %188

121:                                              ; preds = %113
  %122 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %5, align 8
  %123 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %122, i32 0, i32 5
  %124 = load %struct.TYPE_2__*, %struct.TYPE_2__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 0
  %126 = load void (%struct.work_struct*)*, void (%struct.work_struct*)** %125, align 8
  %127 = bitcast void (%struct.work_struct*)* %126 to void (%struct.work_struct.0*)*
  store void (%struct.work_struct.0*)* %127, void (%struct.work_struct.0*)** %7, align 8
  %128 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %5, align 8
  %129 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @PHY_INTERFACE_MODE_XGMII, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %133, label %139

133:                                              ; preds = %121
  %134 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %5, align 8
  %135 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %134, i32 0, i32 4
  %136 = load void (%struct.work_struct.0*)*, void (%struct.work_struct.0*)** %7, align 8
  %137 = bitcast void (%struct.work_struct.0*)* %136 to void (%struct.work_struct.1*)*
  %138 = call i32 @INIT_DELAYED_WORK(i32* %135, void (%struct.work_struct.1*)* %137)
  br label %165

139:                                              ; preds = %121
  %140 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %5, align 8
  %141 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %140, i32 0, i32 2
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %164, label %144

144:                                              ; preds = %139
  %145 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %5, align 8
  %146 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = call i64 @phy_interface_mode_is_rgmii(i64 %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %153

150:                                              ; preds = %144
  %151 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %5, align 8
  %152 = call i32 @xgene_enet_mdio_config(%struct.xgene_enet_pdata* %151)
  store i32 %152, i32* %9, align 4
  br label %159

153:                                              ; preds = %144
  %154 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %5, align 8
  %155 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %154, i32 0, i32 4
  %156 = load void (%struct.work_struct.0*)*, void (%struct.work_struct.0*)** %7, align 8
  %157 = bitcast void (%struct.work_struct.0*)* %156 to void (%struct.work_struct.1*)*
  %158 = call i32 @INIT_DELAYED_WORK(i32* %155, void (%struct.work_struct.1*)* %157)
  br label %159

159:                                              ; preds = %153, %150
  %160 = load i32, i32* %9, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %159
  br label %185

163:                                              ; preds = %159
  br label %164

164:                                              ; preds = %163, %139
  br label %165

165:                                              ; preds = %164, %133
  %166 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %5, align 8
  %167 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %166, i32 0, i32 3
  %168 = call i32 @spin_lock_init(i32* %167)
  %169 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %5, align 8
  %170 = call i32 @xgene_extd_stats_init(%struct.xgene_enet_pdata* %169)
  store i32 %170, i32* %9, align 4
  %171 = load i32, i32* %9, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %165
  br label %185

174:                                              ; preds = %165
  %175 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %5, align 8
  %176 = call i32 @xgene_enet_napi_add(%struct.xgene_enet_pdata* %175)
  %177 = load %struct.net_device*, %struct.net_device** %4, align 8
  %178 = call i32 @register_netdev(%struct.net_device* %177)
  store i32 %178, i32* %9, align 4
  %179 = load i32, i32* %9, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %184

181:                                              ; preds = %174
  %182 = load %struct.net_device*, %struct.net_device** %4, align 8
  %183 = call i32 @netdev_err(%struct.net_device* %182, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %185

184:                                              ; preds = %174
  store i32 0, i32* %2, align 4
  br label %211

185:                                              ; preds = %181, %173, %162
  %186 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %5, align 8
  %187 = call i32 @xgene_enet_delete_desc_rings(%struct.xgene_enet_pdata* %186)
  br label %188

188:                                              ; preds = %185, %120
  %189 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %5, align 8
  %190 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %189, i32 0, i32 2
  %191 = load i64, i64* %190, align 8
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %196

193:                                              ; preds = %188
  %194 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %5, align 8
  %195 = call i32 @xgene_enet_phy_disconnect(%struct.xgene_enet_pdata* %194)
  br label %206

196:                                              ; preds = %188
  %197 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %5, align 8
  %198 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %197, i32 0, i32 1
  %199 = load i64, i64* %198, align 8
  %200 = call i64 @phy_interface_mode_is_rgmii(i64 %199)
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %205

202:                                              ; preds = %196
  %203 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %5, align 8
  %204 = call i32 @xgene_enet_mdio_remove(%struct.xgene_enet_pdata* %203)
  br label %205

205:                                              ; preds = %202, %196
  br label %206

206:                                              ; preds = %205, %193
  br label %207

207:                                              ; preds = %206, %110, %76, %68
  %208 = load %struct.net_device*, %struct.net_device** %4, align 8
  %209 = call i32 @free_netdev(%struct.net_device* %208)
  %210 = load i32, i32* %9, align 4
  store i32 %210, i32* %2, align 4
  br label %211

211:                                              ; preds = %207, %184, %17
  %212 = load i32, i32* %2, align 4
  ret i32 %212
}

declare dso_local %struct.net_device* @alloc_etherdev_mqs(i32, i32, i32) #1

declare dso_local %struct.xgene_enet_pdata* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, %struct.device*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.xgene_enet_pdata*) #1

declare dso_local i32 @xgene_enet_set_ethtool_ops(%struct.net_device*) #1

declare dso_local %struct.of_device_id* @of_match_device(i32, %struct.device*) #1

declare dso_local i32 @xgene_enet_get_resources(%struct.xgene_enet_pdata*) #1

declare dso_local i32 @xgene_enet_setup_ops(%struct.xgene_enet_pdata*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @dma_coerce_mask_and_coherent(%struct.device*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @xgene_enet_check_phy_handle(%struct.xgene_enet_pdata*) #1

declare dso_local i32 @xgene_enet_init_hw(%struct.xgene_enet_pdata*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, void (%struct.work_struct.1*)*) #1

declare dso_local i64 @phy_interface_mode_is_rgmii(i64) #1

declare dso_local i32 @xgene_enet_mdio_config(%struct.xgene_enet_pdata*) #1

declare dso_local i32 @xgene_extd_stats_init(%struct.xgene_enet_pdata*) #1

declare dso_local i32 @xgene_enet_napi_add(%struct.xgene_enet_pdata*) #1

declare dso_local i32 @register_netdev(%struct.net_device*) #1

declare dso_local i32 @xgene_enet_delete_desc_rings(%struct.xgene_enet_pdata*) #1

declare dso_local i32 @xgene_enet_phy_disconnect(%struct.xgene_enet_pdata*) #1

declare dso_local i32 @xgene_enet_mdio_remove(%struct.xgene_enet_pdata*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
