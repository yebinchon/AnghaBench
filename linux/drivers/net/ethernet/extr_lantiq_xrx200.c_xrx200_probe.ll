; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_lantiq_xrx200.c_xrx200_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_lantiq_xrx200.c_xrx200_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.resource = type { i32 }
%struct.xrx200_priv = type { i32*, %struct.TYPE_8__, %struct.TYPE_7__, i32*, %struct.device*, %struct.net_device* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.net_device = type { i32, i32, i32, i32* }

@ENOMEM = common dso_local global i32 0, align 4
@xrx200_netdev_ops = common dso_local global i32 0, align 4
@ETH_ZLEN = common dso_local global i32 0, align 4
@XRX200_DMA_DATA_LEN = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"failed to get resources\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"failed to request and remap io ranges\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"failed to get clock\0A\00", align 1
@PMAC_RX_IPG_MASK = common dso_local global i32 0, align 4
@PMAC_RX_IPG = common dso_local global i32 0, align 4
@PMAC_HD_CTL_RST = common dso_local global i32 0, align 4
@PMAC_HD_CTL_AST = common dso_local global i32 0, align 4
@PMAC_HD_CTL_RXSH = common dso_local global i32 0, align 4
@PMAC_HD_CTL_AS = common dso_local global i32 0, align 4
@PMAC_HD_CTL_AC = common dso_local global i32 0, align 4
@PMAC_HD_CTL_RC = common dso_local global i32 0, align 4
@PMAC_HD_CTL = common dso_local global i32 0, align 4
@xrx200_poll_rx = common dso_local global i32 0, align 4
@xrx200_tx_housekeeping = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @xrx200_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xrx200_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca %struct.xrx200_priv*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %4, align 8
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = getelementptr inbounds %struct.device, %struct.device* %13, i32 0, i32 0
  %15 = load %struct.device_node*, %struct.device_node** %14, align 8
  store %struct.device_node* %15, %struct.device_node** %5, align 8
  %16 = load %struct.device*, %struct.device** %4, align 8
  %17 = call %struct.net_device* @devm_alloc_etherdev(%struct.device* %16, i32 64)
  store %struct.net_device* %17, %struct.net_device** %8, align 8
  %18 = load %struct.net_device*, %struct.net_device** %8, align 8
  %19 = icmp ne %struct.net_device* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %201

23:                                               ; preds = %1
  %24 = load %struct.net_device*, %struct.net_device** %8, align 8
  %25 = call %struct.xrx200_priv* @netdev_priv(%struct.net_device* %24)
  store %struct.xrx200_priv* %25, %struct.xrx200_priv** %7, align 8
  %26 = load %struct.net_device*, %struct.net_device** %8, align 8
  %27 = load %struct.xrx200_priv*, %struct.xrx200_priv** %7, align 8
  %28 = getelementptr inbounds %struct.xrx200_priv, %struct.xrx200_priv* %27, i32 0, i32 5
  store %struct.net_device* %26, %struct.net_device** %28, align 8
  %29 = load %struct.device*, %struct.device** %4, align 8
  %30 = load %struct.xrx200_priv*, %struct.xrx200_priv** %7, align 8
  %31 = getelementptr inbounds %struct.xrx200_priv, %struct.xrx200_priv* %30, i32 0, i32 4
  store %struct.device* %29, %struct.device** %31, align 8
  %32 = load %struct.net_device*, %struct.net_device** %8, align 8
  %33 = getelementptr inbounds %struct.net_device, %struct.net_device* %32, i32 0, i32 3
  store i32* @xrx200_netdev_ops, i32** %33, align 8
  %34 = load %struct.net_device*, %struct.net_device** %8, align 8
  %35 = load %struct.device*, %struct.device** %4, align 8
  %36 = call i32 @SET_NETDEV_DEV(%struct.net_device* %34, %struct.device* %35)
  %37 = load i32, i32* @ETH_ZLEN, align 4
  %38 = load %struct.net_device*, %struct.net_device** %8, align 8
  %39 = getelementptr inbounds %struct.net_device, %struct.net_device* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 8
  %40 = load i32, i32* @XRX200_DMA_DATA_LEN, align 4
  %41 = load %struct.net_device*, %struct.net_device** %8, align 8
  %42 = getelementptr inbounds %struct.net_device, %struct.net_device* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %44 = load i32, i32* @IORESOURCE_MEM, align 4
  %45 = call %struct.resource* @platform_get_resource(%struct.platform_device* %43, i32 %44, i32 0)
  store %struct.resource* %45, %struct.resource** %6, align 8
  %46 = load %struct.resource*, %struct.resource** %6, align 8
  %47 = icmp ne %struct.resource* %46, null
  br i1 %47, label %53, label %48

48:                                               ; preds = %23
  %49 = load %struct.device*, %struct.device** %4, align 8
  %50 = call i32 @dev_err(%struct.device* %49, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %51 = load i32, i32* @ENOENT, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %2, align 4
  br label %201

53:                                               ; preds = %23
  %54 = load %struct.device*, %struct.device** %4, align 8
  %55 = load %struct.resource*, %struct.resource** %6, align 8
  %56 = call i32* @devm_ioremap_resource(%struct.device* %54, %struct.resource* %55)
  %57 = load %struct.xrx200_priv*, %struct.xrx200_priv** %7, align 8
  %58 = getelementptr inbounds %struct.xrx200_priv, %struct.xrx200_priv* %57, i32 0, i32 3
  store i32* %56, i32** %58, align 8
  %59 = load %struct.xrx200_priv*, %struct.xrx200_priv** %7, align 8
  %60 = getelementptr inbounds %struct.xrx200_priv, %struct.xrx200_priv* %59, i32 0, i32 3
  %61 = load i32*, i32** %60, align 8
  %62 = call i64 @IS_ERR(i32* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %53
  %65 = load %struct.device*, %struct.device** %4, align 8
  %66 = call i32 @dev_err(%struct.device* %65, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %67 = load %struct.xrx200_priv*, %struct.xrx200_priv** %7, align 8
  %68 = getelementptr inbounds %struct.xrx200_priv, %struct.xrx200_priv* %67, i32 0, i32 3
  %69 = load i32*, i32** %68, align 8
  %70 = call i32 @PTR_ERR(i32* %69)
  store i32 %70, i32* %2, align 4
  br label %201

71:                                               ; preds = %53
  %72 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %73 = call i8* @platform_get_irq_byname(%struct.platform_device* %72, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %74 = ptrtoint i8* %73 to i64
  %75 = load %struct.xrx200_priv*, %struct.xrx200_priv** %7, align 8
  %76 = getelementptr inbounds %struct.xrx200_priv, %struct.xrx200_priv* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  store i64 %74, i64* %78, align 8
  %79 = load %struct.xrx200_priv*, %struct.xrx200_priv** %7, align 8
  %80 = getelementptr inbounds %struct.xrx200_priv, %struct.xrx200_priv* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp slt i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %71
  %86 = load i32, i32* @ENOENT, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %2, align 4
  br label %201

88:                                               ; preds = %71
  %89 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %90 = call i8* @platform_get_irq_byname(%struct.platform_device* %89, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %91 = ptrtoint i8* %90 to i64
  %92 = load %struct.xrx200_priv*, %struct.xrx200_priv** %7, align 8
  %93 = getelementptr inbounds %struct.xrx200_priv, %struct.xrx200_priv* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  store i64 %91, i64* %95, align 8
  %96 = load %struct.xrx200_priv*, %struct.xrx200_priv** %7, align 8
  %97 = getelementptr inbounds %struct.xrx200_priv, %struct.xrx200_priv* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp slt i64 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %88
  %103 = load i32, i32* @ENOENT, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %2, align 4
  br label %201

105:                                              ; preds = %88
  %106 = load %struct.device*, %struct.device** %4, align 8
  %107 = call i32* @devm_clk_get(%struct.device* %106, i32* null)
  %108 = load %struct.xrx200_priv*, %struct.xrx200_priv** %7, align 8
  %109 = getelementptr inbounds %struct.xrx200_priv, %struct.xrx200_priv* %108, i32 0, i32 0
  store i32* %107, i32** %109, align 8
  %110 = load %struct.xrx200_priv*, %struct.xrx200_priv** %7, align 8
  %111 = getelementptr inbounds %struct.xrx200_priv, %struct.xrx200_priv* %110, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = call i64 @IS_ERR(i32* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %122

115:                                              ; preds = %105
  %116 = load %struct.device*, %struct.device** %4, align 8
  %117 = call i32 @dev_err(%struct.device* %116, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %118 = load %struct.xrx200_priv*, %struct.xrx200_priv** %7, align 8
  %119 = getelementptr inbounds %struct.xrx200_priv, %struct.xrx200_priv* %118, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = call i32 @PTR_ERR(i32* %120)
  store i32 %121, i32* %2, align 4
  br label %201

122:                                              ; preds = %105
  %123 = load %struct.device_node*, %struct.device_node** %5, align 8
  %124 = call i32* @of_get_mac_address(%struct.device_node* %123)
  store i32* %124, i32** %9, align 8
  %125 = load i32*, i32** %9, align 8
  %126 = call i64 @IS_ERR(i32* %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %134, label %128

128:                                              ; preds = %122
  %129 = load %struct.net_device*, %struct.net_device** %8, align 8
  %130 = getelementptr inbounds %struct.net_device, %struct.net_device* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load i32*, i32** %9, align 8
  %133 = call i32 @ether_addr_copy(i32 %131, i32* %132)
  br label %137

134:                                              ; preds = %122
  %135 = load %struct.net_device*, %struct.net_device** %8, align 8
  %136 = call i32 @eth_hw_addr_random(%struct.net_device* %135)
  br label %137

137:                                              ; preds = %134, %128
  %138 = load %struct.xrx200_priv*, %struct.xrx200_priv** %7, align 8
  %139 = call i32 @xrx200_dma_init(%struct.xrx200_priv* %138)
  store i32 %139, i32* %10, align 4
  %140 = load i32, i32* %10, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %137
  %143 = load i32, i32* %10, align 4
  store i32 %143, i32* %2, align 4
  br label %201

144:                                              ; preds = %137
  %145 = load %struct.xrx200_priv*, %struct.xrx200_priv** %7, align 8
  %146 = getelementptr inbounds %struct.xrx200_priv, %struct.xrx200_priv* %145, i32 0, i32 0
  %147 = load i32*, i32** %146, align 8
  %148 = call i32 @clk_prepare_enable(i32* %147)
  store i32 %148, i32* %10, align 4
  %149 = load i32, i32* %10, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %144
  br label %197

152:                                              ; preds = %144
  %153 = load %struct.xrx200_priv*, %struct.xrx200_priv** %7, align 8
  %154 = load i32, i32* @PMAC_RX_IPG_MASK, align 4
  %155 = load i32, i32* @PMAC_RX_IPG, align 4
  %156 = call i32 @xrx200_pmac_mask(%struct.xrx200_priv* %153, i32 %154, i32 11, i32 %155)
  %157 = load %struct.xrx200_priv*, %struct.xrx200_priv** %7, align 8
  %158 = load i32, i32* @PMAC_HD_CTL_RST, align 4
  %159 = load i32, i32* @PMAC_HD_CTL_AST, align 4
  %160 = or i32 %158, %159
  %161 = load i32, i32* @PMAC_HD_CTL_RXSH, align 4
  %162 = or i32 %160, %161
  %163 = load i32, i32* @PMAC_HD_CTL_AS, align 4
  %164 = or i32 %162, %163
  %165 = load i32, i32* @PMAC_HD_CTL_AC, align 4
  %166 = or i32 %164, %165
  %167 = load i32, i32* @PMAC_HD_CTL_RC, align 4
  %168 = or i32 %166, %167
  %169 = load i32, i32* @PMAC_HD_CTL, align 4
  %170 = call i32 @xrx200_pmac_mask(%struct.xrx200_priv* %157, i32 0, i32 %168, i32 %169)
  %171 = load %struct.net_device*, %struct.net_device** %8, align 8
  %172 = load %struct.xrx200_priv*, %struct.xrx200_priv** %7, align 8
  %173 = getelementptr inbounds %struct.xrx200_priv, %struct.xrx200_priv* %172, i32 0, i32 2
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i32 0, i32 0
  %175 = load i32, i32* @xrx200_poll_rx, align 4
  %176 = call i32 @netif_napi_add(%struct.net_device* %171, i32* %174, i32 %175, i32 32)
  %177 = load %struct.net_device*, %struct.net_device** %8, align 8
  %178 = load %struct.xrx200_priv*, %struct.xrx200_priv** %7, align 8
  %179 = getelementptr inbounds %struct.xrx200_priv, %struct.xrx200_priv* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %179, i32 0, i32 0
  %181 = load i32, i32* @xrx200_tx_housekeeping, align 4
  %182 = call i32 @netif_napi_add(%struct.net_device* %177, i32* %180, i32 %181, i32 32)
  %183 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %184 = load %struct.xrx200_priv*, %struct.xrx200_priv** %7, align 8
  %185 = call i32 @platform_set_drvdata(%struct.platform_device* %183, %struct.xrx200_priv* %184)
  %186 = load %struct.net_device*, %struct.net_device** %8, align 8
  %187 = call i32 @register_netdev(%struct.net_device* %186)
  store i32 %187, i32* %10, align 4
  %188 = load i32, i32* %10, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %191

190:                                              ; preds = %152
  br label %192

191:                                              ; preds = %152
  store i32 0, i32* %2, align 4
  br label %201

192:                                              ; preds = %190
  %193 = load %struct.xrx200_priv*, %struct.xrx200_priv** %7, align 8
  %194 = getelementptr inbounds %struct.xrx200_priv, %struct.xrx200_priv* %193, i32 0, i32 0
  %195 = load i32*, i32** %194, align 8
  %196 = call i32 @clk_disable_unprepare(i32* %195)
  br label %197

197:                                              ; preds = %192, %151
  %198 = load %struct.xrx200_priv*, %struct.xrx200_priv** %7, align 8
  %199 = call i32 @xrx200_hw_cleanup(%struct.xrx200_priv* %198)
  %200 = load i32, i32* %10, align 4
  store i32 %200, i32* %2, align 4
  br label %201

201:                                              ; preds = %197, %191, %142, %115, %102, %85, %64, %48, %20
  %202 = load i32, i32* %2, align 4
  ret i32 %202
}

declare dso_local %struct.net_device* @devm_alloc_etherdev(%struct.device*, i32) #1

declare dso_local %struct.xrx200_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, %struct.device*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32* @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i8* @platform_get_irq_byname(%struct.platform_device*, i8*) #1

declare dso_local i32* @devm_clk_get(%struct.device*, i32*) #1

declare dso_local i32* @of_get_mac_address(%struct.device_node*) #1

declare dso_local i32 @ether_addr_copy(i32, i32*) #1

declare dso_local i32 @eth_hw_addr_random(%struct.net_device*) #1

declare dso_local i32 @xrx200_dma_init(%struct.xrx200_priv*) #1

declare dso_local i32 @clk_prepare_enable(i32*) #1

declare dso_local i32 @xrx200_pmac_mask(%struct.xrx200_priv*, i32, i32, i32) #1

declare dso_local i32 @netif_napi_add(%struct.net_device*, i32*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.xrx200_priv*) #1

declare dso_local i32 @register_netdev(%struct.net_device*) #1

declare dso_local i32 @clk_disable_unprepare(i32*) #1

declare dso_local i32 @xrx200_hw_cleanup(%struct.xrx200_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
