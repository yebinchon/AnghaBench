; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/calxeda/extr_xgmac.c_xgmac_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/calxeda/extr_xgmac.c_xgmac_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, i32 }
%struct.resource = type { i32 }
%struct.net_device = type { i32, i32, i32, i32, i32, i64, i32, i32*, i32* }
%struct.xgmac_priv = type { i32, i32, i32, i32, i64, i32, i32, i32*, %struct.net_device*, i32, i32 }

@IORESOURCE_MEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@xgmac_netdev_ops = common dso_local global i32 0, align 4
@xgmac_ethtool_ops = common dso_local global i32 0, align 4
@xgmac_tx_timeout_work = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"ioremap failed\0A\00", align 1
@XGMAC_VERSION = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"h/w version is 0x%x\0A\00", align 1
@XGMAC_DMA_INTR_ENA = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"No irq resource\0A\00", align 1
@xgmac_interrupt = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"Could not request irq %d - ret %d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"No pmt irq resource\0A\00", align 1
@xgmac_pmt_interrupt = common dso_local global i32 0, align 4
@WAKE_MAGIC = common dso_local global i32 0, align 4
@NETIF_F_SG = common dso_local global i32 0, align 4
@NETIF_F_HIGHDMA = common dso_local global i32 0, align 4
@XGMAC_DMA_HW_FEATURE = common dso_local global i64 0, align 8
@DMA_HW_FEAT_TXCOESEL = common dso_local global i32 0, align 4
@NETIF_F_IP_CSUM = common dso_local global i32 0, align 4
@NETIF_F_IPV6_CSUM = common dso_local global i32 0, align 4
@NETIF_F_RXCSUM = common dso_local global i32 0, align 4
@IFF_UNICAST_FLT = common dso_local global i32 0, align 4
@ETH_ZLEN = common dso_local global i64 0, align 8
@ETH_HLEN = common dso_local global i64 0, align 8
@XGMAC_MAX_MTU = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [26 x i8] c"MAC address %pM not valid\00", align 1
@xgmac_poll = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @xgmac_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgmac_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.resource*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.xgmac_priv*, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store i32 0, i32* %4, align 4
  store %struct.net_device* null, %struct.net_device** %6, align 8
  store %struct.xgmac_priv* null, %struct.xgmac_priv** %7, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = load i32, i32* @IORESOURCE_MEM, align 4
  %11 = call %struct.resource* @platform_get_resource(%struct.platform_device* %9, i32 %10, i32 0)
  store %struct.resource* %11, %struct.resource** %5, align 8
  %12 = load %struct.resource*, %struct.resource** %5, align 8
  %13 = icmp ne %struct.resource* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENODEV, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %316

17:                                               ; preds = %1
  %18 = load %struct.resource*, %struct.resource** %5, align 8
  %19 = getelementptr inbounds %struct.resource, %struct.resource* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.resource*, %struct.resource** %5, align 8
  %22 = call i32 @resource_size(%struct.resource* %21)
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @request_mem_region(i32 %20, i32 %22, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %17
  %29 = load i32, i32* @EBUSY, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %316

31:                                               ; preds = %17
  %32 = call %struct.net_device* @alloc_etherdev(i32 56)
  store %struct.net_device* %32, %struct.net_device** %6, align 8
  %33 = load %struct.net_device*, %struct.net_device** %6, align 8
  %34 = icmp ne %struct.net_device* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %308

38:                                               ; preds = %31
  %39 = load %struct.net_device*, %struct.net_device** %6, align 8
  %40 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %41 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %40, i32 0, i32 0
  %42 = call i32 @SET_NETDEV_DEV(%struct.net_device* %39, i32* %41)
  %43 = load %struct.net_device*, %struct.net_device** %6, align 8
  %44 = call %struct.xgmac_priv* @netdev_priv(%struct.net_device* %43)
  store %struct.xgmac_priv* %44, %struct.xgmac_priv** %7, align 8
  %45 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %46 = load %struct.net_device*, %struct.net_device** %6, align 8
  %47 = call i32 @platform_set_drvdata(%struct.platform_device* %45, %struct.net_device* %46)
  %48 = load %struct.net_device*, %struct.net_device** %6, align 8
  %49 = getelementptr inbounds %struct.net_device, %struct.net_device* %48, i32 0, i32 8
  store i32* @xgmac_netdev_ops, i32** %49, align 8
  %50 = load %struct.net_device*, %struct.net_device** %6, align 8
  %51 = getelementptr inbounds %struct.net_device, %struct.net_device* %50, i32 0, i32 7
  store i32* @xgmac_ethtool_ops, i32** %51, align 8
  %52 = load %struct.xgmac_priv*, %struct.xgmac_priv** %7, align 8
  %53 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %52, i32 0, i32 10
  %54 = call i32 @spin_lock_init(i32* %53)
  %55 = load %struct.xgmac_priv*, %struct.xgmac_priv** %7, align 8
  %56 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %55, i32 0, i32 9
  %57 = load i32, i32* @xgmac_tx_timeout_work, align 4
  %58 = call i32 @INIT_WORK(i32* %56, i32 %57)
  %59 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %60 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %59, i32 0, i32 0
  %61 = load %struct.xgmac_priv*, %struct.xgmac_priv** %7, align 8
  %62 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %61, i32 0, i32 7
  store i32* %60, i32** %62, align 8
  %63 = load %struct.net_device*, %struct.net_device** %6, align 8
  %64 = load %struct.xgmac_priv*, %struct.xgmac_priv** %7, align 8
  %65 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %64, i32 0, i32 8
  store %struct.net_device* %63, %struct.net_device** %65, align 8
  %66 = load %struct.xgmac_priv*, %struct.xgmac_priv** %7, align 8
  %67 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %66, i32 0, i32 0
  store i32 1, i32* %67, align 8
  %68 = load %struct.xgmac_priv*, %struct.xgmac_priv** %7, align 8
  %69 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %68, i32 0, i32 1
  store i32 1, i32* %69, align 4
  %70 = load %struct.resource*, %struct.resource** %5, align 8
  %71 = getelementptr inbounds %struct.resource, %struct.resource* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.resource*, %struct.resource** %5, align 8
  %74 = call i32 @resource_size(%struct.resource* %73)
  %75 = call i64 @ioremap(i32 %72, i32 %74)
  %76 = load %struct.xgmac_priv*, %struct.xgmac_priv** %7, align 8
  %77 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %76, i32 0, i32 4
  store i64 %75, i64* %77, align 8
  %78 = load %struct.xgmac_priv*, %struct.xgmac_priv** %7, align 8
  %79 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %78, i32 0, i32 4
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %87, label %82

82:                                               ; preds = %38
  %83 = load %struct.net_device*, %struct.net_device** %6, align 8
  %84 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %83, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %85 = load i32, i32* @ENOMEM, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %4, align 4
  br label %305

87:                                               ; preds = %38
  %88 = load %struct.xgmac_priv*, %struct.xgmac_priv** %7, align 8
  %89 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %88, i32 0, i32 4
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @XGMAC_VERSION, align 8
  %92 = add nsw i64 %90, %91
  %93 = call i32 @readl(i64 %92)
  store i32 %93, i32* %8, align 4
  %94 = load %struct.net_device*, %struct.net_device** %6, align 8
  %95 = load i32, i32* %8, align 4
  %96 = call i32 @netdev_info(%struct.net_device* %94, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %95)
  %97 = load %struct.xgmac_priv*, %struct.xgmac_priv** %7, align 8
  %98 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %97, i32 0, i32 4
  %99 = load i64, i64* %98, align 8
  %100 = call i64 @XGMAC_ADDR_HIGH(i32 31)
  %101 = add nsw i64 %99, %100
  %102 = call i32 @writel(i32 1, i64 %101)
  %103 = load %struct.xgmac_priv*, %struct.xgmac_priv** %7, align 8
  %104 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %103, i32 0, i32 4
  %105 = load i64, i64* %104, align 8
  %106 = call i64 @XGMAC_ADDR_HIGH(i32 31)
  %107 = add nsw i64 %105, %106
  %108 = call i32 @readl(i64 %107)
  %109 = icmp eq i32 %108, 1
  br i1 %109, label %110, label %113

110:                                              ; preds = %87
  %111 = load %struct.xgmac_priv*, %struct.xgmac_priv** %7, align 8
  %112 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %111, i32 0, i32 2
  store i32 31, i32* %112, align 8
  br label %116

113:                                              ; preds = %87
  %114 = load %struct.xgmac_priv*, %struct.xgmac_priv** %7, align 8
  %115 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %114, i32 0, i32 2
  store i32 7, i32* %115, align 8
  br label %116

116:                                              ; preds = %113, %110
  %117 = load %struct.xgmac_priv*, %struct.xgmac_priv** %7, align 8
  %118 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %117, i32 0, i32 4
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @XGMAC_DMA_INTR_ENA, align 8
  %121 = add nsw i64 %119, %120
  %122 = call i32 @writel(i32 0, i64 %121)
  %123 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %124 = call i8* @platform_get_irq(%struct.platform_device* %123, i32 0)
  %125 = ptrtoint i8* %124 to i32
  %126 = load %struct.net_device*, %struct.net_device** %6, align 8
  %127 = getelementptr inbounds %struct.net_device, %struct.net_device* %126, i32 0, i32 0
  store i32 %125, i32* %127, align 8
  %128 = load %struct.net_device*, %struct.net_device** %6, align 8
  %129 = getelementptr inbounds %struct.net_device, %struct.net_device* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @ENXIO, align 4
  %132 = sub nsw i32 0, %131
  %133 = icmp eq i32 %130, %132
  br i1 %133, label %134, label %140

134:                                              ; preds = %116
  %135 = load %struct.net_device*, %struct.net_device** %6, align 8
  %136 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %135, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %137 = load %struct.net_device*, %struct.net_device** %6, align 8
  %138 = getelementptr inbounds %struct.net_device, %struct.net_device* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  store i32 %139, i32* %4, align 4
  br label %300

140:                                              ; preds = %116
  %141 = load %struct.net_device*, %struct.net_device** %6, align 8
  %142 = getelementptr inbounds %struct.net_device, %struct.net_device* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* @xgmac_interrupt, align 4
  %145 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %146 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %145, i32 0, i32 0
  %147 = call i32 @dev_name(i32* %146)
  %148 = load %struct.net_device*, %struct.net_device** %6, align 8
  %149 = call i32 @request_irq(i32 %143, i32 %144, i32 0, i32 %147, %struct.net_device* %148)
  store i32 %149, i32* %4, align 4
  %150 = load i32, i32* %4, align 4
  %151 = icmp slt i32 %150, 0
  br i1 %151, label %152, label %159

152:                                              ; preds = %140
  %153 = load %struct.net_device*, %struct.net_device** %6, align 8
  %154 = load %struct.net_device*, %struct.net_device** %6, align 8
  %155 = getelementptr inbounds %struct.net_device, %struct.net_device* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* %4, align 4
  %158 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %153, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %156, i32 %157)
  br label %300

159:                                              ; preds = %140
  %160 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %161 = call i8* @platform_get_irq(%struct.platform_device* %160, i32 1)
  %162 = ptrtoint i8* %161 to i32
  %163 = load %struct.xgmac_priv*, %struct.xgmac_priv** %7, align 8
  %164 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %163, i32 0, i32 3
  store i32 %162, i32* %164, align 4
  %165 = load %struct.xgmac_priv*, %struct.xgmac_priv** %7, align 8
  %166 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %165, i32 0, i32 3
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* @ENXIO, align 4
  %169 = sub nsw i32 0, %168
  %170 = icmp eq i32 %167, %169
  br i1 %170, label %171, label %177

171:                                              ; preds = %159
  %172 = load %struct.net_device*, %struct.net_device** %6, align 8
  %173 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %172, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %174 = load %struct.xgmac_priv*, %struct.xgmac_priv** %7, align 8
  %175 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %174, i32 0, i32 3
  %176 = load i32, i32* %175, align 4
  store i32 %176, i32* %4, align 4
  br label %294

177:                                              ; preds = %159
  %178 = load %struct.xgmac_priv*, %struct.xgmac_priv** %7, align 8
  %179 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %178, i32 0, i32 3
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* @xgmac_pmt_interrupt, align 4
  %182 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %183 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %182, i32 0, i32 0
  %184 = call i32 @dev_name(i32* %183)
  %185 = load %struct.net_device*, %struct.net_device** %6, align 8
  %186 = call i32 @request_irq(i32 %180, i32 %181, i32 0, i32 %184, %struct.net_device* %185)
  store i32 %186, i32* %4, align 4
  %187 = load i32, i32* %4, align 4
  %188 = icmp slt i32 %187, 0
  br i1 %188, label %189, label %196

189:                                              ; preds = %177
  %190 = load %struct.net_device*, %struct.net_device** %6, align 8
  %191 = load %struct.xgmac_priv*, %struct.xgmac_priv** %7, align 8
  %192 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %191, i32 0, i32 3
  %193 = load i32, i32* %192, align 4
  %194 = load i32, i32* %4, align 4
  %195 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %190, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %193, i32 %194)
  br label %294

196:                                              ; preds = %177
  %197 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %198 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %197, i32 0, i32 0
  %199 = call i32 @device_set_wakeup_capable(i32* %198, i32 1)
  %200 = load %struct.xgmac_priv*, %struct.xgmac_priv** %7, align 8
  %201 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %200, i32 0, i32 7
  %202 = load i32*, i32** %201, align 8
  %203 = call i64 @device_can_wakeup(i32* %202)
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %209

205:                                              ; preds = %196
  %206 = load i32, i32* @WAKE_MAGIC, align 4
  %207 = load %struct.xgmac_priv*, %struct.xgmac_priv** %7, align 8
  %208 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %207, i32 0, i32 6
  store i32 %206, i32* %208, align 4
  br label %209

209:                                              ; preds = %205, %196
  %210 = load i32, i32* @NETIF_F_SG, align 4
  %211 = load i32, i32* @NETIF_F_HIGHDMA, align 4
  %212 = or i32 %210, %211
  %213 = load %struct.net_device*, %struct.net_device** %6, align 8
  %214 = getelementptr inbounds %struct.net_device, %struct.net_device* %213, i32 0, i32 1
  store i32 %212, i32* %214, align 4
  %215 = load %struct.xgmac_priv*, %struct.xgmac_priv** %7, align 8
  %216 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %215, i32 0, i32 4
  %217 = load i64, i64* %216, align 8
  %218 = load i64, i64* @XGMAC_DMA_HW_FEATURE, align 8
  %219 = add nsw i64 %217, %218
  %220 = call i32 @readl(i64 %219)
  %221 = load i32, i32* @DMA_HW_FEAT_TXCOESEL, align 4
  %222 = and i32 %220, %221
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %234

224:                                              ; preds = %209
  %225 = load i32, i32* @NETIF_F_IP_CSUM, align 4
  %226 = load i32, i32* @NETIF_F_IPV6_CSUM, align 4
  %227 = or i32 %225, %226
  %228 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %229 = or i32 %227, %228
  %230 = load %struct.net_device*, %struct.net_device** %6, align 8
  %231 = getelementptr inbounds %struct.net_device, %struct.net_device* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = or i32 %232, %229
  store i32 %233, i32* %231, align 4
  br label %234

234:                                              ; preds = %224, %209
  %235 = load %struct.net_device*, %struct.net_device** %6, align 8
  %236 = getelementptr inbounds %struct.net_device, %struct.net_device* %235, i32 0, i32 1
  %237 = load i32, i32* %236, align 4
  %238 = load %struct.net_device*, %struct.net_device** %6, align 8
  %239 = getelementptr inbounds %struct.net_device, %struct.net_device* %238, i32 0, i32 2
  %240 = load i32, i32* %239, align 8
  %241 = or i32 %240, %237
  store i32 %241, i32* %239, align 8
  %242 = load i32, i32* @IFF_UNICAST_FLT, align 4
  %243 = load %struct.net_device*, %struct.net_device** %6, align 8
  %244 = getelementptr inbounds %struct.net_device, %struct.net_device* %243, i32 0, i32 6
  %245 = load i32, i32* %244, align 8
  %246 = or i32 %245, %242
  store i32 %246, i32* %244, align 8
  %247 = load i64, i64* @ETH_ZLEN, align 8
  %248 = load i64, i64* @ETH_HLEN, align 8
  %249 = sub nsw i64 %247, %248
  %250 = load %struct.net_device*, %struct.net_device** %6, align 8
  %251 = getelementptr inbounds %struct.net_device, %struct.net_device* %250, i32 0, i32 5
  store i64 %249, i64* %251, align 8
  %252 = load i32, i32* @XGMAC_MAX_MTU, align 4
  %253 = load %struct.net_device*, %struct.net_device** %6, align 8
  %254 = getelementptr inbounds %struct.net_device, %struct.net_device* %253, i32 0, i32 4
  store i32 %252, i32* %254, align 8
  %255 = load %struct.xgmac_priv*, %struct.xgmac_priv** %7, align 8
  %256 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %255, i32 0, i32 4
  %257 = load i64, i64* %256, align 8
  %258 = load %struct.net_device*, %struct.net_device** %6, align 8
  %259 = getelementptr inbounds %struct.net_device, %struct.net_device* %258, i32 0, i32 3
  %260 = load i32, i32* %259, align 4
  %261 = call i32 @xgmac_get_mac_addr(i64 %257, i32 %260, i32 0)
  %262 = load %struct.net_device*, %struct.net_device** %6, align 8
  %263 = getelementptr inbounds %struct.net_device, %struct.net_device* %262, i32 0, i32 3
  %264 = load i32, i32* %263, align 4
  %265 = call i32 @is_valid_ether_addr(i32 %264)
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %273, label %267

267:                                              ; preds = %234
  %268 = load %struct.net_device*, %struct.net_device** %6, align 8
  %269 = load %struct.net_device*, %struct.net_device** %6, align 8
  %270 = getelementptr inbounds %struct.net_device, %struct.net_device* %269, i32 0, i32 3
  %271 = load i32, i32* %270, align 4
  %272 = call i32 @netdev_warn(%struct.net_device* %268, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32 %271)
  br label %273

273:                                              ; preds = %267, %234
  %274 = load %struct.net_device*, %struct.net_device** %6, align 8
  %275 = load %struct.xgmac_priv*, %struct.xgmac_priv** %7, align 8
  %276 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %275, i32 0, i32 5
  %277 = load i32, i32* @xgmac_poll, align 4
  %278 = call i32 @netif_napi_add(%struct.net_device* %274, i32* %276, i32 %277, i32 64)
  %279 = load %struct.net_device*, %struct.net_device** %6, align 8
  %280 = call i32 @register_netdev(%struct.net_device* %279)
  store i32 %280, i32* %4, align 4
  %281 = load i32, i32* %4, align 4
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %284

283:                                              ; preds = %273
  br label %285

284:                                              ; preds = %273
  store i32 0, i32* %2, align 4
  br label %316

285:                                              ; preds = %283
  %286 = load %struct.xgmac_priv*, %struct.xgmac_priv** %7, align 8
  %287 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %286, i32 0, i32 5
  %288 = call i32 @netif_napi_del(i32* %287)
  %289 = load %struct.xgmac_priv*, %struct.xgmac_priv** %7, align 8
  %290 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %289, i32 0, i32 3
  %291 = load i32, i32* %290, align 4
  %292 = load %struct.net_device*, %struct.net_device** %6, align 8
  %293 = call i32 @free_irq(i32 %291, %struct.net_device* %292)
  br label %294

294:                                              ; preds = %285, %189, %171
  %295 = load %struct.net_device*, %struct.net_device** %6, align 8
  %296 = getelementptr inbounds %struct.net_device, %struct.net_device* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 8
  %298 = load %struct.net_device*, %struct.net_device** %6, align 8
  %299 = call i32 @free_irq(i32 %297, %struct.net_device* %298)
  br label %300

300:                                              ; preds = %294, %152, %134
  %301 = load %struct.xgmac_priv*, %struct.xgmac_priv** %7, align 8
  %302 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %301, i32 0, i32 4
  %303 = load i64, i64* %302, align 8
  %304 = call i32 @iounmap(i64 %303)
  br label %305

305:                                              ; preds = %300, %82
  %306 = load %struct.net_device*, %struct.net_device** %6, align 8
  %307 = call i32 @free_netdev(%struct.net_device* %306)
  br label %308

308:                                              ; preds = %305, %35
  %309 = load %struct.resource*, %struct.resource** %5, align 8
  %310 = getelementptr inbounds %struct.resource, %struct.resource* %309, i32 0, i32 0
  %311 = load i32, i32* %310, align 4
  %312 = load %struct.resource*, %struct.resource** %5, align 8
  %313 = call i32 @resource_size(%struct.resource* %312)
  %314 = call i32 @release_mem_region(i32 %311, i32 %313)
  %315 = load i32, i32* %4, align 4
  store i32 %315, i32* %2, align 4
  br label %316

316:                                              ; preds = %308, %284, %28, %14
  %317 = load i32, i32* %2, align 4
  ret i32 %317
}

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @request_mem_region(i32, i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local %struct.net_device* @alloc_etherdev(i32) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, i32*) #1

declare dso_local %struct.xgmac_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.net_device*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i64 @ioremap(i32, i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, ...) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*, i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @XGMAC_ADDR_HIGH(i32) #1

declare dso_local i8* @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.net_device*) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @device_set_wakeup_capable(i32*, i32) #1

declare dso_local i64 @device_can_wakeup(i32*) #1

declare dso_local i32 @xgmac_get_mac_addr(i64, i32, i32) #1

declare dso_local i32 @is_valid_ether_addr(i32) #1

declare dso_local i32 @netdev_warn(%struct.net_device*, i8*, i32) #1

declare dso_local i32 @netif_napi_add(%struct.net_device*, i32*, i32, i32) #1

declare dso_local i32 @register_netdev(%struct.net_device*) #1

declare dso_local i32 @netif_napi_del(i32*) #1

declare dso_local i32 @free_irq(i32, %struct.net_device*) #1

declare dso_local i32 @iounmap(i64) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

declare dso_local i32 @release_mem_region(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
