; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cortina/extr_gemini.c_gemini_ethernet_port_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cortina/extr_gemini.c_gemini_ethernet_port_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.device* }
%struct.gemini_ethernet_port = type { i32, i32, %struct.net_device*, %struct.device*, i32*, i32, i64, i32, i8*, i8*, i8*, i8*, i32, %struct.gemini_ethernet* }
%struct.net_device = type { i32, i32, i32, i32, i32, i64, i32, i32*, i32* }
%struct.gemini_ethernet = type { %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port* }
%struct.resource = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"ethernet0\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"ethernet1\00", align 1
@__const.gemini_ethernet_port_probe.port_names = private unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0)], align 16
@.str.2 = private unnamed_addr constant [23 x i8] c"60008000.ethernet-port\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"6000c000.ethernet-port\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"probe %s ID %d\0A\00", align 1
@TX_QUEUE_NUM = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [36 x i8] c"Can't allocate ethernet device #%d\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@DEFAULT_MSG_ENABLE = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [17 x i8] c"no DMA resource\0A\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"no GMAC resource\0A\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"PCLK\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"no PCLK\0A\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"no reset\0A\00", align 1
@gmac_351x_ops = common dso_local global i32 0, align 4
@gmac_351x_ethtool_ops = common dso_local global i32 0, align 4
@GMAC_OFFLOAD_FEATURES = common dso_local global i32 0, align 4
@NETIF_F_GRO = common dso_local global i32 0, align 4
@ETH_MIN_MTU = common dso_local global i32 0, align 4
@VLAN_ETH_HLEN = common dso_local global i64 0, align 8
@gmac_napi_poll = common dso_local global i32 0, align 4
@DEFAULT_NAPI_WEIGHT = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [41 x i8] c"ethernet address 0x%08x%08x%08x invalid\0A\00", align 1
@.str.12 = private unnamed_addr constant [33 x i8] c"using a random ethernet address\0A\00", align 1
@gemini_port_irq = common dso_local global i32 0, align 4
@gemini_port_irq_thread = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [37 x i8] c"irq %d, DMA @ 0x%pap, GMAC @ 0x%pap\0A\00", align 1
@.str.14 = private unnamed_addr constant [41 x i8] c"PHY init failed, deferring to ifup time\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @gemini_ethernet_port_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gemini_ethernet_port_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca [2 x i8*], align 16
  %5 = alloca %struct.gemini_ethernet_port*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.gemini_ethernet*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.resource*, align 8
  %10 = alloca %struct.resource*, align 8
  %11 = alloca %struct.device*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %15 = bitcast [2 x i8*]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %15, i8* align 16 bitcast ([2 x i8*]* @__const.gemini_ethernet_port_probe.port_names to i8*), i64 16, i1 false)
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  store %struct.device* %17, %struct.device** %6, align 8
  %18 = load %struct.device*, %struct.device** %6, align 8
  %19 = getelementptr inbounds %struct.device, %struct.device* %18, i32 0, i32 0
  %20 = load %struct.device*, %struct.device** %19, align 8
  store %struct.device* %20, %struct.device** %11, align 8
  %21 = load %struct.device*, %struct.device** %11, align 8
  %22 = call %struct.gemini_ethernet* @dev_get_drvdata(%struct.device* %21)
  store %struct.gemini_ethernet* %22, %struct.gemini_ethernet** %7, align 8
  %23 = load %struct.device*, %struct.device** %6, align 8
  %24 = call i32 @dev_name(%struct.device* %23)
  %25 = call i32 @strcmp(i32 %24, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %1
  store i32 0, i32* %12, align 4
  br label %38

28:                                               ; preds = %1
  %29 = load %struct.device*, %struct.device** %6, align 8
  %30 = call i32 @dev_name(%struct.device* %29)
  %31 = call i32 @strcmp(i32 %30, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %28
  store i32 1, i32* %12, align 4
  br label %37

34:                                               ; preds = %28
  %35 = load i32, i32* @ENODEV, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %349

37:                                               ; preds = %33
  br label %38

38:                                               ; preds = %37, %27
  %39 = load %struct.device*, %struct.device** %6, align 8
  %40 = load %struct.device*, %struct.device** %6, align 8
  %41 = call i32 @dev_name(%struct.device* %40)
  %42 = load i32, i32* %12, align 4
  %43 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %39, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 %41, i32 %42)
  %44 = load i32, i32* @TX_QUEUE_NUM, align 4
  %45 = call %struct.net_device* @alloc_etherdev_mq(i32 104, i32 %44)
  store %struct.net_device* %45, %struct.net_device** %8, align 8
  %46 = load %struct.net_device*, %struct.net_device** %8, align 8
  %47 = icmp ne %struct.net_device* %46, null
  br i1 %47, label %54, label %48

48:                                               ; preds = %38
  %49 = load %struct.device*, %struct.device** %6, align 8
  %50 = load i32, i32* %12, align 4
  %51 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %49, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %2, align 4
  br label %349

54:                                               ; preds = %38
  %55 = load %struct.net_device*, %struct.net_device** %8, align 8
  %56 = call %struct.gemini_ethernet_port* @netdev_priv(%struct.net_device* %55)
  store %struct.gemini_ethernet_port* %56, %struct.gemini_ethernet_port** %5, align 8
  %57 = load %struct.net_device*, %struct.net_device** %8, align 8
  %58 = load %struct.device*, %struct.device** %6, align 8
  %59 = call i32 @SET_NETDEV_DEV(%struct.net_device* %57, %struct.device* %58)
  %60 = load %struct.net_device*, %struct.net_device** %8, align 8
  %61 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %5, align 8
  %62 = getelementptr inbounds %struct.gemini_ethernet_port, %struct.gemini_ethernet_port* %61, i32 0, i32 2
  store %struct.net_device* %60, %struct.net_device** %62, align 8
  %63 = load i32, i32* %12, align 4
  %64 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %5, align 8
  %65 = getelementptr inbounds %struct.gemini_ethernet_port, %struct.gemini_ethernet_port* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  %66 = load %struct.gemini_ethernet*, %struct.gemini_ethernet** %7, align 8
  %67 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %5, align 8
  %68 = getelementptr inbounds %struct.gemini_ethernet_port, %struct.gemini_ethernet_port* %67, i32 0, i32 13
  store %struct.gemini_ethernet* %66, %struct.gemini_ethernet** %68, align 8
  %69 = load %struct.device*, %struct.device** %6, align 8
  %70 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %5, align 8
  %71 = getelementptr inbounds %struct.gemini_ethernet_port, %struct.gemini_ethernet_port* %70, i32 0, i32 3
  store %struct.device* %69, %struct.device** %71, align 8
  %72 = load i32, i32* @debug, align 4
  %73 = load i32, i32* @DEFAULT_MSG_ENABLE, align 4
  %74 = call i32 @netif_msg_init(i32 %72, i32 %73)
  %75 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %5, align 8
  %76 = getelementptr inbounds %struct.gemini_ethernet_port, %struct.gemini_ethernet_port* %75, i32 0, i32 12
  store i32 %74, i32* %76, align 8
  %77 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %78 = load i32, i32* @IORESOURCE_MEM, align 4
  %79 = call %struct.resource* @platform_get_resource(%struct.platform_device* %77, i32 %78, i32 0)
  store %struct.resource* %79, %struct.resource** %10, align 8
  %80 = load %struct.resource*, %struct.resource** %10, align 8
  %81 = icmp ne %struct.resource* %80, null
  br i1 %81, label %87, label %82

82:                                               ; preds = %54
  %83 = load %struct.device*, %struct.device** %6, align 8
  %84 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %83, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  %85 = load i32, i32* @ENODEV, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %2, align 4
  br label %349

87:                                               ; preds = %54
  %88 = load %struct.device*, %struct.device** %6, align 8
  %89 = load %struct.resource*, %struct.resource** %10, align 8
  %90 = call i8* @devm_ioremap_resource(%struct.device* %88, %struct.resource* %89)
  %91 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %5, align 8
  %92 = getelementptr inbounds %struct.gemini_ethernet_port, %struct.gemini_ethernet_port* %91, i32 0, i32 11
  store i8* %90, i8** %92, align 8
  %93 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %5, align 8
  %94 = getelementptr inbounds %struct.gemini_ethernet_port, %struct.gemini_ethernet_port* %93, i32 0, i32 11
  %95 = load i8*, i8** %94, align 8
  %96 = call i64 @IS_ERR(i8* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %87
  %99 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %5, align 8
  %100 = getelementptr inbounds %struct.gemini_ethernet_port, %struct.gemini_ethernet_port* %99, i32 0, i32 11
  %101 = load i8*, i8** %100, align 8
  %102 = call i32 @PTR_ERR(i8* %101)
  store i32 %102, i32* %2, align 4
  br label %349

103:                                              ; preds = %87
  %104 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %105 = load i32, i32* @IORESOURCE_MEM, align 4
  %106 = call %struct.resource* @platform_get_resource(%struct.platform_device* %104, i32 %105, i32 1)
  store %struct.resource* %106, %struct.resource** %9, align 8
  %107 = load %struct.resource*, %struct.resource** %9, align 8
  %108 = icmp ne %struct.resource* %107, null
  br i1 %108, label %114, label %109

109:                                              ; preds = %103
  %110 = load %struct.device*, %struct.device** %6, align 8
  %111 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %110, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0))
  %112 = load i32, i32* @ENODEV, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %2, align 4
  br label %349

114:                                              ; preds = %103
  %115 = load %struct.device*, %struct.device** %6, align 8
  %116 = load %struct.resource*, %struct.resource** %9, align 8
  %117 = call i8* @devm_ioremap_resource(%struct.device* %115, %struct.resource* %116)
  %118 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %5, align 8
  %119 = getelementptr inbounds %struct.gemini_ethernet_port, %struct.gemini_ethernet_port* %118, i32 0, i32 10
  store i8* %117, i8** %119, align 8
  %120 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %5, align 8
  %121 = getelementptr inbounds %struct.gemini_ethernet_port, %struct.gemini_ethernet_port* %120, i32 0, i32 10
  %122 = load i8*, i8** %121, align 8
  %123 = call i64 @IS_ERR(i8* %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %114
  %126 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %5, align 8
  %127 = getelementptr inbounds %struct.gemini_ethernet_port, %struct.gemini_ethernet_port* %126, i32 0, i32 10
  %128 = load i8*, i8** %127, align 8
  %129 = call i32 @PTR_ERR(i8* %128)
  store i32 %129, i32* %2, align 4
  br label %349

130:                                              ; preds = %114
  %131 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %132 = call i32 @platform_get_irq(%struct.platform_device* %131, i32 0)
  store i32 %132, i32* %13, align 4
  %133 = load i32, i32* %13, align 4
  %134 = icmp sle i32 %133, 0
  br i1 %134, label %135, label %145

135:                                              ; preds = %130
  %136 = load i32, i32* %13, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %135
  %139 = load i32, i32* %13, align 4
  br label %143

140:                                              ; preds = %135
  %141 = load i32, i32* @ENODEV, align 4
  %142 = sub nsw i32 0, %141
  br label %143

143:                                              ; preds = %140, %138
  %144 = phi i32 [ %139, %138 ], [ %142, %140 ]
  store i32 %144, i32* %2, align 4
  br label %349

145:                                              ; preds = %130
  %146 = load i32, i32* %13, align 4
  %147 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %5, align 8
  %148 = getelementptr inbounds %struct.gemini_ethernet_port, %struct.gemini_ethernet_port* %147, i32 0, i32 1
  store i32 %146, i32* %148, align 4
  %149 = load %struct.device*, %struct.device** %6, align 8
  %150 = call i8* @devm_clk_get(%struct.device* %149, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %151 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %5, align 8
  %152 = getelementptr inbounds %struct.gemini_ethernet_port, %struct.gemini_ethernet_port* %151, i32 0, i32 9
  store i8* %150, i8** %152, align 8
  %153 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %5, align 8
  %154 = getelementptr inbounds %struct.gemini_ethernet_port, %struct.gemini_ethernet_port* %153, i32 0, i32 9
  %155 = load i8*, i8** %154, align 8
  %156 = call i64 @IS_ERR(i8* %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %165

158:                                              ; preds = %145
  %159 = load %struct.device*, %struct.device** %6, align 8
  %160 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %159, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  %161 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %5, align 8
  %162 = getelementptr inbounds %struct.gemini_ethernet_port, %struct.gemini_ethernet_port* %161, i32 0, i32 9
  %163 = load i8*, i8** %162, align 8
  %164 = call i32 @PTR_ERR(i8* %163)
  store i32 %164, i32* %2, align 4
  br label %349

165:                                              ; preds = %145
  %166 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %5, align 8
  %167 = getelementptr inbounds %struct.gemini_ethernet_port, %struct.gemini_ethernet_port* %166, i32 0, i32 9
  %168 = load i8*, i8** %167, align 8
  %169 = call i32 @clk_prepare_enable(i8* %168)
  store i32 %169, i32* %14, align 4
  %170 = load i32, i32* %14, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %165
  %173 = load i32, i32* %14, align 4
  store i32 %173, i32* %2, align 4
  br label %349

174:                                              ; preds = %165
  %175 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %5, align 8
  %176 = call i32 @gemini_port_save_mac_addr(%struct.gemini_ethernet_port* %175)
  %177 = load %struct.device*, %struct.device** %6, align 8
  %178 = call i8* @devm_reset_control_get_exclusive(%struct.device* %177, i32* null)
  %179 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %5, align 8
  %180 = getelementptr inbounds %struct.gemini_ethernet_port, %struct.gemini_ethernet_port* %179, i32 0, i32 8
  store i8* %178, i8** %180, align 8
  %181 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %5, align 8
  %182 = getelementptr inbounds %struct.gemini_ethernet_port, %struct.gemini_ethernet_port* %181, i32 0, i32 8
  %183 = load i8*, i8** %182, align 8
  %184 = call i64 @IS_ERR(i8* %183)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %193

186:                                              ; preds = %174
  %187 = load %struct.device*, %struct.device** %6, align 8
  %188 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %187, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0))
  %189 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %5, align 8
  %190 = getelementptr inbounds %struct.gemini_ethernet_port, %struct.gemini_ethernet_port* %189, i32 0, i32 8
  %191 = load i8*, i8** %190, align 8
  %192 = call i32 @PTR_ERR(i8* %191)
  store i32 %192, i32* %2, align 4
  br label %349

193:                                              ; preds = %174
  %194 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %5, align 8
  %195 = getelementptr inbounds %struct.gemini_ethernet_port, %struct.gemini_ethernet_port* %194, i32 0, i32 8
  %196 = load i8*, i8** %195, align 8
  %197 = call i32 @reset_control_reset(i8* %196)
  %198 = call i32 @usleep_range(i32 100, i32 500)
  %199 = load i32, i32* %12, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %205, label %201

201:                                              ; preds = %193
  %202 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %5, align 8
  %203 = load %struct.gemini_ethernet*, %struct.gemini_ethernet** %7, align 8
  %204 = getelementptr inbounds %struct.gemini_ethernet, %struct.gemini_ethernet* %203, i32 0, i32 1
  store %struct.gemini_ethernet_port* %202, %struct.gemini_ethernet_port** %204, align 8
  br label %209

205:                                              ; preds = %193
  %206 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %5, align 8
  %207 = load %struct.gemini_ethernet*, %struct.gemini_ethernet** %7, align 8
  %208 = getelementptr inbounds %struct.gemini_ethernet, %struct.gemini_ethernet* %207, i32 0, i32 0
  store %struct.gemini_ethernet_port* %206, %struct.gemini_ethernet_port** %208, align 8
  br label %209

209:                                              ; preds = %205, %201
  %210 = load %struct.gemini_ethernet*, %struct.gemini_ethernet** %7, align 8
  %211 = call i32 @gemini_ethernet_init(%struct.gemini_ethernet* %210)
  %212 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %213 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %5, align 8
  %214 = call i32 @platform_set_drvdata(%struct.platform_device* %212, %struct.gemini_ethernet_port* %213)
  %215 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %5, align 8
  %216 = getelementptr inbounds %struct.gemini_ethernet_port, %struct.gemini_ethernet_port* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = load %struct.net_device*, %struct.net_device** %8, align 8
  %219 = getelementptr inbounds %struct.net_device, %struct.net_device* %218, i32 0, i32 0
  store i32 %217, i32* %219, align 8
  %220 = load i32, i32* %13, align 4
  %221 = load %struct.net_device*, %struct.net_device** %8, align 8
  %222 = getelementptr inbounds %struct.net_device, %struct.net_device* %221, i32 0, i32 1
  store i32 %220, i32* %222, align 4
  %223 = load %struct.net_device*, %struct.net_device** %8, align 8
  %224 = getelementptr inbounds %struct.net_device, %struct.net_device* %223, i32 0, i32 8
  store i32* @gmac_351x_ops, i32** %224, align 8
  %225 = load %struct.net_device*, %struct.net_device** %8, align 8
  %226 = getelementptr inbounds %struct.net_device, %struct.net_device* %225, i32 0, i32 7
  store i32* @gmac_351x_ethtool_ops, i32** %226, align 8
  %227 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %5, align 8
  %228 = getelementptr inbounds %struct.gemini_ethernet_port, %struct.gemini_ethernet_port* %227, i32 0, i32 7
  %229 = call i32 @spin_lock_init(i32* %228)
  %230 = load %struct.net_device*, %struct.net_device** %8, align 8
  %231 = call i32 @gmac_clear_hw_stats(%struct.net_device* %230)
  %232 = load i32, i32* @GMAC_OFFLOAD_FEATURES, align 4
  %233 = load %struct.net_device*, %struct.net_device** %8, align 8
  %234 = getelementptr inbounds %struct.net_device, %struct.net_device* %233, i32 0, i32 2
  store i32 %232, i32* %234, align 8
  %235 = load i32, i32* @GMAC_OFFLOAD_FEATURES, align 4
  %236 = load i32, i32* @NETIF_F_GRO, align 4
  %237 = or i32 %235, %236
  %238 = load %struct.net_device*, %struct.net_device** %8, align 8
  %239 = getelementptr inbounds %struct.net_device, %struct.net_device* %238, i32 0, i32 3
  %240 = load i32, i32* %239, align 4
  %241 = or i32 %240, %237
  store i32 %241, i32* %239, align 4
  %242 = load i32, i32* @ETH_MIN_MTU, align 4
  %243 = load %struct.net_device*, %struct.net_device** %8, align 8
  %244 = getelementptr inbounds %struct.net_device, %struct.net_device* %243, i32 0, i32 6
  store i32 %242, i32* %244, align 8
  %245 = load i64, i64* @VLAN_ETH_HLEN, align 8
  %246 = sub nsw i64 10236, %245
  %247 = load %struct.net_device*, %struct.net_device** %8, align 8
  %248 = getelementptr inbounds %struct.net_device, %struct.net_device* %247, i32 0, i32 5
  store i64 %246, i64* %248, align 8
  %249 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %5, align 8
  %250 = getelementptr inbounds %struct.gemini_ethernet_port, %struct.gemini_ethernet_port* %249, i32 0, i32 6
  store i64 0, i64* %250, align 8
  %251 = load %struct.net_device*, %struct.net_device** %8, align 8
  %252 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %5, align 8
  %253 = getelementptr inbounds %struct.gemini_ethernet_port, %struct.gemini_ethernet_port* %252, i32 0, i32 5
  %254 = load i32, i32* @gmac_napi_poll, align 4
  %255 = load i32, i32* @DEFAULT_NAPI_WEIGHT, align 4
  %256 = call i32 @netif_napi_add(%struct.net_device* %251, i32* %253, i32 %254, i32 %255)
  %257 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %5, align 8
  %258 = getelementptr inbounds %struct.gemini_ethernet_port, %struct.gemini_ethernet_port* %257, i32 0, i32 4
  %259 = load i32*, i32** %258, align 8
  %260 = bitcast i32* %259 to i8*
  %261 = call i64 @is_valid_ether_addr(i8* %260)
  %262 = icmp ne i64 %261, 0
  br i1 %262, label %263, label %272

263:                                              ; preds = %209
  %264 = load %struct.net_device*, %struct.net_device** %8, align 8
  %265 = getelementptr inbounds %struct.net_device, %struct.net_device* %264, i32 0, i32 4
  %266 = load i32, i32* %265, align 8
  %267 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %5, align 8
  %268 = getelementptr inbounds %struct.gemini_ethernet_port, %struct.gemini_ethernet_port* %267, i32 0, i32 4
  %269 = load i32*, i32** %268, align 8
  %270 = load i32, i32* @ETH_ALEN, align 4
  %271 = call i32 @memcpy(i32 %266, i32* %269, i32 %270)
  br label %296

272:                                              ; preds = %209
  %273 = load %struct.device*, %struct.device** %6, align 8
  %274 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %5, align 8
  %275 = getelementptr inbounds %struct.gemini_ethernet_port, %struct.gemini_ethernet_port* %274, i32 0, i32 4
  %276 = load i32*, i32** %275, align 8
  %277 = getelementptr inbounds i32, i32* %276, i64 0
  %278 = load i32, i32* %277, align 4
  %279 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %5, align 8
  %280 = getelementptr inbounds %struct.gemini_ethernet_port, %struct.gemini_ethernet_port* %279, i32 0, i32 4
  %281 = load i32*, i32** %280, align 8
  %282 = getelementptr inbounds i32, i32* %281, i64 1
  %283 = load i32, i32* %282, align 4
  %284 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %5, align 8
  %285 = getelementptr inbounds %struct.gemini_ethernet_port, %struct.gemini_ethernet_port* %284, i32 0, i32 4
  %286 = load i32*, i32** %285, align 8
  %287 = getelementptr inbounds i32, i32* %286, i64 2
  %288 = load i32, i32* %287, align 4
  %289 = call i32 @dev_dbg(%struct.device* %273, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.11, i64 0, i64 0), i32 %278, i32 %283, i32 %288)
  %290 = load %struct.device*, %struct.device** %6, align 8
  %291 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %290, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.12, i64 0, i64 0))
  %292 = load %struct.net_device*, %struct.net_device** %8, align 8
  %293 = getelementptr inbounds %struct.net_device, %struct.net_device* %292, i32 0, i32 4
  %294 = load i32, i32* %293, align 8
  %295 = call i32 @eth_random_addr(i32 %294)
  br label %296

296:                                              ; preds = %272, %263
  %297 = load %struct.net_device*, %struct.net_device** %8, align 8
  %298 = call i32 @gmac_write_mac_address(%struct.net_device* %297)
  %299 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %5, align 8
  %300 = getelementptr inbounds %struct.gemini_ethernet_port, %struct.gemini_ethernet_port* %299, i32 0, i32 3
  %301 = load %struct.device*, %struct.device** %300, align 8
  %302 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %5, align 8
  %303 = getelementptr inbounds %struct.gemini_ethernet_port, %struct.gemini_ethernet_port* %302, i32 0, i32 1
  %304 = load i32, i32* %303, align 4
  %305 = load i32, i32* @gemini_port_irq, align 4
  %306 = load i32, i32* @gemini_port_irq_thread, align 4
  %307 = load i32, i32* @IRQF_SHARED, align 4
  %308 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %5, align 8
  %309 = getelementptr inbounds %struct.gemini_ethernet_port, %struct.gemini_ethernet_port* %308, i32 0, i32 0
  %310 = load i32, i32* %309, align 8
  %311 = zext i32 %310 to i64
  %312 = getelementptr inbounds [2 x i8*], [2 x i8*]* %4, i64 0, i64 %311
  %313 = load i8*, i8** %312, align 8
  %314 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %5, align 8
  %315 = call i32 @devm_request_threaded_irq(%struct.device* %301, i32 %304, i32 %305, i32 %306, i32 %307, i8* %313, %struct.gemini_ethernet_port* %314)
  store i32 %315, i32* %14, align 4
  %316 = load i32, i32* %14, align 4
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %318, label %320

318:                                              ; preds = %296
  %319 = load i32, i32* %14, align 4
  store i32 %319, i32* %2, align 4
  br label %349

320:                                              ; preds = %296
  %321 = load %struct.net_device*, %struct.net_device** %8, align 8
  %322 = call i32 @register_netdev(%struct.net_device* %321)
  store i32 %322, i32* %14, align 4
  %323 = load i32, i32* %14, align 4
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %343, label %325

325:                                              ; preds = %320
  %326 = load %struct.net_device*, %struct.net_device** %8, align 8
  %327 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %5, align 8
  %328 = getelementptr inbounds %struct.gemini_ethernet_port, %struct.gemini_ethernet_port* %327, i32 0, i32 1
  %329 = load i32, i32* %328, align 4
  %330 = load %struct.resource*, %struct.resource** %10, align 8
  %331 = getelementptr inbounds %struct.resource, %struct.resource* %330, i32 0, i32 0
  %332 = load %struct.resource*, %struct.resource** %9, align 8
  %333 = getelementptr inbounds %struct.resource, %struct.resource* %332, i32 0, i32 0
  %334 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %326, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.13, i64 0, i64 0), i32 %329, i32* %331, i32* %333)
  %335 = load %struct.net_device*, %struct.net_device** %8, align 8
  %336 = call i32 @gmac_setup_phy(%struct.net_device* %335)
  store i32 %336, i32* %14, align 4
  %337 = load i32, i32* %14, align 4
  %338 = icmp ne i32 %337, 0
  br i1 %338, label %339, label %342

339:                                              ; preds = %325
  %340 = load %struct.net_device*, %struct.net_device** %8, align 8
  %341 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %340, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.14, i64 0, i64 0))
  br label %342

342:                                              ; preds = %339, %325
  store i32 0, i32* %2, align 4
  br label %349

343:                                              ; preds = %320
  %344 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %5, align 8
  %345 = getelementptr inbounds %struct.gemini_ethernet_port, %struct.gemini_ethernet_port* %344, i32 0, i32 2
  store %struct.net_device* null, %struct.net_device** %345, align 8
  %346 = load %struct.net_device*, %struct.net_device** %8, align 8
  %347 = call i32 @free_netdev(%struct.net_device* %346)
  %348 = load i32, i32* %14, align 4
  store i32 %348, i32* %2, align 4
  br label %349

349:                                              ; preds = %343, %342, %318, %186, %172, %158, %143, %125, %109, %98, %82, %48, %34
  %350 = load i32, i32* %2, align 4
  ret i32 %350
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.gemini_ethernet* @dev_get_drvdata(%struct.device*) #2

declare dso_local i32 @strcmp(i32, i8*) #2

declare dso_local i32 @dev_name(%struct.device*) #2

declare dso_local i32 @dev_info(%struct.device*, i8*, ...) #2

declare dso_local %struct.net_device* @alloc_etherdev_mq(i32, i32) #2

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #2

declare dso_local %struct.gemini_ethernet_port* @netdev_priv(%struct.net_device*) #2

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, %struct.device*) #2

declare dso_local i32 @netif_msg_init(i32, i32) #2

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #2

declare dso_local i8* @devm_ioremap_resource(%struct.device*, %struct.resource*) #2

declare dso_local i64 @IS_ERR(i8*) #2

declare dso_local i32 @PTR_ERR(i8*) #2

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #2

declare dso_local i8* @devm_clk_get(%struct.device*, i8*) #2

declare dso_local i32 @clk_prepare_enable(i8*) #2

declare dso_local i32 @gemini_port_save_mac_addr(%struct.gemini_ethernet_port*) #2

declare dso_local i8* @devm_reset_control_get_exclusive(%struct.device*, i32*) #2

declare dso_local i32 @reset_control_reset(i8*) #2

declare dso_local i32 @usleep_range(i32, i32) #2

declare dso_local i32 @gemini_ethernet_init(%struct.gemini_ethernet*) #2

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.gemini_ethernet_port*) #2

declare dso_local i32 @spin_lock_init(i32*) #2

declare dso_local i32 @gmac_clear_hw_stats(%struct.net_device*) #2

declare dso_local i32 @netif_napi_add(%struct.net_device*, i32*, i32, i32) #2

declare dso_local i64 @is_valid_ether_addr(i8*) #2

declare dso_local i32 @memcpy(i32, i32*, i32) #2

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32, i32) #2

declare dso_local i32 @eth_random_addr(i32) #2

declare dso_local i32 @gmac_write_mac_address(%struct.net_device*) #2

declare dso_local i32 @devm_request_threaded_irq(%struct.device*, i32, i32, i32, i32, i8*, %struct.gemini_ethernet_port*) #2

declare dso_local i32 @register_netdev(%struct.net_device*) #2

declare dso_local i32 @netdev_info(%struct.net_device*, i8*, ...) #2

declare dso_local i32 @gmac_setup_phy(%struct.net_device*) #2

declare dso_local i32 @free_netdev(%struct.net_device*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
