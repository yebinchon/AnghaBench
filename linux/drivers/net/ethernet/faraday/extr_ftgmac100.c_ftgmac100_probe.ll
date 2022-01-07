; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/faraday/extr_ftgmac100.c_ftgmac100_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/faraday/extr_ftgmac100.c_ftgmac100_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.resource = type { i32 }
%struct.net_device = type { i32, i32, i32, i32, i32*, i32* }
%struct.ftgmac100 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.net_device*, i32, i8*, i8*, i32, %struct.TYPE_5__* }
%struct.phy_device = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ftgmac100_ethtool_ops = common dso_local global i32 0, align 4
@ftgmac100_netdev_ops = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@ftgmac100_reset_task = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Could not reserve memory region\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Failed to ioremap ethernet registers\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"aspeed,ast2400-mac\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"aspeed,ast2500-mac\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"aspeed,ast2600-mac\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"use-ncsi\00", align 1
@CONFIG_NET_NCSI = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [24 x i8] c"NCSI stack not enabled\0A\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"Using NCSI interface\0A\00", align 1
@ftgmac100_ncsi_handler = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [11 x i8] c"phy-handle\00", align 1
@ftgmac100_adjust_link = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [26 x i8] c"Failed to connect to phy\0A\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"mdio\00", align 1
@DEF_RX_QUEUE_ENTRIES = common dso_local global i32 0, align 4
@DEF_TX_QUEUE_ENTRIES = common dso_local global i32 0, align 4
@NETIF_F_RXCSUM = common dso_local global i32 0, align 4
@NETIF_F_HW_CSUM = common dso_local global i32 0, align 4
@NETIF_F_GRO = common dso_local global i32 0, align 4
@NETIF_F_SG = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_CTAG_RX = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_CTAG_TX = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_CTAG_FILTER = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [15 x i8] c"no-hw-checksum\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"Failed to register netdev\0A\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"irq %d, mapped at %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ftgmac100_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ftgmac100_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.resource*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.ftgmac100*, align 8
  %8 = alloca %struct.device_node*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.phy_device*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store i32 0, i32* %9, align 4
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = icmp ne %struct.platform_device* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %344

16:                                               ; preds = %1
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = load i32, i32* @IORESOURCE_MEM, align 4
  %19 = call %struct.resource* @platform_get_resource(%struct.platform_device* %17, i32 %18, i32 0)
  store %struct.resource* %19, %struct.resource** %4, align 8
  %20 = load %struct.resource*, %struct.resource** %4, align 8
  %21 = icmp ne %struct.resource* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %16
  %23 = load i32, i32* @ENXIO, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %344

25:                                               ; preds = %16
  %26 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %27 = call i32 @platform_get_irq(%struct.platform_device* %26, i32 0)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* %5, align 4
  store i32 %31, i32* %2, align 4
  br label %344

32:                                               ; preds = %25
  %33 = call %struct.net_device* @alloc_etherdev(i32 96)
  store %struct.net_device* %33, %struct.net_device** %6, align 8
  %34 = load %struct.net_device*, %struct.net_device** %6, align 8
  %35 = icmp ne %struct.net_device* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %32
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %9, align 4
  br label %342

39:                                               ; preds = %32
  %40 = load %struct.net_device*, %struct.net_device** %6, align 8
  %41 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %42 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %41, i32 0, i32 0
  %43 = call i32 @SET_NETDEV_DEV(%struct.net_device* %40, %struct.TYPE_5__* %42)
  %44 = load %struct.net_device*, %struct.net_device** %6, align 8
  %45 = getelementptr inbounds %struct.net_device, %struct.net_device* %44, i32 0, i32 5
  store i32* @ftgmac100_ethtool_ops, i32** %45, align 8
  %46 = load %struct.net_device*, %struct.net_device** %6, align 8
  %47 = getelementptr inbounds %struct.net_device, %struct.net_device* %46, i32 0, i32 4
  store i32* @ftgmac100_netdev_ops, i32** %47, align 8
  %48 = load i32, i32* @HZ, align 4
  %49 = mul nsw i32 5, %48
  %50 = load %struct.net_device*, %struct.net_device** %6, align 8
  %51 = getelementptr inbounds %struct.net_device, %struct.net_device* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %53 = load %struct.net_device*, %struct.net_device** %6, align 8
  %54 = call i32 @platform_set_drvdata(%struct.platform_device* %52, %struct.net_device* %53)
  %55 = load %struct.net_device*, %struct.net_device** %6, align 8
  %56 = call %struct.ftgmac100* @netdev_priv(%struct.net_device* %55)
  store %struct.ftgmac100* %56, %struct.ftgmac100** %7, align 8
  %57 = load %struct.net_device*, %struct.net_device** %6, align 8
  %58 = load %struct.ftgmac100*, %struct.ftgmac100** %7, align 8
  %59 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %58, i32 0, i32 11
  store %struct.net_device* %57, %struct.net_device** %59, align 8
  %60 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %61 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %60, i32 0, i32 0
  %62 = load %struct.ftgmac100*, %struct.ftgmac100** %7, align 8
  %63 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %62, i32 0, i32 16
  store %struct.TYPE_5__* %61, %struct.TYPE_5__** %63, align 8
  %64 = load %struct.ftgmac100*, %struct.ftgmac100** %7, align 8
  %65 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %64, i32 0, i32 15
  %66 = load i32, i32* @ftgmac100_reset_task, align 4
  %67 = call i32 @INIT_WORK(i32* %65, i32 %66)
  %68 = load %struct.resource*, %struct.resource** %4, align 8
  %69 = getelementptr inbounds %struct.resource, %struct.resource* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.resource*, %struct.resource** %4, align 8
  %72 = call i32 @resource_size(%struct.resource* %71)
  %73 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %74 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %73, i32 0, i32 0
  %75 = call i32 @dev_name(%struct.TYPE_5__* %74)
  %76 = call i32 @request_mem_region(i32 %70, i32 %72, i32 %75)
  %77 = load %struct.ftgmac100*, %struct.ftgmac100** %7, align 8
  %78 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %77, i32 0, i32 5
  store i32 %76, i32* %78, align 4
  %79 = load %struct.ftgmac100*, %struct.ftgmac100** %7, align 8
  %80 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %79, i32 0, i32 5
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %89, label %83

83:                                               ; preds = %39
  %84 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %85 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %84, i32 0, i32 0
  %86 = call i32 @dev_err(%struct.TYPE_5__* %85, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %87 = load i32, i32* @ENOMEM, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %9, align 4
  br label %339

89:                                               ; preds = %39
  %90 = load %struct.resource*, %struct.resource** %4, align 8
  %91 = getelementptr inbounds %struct.resource, %struct.resource* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.resource*, %struct.resource** %4, align 8
  %94 = call i32 @resource_size(%struct.resource* %93)
  %95 = call i32 @ioremap(i32 %92, i32 %94)
  %96 = load %struct.ftgmac100*, %struct.ftgmac100** %7, align 8
  %97 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %96, i32 0, i32 6
  store i32 %95, i32* %97, align 8
  %98 = load %struct.ftgmac100*, %struct.ftgmac100** %7, align 8
  %99 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %98, i32 0, i32 6
  %100 = load i32, i32* %99, align 8
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %108, label %102

102:                                              ; preds = %89
  %103 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %104 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %103, i32 0, i32 0
  %105 = call i32 @dev_err(%struct.TYPE_5__* %104, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %106 = load i32, i32* @EIO, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %9, align 4
  br label %334

108:                                              ; preds = %89
  %109 = load i32, i32* %5, align 4
  %110 = load %struct.net_device*, %struct.net_device** %6, align 8
  %111 = getelementptr inbounds %struct.net_device, %struct.net_device* %110, i32 0, i32 1
  store i32 %109, i32* %111, align 4
  %112 = load %struct.ftgmac100*, %struct.ftgmac100** %7, align 8
  %113 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %112, i32 0, i32 0
  store i32 1, i32* %113, align 8
  %114 = load %struct.ftgmac100*, %struct.ftgmac100** %7, align 8
  %115 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %114, i32 0, i32 1
  store i32 1, i32* %115, align 4
  %116 = load %struct.ftgmac100*, %struct.ftgmac100** %7, align 8
  %117 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %116, i32 0, i32 2
  store i32 1, i32* %117, align 8
  %118 = load %struct.ftgmac100*, %struct.ftgmac100** %7, align 8
  %119 = call i32 @ftgmac100_initial_mac(%struct.ftgmac100* %118)
  %120 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %121 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 0
  %123 = load %struct.device_node*, %struct.device_node** %122, align 8
  store %struct.device_node* %123, %struct.device_node** %8, align 8
  %124 = load %struct.device_node*, %struct.device_node** %8, align 8
  %125 = icmp ne %struct.device_node* %124, null
  br i1 %125, label %126, label %147

126:                                              ; preds = %108
  %127 = load %struct.device_node*, %struct.device_node** %8, align 8
  %128 = call i64 @of_device_is_compatible(%struct.device_node* %127, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %138, label %130

130:                                              ; preds = %126
  %131 = load %struct.device_node*, %struct.device_node** %8, align 8
  %132 = call i64 @of_device_is_compatible(%struct.device_node* %131, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %138, label %134

134:                                              ; preds = %130
  %135 = load %struct.device_node*, %struct.device_node** %8, align 8
  %136 = call i64 @of_device_is_compatible(%struct.device_node* %135, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %147

138:                                              ; preds = %134, %130, %126
  %139 = call i8* @BIT(i32 30)
  %140 = load %struct.ftgmac100*, %struct.ftgmac100** %7, align 8
  %141 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %140, i32 0, i32 14
  store i8* %139, i8** %141, align 8
  %142 = call i8* @BIT(i32 30)
  %143 = load %struct.ftgmac100*, %struct.ftgmac100** %7, align 8
  %144 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %143, i32 0, i32 13
  store i8* %142, i8** %144, align 8
  %145 = load %struct.ftgmac100*, %struct.ftgmac100** %7, align 8
  %146 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %145, i32 0, i32 3
  store i32 1, i32* %146, align 4
  br label %154

147:                                              ; preds = %134, %108
  %148 = call i8* @BIT(i32 15)
  %149 = load %struct.ftgmac100*, %struct.ftgmac100** %7, align 8
  %150 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %149, i32 0, i32 14
  store i8* %148, i8** %150, align 8
  %151 = call i8* @BIT(i32 15)
  %152 = load %struct.ftgmac100*, %struct.ftgmac100** %7, align 8
  %153 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %152, i32 0, i32 13
  store i8* %151, i8** %153, align 8
  br label %154

154:                                              ; preds = %147, %138
  %155 = load %struct.device_node*, %struct.device_node** %8, align 8
  %156 = icmp ne %struct.device_node* %155, null
  br i1 %156, label %157, label %186

157:                                              ; preds = %154
  %158 = load %struct.device_node*, %struct.device_node** %8, align 8
  %159 = call i64 @of_get_property(%struct.device_node* %158, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32* null)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %186

161:                                              ; preds = %157
  %162 = load i32, i32* @CONFIG_NET_NCSI, align 4
  %163 = call i32 @IS_ENABLED(i32 %162)
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %169, label %165

165:                                              ; preds = %161
  %166 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %167 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %166, i32 0, i32 0
  %168 = call i32 @dev_err(%struct.TYPE_5__* %167, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  br label %325

169:                                              ; preds = %161
  %170 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %171 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %170, i32 0, i32 0
  %172 = call i32 @dev_info(%struct.TYPE_5__* %171, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0))
  %173 = load %struct.ftgmac100*, %struct.ftgmac100** %7, align 8
  %174 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %173, i32 0, i32 4
  store i32 1, i32* %174, align 8
  %175 = load %struct.net_device*, %struct.net_device** %6, align 8
  %176 = load i32, i32* @ftgmac100_ncsi_handler, align 4
  %177 = call i32 @ncsi_register_dev(%struct.net_device* %175, i32 %176)
  %178 = load %struct.ftgmac100*, %struct.ftgmac100** %7, align 8
  %179 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %178, i32 0, i32 12
  store i32 %177, i32* %179, align 8
  %180 = load %struct.ftgmac100*, %struct.ftgmac100** %7, align 8
  %181 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %180, i32 0, i32 12
  %182 = load i32, i32* %181, align 8
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %185, label %184

184:                                              ; preds = %169
  br label %325

185:                                              ; preds = %169
  br label %228

186:                                              ; preds = %157, %154
  %187 = load %struct.device_node*, %struct.device_node** %8, align 8
  %188 = icmp ne %struct.device_node* %187, null
  br i1 %188, label %189, label %210

189:                                              ; preds = %186
  %190 = load %struct.device_node*, %struct.device_node** %8, align 8
  %191 = call i64 @of_get_property(%struct.device_node* %190, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i32* null)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %210

193:                                              ; preds = %189
  %194 = load %struct.ftgmac100*, %struct.ftgmac100** %7, align 8
  %195 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %194, i32 0, i32 11
  %196 = load %struct.net_device*, %struct.net_device** %195, align 8
  %197 = load %struct.device_node*, %struct.device_node** %8, align 8
  %198 = call %struct.phy_device* @of_phy_get_and_connect(%struct.net_device* %196, %struct.device_node* %197, i32* @ftgmac100_adjust_link)
  store %struct.phy_device* %198, %struct.phy_device** %10, align 8
  %199 = load %struct.phy_device*, %struct.phy_device** %10, align 8
  %200 = icmp ne %struct.phy_device* %199, null
  br i1 %200, label %205, label %201

201:                                              ; preds = %193
  %202 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %203 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %202, i32 0, i32 0
  %204 = call i32 @dev_err(%struct.TYPE_5__* %203, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0))
  br label %329

205:                                              ; preds = %193
  %206 = load %struct.phy_device*, %struct.phy_device** %10, align 8
  %207 = call i32 @phy_support_asym_pause(%struct.phy_device* %206)
  %208 = load %struct.phy_device*, %struct.phy_device** %10, align 8
  %209 = call i32 @phy_attached_info(%struct.phy_device* %208)
  br label %227

210:                                              ; preds = %189, %186
  %211 = load %struct.device_node*, %struct.device_node** %8, align 8
  %212 = icmp ne %struct.device_node* %211, null
  br i1 %212, label %213, label %226

213:                                              ; preds = %210
  %214 = load %struct.device_node*, %struct.device_node** %8, align 8
  %215 = call i32 @of_get_child_by_name(%struct.device_node* %214, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %226, label %217

217:                                              ; preds = %213
  %218 = load %struct.ftgmac100*, %struct.ftgmac100** %7, align 8
  %219 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %218, i32 0, i32 4
  store i32 0, i32* %219, align 8
  %220 = load %struct.net_device*, %struct.net_device** %6, align 8
  %221 = call i32 @ftgmac100_setup_mdio(%struct.net_device* %220)
  store i32 %221, i32* %9, align 4
  %222 = load i32, i32* %9, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %225

224:                                              ; preds = %217
  br label %329

225:                                              ; preds = %217
  br label %226

226:                                              ; preds = %225, %213, %210
  br label %227

227:                                              ; preds = %226, %205
  br label %228

228:                                              ; preds = %227, %185
  %229 = load %struct.ftgmac100*, %struct.ftgmac100** %7, align 8
  %230 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %229, i32 0, i32 3
  %231 = load i32, i32* %230, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %236

233:                                              ; preds = %228
  %234 = load %struct.ftgmac100*, %struct.ftgmac100** %7, align 8
  %235 = call i32 @ftgmac100_setup_clk(%struct.ftgmac100* %234)
  br label %236

236:                                              ; preds = %233, %228
  %237 = load i32, i32* @DEF_RX_QUEUE_ENTRIES, align 4
  %238 = load %struct.ftgmac100*, %struct.ftgmac100** %7, align 8
  %239 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %238, i32 0, i32 9
  store i32 %237, i32* %239, align 4
  %240 = load %struct.ftgmac100*, %struct.ftgmac100** %7, align 8
  %241 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %240, i32 0, i32 10
  store i32 %237, i32* %241, align 8
  %242 = load i32, i32* @DEF_TX_QUEUE_ENTRIES, align 4
  %243 = load %struct.ftgmac100*, %struct.ftgmac100** %7, align 8
  %244 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %243, i32 0, i32 7
  store i32 %242, i32* %244, align 4
  %245 = load %struct.ftgmac100*, %struct.ftgmac100** %7, align 8
  %246 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %245, i32 0, i32 8
  store i32 %242, i32* %246, align 8
  %247 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %248 = load i32, i32* @NETIF_F_HW_CSUM, align 4
  %249 = or i32 %247, %248
  %250 = load i32, i32* @NETIF_F_GRO, align 4
  %251 = or i32 %249, %250
  %252 = load i32, i32* @NETIF_F_SG, align 4
  %253 = or i32 %251, %252
  %254 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_RX, align 4
  %255 = or i32 %253, %254
  %256 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_TX, align 4
  %257 = or i32 %255, %256
  %258 = load %struct.net_device*, %struct.net_device** %6, align 8
  %259 = getelementptr inbounds %struct.net_device, %struct.net_device* %258, i32 0, i32 2
  store i32 %257, i32* %259, align 8
  %260 = load %struct.ftgmac100*, %struct.ftgmac100** %7, align 8
  %261 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %260, i32 0, i32 4
  %262 = load i32, i32* %261, align 8
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %270

264:                                              ; preds = %236
  %265 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_FILTER, align 4
  %266 = load %struct.net_device*, %struct.net_device** %6, align 8
  %267 = getelementptr inbounds %struct.net_device, %struct.net_device* %266, i32 0, i32 2
  %268 = load i32, i32* %267, align 8
  %269 = or i32 %268, %265
  store i32 %269, i32* %267, align 8
  br label %270

270:                                              ; preds = %264, %236
  %271 = load %struct.device_node*, %struct.device_node** %8, align 8
  %272 = icmp ne %struct.device_node* %271, null
  br i1 %272, label %273, label %284

273:                                              ; preds = %270
  %274 = load %struct.device_node*, %struct.device_node** %8, align 8
  %275 = call i64 @of_device_is_compatible(%struct.device_node* %274, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %276 = icmp ne i64 %275, 0
  br i1 %276, label %277, label %284

277:                                              ; preds = %273
  %278 = load i32, i32* @NETIF_F_HW_CSUM, align 4
  %279 = xor i32 %278, -1
  %280 = load %struct.net_device*, %struct.net_device** %6, align 8
  %281 = getelementptr inbounds %struct.net_device, %struct.net_device* %280, i32 0, i32 2
  %282 = load i32, i32* %281, align 8
  %283 = and i32 %282, %279
  store i32 %283, i32* %281, align 8
  br label %284

284:                                              ; preds = %277, %273, %270
  %285 = load %struct.device_node*, %struct.device_node** %8, align 8
  %286 = icmp ne %struct.device_node* %285, null
  br i1 %286, label %287, label %300

287:                                              ; preds = %284
  %288 = load %struct.device_node*, %struct.device_node** %8, align 8
  %289 = call i64 @of_get_property(%struct.device_node* %288, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0), i32* null)
  %290 = icmp ne i64 %289, 0
  br i1 %290, label %291, label %300

291:                                              ; preds = %287
  %292 = load i32, i32* @NETIF_F_HW_CSUM, align 4
  %293 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %294 = or i32 %292, %293
  %295 = xor i32 %294, -1
  %296 = load %struct.net_device*, %struct.net_device** %6, align 8
  %297 = getelementptr inbounds %struct.net_device, %struct.net_device* %296, i32 0, i32 2
  %298 = load i32, i32* %297, align 8
  %299 = and i32 %298, %295
  store i32 %299, i32* %297, align 8
  br label %300

300:                                              ; preds = %291, %287, %284
  %301 = load %struct.net_device*, %struct.net_device** %6, align 8
  %302 = getelementptr inbounds %struct.net_device, %struct.net_device* %301, i32 0, i32 2
  %303 = load i32, i32* %302, align 8
  %304 = load %struct.net_device*, %struct.net_device** %6, align 8
  %305 = getelementptr inbounds %struct.net_device, %struct.net_device* %304, i32 0, i32 3
  %306 = load i32, i32* %305, align 4
  %307 = or i32 %306, %303
  store i32 %307, i32* %305, align 4
  %308 = load %struct.net_device*, %struct.net_device** %6, align 8
  %309 = call i32 @register_netdev(%struct.net_device* %308)
  store i32 %309, i32* %9, align 4
  %310 = load i32, i32* %9, align 4
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %312, label %316

312:                                              ; preds = %300
  %313 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %314 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %313, i32 0, i32 0
  %315 = call i32 @dev_err(%struct.TYPE_5__* %314, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0))
  br label %326

316:                                              ; preds = %300
  %317 = load %struct.net_device*, %struct.net_device** %6, align 8
  %318 = load %struct.net_device*, %struct.net_device** %6, align 8
  %319 = getelementptr inbounds %struct.net_device, %struct.net_device* %318, i32 0, i32 1
  %320 = load i32, i32* %319, align 4
  %321 = load %struct.ftgmac100*, %struct.ftgmac100** %7, align 8
  %322 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %321, i32 0, i32 6
  %323 = load i32, i32* %322, align 8
  %324 = call i32 @netdev_info(%struct.net_device* %317, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i64 0, i64 0), i32 %320, i32 %323)
  store i32 0, i32* %2, align 4
  br label %344

325:                                              ; preds = %184, %165
  br label %326

326:                                              ; preds = %325, %312
  %327 = load %struct.net_device*, %struct.net_device** %6, align 8
  %328 = call i32 @ftgmac100_destroy_mdio(%struct.net_device* %327)
  br label %329

329:                                              ; preds = %326, %224, %201
  %330 = load %struct.ftgmac100*, %struct.ftgmac100** %7, align 8
  %331 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %330, i32 0, i32 6
  %332 = load i32, i32* %331, align 8
  %333 = call i32 @iounmap(i32 %332)
  br label %334

334:                                              ; preds = %329, %102
  %335 = load %struct.ftgmac100*, %struct.ftgmac100** %7, align 8
  %336 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %335, i32 0, i32 5
  %337 = load i32, i32* %336, align 4
  %338 = call i32 @release_resource(i32 %337)
  br label %339

339:                                              ; preds = %334, %83
  %340 = load %struct.net_device*, %struct.net_device** %6, align 8
  %341 = call i32 @free_netdev(%struct.net_device* %340)
  br label %342

342:                                              ; preds = %339, %36
  %343 = load i32, i32* %9, align 4
  store i32 %343, i32* %2, align 4
  br label %344

344:                                              ; preds = %342, %316, %30, %22, %13
  %345 = load i32, i32* %2, align 4
  ret i32 %345
}

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local %struct.net_device* @alloc_etherdev(i32) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, %struct.TYPE_5__*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.net_device*) #1

declare dso_local %struct.ftgmac100* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @request_mem_region(i32, i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @dev_name(%struct.TYPE_5__*) #1

declare dso_local i32 @dev_err(%struct.TYPE_5__*, i8*) #1

declare dso_local i32 @ioremap(i32, i32) #1

declare dso_local i32 @ftgmac100_initial_mac(%struct.ftgmac100*) #1

declare dso_local i64 @of_device_is_compatible(%struct.device_node*, i8*) #1

declare dso_local i8* @BIT(i32) #1

declare dso_local i64 @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @IS_ENABLED(i32) #1

declare dso_local i32 @dev_info(%struct.TYPE_5__*, i8*) #1

declare dso_local i32 @ncsi_register_dev(%struct.net_device*, i32) #1

declare dso_local %struct.phy_device* @of_phy_get_and_connect(%struct.net_device*, %struct.device_node*, i32*) #1

declare dso_local i32 @phy_support_asym_pause(%struct.phy_device*) #1

declare dso_local i32 @phy_attached_info(%struct.phy_device*) #1

declare dso_local i32 @of_get_child_by_name(%struct.device_node*, i8*) #1

declare dso_local i32 @ftgmac100_setup_mdio(%struct.net_device*) #1

declare dso_local i32 @ftgmac100_setup_clk(%struct.ftgmac100*) #1

declare dso_local i32 @register_netdev(%struct.net_device*) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*, i32, i32) #1

declare dso_local i32 @ftgmac100_destroy_mdio(%struct.net_device*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @release_resource(i32) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
