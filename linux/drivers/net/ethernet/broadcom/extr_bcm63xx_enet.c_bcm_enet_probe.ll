; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bcm63xx_enet.c_bcm_enet_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bcm63xx_enet.c_bcm_enet_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i8*, i32, i32 }
%struct.bcm_enet_priv = type { i32, i32, i32, i32*, i32*, %struct.mii_bus*, %struct.net_device*, %struct.platform_device*, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32 }
%struct.mii_bus = type { i8*, i32, i32*, i32, i32, i32, %struct.bcm_enet_priv*, i32* }
%struct.net_device = type { i64, i64, i32*, i32*, i32, i32, i32 }
%struct.bcm63xx_enet_platform_data = type { i32, i64 (%struct.net_device*, i32, i32, i32)*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32 }
%struct.resource = type { i32 }

@bcm_enet_shared_base = common dso_local global i32* null, align 8
@EPROBE_DEFER = common dso_local global i32 0, align 4
@IORESOURCE_IRQ = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BCMENET_DMA_MAXBURST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"enet\00", align 1
@BCMENET_DEF_RX_DESC = common dso_local global i32 0, align 4
@BCMENET_DEF_TX_DESC = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"ephy\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"bcm63xx_enet MII bus\00", align 1
@bcm_enet_mdio_read_phylib = common dso_local global i32 0, align 4
@bcm_enet_mdio_write_phylib = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"%s-%d\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"unable to register mdio bus\0A\00", align 1
@bcm_enet_mdio_read_mii = common dso_local global i32 0, align 4
@bcm_enet_mdio_write_mii = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [30 x i8] c"unable to configure mdio bus\0A\00", align 1
@bcm_enet_refill_rx_timer = common dso_local global i32 0, align 4
@bcm_enet_update_mib_counters_defer = common dso_local global i32 0, align 4
@ENET_MIB_REG_COUNT = common dso_local global i32 0, align 4
@bcm_enet_ops = common dso_local global i32 0, align 4
@bcm_enet_poll = common dso_local global i32 0, align 4
@bcm_enet_ethtool_ops = common dso_local global i32 0, align 4
@ETH_ZLEN = common dso_local global i64 0, align 8
@ETH_HLEN = common dso_local global i64 0, align 8
@BCMENET_MAX_MTU = common dso_local global i64 0, align 8
@VLAN_ETH_HLEN = common dso_local global i64 0, align 8
@ENET_MIISC_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @bcm_enet_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_enet_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.bcm_enet_priv*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.bcm63xx_enet_platform_data*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca %struct.resource*, align 8
  %9 = alloca %struct.resource*, align 8
  %10 = alloca %struct.mii_bus*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %13 = load i32*, i32** @bcm_enet_shared_base, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @EPROBE_DEFER, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %477

20:                                               ; preds = %1
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = load i32, i32* @IORESOURCE_IRQ, align 4
  %23 = call %struct.resource* @platform_get_resource(%struct.platform_device* %21, i32 %22, i32 0)
  store %struct.resource* %23, %struct.resource** %7, align 8
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = load i32, i32* @IORESOURCE_IRQ, align 4
  %26 = call %struct.resource* @platform_get_resource(%struct.platform_device* %24, i32 %25, i32 1)
  store %struct.resource* %26, %struct.resource** %8, align 8
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = load i32, i32* @IORESOURCE_IRQ, align 4
  %29 = call %struct.resource* @platform_get_resource(%struct.platform_device* %27, i32 %28, i32 2)
  store %struct.resource* %29, %struct.resource** %9, align 8
  %30 = load %struct.resource*, %struct.resource** %7, align 8
  %31 = icmp ne %struct.resource* %30, null
  br i1 %31, label %32, label %38

32:                                               ; preds = %20
  %33 = load %struct.resource*, %struct.resource** %8, align 8
  %34 = icmp ne %struct.resource* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load %struct.resource*, %struct.resource** %9, align 8
  %37 = icmp ne %struct.resource* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %35, %32, %20
  %39 = load i32, i32* @ENODEV, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %477

41:                                               ; preds = %35
  store i32 0, i32* %12, align 4
  %42 = call %struct.net_device* @alloc_etherdev(i32 184)
  store %struct.net_device* %42, %struct.net_device** %5, align 8
  %43 = load %struct.net_device*, %struct.net_device** %5, align 8
  %44 = icmp ne %struct.net_device* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %41
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %2, align 4
  br label %477

48:                                               ; preds = %41
  %49 = load %struct.net_device*, %struct.net_device** %5, align 8
  %50 = call %struct.bcm_enet_priv* @netdev_priv(%struct.net_device* %49)
  store %struct.bcm_enet_priv* %50, %struct.bcm_enet_priv** %4, align 8
  %51 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %52 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %51, i32 0, i32 0
  store i32 0, i32* %52, align 8
  %53 = load i32, i32* @BCMENET_DMA_MAXBURST, align 4
  %54 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %55 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %54, i32 0, i32 34
  store i32 %53, i32* %55, align 8
  %56 = load %struct.net_device*, %struct.net_device** %5, align 8
  %57 = load %struct.net_device*, %struct.net_device** %5, align 8
  %58 = getelementptr inbounds %struct.net_device, %struct.net_device* %57, i32 0, i32 6
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @bcm_enet_change_mtu(%struct.net_device* %56, i32 %59)
  store i32 %60, i32* %12, align 4
  %61 = load i32, i32* %12, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %48
  br label %473

64:                                               ; preds = %48
  %65 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %66 = call i32* @devm_platform_ioremap_resource(%struct.platform_device* %65, i32 0)
  %67 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %68 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %67, i32 0, i32 33
  store i32* %66, i32** %68, align 8
  %69 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %70 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %69, i32 0, i32 33
  %71 = load i32*, i32** %70, align 8
  %72 = call i64 @IS_ERR(i32* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %64
  %75 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %76 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %75, i32 0, i32 33
  %77 = load i32*, i32** %76, align 8
  %78 = call i32 @PTR_ERR(i32* %77)
  store i32 %78, i32* %12, align 4
  br label %473

79:                                               ; preds = %64
  %80 = load %struct.resource*, %struct.resource** %7, align 8
  %81 = getelementptr inbounds %struct.resource, %struct.resource* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %84 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %83, i32 0, i32 32
  store i32 %82, i32* %84, align 8
  %85 = load %struct.net_device*, %struct.net_device** %5, align 8
  %86 = getelementptr inbounds %struct.net_device, %struct.net_device* %85, i32 0, i32 5
  store i32 %82, i32* %86, align 4
  %87 = load %struct.resource*, %struct.resource** %8, align 8
  %88 = getelementptr inbounds %struct.resource, %struct.resource* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %91 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %90, i32 0, i32 31
  store i32 %89, i32* %91, align 4
  %92 = load %struct.resource*, %struct.resource** %9, align 8
  %93 = getelementptr inbounds %struct.resource, %struct.resource* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %96 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %95, i32 0, i32 30
  store i32 %94, i32* %96, align 8
  %97 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %98 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %97, i32 0, i32 2
  %99 = call i8* @devm_clk_get(i32* %98, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %100 = bitcast i8* %99 to i32*
  %101 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %102 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %101, i32 0, i32 3
  store i32* %100, i32** %102, align 8
  %103 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %104 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %103, i32 0, i32 3
  %105 = load i32*, i32** %104, align 8
  %106 = call i64 @IS_ERR(i32* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %79
  %109 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %110 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %109, i32 0, i32 3
  %111 = load i32*, i32** %110, align 8
  %112 = call i32 @PTR_ERR(i32* %111)
  store i32 %112, i32* %12, align 4
  br label %473

113:                                              ; preds = %79
  %114 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %115 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %114, i32 0, i32 3
  %116 = load i32*, i32** %115, align 8
  %117 = call i32 @clk_prepare_enable(i32* %116)
  store i32 %117, i32* %12, align 4
  %118 = load i32, i32* %12, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %113
  br label %473

121:                                              ; preds = %113
  %122 = load i32, i32* @BCMENET_DEF_RX_DESC, align 4
  %123 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %124 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %123, i32 0, i32 29
  store i32 %122, i32* %124, align 4
  %125 = load i32, i32* @BCMENET_DEF_TX_DESC, align 4
  %126 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %127 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %126, i32 0, i32 28
  store i32 %125, i32* %127, align 8
  %128 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %129 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %128, i32 0, i32 2
  %130 = call %struct.bcm63xx_enet_platform_data* @dev_get_platdata(i32* %129)
  store %struct.bcm63xx_enet_platform_data* %130, %struct.bcm63xx_enet_platform_data** %6, align 8
  %131 = load %struct.bcm63xx_enet_platform_data*, %struct.bcm63xx_enet_platform_data** %6, align 8
  %132 = icmp ne %struct.bcm63xx_enet_platform_data* %131, null
  br i1 %132, label %133, label %230

133:                                              ; preds = %121
  %134 = load %struct.net_device*, %struct.net_device** %5, align 8
  %135 = getelementptr inbounds %struct.net_device, %struct.net_device* %134, i32 0, i32 4
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.bcm63xx_enet_platform_data*, %struct.bcm63xx_enet_platform_data** %6, align 8
  %138 = getelementptr inbounds %struct.bcm63xx_enet_platform_data, %struct.bcm63xx_enet_platform_data* %137, i32 0, i32 18
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* @ETH_ALEN, align 4
  %141 = call i32 @memcpy(i32 %136, i32 %139, i32 %140)
  %142 = load %struct.bcm63xx_enet_platform_data*, %struct.bcm63xx_enet_platform_data** %6, align 8
  %143 = getelementptr inbounds %struct.bcm63xx_enet_platform_data, %struct.bcm63xx_enet_platform_data* %142, i32 0, i32 17
  %144 = load i64, i64* %143, align 8
  %145 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %146 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %145, i32 0, i32 15
  store i64 %144, i64* %146, align 8
  %147 = load %struct.bcm63xx_enet_platform_data*, %struct.bcm63xx_enet_platform_data** %6, align 8
  %148 = getelementptr inbounds %struct.bcm63xx_enet_platform_data, %struct.bcm63xx_enet_platform_data* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %151 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %150, i32 0, i32 1
  store i32 %149, i32* %151, align 4
  %152 = load %struct.bcm63xx_enet_platform_data*, %struct.bcm63xx_enet_platform_data** %6, align 8
  %153 = getelementptr inbounds %struct.bcm63xx_enet_platform_data, %struct.bcm63xx_enet_platform_data* %152, i32 0, i32 16
  %154 = load i64, i64* %153, align 8
  %155 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %156 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %155, i32 0, i32 14
  store i64 %154, i64* %156, align 8
  %157 = load %struct.bcm63xx_enet_platform_data*, %struct.bcm63xx_enet_platform_data** %6, align 8
  %158 = getelementptr inbounds %struct.bcm63xx_enet_platform_data, %struct.bcm63xx_enet_platform_data* %157, i32 0, i32 15
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %161 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %160, i32 0, i32 13
  store i32 %159, i32* %161, align 4
  %162 = load %struct.bcm63xx_enet_platform_data*, %struct.bcm63xx_enet_platform_data** %6, align 8
  %163 = getelementptr inbounds %struct.bcm63xx_enet_platform_data, %struct.bcm63xx_enet_platform_data* %162, i32 0, i32 14
  %164 = load i32, i32* %163, align 8
  %165 = icmp ne i32 %164, 0
  %166 = xor i1 %165, true
  %167 = zext i1 %166 to i32
  %168 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %169 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %168, i32 0, i32 2
  store i32 %167, i32* %169, align 8
  %170 = load %struct.bcm63xx_enet_platform_data*, %struct.bcm63xx_enet_platform_data** %6, align 8
  %171 = getelementptr inbounds %struct.bcm63xx_enet_platform_data, %struct.bcm63xx_enet_platform_data* %170, i32 0, i32 13
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %174 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %173, i32 0, i32 27
  store i32 %172, i32* %174, align 4
  %175 = load %struct.bcm63xx_enet_platform_data*, %struct.bcm63xx_enet_platform_data** %6, align 8
  %176 = getelementptr inbounds %struct.bcm63xx_enet_platform_data, %struct.bcm63xx_enet_platform_data* %175, i32 0, i32 12
  %177 = load i32, i32* %176, align 8
  %178 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %179 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %178, i32 0, i32 26
  store i32 %177, i32* %179, align 8
  %180 = load %struct.bcm63xx_enet_platform_data*, %struct.bcm63xx_enet_platform_data** %6, align 8
  %181 = getelementptr inbounds %struct.bcm63xx_enet_platform_data, %struct.bcm63xx_enet_platform_data* %180, i32 0, i32 11
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %184 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %183, i32 0, i32 25
  store i32 %182, i32* %184, align 4
  %185 = load %struct.bcm63xx_enet_platform_data*, %struct.bcm63xx_enet_platform_data** %6, align 8
  %186 = getelementptr inbounds %struct.bcm63xx_enet_platform_data, %struct.bcm63xx_enet_platform_data* %185, i32 0, i32 10
  %187 = load i32, i32* %186, align 8
  %188 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %189 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %188, i32 0, i32 24
  store i32 %187, i32* %189, align 8
  %190 = load %struct.bcm63xx_enet_platform_data*, %struct.bcm63xx_enet_platform_data** %6, align 8
  %191 = getelementptr inbounds %struct.bcm63xx_enet_platform_data, %struct.bcm63xx_enet_platform_data* %190, i32 0, i32 9
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %194 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %193, i32 0, i32 23
  store i32 %192, i32* %194, align 4
  %195 = load %struct.bcm63xx_enet_platform_data*, %struct.bcm63xx_enet_platform_data** %6, align 8
  %196 = getelementptr inbounds %struct.bcm63xx_enet_platform_data, %struct.bcm63xx_enet_platform_data* %195, i32 0, i32 8
  %197 = load i32, i32* %196, align 8
  %198 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %199 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %198, i32 0, i32 22
  store i32 %197, i32* %199, align 8
  %200 = load %struct.bcm63xx_enet_platform_data*, %struct.bcm63xx_enet_platform_data** %6, align 8
  %201 = getelementptr inbounds %struct.bcm63xx_enet_platform_data, %struct.bcm63xx_enet_platform_data* %200, i32 0, i32 7
  %202 = load i32, i32* %201, align 4
  %203 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %204 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %203, i32 0, i32 21
  store i32 %202, i32* %204, align 4
  %205 = load %struct.bcm63xx_enet_platform_data*, %struct.bcm63xx_enet_platform_data** %6, align 8
  %206 = getelementptr inbounds %struct.bcm63xx_enet_platform_data, %struct.bcm63xx_enet_platform_data* %205, i32 0, i32 6
  %207 = load i32, i32* %206, align 8
  %208 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %209 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %208, i32 0, i32 20
  store i32 %207, i32* %209, align 8
  %210 = load %struct.bcm63xx_enet_platform_data*, %struct.bcm63xx_enet_platform_data** %6, align 8
  %211 = getelementptr inbounds %struct.bcm63xx_enet_platform_data, %struct.bcm63xx_enet_platform_data* %210, i32 0, i32 5
  %212 = load i32, i32* %211, align 4
  %213 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %214 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %213, i32 0, i32 19
  store i32 %212, i32* %214, align 4
  %215 = load %struct.bcm63xx_enet_platform_data*, %struct.bcm63xx_enet_platform_data** %6, align 8
  %216 = getelementptr inbounds %struct.bcm63xx_enet_platform_data, %struct.bcm63xx_enet_platform_data* %215, i32 0, i32 4
  %217 = load i32, i32* %216, align 8
  %218 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %219 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %218, i32 0, i32 18
  store i32 %217, i32* %219, align 8
  %220 = load %struct.bcm63xx_enet_platform_data*, %struct.bcm63xx_enet_platform_data** %6, align 8
  %221 = getelementptr inbounds %struct.bcm63xx_enet_platform_data, %struct.bcm63xx_enet_platform_data* %220, i32 0, i32 3
  %222 = load i32, i32* %221, align 4
  %223 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %224 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %223, i32 0, i32 17
  store i32 %222, i32* %224, align 4
  %225 = load %struct.bcm63xx_enet_platform_data*, %struct.bcm63xx_enet_platform_data** %6, align 8
  %226 = getelementptr inbounds %struct.bcm63xx_enet_platform_data, %struct.bcm63xx_enet_platform_data* %225, i32 0, i32 2
  %227 = load i32, i32* %226, align 8
  %228 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %229 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %228, i32 0, i32 16
  store i32 %227, i32* %229, align 8
  br label %230

230:                                              ; preds = %133, %121
  %231 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %232 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %231, i32 0, i32 15
  %233 = load i64, i64* %232, align 8
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %268

235:                                              ; preds = %230
  %236 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %237 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %236, i32 0, i32 2
  %238 = load i32, i32* %237, align 8
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %268, label %240

240:                                              ; preds = %235
  %241 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %242 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %241, i32 0, i32 2
  %243 = call i8* @devm_clk_get(i32* %242, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %244 = bitcast i8* %243 to i32*
  %245 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %246 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %245, i32 0, i32 4
  store i32* %244, i32** %246, align 8
  %247 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %248 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %247, i32 0, i32 4
  %249 = load i32*, i32** %248, align 8
  %250 = call i64 @IS_ERR(i32* %249)
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %252, label %259

252:                                              ; preds = %240
  %253 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %254 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %253, i32 0, i32 4
  %255 = load i32*, i32** %254, align 8
  %256 = call i32 @PTR_ERR(i32* %255)
  store i32 %256, i32* %12, align 4
  %257 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %258 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %257, i32 0, i32 4
  store i32* null, i32** %258, align 8
  br label %468

259:                                              ; preds = %240
  %260 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %261 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %260, i32 0, i32 4
  %262 = load i32*, i32** %261, align 8
  %263 = call i32 @clk_prepare_enable(i32* %262)
  store i32 %263, i32* %12, align 4
  %264 = load i32, i32* %12, align 4
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %267

266:                                              ; preds = %259
  br label %468

267:                                              ; preds = %259
  br label %268

268:                                              ; preds = %267, %235, %230
  %269 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %270 = call i32 @bcm_enet_hw_preinit(%struct.bcm_enet_priv* %269)
  %271 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %272 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %271, i32 0, i32 15
  %273 = load i64, i64* %272, align 8
  %274 = icmp ne i64 %273, 0
  br i1 %274, label %275, label %348

275:                                              ; preds = %268
  %276 = call %struct.mii_bus* (...) @mdiobus_alloc()
  %277 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %278 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %277, i32 0, i32 5
  store %struct.mii_bus* %276, %struct.mii_bus** %278, align 8
  %279 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %280 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %279, i32 0, i32 5
  %281 = load %struct.mii_bus*, %struct.mii_bus** %280, align 8
  %282 = icmp ne %struct.mii_bus* %281, null
  br i1 %282, label %286, label %283

283:                                              ; preds = %275
  %284 = load i32, i32* @ENOMEM, align 4
  %285 = sub nsw i32 0, %284
  store i32 %285, i32* %12, align 4
  br label %460

286:                                              ; preds = %275
  %287 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %288 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %287, i32 0, i32 5
  %289 = load %struct.mii_bus*, %struct.mii_bus** %288, align 8
  store %struct.mii_bus* %289, %struct.mii_bus** %10, align 8
  %290 = load %struct.mii_bus*, %struct.mii_bus** %10, align 8
  %291 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %290, i32 0, i32 0
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8** %291, align 8
  %292 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %293 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %292, i32 0, i32 2
  %294 = load %struct.mii_bus*, %struct.mii_bus** %10, align 8
  %295 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %294, i32 0, i32 7
  store i32* %293, i32** %295, align 8
  %296 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %297 = load %struct.mii_bus*, %struct.mii_bus** %10, align 8
  %298 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %297, i32 0, i32 6
  store %struct.bcm_enet_priv* %296, %struct.bcm_enet_priv** %298, align 8
  %299 = load i32, i32* @bcm_enet_mdio_read_phylib, align 4
  %300 = load %struct.mii_bus*, %struct.mii_bus** %10, align 8
  %301 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %300, i32 0, i32 5
  store i32 %299, i32* %301, align 8
  %302 = load i32, i32* @bcm_enet_mdio_write_phylib, align 4
  %303 = load %struct.mii_bus*, %struct.mii_bus** %10, align 8
  %304 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %303, i32 0, i32 4
  store i32 %302, i32* %304, align 4
  %305 = load %struct.mii_bus*, %struct.mii_bus** %10, align 8
  %306 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %305, i32 0, i32 3
  %307 = load i32, i32* %306, align 8
  %308 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %309 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %308, i32 0, i32 0
  %310 = load i8*, i8** %309, align 8
  %311 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %312 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %311, i32 0, i32 1
  %313 = load i32, i32* %312, align 8
  %314 = call i32 @sprintf(i32 %307, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %310, i32 %313)
  %315 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %316 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %315, i32 0, i32 1
  %317 = load i32, i32* %316, align 4
  %318 = shl i32 1, %317
  %319 = xor i32 %318, -1
  %320 = load %struct.mii_bus*, %struct.mii_bus** %10, align 8
  %321 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %320, i32 0, i32 1
  store i32 %319, i32* %321, align 8
  %322 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %323 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %322, i32 0, i32 14
  %324 = load i64, i64* %323, align 8
  %325 = icmp ne i64 %324, 0
  br i1 %325, label %326, label %338

326:                                              ; preds = %286
  %327 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %328 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %327, i32 0, i32 13
  %329 = load i32, i32* %328, align 4
  %330 = load %struct.mii_bus*, %struct.mii_bus** %10, align 8
  %331 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %330, i32 0, i32 2
  %332 = load i32*, i32** %331, align 8
  %333 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %334 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %333, i32 0, i32 1
  %335 = load i32, i32* %334, align 4
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds i32, i32* %332, i64 %336
  store i32 %329, i32* %337, align 4
  br label %338

338:                                              ; preds = %326, %286
  %339 = load %struct.mii_bus*, %struct.mii_bus** %10, align 8
  %340 = call i32 @mdiobus_register(%struct.mii_bus* %339)
  store i32 %340, i32* %12, align 4
  %341 = load i32, i32* %12, align 4
  %342 = icmp ne i32 %341, 0
  br i1 %342, label %343, label %347

343:                                              ; preds = %338
  %344 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %345 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %344, i32 0, i32 2
  %346 = call i32 @dev_err(i32* %345, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  br label %449

347:                                              ; preds = %338
  br label %370

348:                                              ; preds = %268
  %349 = load %struct.bcm63xx_enet_platform_data*, %struct.bcm63xx_enet_platform_data** %6, align 8
  %350 = icmp ne %struct.bcm63xx_enet_platform_data* %349, null
  br i1 %350, label %351, label %369

351:                                              ; preds = %348
  %352 = load %struct.bcm63xx_enet_platform_data*, %struct.bcm63xx_enet_platform_data** %6, align 8
  %353 = getelementptr inbounds %struct.bcm63xx_enet_platform_data, %struct.bcm63xx_enet_platform_data* %352, i32 0, i32 1
  %354 = load i64 (%struct.net_device*, i32, i32, i32)*, i64 (%struct.net_device*, i32, i32, i32)** %353, align 8
  %355 = icmp ne i64 (%struct.net_device*, i32, i32, i32)* %354, null
  br i1 %355, label %356, label %369

356:                                              ; preds = %351
  %357 = load %struct.bcm63xx_enet_platform_data*, %struct.bcm63xx_enet_platform_data** %6, align 8
  %358 = getelementptr inbounds %struct.bcm63xx_enet_platform_data, %struct.bcm63xx_enet_platform_data* %357, i32 0, i32 1
  %359 = load i64 (%struct.net_device*, i32, i32, i32)*, i64 (%struct.net_device*, i32, i32, i32)** %358, align 8
  %360 = load %struct.net_device*, %struct.net_device** %5, align 8
  %361 = load i32, i32* @bcm_enet_mdio_read_mii, align 4
  %362 = load i32, i32* @bcm_enet_mdio_write_mii, align 4
  %363 = call i64 %359(%struct.net_device* %360, i32 1, i32 %361, i32 %362)
  %364 = icmp ne i64 %363, 0
  br i1 %364, label %365, label %369

365:                                              ; preds = %356
  %366 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %367 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %366, i32 0, i32 2
  %368 = call i32 @dev_err(i32* %367, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  br label %460

369:                                              ; preds = %356, %351, %348
  br label %370

370:                                              ; preds = %369, %347
  %371 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %372 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %371, i32 0, i32 12
  %373 = call i32 @spin_lock_init(i32* %372)
  %374 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %375 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %374, i32 0, i32 11
  %376 = load i32, i32* @bcm_enet_refill_rx_timer, align 4
  %377 = call i32 @timer_setup(i32* %375, i32 %376, i32 0)
  %378 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %379 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %378, i32 0, i32 10
  %380 = call i32 @mutex_init(i32* %379)
  %381 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %382 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %381, i32 0, i32 9
  %383 = load i32, i32* @bcm_enet_update_mib_counters_defer, align 4
  %384 = call i32 @INIT_WORK(i32* %382, i32 %383)
  store i32 0, i32* %11, align 4
  br label %385

385:                                              ; preds = %394, %370
  %386 = load i32, i32* %11, align 4
  %387 = load i32, i32* @ENET_MIB_REG_COUNT, align 4
  %388 = icmp slt i32 %386, %387
  br i1 %388, label %389, label %397

389:                                              ; preds = %385
  %390 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %391 = load i32, i32* %11, align 4
  %392 = call i32 @ENET_MIB_REG(i32 %391)
  %393 = call i32 @enet_writel(%struct.bcm_enet_priv* %390, i32 0, i32 %392)
  br label %394

394:                                              ; preds = %389
  %395 = load i32, i32* %11, align 4
  %396 = add nsw i32 %395, 1
  store i32 %396, i32* %11, align 4
  br label %385

397:                                              ; preds = %385
  %398 = load %struct.net_device*, %struct.net_device** %5, align 8
  %399 = getelementptr inbounds %struct.net_device, %struct.net_device* %398, i32 0, i32 3
  store i32* @bcm_enet_ops, i32** %399, align 8
  %400 = load %struct.net_device*, %struct.net_device** %5, align 8
  %401 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %402 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %401, i32 0, i32 8
  %403 = load i32, i32* @bcm_enet_poll, align 4
  %404 = call i32 @netif_napi_add(%struct.net_device* %400, i32* %402, i32 %403, i32 16)
  %405 = load %struct.net_device*, %struct.net_device** %5, align 8
  %406 = getelementptr inbounds %struct.net_device, %struct.net_device* %405, i32 0, i32 2
  store i32* @bcm_enet_ethtool_ops, i32** %406, align 8
  %407 = load i64, i64* @ETH_ZLEN, align 8
  %408 = load i64, i64* @ETH_HLEN, align 8
  %409 = sub nsw i64 %407, %408
  %410 = load %struct.net_device*, %struct.net_device** %5, align 8
  %411 = getelementptr inbounds %struct.net_device, %struct.net_device* %410, i32 0, i32 1
  store i64 %409, i64* %411, align 8
  %412 = load i64, i64* @BCMENET_MAX_MTU, align 8
  %413 = load i64, i64* @VLAN_ETH_HLEN, align 8
  %414 = sub nsw i64 %412, %413
  %415 = load %struct.net_device*, %struct.net_device** %5, align 8
  %416 = getelementptr inbounds %struct.net_device, %struct.net_device* %415, i32 0, i32 0
  store i64 %414, i64* %416, align 8
  %417 = load %struct.net_device*, %struct.net_device** %5, align 8
  %418 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %419 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %418, i32 0, i32 2
  %420 = call i32 @SET_NETDEV_DEV(%struct.net_device* %417, i32* %419)
  %421 = load %struct.net_device*, %struct.net_device** %5, align 8
  %422 = call i32 @register_netdev(%struct.net_device* %421)
  store i32 %422, i32* %12, align 4
  %423 = load i32, i32* %12, align 4
  %424 = icmp ne i32 %423, 0
  br i1 %424, label %425, label %426

425:                                              ; preds = %397
  br label %438

426:                                              ; preds = %397
  %427 = load %struct.net_device*, %struct.net_device** %5, align 8
  %428 = call i32 @netif_carrier_off(%struct.net_device* %427)
  %429 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %430 = load %struct.net_device*, %struct.net_device** %5, align 8
  %431 = call i32 @platform_set_drvdata(%struct.platform_device* %429, %struct.net_device* %430)
  %432 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %433 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %434 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %433, i32 0, i32 7
  store %struct.platform_device* %432, %struct.platform_device** %434, align 8
  %435 = load %struct.net_device*, %struct.net_device** %5, align 8
  %436 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %437 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %436, i32 0, i32 6
  store %struct.net_device* %435, %struct.net_device** %437, align 8
  store i32 0, i32* %2, align 4
  br label %477

438:                                              ; preds = %425
  %439 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %440 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %439, i32 0, i32 5
  %441 = load %struct.mii_bus*, %struct.mii_bus** %440, align 8
  %442 = icmp ne %struct.mii_bus* %441, null
  br i1 %442, label %443, label %448

443:                                              ; preds = %438
  %444 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %445 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %444, i32 0, i32 5
  %446 = load %struct.mii_bus*, %struct.mii_bus** %445, align 8
  %447 = call i32 @mdiobus_unregister(%struct.mii_bus* %446)
  br label %448

448:                                              ; preds = %443, %438
  br label %449

449:                                              ; preds = %448, %343
  %450 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %451 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %450, i32 0, i32 5
  %452 = load %struct.mii_bus*, %struct.mii_bus** %451, align 8
  %453 = icmp ne %struct.mii_bus* %452, null
  br i1 %453, label %454, label %459

454:                                              ; preds = %449
  %455 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %456 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %455, i32 0, i32 5
  %457 = load %struct.mii_bus*, %struct.mii_bus** %456, align 8
  %458 = call i32 @mdiobus_free(%struct.mii_bus* %457)
  br label %459

459:                                              ; preds = %454, %449
  br label %460

460:                                              ; preds = %459, %365, %283
  %461 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %462 = load i32, i32* @ENET_MIISC_REG, align 4
  %463 = call i32 @enet_writel(%struct.bcm_enet_priv* %461, i32 0, i32 %462)
  %464 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %465 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %464, i32 0, i32 4
  %466 = load i32*, i32** %465, align 8
  %467 = call i32 @clk_disable_unprepare(i32* %466)
  br label %468

468:                                              ; preds = %460, %266, %252
  %469 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %470 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %469, i32 0, i32 3
  %471 = load i32*, i32** %470, align 8
  %472 = call i32 @clk_disable_unprepare(i32* %471)
  br label %473

473:                                              ; preds = %468, %120, %108, %74, %63
  %474 = load %struct.net_device*, %struct.net_device** %5, align 8
  %475 = call i32 @free_netdev(%struct.net_device* %474)
  %476 = load i32, i32* %12, align 4
  store i32 %476, i32* %2, align 4
  br label %477

477:                                              ; preds = %473, %426, %45, %38, %17
  %478 = load i32, i32* %2, align 4
  ret i32 %478
}

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local %struct.net_device* @alloc_etherdev(i32) #1

declare dso_local %struct.bcm_enet_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @bcm_enet_change_mtu(%struct.net_device*, i32) #1

declare dso_local i32* @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i8* @devm_clk_get(i32*, i8*) #1

declare dso_local i32 @clk_prepare_enable(i32*) #1

declare dso_local %struct.bcm63xx_enet_platform_data* @dev_get_platdata(i32*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @bcm_enet_hw_preinit(%struct.bcm_enet_priv*) #1

declare dso_local %struct.mii_bus* @mdiobus_alloc(...) #1

declare dso_local i32 @sprintf(i32, i8*, i8*, i32) #1

declare dso_local i32 @mdiobus_register(%struct.mii_bus*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @enet_writel(%struct.bcm_enet_priv*, i32, i32) #1

declare dso_local i32 @ENET_MIB_REG(i32) #1

declare dso_local i32 @netif_napi_add(%struct.net_device*, i32*, i32, i32) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, i32*) #1

declare dso_local i32 @register_netdev(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.net_device*) #1

declare dso_local i32 @mdiobus_unregister(%struct.mii_bus*) #1

declare dso_local i32 @mdiobus_free(%struct.mii_bus*) #1

declare dso_local i32 @clk_disable_unprepare(i32*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
