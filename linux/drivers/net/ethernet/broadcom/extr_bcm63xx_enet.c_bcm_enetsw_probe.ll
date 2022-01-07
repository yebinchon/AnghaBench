; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bcm63xx_enet.c_bcm_enetsw_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bcm63xx_enet.c_bcm_enetsw_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.bcm_enet_priv = type { i32, i32, i32, i32, i32, %struct.net_device*, %struct.platform_device*, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.net_device = type { i32*, i32*, i32, i32 }
%struct.bcm63xx_enetsw_platform_data = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.resource = type { i32 }

@bcm_enet_shared_base = common dso_local global i32* null, align 8
@EPROBE_DEFER = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BCMENET_DEF_RX_DESC = common dso_local global i32 0, align 4
@BCMENET_DEF_TX_DESC = common dso_local global i32 0, align 4
@BCMENETSW_DMA_MAXBURST = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"enetsw\00", align 1
@bcm_enet_refill_rx_timer = common dso_local global i32 0, align 4
@bcm_enetsw_ops = common dso_local global i32 0, align 4
@bcm_enet_poll = common dso_local global i32 0, align 4
@bcm_enetsw_ethtool_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @bcm_enetsw_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_enetsw_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.bcm_enet_priv*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.bcm63xx_enetsw_platform_data*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = load i32*, i32** @bcm_enet_shared_base, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @EPROBE_DEFER, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %211

18:                                               ; preds = %1
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = load i32, i32* @IORESOURCE_MEM, align 4
  %21 = call %struct.resource* @platform_get_resource(%struct.platform_device* %19, i32 %20, i32 0)
  store %struct.resource* %21, %struct.resource** %7, align 8
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = call i32 @platform_get_irq(%struct.platform_device* %22, i32 0)
  store i32 %23, i32* %9, align 4
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = call i32 @platform_get_irq(%struct.platform_device* %24, i32 1)
  store i32 %25, i32* %10, align 4
  %26 = load %struct.resource*, %struct.resource** %7, align 8
  %27 = icmp ne %struct.resource* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %18
  %29 = load i32, i32* %9, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %28, %18
  %32 = load i32, i32* @ENODEV, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %211

34:                                               ; preds = %28
  store i32 0, i32* %8, align 4
  %35 = call %struct.net_device* @alloc_etherdev(i32 104)
  store %struct.net_device* %35, %struct.net_device** %5, align 8
  %36 = load %struct.net_device*, %struct.net_device** %5, align 8
  %37 = icmp ne %struct.net_device* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %34
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %211

41:                                               ; preds = %34
  %42 = load %struct.net_device*, %struct.net_device** %5, align 8
  %43 = call %struct.bcm_enet_priv* @netdev_priv(%struct.net_device* %42)
  store %struct.bcm_enet_priv* %43, %struct.bcm_enet_priv** %4, align 8
  %44 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %45 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %44, i32 0, i32 0
  store i32 1, i32* %45, align 8
  %46 = load i32, i32* %9, align 4
  %47 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %48 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* %10, align 4
  %50 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %51 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 8
  %52 = load i32, i32* @BCMENET_DEF_RX_DESC, align 4
  %53 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %54 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %53, i32 0, i32 21
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* @BCMENET_DEF_TX_DESC, align 4
  %56 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %57 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %56, i32 0, i32 20
  store i32 %55, i32* %57, align 8
  %58 = load i32, i32* @BCMENETSW_DMA_MAXBURST, align 4
  %59 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %60 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %59, i32 0, i32 19
  store i32 %58, i32* %60, align 4
  %61 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %62 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %61, i32 0, i32 0
  %63 = call %struct.bcm63xx_enetsw_platform_data* @dev_get_platdata(i32* %62)
  store %struct.bcm63xx_enetsw_platform_data* %63, %struct.bcm63xx_enetsw_platform_data** %6, align 8
  %64 = load %struct.bcm63xx_enetsw_platform_data*, %struct.bcm63xx_enetsw_platform_data** %6, align 8
  %65 = icmp ne %struct.bcm63xx_enetsw_platform_data* %64, null
  br i1 %65, label %66, label %107

66:                                               ; preds = %41
  %67 = load %struct.net_device*, %struct.net_device** %5, align 8
  %68 = getelementptr inbounds %struct.net_device, %struct.net_device* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.bcm63xx_enetsw_platform_data*, %struct.bcm63xx_enetsw_platform_data** %6, align 8
  %71 = getelementptr inbounds %struct.bcm63xx_enetsw_platform_data, %struct.bcm63xx_enetsw_platform_data* %70, i32 0, i32 6
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @ETH_ALEN, align 4
  %74 = call i32 @memcpy(i32 %69, i32 %72, i32 %73)
  %75 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %76 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %75, i32 0, i32 18
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.bcm63xx_enetsw_platform_data*, %struct.bcm63xx_enetsw_platform_data** %6, align 8
  %79 = getelementptr inbounds %struct.bcm63xx_enetsw_platform_data, %struct.bcm63xx_enetsw_platform_data* %78, i32 0, i32 5
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @memcpy(i32 %77, i32 %80, i32 4)
  %82 = load %struct.bcm63xx_enetsw_platform_data*, %struct.bcm63xx_enetsw_platform_data** %6, align 8
  %83 = getelementptr inbounds %struct.bcm63xx_enetsw_platform_data, %struct.bcm63xx_enetsw_platform_data* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %86 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %85, i32 0, i32 17
  store i32 %84, i32* %86, align 4
  %87 = load %struct.bcm63xx_enetsw_platform_data*, %struct.bcm63xx_enetsw_platform_data** %6, align 8
  %88 = getelementptr inbounds %struct.bcm63xx_enetsw_platform_data, %struct.bcm63xx_enetsw_platform_data* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %91 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %90, i32 0, i32 16
  store i32 %89, i32* %91, align 8
  %92 = load %struct.bcm63xx_enetsw_platform_data*, %struct.bcm63xx_enetsw_platform_data** %6, align 8
  %93 = getelementptr inbounds %struct.bcm63xx_enetsw_platform_data, %struct.bcm63xx_enetsw_platform_data* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %96 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %95, i32 0, i32 15
  store i32 %94, i32* %96, align 4
  %97 = load %struct.bcm63xx_enetsw_platform_data*, %struct.bcm63xx_enetsw_platform_data** %6, align 8
  %98 = getelementptr inbounds %struct.bcm63xx_enetsw_platform_data, %struct.bcm63xx_enetsw_platform_data* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %101 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %100, i32 0, i32 14
  store i32 %99, i32* %101, align 8
  %102 = load %struct.bcm63xx_enetsw_platform_data*, %struct.bcm63xx_enetsw_platform_data** %6, align 8
  %103 = getelementptr inbounds %struct.bcm63xx_enetsw_platform_data, %struct.bcm63xx_enetsw_platform_data* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %106 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %105, i32 0, i32 13
  store i32 %104, i32* %106, align 4
  br label %107

107:                                              ; preds = %66, %41
  %108 = load %struct.net_device*, %struct.net_device** %5, align 8
  %109 = load %struct.net_device*, %struct.net_device** %5, align 8
  %110 = getelementptr inbounds %struct.net_device, %struct.net_device* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @bcm_enet_change_mtu(%struct.net_device* %108, i32 %111)
  store i32 %112, i32* %8, align 4
  %113 = load i32, i32* %8, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %107
  br label %207

116:                                              ; preds = %107
  %117 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %118 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %117, i32 0, i32 0
  %119 = load %struct.resource*, %struct.resource** %7, align 8
  %120 = call i32 @devm_ioremap_resource(i32* %118, %struct.resource* %119)
  %121 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %122 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %121, i32 0, i32 12
  store i32 %120, i32* %122, align 8
  %123 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %124 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %123, i32 0, i32 12
  %125 = load i32, i32* %124, align 8
  %126 = call i64 @IS_ERR(i32 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %116
  %129 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %130 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %129, i32 0, i32 12
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @PTR_ERR(i32 %131)
  store i32 %132, i32* %8, align 4
  br label %207

133:                                              ; preds = %116
  %134 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %135 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %134, i32 0, i32 0
  %136 = call i32 @devm_clk_get(i32* %135, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %137 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %138 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %137, i32 0, i32 4
  store i32 %136, i32* %138, align 8
  %139 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %140 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %139, i32 0, i32 4
  %141 = load i32, i32* %140, align 8
  %142 = call i64 @IS_ERR(i32 %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %149

144:                                              ; preds = %133
  %145 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %146 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %145, i32 0, i32 4
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @PTR_ERR(i32 %147)
  store i32 %148, i32* %8, align 4
  br label %207

149:                                              ; preds = %133
  %150 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %151 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %150, i32 0, i32 4
  %152 = load i32, i32* %151, align 8
  %153 = call i32 @clk_prepare_enable(i32 %152)
  store i32 %153, i32* %8, align 4
  %154 = load i32, i32* %8, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %149
  br label %207

157:                                              ; preds = %149
  %158 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %159 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %158, i32 0, i32 11
  store i64 0, i64* %159, align 8
  %160 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %161 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %160, i32 0, i32 3
  store i32 1, i32* %161, align 4
  %162 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %163 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %162, i32 0, i32 10
  %164 = call i32 @spin_lock_init(i32* %163)
  %165 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %166 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %165, i32 0, i32 9
  %167 = load i32, i32* @bcm_enet_refill_rx_timer, align 4
  %168 = call i32 @timer_setup(i32* %166, i32 %167, i32 0)
  %169 = load %struct.net_device*, %struct.net_device** %5, align 8
  %170 = getelementptr inbounds %struct.net_device, %struct.net_device* %169, i32 0, i32 1
  store i32* @bcm_enetsw_ops, i32** %170, align 8
  %171 = load %struct.net_device*, %struct.net_device** %5, align 8
  %172 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %173 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %172, i32 0, i32 8
  %174 = load i32, i32* @bcm_enet_poll, align 4
  %175 = call i32 @netif_napi_add(%struct.net_device* %171, i32* %173, i32 %174, i32 16)
  %176 = load %struct.net_device*, %struct.net_device** %5, align 8
  %177 = getelementptr inbounds %struct.net_device, %struct.net_device* %176, i32 0, i32 0
  store i32* @bcm_enetsw_ethtool_ops, i32** %177, align 8
  %178 = load %struct.net_device*, %struct.net_device** %5, align 8
  %179 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %180 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %179, i32 0, i32 0
  %181 = call i32 @SET_NETDEV_DEV(%struct.net_device* %178, i32* %180)
  %182 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %183 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %182, i32 0, i32 7
  %184 = call i32 @spin_lock_init(i32* %183)
  %185 = load %struct.net_device*, %struct.net_device** %5, align 8
  %186 = call i32 @register_netdev(%struct.net_device* %185)
  store i32 %186, i32* %8, align 4
  %187 = load i32, i32* %8, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %190

189:                                              ; preds = %157
  br label %202

190:                                              ; preds = %157
  %191 = load %struct.net_device*, %struct.net_device** %5, align 8
  %192 = call i32 @netif_carrier_off(%struct.net_device* %191)
  %193 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %194 = load %struct.net_device*, %struct.net_device** %5, align 8
  %195 = call i32 @platform_set_drvdata(%struct.platform_device* %193, %struct.net_device* %194)
  %196 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %197 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %198 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %197, i32 0, i32 6
  store %struct.platform_device* %196, %struct.platform_device** %198, align 8
  %199 = load %struct.net_device*, %struct.net_device** %5, align 8
  %200 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %201 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %200, i32 0, i32 5
  store %struct.net_device* %199, %struct.net_device** %201, align 8
  store i32 0, i32* %2, align 4
  br label %211

202:                                              ; preds = %189
  %203 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %204 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %203, i32 0, i32 4
  %205 = load i32, i32* %204, align 8
  %206 = call i32 @clk_disable_unprepare(i32 %205)
  br label %207

207:                                              ; preds = %202, %156, %144, %128, %115
  %208 = load %struct.net_device*, %struct.net_device** %5, align 8
  %209 = call i32 @free_netdev(%struct.net_device* %208)
  %210 = load i32, i32* %8, align 4
  store i32 %210, i32* %2, align 4
  br label %211

211:                                              ; preds = %207, %190, %38, %31, %15
  %212 = load i32, i32* %2, align 4
  ret i32 %212
}

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local %struct.net_device* @alloc_etherdev(i32) #1

declare dso_local %struct.bcm_enet_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.bcm63xx_enetsw_platform_data* @dev_get_platdata(i32*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @bcm_enet_change_mtu(%struct.net_device*, i32) #1

declare dso_local i32 @devm_ioremap_resource(i32*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_clk_get(i32*, i8*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @netif_napi_add(%struct.net_device*, i32*, i32, i32) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, i32*) #1

declare dso_local i32 @register_netdev(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.net_device*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
