; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/extr_ag71xx.c_ag71xx_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/extr_ag71xx.c_ag71xx_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.ag71xx_dcfg = type { i8*, i64 }
%struct.net_device = type { i32, i32, i32, i64, i32* }
%struct.resource = type { i64 }
%struct.ag71xx = type { i32, i8*, i8*, i32, i64, i32, i64, %struct.TYPE_16__*, %struct.TYPE_14__, i32, %struct.TYPE_13__, i32, i32, i32, i32, %struct.ag71xx_dcfg*, %struct.net_device*, %struct.platform_device* }
%struct.TYPE_16__ = type { i64, i64, i64 }
%struct.TYPE_14__ = type { i8*, i32 }
%struct.TYPE_13__ = type { i8* }

@ENODEV = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ar71xx_addr_ar7100 = common dso_local global i64* null, align 8
@probe = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"unknown mac idx\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"eth\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Failed to get eth clk.\0A\00", align 1
@AG71XX_DEFAULT_MSG_ENABLE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"mac\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"missing mac reset\0A\00", align 1
@ag71xx_interrupt = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [26 x i8] c"unable to request IRQ %d\0A\00", align 1
@ag71xx_netdev_ops = common dso_local global i32 0, align 4
@ag71xx_restart_work_func = common dso_local global i32 0, align 4
@ag71xx_oom_timer_handler = common dso_local global i32 0, align 4
@AG71XX_TX_RING_SIZE_DEFAULT = common dso_local global i32 0, align 4
@AG71XX_RX_RING_SIZE_DEFAULT = common dso_local global i32 0, align 4
@NET_SKB_PAD = common dso_local global i32 0, align 4
@AR7100 = common dso_local global i32 0, align 4
@AR9130 = common dso_local global i32 0, align 4
@NET_IP_ALIGN = common dso_local global i64 0, align 8
@AG71XX_TX_RING_SPLIT = common dso_local global i32 0, align 4
@AG71XX_TX_RING_DS_PER_PKT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [43 x i8] c"invalid MAC address, using random address\0A\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"missing phy-mode property in DT\0A\00", align 1
@ag71xx_poll = common dso_local global i32 0, align 4
@AG71XX_NAPI_WEIGHT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [27 x i8] c"Failed to enable eth clk.\0A\00", align 1
@AG71XX_REG_MAC_CFG1 = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [31 x i8] c"unable to register net device\0A\00", align 1
@.str.10 = private unnamed_addr constant [44 x i8] c"Atheros AG71xx at 0x%08lx, irq %d, mode:%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ag71xx_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ag71xx_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.ag71xx_dcfg*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ag71xx*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 0
  %16 = load %struct.device_node*, %struct.device_node** %15, align 8
  store %struct.device_node* %16, %struct.device_node** %4, align 8
  %17 = load %struct.device_node*, %struct.device_node** %4, align 8
  %18 = icmp ne %struct.device_node* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %412

22:                                               ; preds = %1
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 0
  %25 = call %struct.net_device* @devm_alloc_etherdev(%struct.TYPE_15__* %24, i32 136)
  store %struct.net_device* %25, %struct.net_device** %6, align 8
  %26 = load %struct.net_device*, %struct.net_device** %6, align 8
  %27 = icmp ne %struct.net_device* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %22
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %412

31:                                               ; preds = %22
  %32 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %33 = load i32, i32* @IORESOURCE_MEM, align 4
  %34 = call %struct.resource* @platform_get_resource(%struct.platform_device* %32, i32 %33, i32 0)
  store %struct.resource* %34, %struct.resource** %7, align 8
  %35 = load %struct.resource*, %struct.resource** %7, align 8
  %36 = icmp ne %struct.resource* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %31
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %412

40:                                               ; preds = %31
  %41 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %42 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %41, i32 0, i32 0
  %43 = call %struct.ag71xx_dcfg* @of_device_get_match_data(%struct.TYPE_15__* %42)
  store %struct.ag71xx_dcfg* %43, %struct.ag71xx_dcfg** %5, align 8
  %44 = load %struct.ag71xx_dcfg*, %struct.ag71xx_dcfg** %5, align 8
  %45 = icmp ne %struct.ag71xx_dcfg* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %40
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %2, align 4
  br label %412

49:                                               ; preds = %40
  %50 = load %struct.net_device*, %struct.net_device** %6, align 8
  %51 = call %struct.ag71xx* @netdev_priv(%struct.net_device* %50)
  store %struct.ag71xx* %51, %struct.ag71xx** %12, align 8
  %52 = load %struct.ag71xx*, %struct.ag71xx** %12, align 8
  %53 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %52, i32 0, i32 0
  store i32 -1, i32* %53, align 8
  store i32 0, i32* %11, align 4
  br label %54

54:                                               ; preds = %74, %49
  %55 = load i32, i32* %11, align 4
  %56 = load i64*, i64** @ar71xx_addr_ar7100, align 8
  %57 = call i32 @ARRAY_SIZE(i64* %56)
  %58 = icmp slt i32 %55, %57
  br i1 %58, label %59, label %77

59:                                               ; preds = %54
  %60 = load i64*, i64** @ar71xx_addr_ar7100, align 8
  %61 = load i32, i32* %11, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i64, i64* %60, i64 %62
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.resource*, %struct.resource** %7, align 8
  %66 = getelementptr inbounds %struct.resource, %struct.resource* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp eq i64 %64, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %59
  %70 = load i32, i32* %11, align 4
  %71 = load %struct.ag71xx*, %struct.ag71xx** %12, align 8
  %72 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  br label %73

73:                                               ; preds = %69, %59
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %11, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %11, align 4
  br label %54

77:                                               ; preds = %54
  %78 = load %struct.ag71xx*, %struct.ag71xx** %12, align 8
  %79 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %77
  %83 = load %struct.ag71xx*, %struct.ag71xx** %12, align 8
  %84 = load i32, i32* @probe, align 4
  %85 = load %struct.net_device*, %struct.net_device** %6, align 8
  %86 = call i32 (%struct.ag71xx*, i32, %struct.net_device*, i8*, ...) @netif_err(%struct.ag71xx* %83, i32 %84, %struct.net_device* %85, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %2, align 4
  br label %412

89:                                               ; preds = %77
  %90 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %91 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %90, i32 0, i32 0
  %92 = call i8* @devm_clk_get(%struct.TYPE_15__* %91, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %93 = load %struct.ag71xx*, %struct.ag71xx** %12, align 8
  %94 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %93, i32 0, i32 1
  store i8* %92, i8** %94, align 8
  %95 = load %struct.ag71xx*, %struct.ag71xx** %12, align 8
  %96 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %95, i32 0, i32 1
  %97 = load i8*, i8** %96, align 8
  %98 = call i64 @IS_ERR(i8* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %109

100:                                              ; preds = %89
  %101 = load %struct.ag71xx*, %struct.ag71xx** %12, align 8
  %102 = load i32, i32* @probe, align 4
  %103 = load %struct.net_device*, %struct.net_device** %6, align 8
  %104 = call i32 (%struct.ag71xx*, i32, %struct.net_device*, i8*, ...) @netif_err(%struct.ag71xx* %101, i32 %102, %struct.net_device* %103, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %105 = load %struct.ag71xx*, %struct.ag71xx** %12, align 8
  %106 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %105, i32 0, i32 1
  %107 = load i8*, i8** %106, align 8
  %108 = call i32 @PTR_ERR(i8* %107)
  store i32 %108, i32* %2, align 4
  br label %412

109:                                              ; preds = %89
  %110 = load %struct.net_device*, %struct.net_device** %6, align 8
  %111 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %112 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %111, i32 0, i32 0
  %113 = call i32 @SET_NETDEV_DEV(%struct.net_device* %110, %struct.TYPE_15__* %112)
  %114 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %115 = load %struct.ag71xx*, %struct.ag71xx** %12, align 8
  %116 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %115, i32 0, i32 17
  store %struct.platform_device* %114, %struct.platform_device** %116, align 8
  %117 = load %struct.net_device*, %struct.net_device** %6, align 8
  %118 = load %struct.ag71xx*, %struct.ag71xx** %12, align 8
  %119 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %118, i32 0, i32 16
  store %struct.net_device* %117, %struct.net_device** %119, align 8
  %120 = load %struct.ag71xx_dcfg*, %struct.ag71xx_dcfg** %5, align 8
  %121 = load %struct.ag71xx*, %struct.ag71xx** %12, align 8
  %122 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %121, i32 0, i32 15
  store %struct.ag71xx_dcfg* %120, %struct.ag71xx_dcfg** %122, align 8
  %123 = load i32, i32* @AG71XX_DEFAULT_MSG_ENABLE, align 4
  %124 = call i32 @netif_msg_init(i32 -1, i32 %123)
  %125 = load %struct.ag71xx*, %struct.ag71xx** %12, align 8
  %126 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %125, i32 0, i32 14
  store i32 %124, i32* %126, align 4
  %127 = load %struct.ag71xx*, %struct.ag71xx** %12, align 8
  %128 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %127, i32 0, i32 13
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.ag71xx_dcfg*, %struct.ag71xx_dcfg** %5, align 8
  %131 = getelementptr inbounds %struct.ag71xx_dcfg, %struct.ag71xx_dcfg* %130, i32 0, i32 0
  %132 = load i8*, i8** %131, align 8
  %133 = call i32 @memcpy(i32 %129, i8* %132, i32 4)
  %134 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %135 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %134, i32 0, i32 0
  %136 = call i8* @devm_reset_control_get(%struct.TYPE_15__* %135, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %137 = load %struct.ag71xx*, %struct.ag71xx** %12, align 8
  %138 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %137, i32 0, i32 2
  store i8* %136, i8** %138, align 8
  %139 = load %struct.ag71xx*, %struct.ag71xx** %12, align 8
  %140 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %139, i32 0, i32 2
  %141 = load i8*, i8** %140, align 8
  %142 = call i64 @IS_ERR(i8* %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %153

144:                                              ; preds = %109
  %145 = load %struct.ag71xx*, %struct.ag71xx** %12, align 8
  %146 = load i32, i32* @probe, align 4
  %147 = load %struct.net_device*, %struct.net_device** %6, align 8
  %148 = call i32 (%struct.ag71xx*, i32, %struct.net_device*, i8*, ...) @netif_err(%struct.ag71xx* %145, i32 %146, %struct.net_device* %147, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %149 = load %struct.ag71xx*, %struct.ag71xx** %12, align 8
  %150 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %149, i32 0, i32 2
  %151 = load i8*, i8** %150, align 8
  %152 = call i32 @PTR_ERR(i8* %151)
  store i32 %152, i32* %10, align 4
  br label %408

153:                                              ; preds = %109
  %154 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %155 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %154, i32 0, i32 0
  %156 = load %struct.resource*, %struct.resource** %7, align 8
  %157 = getelementptr inbounds %struct.resource, %struct.resource* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = load %struct.resource*, %struct.resource** %7, align 8
  %160 = call i32 @resource_size(%struct.resource* %159)
  %161 = call i64 @devm_ioremap_nocache(%struct.TYPE_15__* %155, i64 %158, i32 %160)
  %162 = load %struct.ag71xx*, %struct.ag71xx** %12, align 8
  %163 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %162, i32 0, i32 4
  store i64 %161, i64* %163, align 8
  %164 = load %struct.ag71xx*, %struct.ag71xx** %12, align 8
  %165 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %164, i32 0, i32 4
  %166 = load i64, i64* %165, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %171, label %168

168:                                              ; preds = %153
  %169 = load i32, i32* @ENOMEM, align 4
  %170 = sub nsw i32 0, %169
  store i32 %170, i32* %10, align 4
  br label %408

171:                                              ; preds = %153
  %172 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %173 = call i32 @platform_get_irq(%struct.platform_device* %172, i32 0)
  %174 = load %struct.net_device*, %struct.net_device** %6, align 8
  %175 = getelementptr inbounds %struct.net_device, %struct.net_device* %174, i32 0, i32 1
  store i32 %173, i32* %175, align 4
  %176 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %177 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %176, i32 0, i32 0
  %178 = load %struct.net_device*, %struct.net_device** %6, align 8
  %179 = getelementptr inbounds %struct.net_device, %struct.net_device* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* @ag71xx_interrupt, align 4
  %182 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %183 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %182, i32 0, i32 0
  %184 = call i32 @dev_name(%struct.TYPE_15__* %183)
  %185 = load %struct.net_device*, %struct.net_device** %6, align 8
  %186 = call i32 @devm_request_irq(%struct.TYPE_15__* %177, i32 %180, i32 %181, i32 0, i32 %184, %struct.net_device* %185)
  store i32 %186, i32* %10, align 4
  %187 = load i32, i32* %10, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %197

189:                                              ; preds = %171
  %190 = load %struct.ag71xx*, %struct.ag71xx** %12, align 8
  %191 = load i32, i32* @probe, align 4
  %192 = load %struct.net_device*, %struct.net_device** %6, align 8
  %193 = load %struct.net_device*, %struct.net_device** %6, align 8
  %194 = getelementptr inbounds %struct.net_device, %struct.net_device* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = call i32 (%struct.ag71xx*, i32, %struct.net_device*, i8*, ...) @netif_err(%struct.ag71xx* %190, i32 %191, %struct.net_device* %192, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32 %195)
  br label %408

197:                                              ; preds = %171
  %198 = load %struct.net_device*, %struct.net_device** %6, align 8
  %199 = getelementptr inbounds %struct.net_device, %struct.net_device* %198, i32 0, i32 4
  store i32* @ag71xx_netdev_ops, i32** %199, align 8
  %200 = load %struct.ag71xx*, %struct.ag71xx** %12, align 8
  %201 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %200, i32 0, i32 12
  %202 = load i32, i32* @ag71xx_restart_work_func, align 4
  %203 = call i32 @INIT_DELAYED_WORK(i32* %201, i32 %202)
  %204 = load %struct.ag71xx*, %struct.ag71xx** %12, align 8
  %205 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %204, i32 0, i32 11
  %206 = load i32, i32* @ag71xx_oom_timer_handler, align 4
  %207 = call i32 @timer_setup(i32* %205, i32 %206, i32 0)
  %208 = load i32, i32* @AG71XX_TX_RING_SIZE_DEFAULT, align 4
  store i32 %208, i32* %9, align 4
  %209 = load i32, i32* @AG71XX_RX_RING_SIZE_DEFAULT, align 4
  %210 = call i8* @ag71xx_ring_size_order(i32 %209)
  %211 = load %struct.ag71xx*, %struct.ag71xx** %12, align 8
  %212 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %211, i32 0, i32 10
  %213 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %212, i32 0, i32 0
  store i8* %210, i8** %213, align 8
  %214 = load %struct.net_device*, %struct.net_device** %6, align 8
  %215 = getelementptr inbounds %struct.net_device, %struct.net_device* %214, i32 0, i32 0
  store i32 68, i32* %215, align 8
  %216 = load %struct.ag71xx_dcfg*, %struct.ag71xx_dcfg** %5, align 8
  %217 = getelementptr inbounds %struct.ag71xx_dcfg, %struct.ag71xx_dcfg* %216, i32 0, i32 1
  %218 = load i64, i64* %217, align 8
  %219 = call i64 @ag71xx_max_frame_len(i32 0)
  %220 = sub nsw i64 %218, %219
  %221 = load %struct.net_device*, %struct.net_device** %6, align 8
  %222 = getelementptr inbounds %struct.net_device, %struct.net_device* %221, i32 0, i32 3
  store i64 %220, i64* %222, align 8
  %223 = load i32, i32* @NET_SKB_PAD, align 4
  %224 = load %struct.ag71xx*, %struct.ag71xx** %12, align 8
  %225 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %224, i32 0, i32 9
  store i32 %223, i32* %225, align 8
  %226 = load %struct.ag71xx*, %struct.ag71xx** %12, align 8
  %227 = load i32, i32* @AR7100, align 4
  %228 = call i64 @ag71xx_is(%struct.ag71xx* %226, i32 %227)
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %243, label %230

230:                                              ; preds = %197
  %231 = load %struct.ag71xx*, %struct.ag71xx** %12, align 8
  %232 = load i32, i32* @AR9130, align 4
  %233 = call i64 @ag71xx_is(%struct.ag71xx* %231, i32 %232)
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %243, label %235

235:                                              ; preds = %230
  %236 = load i64, i64* @NET_IP_ALIGN, align 8
  %237 = load %struct.ag71xx*, %struct.ag71xx** %12, align 8
  %238 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %237, i32 0, i32 9
  %239 = load i32, i32* %238, align 8
  %240 = sext i32 %239 to i64
  %241 = add nsw i64 %240, %236
  %242 = trunc i64 %241 to i32
  store i32 %242, i32* %238, align 8
  br label %243

243:                                              ; preds = %235, %230, %197
  %244 = load %struct.ag71xx*, %struct.ag71xx** %12, align 8
  %245 = load i32, i32* @AR7100, align 4
  %246 = call i64 @ag71xx_is(%struct.ag71xx* %244, i32 %245)
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %248, label %256

248:                                              ; preds = %243
  %249 = load i32, i32* @AG71XX_TX_RING_SPLIT, align 4
  %250 = load %struct.ag71xx*, %struct.ag71xx** %12, align 8
  %251 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %250, i32 0, i32 8
  %252 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %251, i32 0, i32 1
  store i32 %249, i32* %252, align 8
  %253 = load i32, i32* @AG71XX_TX_RING_DS_PER_PKT, align 4
  %254 = load i32, i32* %9, align 4
  %255 = mul nsw i32 %254, %253
  store i32 %255, i32* %9, align 4
  br label %256

256:                                              ; preds = %248, %243
  %257 = load i32, i32* %9, align 4
  %258 = call i8* @ag71xx_ring_size_order(i32 %257)
  %259 = load %struct.ag71xx*, %struct.ag71xx** %12, align 8
  %260 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %259, i32 0, i32 8
  %261 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %260, i32 0, i32 0
  store i8* %258, i8** %261, align 8
  %262 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %263 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %262, i32 0, i32 0
  %264 = load %struct.ag71xx*, %struct.ag71xx** %12, align 8
  %265 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %264, i32 0, i32 6
  %266 = load i32, i32* @GFP_KERNEL, align 4
  %267 = call %struct.TYPE_16__* @dmam_alloc_coherent(%struct.TYPE_15__* %263, i32 4, i64* %265, i32 %266)
  %268 = load %struct.ag71xx*, %struct.ag71xx** %12, align 8
  %269 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %268, i32 0, i32 7
  store %struct.TYPE_16__* %267, %struct.TYPE_16__** %269, align 8
  %270 = load %struct.ag71xx*, %struct.ag71xx** %12, align 8
  %271 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %270, i32 0, i32 7
  %272 = load %struct.TYPE_16__*, %struct.TYPE_16__** %271, align 8
  %273 = icmp ne %struct.TYPE_16__* %272, null
  br i1 %273, label %277, label %274

274:                                              ; preds = %256
  %275 = load i32, i32* @ENOMEM, align 4
  %276 = sub nsw i32 0, %275
  store i32 %276, i32* %10, align 4
  br label %408

277:                                              ; preds = %256
  %278 = load %struct.ag71xx*, %struct.ag71xx** %12, align 8
  %279 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %278, i32 0, i32 7
  %280 = load %struct.TYPE_16__*, %struct.TYPE_16__** %279, align 8
  %281 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %280, i32 0, i32 2
  store i64 0, i64* %281, align 8
  %282 = load %struct.ag71xx*, %struct.ag71xx** %12, align 8
  %283 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %282, i32 0, i32 7
  %284 = load %struct.TYPE_16__*, %struct.TYPE_16__** %283, align 8
  %285 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %284, i32 0, i32 1
  store i64 0, i64* %285, align 8
  %286 = load %struct.ag71xx*, %struct.ag71xx** %12, align 8
  %287 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %286, i32 0, i32 6
  %288 = load i64, i64* %287, align 8
  %289 = load %struct.ag71xx*, %struct.ag71xx** %12, align 8
  %290 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %289, i32 0, i32 7
  %291 = load %struct.TYPE_16__*, %struct.TYPE_16__** %290, align 8
  %292 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %291, i32 0, i32 0
  store i64 %288, i64* %292, align 8
  %293 = load %struct.device_node*, %struct.device_node** %4, align 8
  %294 = call i8* @of_get_mac_address(%struct.device_node* %293)
  store i8* %294, i8** %8, align 8
  %295 = load i8*, i8** %8, align 8
  %296 = call i64 @IS_ERR(i8* %295)
  %297 = icmp ne i64 %296, 0
  br i1 %297, label %305, label %298

298:                                              ; preds = %277
  %299 = load %struct.net_device*, %struct.net_device** %6, align 8
  %300 = getelementptr inbounds %struct.net_device, %struct.net_device* %299, i32 0, i32 2
  %301 = load i32, i32* %300, align 8
  %302 = load i8*, i8** %8, align 8
  %303 = load i32, i32* @ETH_ALEN, align 4
  %304 = call i32 @memcpy(i32 %301, i8* %302, i32 %303)
  br label %305

305:                                              ; preds = %298, %277
  %306 = load i8*, i8** %8, align 8
  %307 = call i64 @IS_ERR(i8* %306)
  %308 = icmp ne i64 %307, 0
  br i1 %308, label %315, label %309

309:                                              ; preds = %305
  %310 = load %struct.net_device*, %struct.net_device** %6, align 8
  %311 = getelementptr inbounds %struct.net_device, %struct.net_device* %310, i32 0, i32 2
  %312 = load i32, i32* %311, align 8
  %313 = call i32 @is_valid_ether_addr(i32 %312)
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %324, label %315

315:                                              ; preds = %309, %305
  %316 = load %struct.ag71xx*, %struct.ag71xx** %12, align 8
  %317 = load i32, i32* @probe, align 4
  %318 = load %struct.net_device*, %struct.net_device** %6, align 8
  %319 = call i32 (%struct.ag71xx*, i32, %struct.net_device*, i8*, ...) @netif_err(%struct.ag71xx* %316, i32 %317, %struct.net_device* %318, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0))
  %320 = load %struct.net_device*, %struct.net_device** %6, align 8
  %321 = getelementptr inbounds %struct.net_device, %struct.net_device* %320, i32 0, i32 2
  %322 = load i32, i32* %321, align 8
  %323 = call i32 @eth_random_addr(i32 %322)
  br label %324

324:                                              ; preds = %315, %309
  %325 = load %struct.device_node*, %struct.device_node** %4, align 8
  %326 = call i32 @of_get_phy_mode(%struct.device_node* %325)
  %327 = load %struct.ag71xx*, %struct.ag71xx** %12, align 8
  %328 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %327, i32 0, i32 3
  store i32 %326, i32* %328, align 8
  %329 = load %struct.ag71xx*, %struct.ag71xx** %12, align 8
  %330 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %329, i32 0, i32 3
  %331 = load i32, i32* %330, align 8
  %332 = icmp slt i32 %331, 0
  br i1 %332, label %333, label %341

333:                                              ; preds = %324
  %334 = load %struct.ag71xx*, %struct.ag71xx** %12, align 8
  %335 = load i32, i32* @probe, align 4
  %336 = load %struct.net_device*, %struct.net_device** %6, align 8
  %337 = call i32 (%struct.ag71xx*, i32, %struct.net_device*, i8*, ...) @netif_err(%struct.ag71xx* %334, i32 %335, %struct.net_device* %336, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0))
  %338 = load %struct.ag71xx*, %struct.ag71xx** %12, align 8
  %339 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %338, i32 0, i32 3
  %340 = load i32, i32* %339, align 8
  store i32 %340, i32* %10, align 4
  br label %408

341:                                              ; preds = %324
  %342 = load %struct.net_device*, %struct.net_device** %6, align 8
  %343 = load %struct.ag71xx*, %struct.ag71xx** %12, align 8
  %344 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %343, i32 0, i32 5
  %345 = load i32, i32* @ag71xx_poll, align 4
  %346 = load i32, i32* @AG71XX_NAPI_WEIGHT, align 4
  %347 = call i32 @netif_napi_add(%struct.net_device* %342, i32* %344, i32 %345, i32 %346)
  %348 = load %struct.ag71xx*, %struct.ag71xx** %12, align 8
  %349 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %348, i32 0, i32 1
  %350 = load i8*, i8** %349, align 8
  %351 = call i32 @clk_prepare_enable(i8* %350)
  store i32 %351, i32* %10, align 4
  %352 = load i32, i32* %10, align 4
  %353 = icmp ne i32 %352, 0
  br i1 %353, label %354, label %359

354:                                              ; preds = %341
  %355 = load %struct.ag71xx*, %struct.ag71xx** %12, align 8
  %356 = load i32, i32* @probe, align 4
  %357 = load %struct.net_device*, %struct.net_device** %6, align 8
  %358 = call i32 (%struct.ag71xx*, i32, %struct.net_device*, i8*, ...) @netif_err(%struct.ag71xx* %355, i32 %356, %struct.net_device* %357, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0))
  br label %408

359:                                              ; preds = %341
  %360 = load %struct.ag71xx*, %struct.ag71xx** %12, align 8
  %361 = load i32, i32* @AG71XX_REG_MAC_CFG1, align 4
  %362 = call i32 @ag71xx_wr(%struct.ag71xx* %360, i32 %361, i32 0)
  %363 = load %struct.ag71xx*, %struct.ag71xx** %12, align 8
  %364 = call i32 @ag71xx_hw_init(%struct.ag71xx* %363)
  %365 = load %struct.ag71xx*, %struct.ag71xx** %12, align 8
  %366 = call i32 @ag71xx_mdio_probe(%struct.ag71xx* %365)
  store i32 %366, i32* %10, align 4
  %367 = load i32, i32* %10, align 4
  %368 = icmp ne i32 %367, 0
  br i1 %368, label %369, label %370

369:                                              ; preds = %359
  br label %403

370:                                              ; preds = %359
  %371 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %372 = load %struct.net_device*, %struct.net_device** %6, align 8
  %373 = call i32 @platform_set_drvdata(%struct.platform_device* %371, %struct.net_device* %372)
  %374 = load %struct.net_device*, %struct.net_device** %6, align 8
  %375 = call i32 @register_netdev(%struct.net_device* %374)
  store i32 %375, i32* %10, align 4
  %376 = load i32, i32* %10, align 4
  %377 = icmp ne i32 %376, 0
  br i1 %377, label %378, label %385

378:                                              ; preds = %370
  %379 = load %struct.ag71xx*, %struct.ag71xx** %12, align 8
  %380 = load i32, i32* @probe, align 4
  %381 = load %struct.net_device*, %struct.net_device** %6, align 8
  %382 = call i32 (%struct.ag71xx*, i32, %struct.net_device*, i8*, ...) @netif_err(%struct.ag71xx* %379, i32 %380, %struct.net_device* %381, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0))
  %383 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %384 = call i32 @platform_set_drvdata(%struct.platform_device* %383, %struct.net_device* null)
  br label %400

385:                                              ; preds = %370
  %386 = load %struct.ag71xx*, %struct.ag71xx** %12, align 8
  %387 = load i32, i32* @probe, align 4
  %388 = load %struct.net_device*, %struct.net_device** %6, align 8
  %389 = load %struct.ag71xx*, %struct.ag71xx** %12, align 8
  %390 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %389, i32 0, i32 4
  %391 = load i64, i64* %390, align 8
  %392 = load %struct.net_device*, %struct.net_device** %6, align 8
  %393 = getelementptr inbounds %struct.net_device, %struct.net_device* %392, i32 0, i32 1
  %394 = load i32, i32* %393, align 4
  %395 = load %struct.ag71xx*, %struct.ag71xx** %12, align 8
  %396 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %395, i32 0, i32 3
  %397 = load i32, i32* %396, align 8
  %398 = call i32 @phy_modes(i32 %397)
  %399 = call i32 @netif_info(%struct.ag71xx* %386, i32 %387, %struct.net_device* %388, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10, i64 0, i64 0), i64 %391, i32 %394, i32 %398)
  store i32 0, i32* %2, align 4
  br label %412

400:                                              ; preds = %378
  %401 = load %struct.ag71xx*, %struct.ag71xx** %12, align 8
  %402 = call i32 @ag71xx_mdio_remove(%struct.ag71xx* %401)
  br label %403

403:                                              ; preds = %400, %369
  %404 = load %struct.ag71xx*, %struct.ag71xx** %12, align 8
  %405 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %404, i32 0, i32 1
  %406 = load i8*, i8** %405, align 8
  %407 = call i32 @clk_disable_unprepare(i8* %406)
  br label %408

408:                                              ; preds = %403, %354, %333, %274, %189, %168, %144
  %409 = load %struct.net_device*, %struct.net_device** %6, align 8
  %410 = call i32 @free_netdev(%struct.net_device* %409)
  %411 = load i32, i32* %10, align 4
  store i32 %411, i32* %2, align 4
  br label %412

412:                                              ; preds = %408, %385, %100, %82, %46, %37, %28, %19
  %413 = load i32, i32* %2, align 4
  ret i32 %413
}

declare dso_local %struct.net_device* @devm_alloc_etherdev(%struct.TYPE_15__*, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local %struct.ag71xx_dcfg* @of_device_get_match_data(%struct.TYPE_15__*) #1

declare dso_local %struct.ag71xx* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ARRAY_SIZE(i64*) #1

declare dso_local i32 @netif_err(%struct.ag71xx*, i32, %struct.net_device*, i8*, ...) #1

declare dso_local i8* @devm_clk_get(%struct.TYPE_15__*, i8*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, %struct.TYPE_15__*) #1

declare dso_local i32 @netif_msg_init(i32, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i8* @devm_reset_control_get(%struct.TYPE_15__*, i8*) #1

declare dso_local i64 @devm_ioremap_nocache(%struct.TYPE_15__*, i64, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_irq(%struct.TYPE_15__*, i32, i32, i32, i32, %struct.net_device*) #1

declare dso_local i32 @dev_name(%struct.TYPE_15__*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i8* @ag71xx_ring_size_order(i32) #1

declare dso_local i64 @ag71xx_max_frame_len(i32) #1

declare dso_local i64 @ag71xx_is(%struct.ag71xx*, i32) #1

declare dso_local %struct.TYPE_16__* @dmam_alloc_coherent(%struct.TYPE_15__*, i32, i64*, i32) #1

declare dso_local i8* @of_get_mac_address(%struct.device_node*) #1

declare dso_local i32 @is_valid_ether_addr(i32) #1

declare dso_local i32 @eth_random_addr(i32) #1

declare dso_local i32 @of_get_phy_mode(%struct.device_node*) #1

declare dso_local i32 @netif_napi_add(%struct.net_device*, i32*, i32, i32) #1

declare dso_local i32 @clk_prepare_enable(i8*) #1

declare dso_local i32 @ag71xx_wr(%struct.ag71xx*, i32, i32) #1

declare dso_local i32 @ag71xx_hw_init(%struct.ag71xx*) #1

declare dso_local i32 @ag71xx_mdio_probe(%struct.ag71xx*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.net_device*) #1

declare dso_local i32 @register_netdev(%struct.net_device*) #1

declare dso_local i32 @netif_info(%struct.ag71xx*, i32, %struct.net_device*, i8*, i64, i32, i32) #1

declare dso_local i32 @phy_modes(i32) #1

declare dso_local i32 @ag71xx_mdio_remove(%struct.ag71xx*) #1

declare dso_local i32 @clk_disable_unprepare(i8*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
