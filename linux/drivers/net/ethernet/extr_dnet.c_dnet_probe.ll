; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_dnet.c_dnet_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_dnet.c_dnet_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.resource = type { i64 }
%struct.net_device = type { i32, i64, %struct.phy_device*, i32, i32*, i32*, i32 }
%struct.phy_device = type { i32 }
%struct.dnet = type { i32, i64, i32, i32, %struct.net_device* }

@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@dnet_interrupt = common dso_local global i32 0, align 4
@DRV_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Unable to request IRQ %d (error %d)\0A\00", align 1
@dnet_netdev_ops = common dso_local global i32 0, align 4
@dnet_poll = common dso_local global i32 0, align 4
@dnet_ethtool_ops = common dso_local global i32 0, align 4
@VERCAPS = common dso_local global i32 0, align 4
@DNET_CAPS_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Cannot register net device, aborting.\0A\00", align 1
@dnet_phy_marvell_fixup = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"Cannot register PHY board fixup.\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"Dave DNET at 0x%p (0x%08x) irq %d %pM\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"has %smdio, %sirq, %sgigabit, %sdma\0A\00", align 1
@DNET_HAS_MDIO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"no \00", align 1
@DNET_HAS_IRQ = common dso_local global i32 0, align 4
@DNET_HAS_GIGABIT = common dso_local global i32 0, align 4
@DNET_HAS_DMA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @dnet_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dnet_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.resource*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.dnet*, align 8
  %7 = alloca %struct.phy_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = call i32 @platform_get_irq(%struct.platform_device* %10, i32 0)
  store i32 %11, i32* %9, align 4
  %12 = call %struct.net_device* @alloc_etherdev(i32 32)
  store %struct.net_device* %12, %struct.net_device** %5, align 8
  %13 = load %struct.net_device*, %struct.net_device** %5, align 8
  %14 = icmp ne %struct.net_device* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %204

18:                                               ; preds = %1
  %19 = load %struct.net_device*, %struct.net_device** %5, align 8
  %20 = getelementptr inbounds %struct.net_device, %struct.net_device* %19, i32 0, i32 6
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %20, align 8
  %22 = load %struct.net_device*, %struct.net_device** %5, align 8
  %23 = call %struct.dnet* @netdev_priv(%struct.net_device* %22)
  store %struct.dnet* %23, %struct.dnet** %6, align 8
  %24 = load %struct.net_device*, %struct.net_device** %5, align 8
  %25 = load %struct.dnet*, %struct.dnet** %6, align 8
  %26 = getelementptr inbounds %struct.dnet, %struct.dnet* %25, i32 0, i32 4
  store %struct.net_device* %24, %struct.net_device** %26, align 8
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = load %struct.net_device*, %struct.net_device** %5, align 8
  %29 = call i32 @platform_set_drvdata(%struct.platform_device* %27, %struct.net_device* %28)
  %30 = load %struct.net_device*, %struct.net_device** %5, align 8
  %31 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %32 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %31, i32 0, i32 0
  %33 = call i32 @SET_NETDEV_DEV(%struct.net_device* %30, i32* %32)
  %34 = load %struct.dnet*, %struct.dnet** %6, align 8
  %35 = getelementptr inbounds %struct.dnet, %struct.dnet* %34, i32 0, i32 3
  %36 = call i32 @spin_lock_init(i32* %35)
  %37 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %38 = load i32, i32* @IORESOURCE_MEM, align 4
  %39 = call %struct.resource* @platform_get_resource(%struct.platform_device* %37, i32 %38, i32 0)
  store %struct.resource* %39, %struct.resource** %4, align 8
  %40 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %41 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %40, i32 0, i32 0
  %42 = load %struct.resource*, %struct.resource** %4, align 8
  %43 = call i64 @devm_ioremap_resource(i32* %41, %struct.resource* %42)
  %44 = load %struct.dnet*, %struct.dnet** %6, align 8
  %45 = getelementptr inbounds %struct.dnet, %struct.dnet* %44, i32 0, i32 1
  store i64 %43, i64* %45, align 8
  %46 = load %struct.dnet*, %struct.dnet** %6, align 8
  %47 = getelementptr inbounds %struct.dnet, %struct.dnet* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = call i64 @IS_ERR(i64 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %18
  %52 = load %struct.dnet*, %struct.dnet** %6, align 8
  %53 = getelementptr inbounds %struct.dnet, %struct.dnet* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @PTR_ERR(i64 %54)
  store i32 %55, i32* %8, align 4
  br label %200

56:                                               ; preds = %18
  %57 = load i32, i32* %9, align 4
  %58 = load %struct.net_device*, %struct.net_device** %5, align 8
  %59 = getelementptr inbounds %struct.net_device, %struct.net_device* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load %struct.net_device*, %struct.net_device** %5, align 8
  %61 = getelementptr inbounds %struct.net_device, %struct.net_device* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @dnet_interrupt, align 4
  %64 = load i32, i32* @DRV_NAME, align 4
  %65 = load %struct.net_device*, %struct.net_device** %5, align 8
  %66 = call i32 @request_irq(i32 %62, i32 %63, i32 0, i32 %64, %struct.net_device* %65)
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* %8, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %56
  %70 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %71 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %70, i32 0, i32 0
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* %8, align 4
  %74 = call i32 (i32*, i8*, ...) @dev_err(i32* %71, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %72, i32 %73)
  br label %200

75:                                               ; preds = %56
  %76 = load %struct.net_device*, %struct.net_device** %5, align 8
  %77 = getelementptr inbounds %struct.net_device, %struct.net_device* %76, i32 0, i32 5
  store i32* @dnet_netdev_ops, i32** %77, align 8
  %78 = load %struct.net_device*, %struct.net_device** %5, align 8
  %79 = load %struct.dnet*, %struct.dnet** %6, align 8
  %80 = getelementptr inbounds %struct.dnet, %struct.dnet* %79, i32 0, i32 2
  %81 = load i32, i32* @dnet_poll, align 4
  %82 = call i32 @netif_napi_add(%struct.net_device* %78, i32* %80, i32 %81, i32 64)
  %83 = load %struct.net_device*, %struct.net_device** %5, align 8
  %84 = getelementptr inbounds %struct.net_device, %struct.net_device* %83, i32 0, i32 4
  store i32* @dnet_ethtool_ops, i32** %84, align 8
  %85 = load %struct.dnet*, %struct.dnet** %6, align 8
  %86 = getelementptr inbounds %struct.dnet, %struct.dnet* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.net_device*, %struct.net_device** %5, align 8
  %89 = getelementptr inbounds %struct.net_device, %struct.net_device* %88, i32 0, i32 1
  store i64 %87, i64* %89, align 8
  %90 = load %struct.dnet*, %struct.dnet** %6, align 8
  %91 = load i32, i32* @VERCAPS, align 4
  %92 = call i32 @dnet_readl(%struct.dnet* %90, i32 %91)
  %93 = load i32, i32* @DNET_CAPS_MASK, align 4
  %94 = and i32 %92, %93
  %95 = load %struct.dnet*, %struct.dnet** %6, align 8
  %96 = getelementptr inbounds %struct.dnet, %struct.dnet* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 8
  %97 = load %struct.dnet*, %struct.dnet** %6, align 8
  %98 = call i32 @dnet_get_hwaddr(%struct.dnet* %97)
  %99 = load %struct.net_device*, %struct.net_device** %5, align 8
  %100 = getelementptr inbounds %struct.net_device, %struct.net_device* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @is_valid_ether_addr(i32 %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %109, label %104

104:                                              ; preds = %75
  %105 = load %struct.net_device*, %struct.net_device** %5, align 8
  %106 = call i32 @eth_hw_addr_random(%struct.net_device* %105)
  %107 = load %struct.dnet*, %struct.dnet** %6, align 8
  %108 = call i32 @__dnet_set_hwaddr(%struct.dnet* %107)
  br label %109

109:                                              ; preds = %104, %75
  %110 = load %struct.net_device*, %struct.net_device** %5, align 8
  %111 = call i32 @register_netdev(%struct.net_device* %110)
  store i32 %111, i32* %8, align 4
  %112 = load i32, i32* %8, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %109
  %115 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %116 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %115, i32 0, i32 0
  %117 = call i32 (i32*, i8*, ...) @dev_err(i32* %116, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %194

118:                                              ; preds = %109
  %119 = load i32, i32* @dnet_phy_marvell_fixup, align 4
  %120 = call i32 @phy_register_fixup_for_uid(i32 21040320, i32 -16, i32 %119)
  store i32 %120, i32* %8, align 4
  %121 = load i32, i32* %8, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %118
  %124 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %125 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %124, i32 0, i32 0
  %126 = call i32 @dev_warn(i32* %125, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %127

127:                                              ; preds = %123, %118
  %128 = load %struct.dnet*, %struct.dnet** %6, align 8
  %129 = call i32 @dnet_mii_init(%struct.dnet* %128)
  store i32 %129, i32* %8, align 4
  %130 = load i32, i32* %8, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %127
  br label %191

133:                                              ; preds = %127
  %134 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %135 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %134, i32 0, i32 0
  %136 = load %struct.dnet*, %struct.dnet** %6, align 8
  %137 = getelementptr inbounds %struct.dnet, %struct.dnet* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = inttoptr i64 %138 to i8*
  %140 = load %struct.resource*, %struct.resource** %4, align 8
  %141 = getelementptr inbounds %struct.resource, %struct.resource* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = trunc i64 %142 to i32
  %144 = load %struct.net_device*, %struct.net_device** %5, align 8
  %145 = getelementptr inbounds %struct.net_device, %struct.net_device* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.net_device*, %struct.net_device** %5, align 8
  %148 = getelementptr inbounds %struct.net_device, %struct.net_device* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 8
  %150 = call i32 (i32*, i8*, i8*, ...) @dev_info(i32* %135, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i8* %139, i32 %143, i32 %146, i32 %149)
  %151 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %152 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %151, i32 0, i32 0
  %153 = load %struct.dnet*, %struct.dnet** %6, align 8
  %154 = getelementptr inbounds %struct.dnet, %struct.dnet* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* @DNET_HAS_MDIO, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  %159 = zext i1 %158 to i64
  %160 = select i1 %158, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0)
  %161 = load %struct.dnet*, %struct.dnet** %6, align 8
  %162 = getelementptr inbounds %struct.dnet, %struct.dnet* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* @DNET_HAS_IRQ, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  %167 = zext i1 %166 to i64
  %168 = select i1 %166, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0)
  %169 = load %struct.dnet*, %struct.dnet** %6, align 8
  %170 = getelementptr inbounds %struct.dnet, %struct.dnet* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = load i32, i32* @DNET_HAS_GIGABIT, align 4
  %173 = and i32 %171, %172
  %174 = icmp ne i32 %173, 0
  %175 = zext i1 %174 to i64
  %176 = select i1 %174, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0)
  %177 = load %struct.dnet*, %struct.dnet** %6, align 8
  %178 = getelementptr inbounds %struct.dnet, %struct.dnet* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = load i32, i32* @DNET_HAS_DMA, align 4
  %181 = and i32 %179, %180
  %182 = icmp ne i32 %181, 0
  %183 = zext i1 %182 to i64
  %184 = select i1 %182, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0)
  %185 = call i32 (i32*, i8*, i8*, ...) @dev_info(i32* %152, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i8* %160, i8* %168, i8* %176, i8* %184)
  %186 = load %struct.net_device*, %struct.net_device** %5, align 8
  %187 = getelementptr inbounds %struct.net_device, %struct.net_device* %186, i32 0, i32 2
  %188 = load %struct.phy_device*, %struct.phy_device** %187, align 8
  store %struct.phy_device* %188, %struct.phy_device** %7, align 8
  %189 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %190 = call i32 @phy_attached_info(%struct.phy_device* %189)
  store i32 0, i32* %2, align 4
  br label %204

191:                                              ; preds = %132
  %192 = load %struct.net_device*, %struct.net_device** %5, align 8
  %193 = call i32 @unregister_netdev(%struct.net_device* %192)
  br label %194

194:                                              ; preds = %191, %114
  %195 = load %struct.net_device*, %struct.net_device** %5, align 8
  %196 = getelementptr inbounds %struct.net_device, %struct.net_device* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = load %struct.net_device*, %struct.net_device** %5, align 8
  %199 = call i32 @free_irq(i32 %197, %struct.net_device* %198)
  br label %200

200:                                              ; preds = %194, %69, %51
  %201 = load %struct.net_device*, %struct.net_device** %5, align 8
  %202 = call i32 @free_netdev(%struct.net_device* %201)
  %203 = load i32, i32* %8, align 4
  store i32 %203, i32* %2, align 4
  br label %204

204:                                              ; preds = %200, %133, %15
  %205 = load i32, i32* %2, align 4
  ret i32 %205
}

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local %struct.net_device* @alloc_etherdev(i32) #1

declare dso_local %struct.dnet* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.net_device*) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i64 @devm_ioremap_resource(i32*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i64) #1

declare dso_local i32 @PTR_ERR(i64) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.net_device*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @netif_napi_add(%struct.net_device*, i32*, i32, i32) #1

declare dso_local i32 @dnet_readl(%struct.dnet*, i32) #1

declare dso_local i32 @dnet_get_hwaddr(%struct.dnet*) #1

declare dso_local i32 @is_valid_ether_addr(i32) #1

declare dso_local i32 @eth_hw_addr_random(%struct.net_device*) #1

declare dso_local i32 @__dnet_set_hwaddr(%struct.dnet*) #1

declare dso_local i32 @register_netdev(%struct.net_device*) #1

declare dso_local i32 @phy_register_fixup_for_uid(i32, i32, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @dnet_mii_init(%struct.dnet*) #1

declare dso_local i32 @dev_info(i32*, i8*, i8*, ...) #1

declare dso_local i32 @phy_attached_info(%struct.phy_device*) #1

declare dso_local i32 @unregister_netdev(%struct.net_device*) #1

declare dso_local i32 @free_irq(i32, %struct.net_device*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
