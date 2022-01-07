; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/xilinx/extr_ll_temac_main.c_temac_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/xilinx/extr_ll_temac_main.c_temac_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.ll_temac_platform_data = type { i32, i32, i32, i32, i32, i8*, i32, i32, i64, i64, i64, i32* }
%struct.device_node = type opaque
%struct.temac_local = type { i8*, i32, i8*, i32, i32, i32, i32, i8*, %struct.TYPE_13__*, %struct.net_device*, i32, i32, %struct.TYPE_12__*, i8*, i8*, i32, i32, i32*, i32, i32 }
%struct.net_device = type { i32, i32*, i32* }
%struct.TYPE_12__ = type { i32 }
%struct.resource = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@NETIF_F_SG = common dso_local global i32 0, align 4
@temac_netdev_ops = common dso_local global i32 0, align 4
@temac_ethtool_ops = common dso_local global i32 0, align 4
@XTE_OPTION_DEFAULTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"indirect_lock missing in platform_data\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"could not map TEMAC registers\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"little-endian\00", align 1
@_temac_ior_le = common dso_local global i32 0, align 4
@_temac_iow_le = common dso_local global i32 0, align 4
@_temac_ior_be = common dso_local global i32 0, align 4
@_temac_iow_be = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"xlnx,txcsum\00", align 1
@TEMAC_FEATURE_TX_CSUM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"xlnx,rxcsum\00", align 1
@TEMAC_FEATURE_RX_CSUM = common dso_local global i32 0, align 4
@NETIF_F_IP_CSUM = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [16 x i8] c"llink-connected\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"could not find DMA node\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [29 x i8] c"unable to map DMA registers\0A\00", align 1
@temac_dma_in32_le = common dso_local global i8* null, align 8
@temac_dma_out32_le = common dso_local global i8* null, align 8
@temac_dma_in32_be = common dso_local global i8* null, align 8
@temac_dma_out32_be = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [14 x i8] c"MEM base: %p\0A\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"could not map DMA registers\0A\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [26 x i8] c"could not get DMA RX irq\0A\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"could not get DMA TX irq\0A\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"could not find MAC address\0A\00", align 1
@.str.13 = private unnamed_addr constant [28 x i8] c"error registering MDIO bus\0A\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"phy-handle\00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"using PHY node %pOF\0A\00", align 1
@PHY_ID_FMT = common dso_local global i8* null, align 8
@temac_attr_group = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [28 x i8] c"Error creating sysfs files\0A\00", align 1
@.str.17 = private unnamed_addr constant [30 x i8] c"register_netdev() error (%i)\0A\00", align 1
@NETIF_F_GSO = common dso_local global i32 0, align 4
@NETIF_F_HIGHDMA = common dso_local global i32 0, align 4
@NETIF_F_HW_CSUM = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_CTAG_FILTER = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_CTAG_RX = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_CTAG_TX = common dso_local global i32 0, align 4
@NETIF_F_IPV6_CSUM = common dso_local global i32 0, align 4
@NETIF_F_LRO = common dso_local global i32 0, align 4
@NETIF_F_MULTI_QUEUE = common dso_local global i32 0, align 4
@NETIF_F_VLAN_CHALLENGED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @temac_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @temac_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.ll_temac_platform_data*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.temac_local*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.resource*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = call %struct.ll_temac_platform_data* @dev_get_platdata(%struct.TYPE_13__* %15)
  store %struct.ll_temac_platform_data* %16, %struct.ll_temac_platform_data** %4, align 8
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  %19 = call i8* @dev_of_node(%struct.TYPE_13__* %18)
  %20 = bitcast i8* %19 to %struct.device_node*
  store %struct.device_node* %20, %struct.device_node** %5, align 8
  store i32 0, i32* %13, align 4
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 0
  %23 = call %struct.net_device* @devm_alloc_etherdev(%struct.TYPE_13__* %22, i32 120)
  store %struct.net_device* %23, %struct.net_device** %8, align 8
  %24 = load %struct.net_device*, %struct.net_device** %8, align 8
  %25 = icmp ne %struct.net_device* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %1
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %608

29:                                               ; preds = %1
  %30 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %31 = load %struct.net_device*, %struct.net_device** %8, align 8
  %32 = call i32 @platform_set_drvdata(%struct.platform_device* %30, %struct.net_device* %31)
  %33 = load %struct.net_device*, %struct.net_device** %8, align 8
  %34 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %35 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %34, i32 0, i32 0
  %36 = call i32 @SET_NETDEV_DEV(%struct.net_device* %33, %struct.TYPE_13__* %35)
  %37 = load i32, i32* @NETIF_F_SG, align 4
  %38 = load %struct.net_device*, %struct.net_device** %8, align 8
  %39 = getelementptr inbounds %struct.net_device, %struct.net_device* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %struct.net_device*, %struct.net_device** %8, align 8
  %41 = getelementptr inbounds %struct.net_device, %struct.net_device* %40, i32 0, i32 2
  store i32* @temac_netdev_ops, i32** %41, align 8
  %42 = load %struct.net_device*, %struct.net_device** %8, align 8
  %43 = getelementptr inbounds %struct.net_device, %struct.net_device* %42, i32 0, i32 1
  store i32* @temac_ethtool_ops, i32** %43, align 8
  %44 = load %struct.net_device*, %struct.net_device** %8, align 8
  %45 = call %struct.temac_local* @netdev_priv(%struct.net_device* %44)
  store %struct.temac_local* %45, %struct.temac_local** %7, align 8
  %46 = load %struct.net_device*, %struct.net_device** %8, align 8
  %47 = load %struct.temac_local*, %struct.temac_local** %7, align 8
  %48 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %47, i32 0, i32 9
  store %struct.net_device* %46, %struct.net_device** %48, align 8
  %49 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %50 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %49, i32 0, i32 0
  %51 = load %struct.temac_local*, %struct.temac_local** %7, align 8
  %52 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %51, i32 0, i32 8
  store %struct.TYPE_13__* %50, %struct.TYPE_13__** %52, align 8
  %53 = load i32, i32* @XTE_OPTION_DEFAULTS, align 4
  %54 = load %struct.temac_local*, %struct.temac_local** %7, align 8
  %55 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %54, i32 0, i32 19
  store i32 %53, i32* %55, align 4
  %56 = load %struct.temac_local*, %struct.temac_local** %7, align 8
  %57 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %56, i32 0, i32 18
  %58 = call i32 @spin_lock_init(i32* %57)
  %59 = load %struct.ll_temac_platform_data*, %struct.ll_temac_platform_data** %4, align 8
  %60 = icmp ne %struct.ll_temac_platform_data* %59, null
  br i1 %60, label %61, label %78

61:                                               ; preds = %29
  %62 = load %struct.ll_temac_platform_data*, %struct.ll_temac_platform_data** %4, align 8
  %63 = getelementptr inbounds %struct.ll_temac_platform_data, %struct.ll_temac_platform_data* %62, i32 0, i32 11
  %64 = load i32*, i32** %63, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %72, label %66

66:                                               ; preds = %61
  %67 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %68 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %67, i32 0, i32 0
  %69 = call i32 (%struct.TYPE_13__*, i8*, ...) @dev_err(%struct.TYPE_13__* %68, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %2, align 4
  br label %608

72:                                               ; preds = %61
  %73 = load %struct.ll_temac_platform_data*, %struct.ll_temac_platform_data** %4, align 8
  %74 = getelementptr inbounds %struct.ll_temac_platform_data, %struct.ll_temac_platform_data* %73, i32 0, i32 11
  %75 = load i32*, i32** %74, align 8
  %76 = load %struct.temac_local*, %struct.temac_local** %7, align 8
  %77 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %76, i32 0, i32 17
  store i32* %75, i32** %77, align 8
  br label %89

78:                                               ; preds = %29
  %79 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %80 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %79, i32 0, i32 0
  %81 = load i32, i32* @GFP_KERNEL, align 4
  %82 = call i32* @devm_kmalloc(%struct.TYPE_13__* %80, i32 4, i32 %81)
  %83 = load %struct.temac_local*, %struct.temac_local** %7, align 8
  %84 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %83, i32 0, i32 17
  store i32* %82, i32** %84, align 8
  %85 = load %struct.temac_local*, %struct.temac_local** %7, align 8
  %86 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %85, i32 0, i32 17
  %87 = load i32*, i32** %86, align 8
  %88 = call i32 @spin_lock_init(i32* %87)
  br label %89

89:                                               ; preds = %78, %72
  %90 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %91 = load i32, i32* @IORESOURCE_MEM, align 4
  %92 = call %struct.resource* @platform_get_resource(%struct.platform_device* %90, i32 %91, i32 0)
  store %struct.resource* %92, %struct.resource** %9, align 8
  %93 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %94 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %93, i32 0, i32 0
  %95 = load %struct.resource*, %struct.resource** %9, align 8
  %96 = getelementptr inbounds %struct.resource, %struct.resource* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.resource*, %struct.resource** %9, align 8
  %99 = call i32 @resource_size(%struct.resource* %98)
  %100 = call i8* @devm_ioremap_nocache(%struct.TYPE_13__* %94, i32 %97, i32 %99)
  %101 = load %struct.temac_local*, %struct.temac_local** %7, align 8
  %102 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %101, i32 0, i32 0
  store i8* %100, i8** %102, align 8
  %103 = load %struct.temac_local*, %struct.temac_local** %7, align 8
  %104 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %103, i32 0, i32 0
  %105 = load i8*, i8** %104, align 8
  %106 = call i64 @IS_ERR(i8* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %116

108:                                              ; preds = %89
  %109 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %110 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %109, i32 0, i32 0
  %111 = call i32 (%struct.TYPE_13__*, i8*, ...) @dev_err(%struct.TYPE_13__* %110, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %112 = load %struct.temac_local*, %struct.temac_local** %7, align 8
  %113 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %112, i32 0, i32 0
  %114 = load i8*, i8** %113, align 8
  %115 = call i32 @PTR_ERR(i8* %114)
  store i32 %115, i32* %2, align 4
  br label %608

116:                                              ; preds = %89
  store i32 0, i32* %12, align 4
  %117 = load %struct.device_node*, %struct.device_node** %5, align 8
  %118 = icmp ne %struct.device_node* %117, null
  br i1 %118, label %119, label %126

119:                                              ; preds = %116
  %120 = load %struct.device_node*, %struct.device_node** %5, align 8
  %121 = bitcast %struct.device_node* %120 to i8*
  %122 = call i64 @of_get_property(i8* %121, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32* null)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %119
  store i32 1, i32* %12, align 4
  br label %125

125:                                              ; preds = %124, %119
  br label %134

126:                                              ; preds = %116
  %127 = load %struct.ll_temac_platform_data*, %struct.ll_temac_platform_data** %4, align 8
  %128 = icmp ne %struct.ll_temac_platform_data* %127, null
  br i1 %128, label %129, label %133

129:                                              ; preds = %126
  %130 = load %struct.ll_temac_platform_data*, %struct.ll_temac_platform_data** %4, align 8
  %131 = getelementptr inbounds %struct.ll_temac_platform_data, %struct.ll_temac_platform_data* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  store i32 %132, i32* %12, align 4
  br label %133

133:                                              ; preds = %129, %126
  br label %134

134:                                              ; preds = %133, %125
  %135 = load i32, i32* %12, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %144

137:                                              ; preds = %134
  %138 = load i32, i32* @_temac_ior_le, align 4
  %139 = load %struct.temac_local*, %struct.temac_local** %7, align 8
  %140 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %139, i32 0, i32 16
  store i32 %138, i32* %140, align 4
  %141 = load i32, i32* @_temac_iow_le, align 4
  %142 = load %struct.temac_local*, %struct.temac_local** %7, align 8
  %143 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %142, i32 0, i32 15
  store i32 %141, i32* %143, align 8
  br label %151

144:                                              ; preds = %134
  %145 = load i32, i32* @_temac_ior_be, align 4
  %146 = load %struct.temac_local*, %struct.temac_local** %7, align 8
  %147 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %146, i32 0, i32 16
  store i32 %145, i32* %147, align 4
  %148 = load i32, i32* @_temac_iow_be, align 4
  %149 = load %struct.temac_local*, %struct.temac_local** %7, align 8
  %150 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %149, i32 0, i32 15
  store i32 %148, i32* %150, align 8
  br label %151

151:                                              ; preds = %144, %137
  %152 = load %struct.temac_local*, %struct.temac_local** %7, align 8
  %153 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %152, i32 0, i32 1
  store i32 0, i32* %153, align 8
  %154 = load %struct.device_node*, %struct.device_node** %5, align 8
  %155 = icmp ne %struct.device_node* %154, null
  br i1 %155, label %156, label %193

156:                                              ; preds = %151
  %157 = load %struct.device_node*, %struct.device_node** %5, align 8
  %158 = bitcast %struct.device_node* %157 to i8*
  %159 = call i64 @of_get_property(i8* %158, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32* null)
  %160 = inttoptr i64 %159 to i32*
  store i32* %160, i32** %11, align 8
  %161 = load i32*, i32** %11, align 8
  %162 = icmp ne i32* %161, null
  br i1 %162, label %163, label %174

163:                                              ; preds = %156
  %164 = load i32*, i32** %11, align 8
  %165 = load i32, i32* %164, align 4
  %166 = call i64 @be32_to_cpu(i32 %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %174

168:                                              ; preds = %163
  %169 = load i32, i32* @TEMAC_FEATURE_TX_CSUM, align 4
  %170 = load %struct.temac_local*, %struct.temac_local** %7, align 8
  %171 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 8
  %173 = or i32 %172, %169
  store i32 %173, i32* %171, align 8
  br label %174

174:                                              ; preds = %168, %163, %156
  %175 = load %struct.device_node*, %struct.device_node** %5, align 8
  %176 = bitcast %struct.device_node* %175 to i8*
  %177 = call i64 @of_get_property(i8* %176, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32* null)
  %178 = inttoptr i64 %177 to i32*
  store i32* %178, i32** %11, align 8
  %179 = load i32*, i32** %11, align 8
  %180 = icmp ne i32* %179, null
  br i1 %180, label %181, label %192

181:                                              ; preds = %174
  %182 = load i32*, i32** %11, align 8
  %183 = load i32, i32* %182, align 4
  %184 = call i64 @be32_to_cpu(i32 %183)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %192

186:                                              ; preds = %181
  %187 = load i32, i32* @TEMAC_FEATURE_RX_CSUM, align 4
  %188 = load %struct.temac_local*, %struct.temac_local** %7, align 8
  %189 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 8
  %191 = or i32 %190, %187
  store i32 %191, i32* %189, align 8
  br label %192

192:                                              ; preds = %186, %181, %174
  br label %220

193:                                              ; preds = %151
  %194 = load %struct.ll_temac_platform_data*, %struct.ll_temac_platform_data** %4, align 8
  %195 = icmp ne %struct.ll_temac_platform_data* %194, null
  br i1 %195, label %196, label %219

196:                                              ; preds = %193
  %197 = load %struct.ll_temac_platform_data*, %struct.ll_temac_platform_data** %4, align 8
  %198 = getelementptr inbounds %struct.ll_temac_platform_data, %struct.ll_temac_platform_data* %197, i32 0, i32 10
  %199 = load i64, i64* %198, align 8
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %207

201:                                              ; preds = %196
  %202 = load i32, i32* @TEMAC_FEATURE_TX_CSUM, align 4
  %203 = load %struct.temac_local*, %struct.temac_local** %7, align 8
  %204 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 8
  %206 = or i32 %205, %202
  store i32 %206, i32* %204, align 8
  br label %207

207:                                              ; preds = %201, %196
  %208 = load %struct.ll_temac_platform_data*, %struct.ll_temac_platform_data** %4, align 8
  %209 = getelementptr inbounds %struct.ll_temac_platform_data, %struct.ll_temac_platform_data* %208, i32 0, i32 9
  %210 = load i64, i64* %209, align 8
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %218

212:                                              ; preds = %207
  %213 = load i32, i32* @TEMAC_FEATURE_RX_CSUM, align 4
  %214 = load %struct.temac_local*, %struct.temac_local** %7, align 8
  %215 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 8
  %217 = or i32 %216, %213
  store i32 %217, i32* %215, align 8
  br label %218

218:                                              ; preds = %212, %207
  br label %219

219:                                              ; preds = %218, %193
  br label %220

220:                                              ; preds = %219, %192
  %221 = load %struct.temac_local*, %struct.temac_local** %7, align 8
  %222 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 8
  %224 = load i32, i32* @TEMAC_FEATURE_TX_CSUM, align 4
  %225 = and i32 %223, %224
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %233

227:                                              ; preds = %220
  %228 = load i32, i32* @NETIF_F_IP_CSUM, align 4
  %229 = load %struct.net_device*, %struct.net_device** %8, align 8
  %230 = getelementptr inbounds %struct.net_device, %struct.net_device* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  %232 = or i32 %231, %228
  store i32 %232, i32* %230, align 8
  br label %233

233:                                              ; preds = %227, %220
  %234 = load %struct.device_node*, %struct.device_node** %5, align 8
  %235 = icmp ne %struct.device_node* %234, null
  br i1 %235, label %236, label %326

236:                                              ; preds = %233
  %237 = load %struct.device_node*, %struct.device_node** %5, align 8
  %238 = bitcast %struct.device_node* %237 to i8*
  %239 = call i8* @of_parse_phandle(i8* %238, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 0)
  %240 = bitcast i8* %239 to %struct.device_node*
  store %struct.device_node* %240, %struct.device_node** %6, align 8
  %241 = load %struct.device_node*, %struct.device_node** %6, align 8
  %242 = icmp ne %struct.device_node* %241, null
  br i1 %242, label %249, label %243

243:                                              ; preds = %236
  %244 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %245 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %244, i32 0, i32 0
  %246 = call i32 (%struct.TYPE_13__*, i8*, ...) @dev_err(%struct.TYPE_13__* %245, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  %247 = load i32, i32* @ENODEV, align 4
  %248 = sub nsw i32 0, %247
  store i32 %248, i32* %2, align 4
  br label %608

249:                                              ; preds = %236
  %250 = load %struct.temac_local*, %struct.temac_local** %7, align 8
  %251 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %252 = load %struct.device_node*, %struct.device_node** %6, align 8
  %253 = bitcast %struct.device_node* %252 to i8*
  %254 = call i64 @temac_dcr_setup(%struct.temac_local* %250, %struct.platform_device* %251, i8* %253)
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %256, label %306

256:                                              ; preds = %249
  %257 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %258 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %257, i32 0, i32 0
  %259 = load %struct.device_node*, %struct.device_node** %6, align 8
  %260 = bitcast %struct.device_node* %259 to i8*
  %261 = call i8* @devm_of_iomap(%struct.TYPE_13__* %258, i8* %260, i32 0, i32* null)
  %262 = load %struct.temac_local*, %struct.temac_local** %7, align 8
  %263 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %262, i32 0, i32 2
  store i8* %261, i8** %263, align 8
  %264 = load %struct.temac_local*, %struct.temac_local** %7, align 8
  %265 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %264, i32 0, i32 2
  %266 = load i8*, i8** %265, align 8
  %267 = call i64 @IS_ERR(i8* %266)
  %268 = icmp ne i64 %267, 0
  br i1 %268, label %269, label %280

269:                                              ; preds = %256
  %270 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %271 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %270, i32 0, i32 0
  %272 = call i32 (%struct.TYPE_13__*, i8*, ...) @dev_err(%struct.TYPE_13__* %271, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0))
  %273 = load %struct.device_node*, %struct.device_node** %6, align 8
  %274 = bitcast %struct.device_node* %273 to i8*
  %275 = call i32 @of_node_put(i8* %274)
  %276 = load %struct.temac_local*, %struct.temac_local** %7, align 8
  %277 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %276, i32 0, i32 2
  %278 = load i8*, i8** %277, align 8
  %279 = call i32 @PTR_ERR(i8* %278)
  store i32 %279, i32* %2, align 4
  br label %608

280:                                              ; preds = %256
  %281 = load %struct.device_node*, %struct.device_node** %6, align 8
  %282 = bitcast %struct.device_node* %281 to i8*
  %283 = call i64 @of_get_property(i8* %282, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32* null)
  %284 = icmp ne i64 %283, 0
  br i1 %284, label %285, label %292

285:                                              ; preds = %280
  %286 = load i8*, i8** @temac_dma_in32_le, align 8
  %287 = load %struct.temac_local*, %struct.temac_local** %7, align 8
  %288 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %287, i32 0, i32 14
  store i8* %286, i8** %288, align 8
  %289 = load i8*, i8** @temac_dma_out32_le, align 8
  %290 = load %struct.temac_local*, %struct.temac_local** %7, align 8
  %291 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %290, i32 0, i32 13
  store i8* %289, i8** %291, align 8
  br label %299

292:                                              ; preds = %280
  %293 = load i8*, i8** @temac_dma_in32_be, align 8
  %294 = load %struct.temac_local*, %struct.temac_local** %7, align 8
  %295 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %294, i32 0, i32 14
  store i8* %293, i8** %295, align 8
  %296 = load i8*, i8** @temac_dma_out32_be, align 8
  %297 = load %struct.temac_local*, %struct.temac_local** %7, align 8
  %298 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %297, i32 0, i32 13
  store i8* %296, i8** %298, align 8
  br label %299

299:                                              ; preds = %292, %285
  %300 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %301 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %300, i32 0, i32 0
  %302 = load %struct.temac_local*, %struct.temac_local** %7, align 8
  %303 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %302, i32 0, i32 2
  %304 = load i8*, i8** %303, align 8
  %305 = call i32 @dev_dbg(%struct.TYPE_13__* %301, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i8* %304)
  br label %306

306:                                              ; preds = %299, %249
  %307 = load %struct.device_node*, %struct.device_node** %6, align 8
  %308 = bitcast %struct.device_node* %307 to i8*
  %309 = call i8* @irq_of_parse_and_map(i8* %308, i32 0)
  %310 = ptrtoint i8* %309 to i32
  %311 = load %struct.temac_local*, %struct.temac_local** %7, align 8
  %312 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %311, i32 0, i32 3
  store i32 %310, i32* %312, align 8
  %313 = load %struct.device_node*, %struct.device_node** %6, align 8
  %314 = bitcast %struct.device_node* %313 to i8*
  %315 = call i8* @irq_of_parse_and_map(i8* %314, i32 1)
  %316 = ptrtoint i8* %315 to i32
  %317 = load %struct.temac_local*, %struct.temac_local** %7, align 8
  %318 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %317, i32 0, i32 4
  store i32 %316, i32* %318, align 4
  %319 = load %struct.temac_local*, %struct.temac_local** %7, align 8
  %320 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %319, i32 0, i32 5
  store i32 270663680, i32* %320, align 8
  %321 = load %struct.temac_local*, %struct.temac_local** %7, align 8
  %322 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %321, i32 0, i32 6
  store i32 -16318464, i32* %322, align 4
  %323 = load %struct.device_node*, %struct.device_node** %6, align 8
  %324 = bitcast %struct.device_node* %323 to i8*
  %325 = call i32 @of_node_put(i8* %324)
  br label %437

326:                                              ; preds = %233
  %327 = load %struct.ll_temac_platform_data*, %struct.ll_temac_platform_data** %4, align 8
  %328 = icmp ne %struct.ll_temac_platform_data* %327, null
  br i1 %328, label %329, label %436

329:                                              ; preds = %326
  %330 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %331 = load i32, i32* @IORESOURCE_MEM, align 4
  %332 = call %struct.resource* @platform_get_resource(%struct.platform_device* %330, i32 %331, i32 1)
  store %struct.resource* %332, %struct.resource** %9, align 8
  %333 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %334 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %333, i32 0, i32 0
  %335 = load %struct.resource*, %struct.resource** %9, align 8
  %336 = getelementptr inbounds %struct.resource, %struct.resource* %335, i32 0, i32 0
  %337 = load i32, i32* %336, align 4
  %338 = load %struct.resource*, %struct.resource** %9, align 8
  %339 = call i32 @resource_size(%struct.resource* %338)
  %340 = call i8* @devm_ioremap_nocache(%struct.TYPE_13__* %334, i32 %337, i32 %339)
  %341 = load %struct.temac_local*, %struct.temac_local** %7, align 8
  %342 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %341, i32 0, i32 2
  store i8* %340, i8** %342, align 8
  %343 = load %struct.temac_local*, %struct.temac_local** %7, align 8
  %344 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %343, i32 0, i32 2
  %345 = load i8*, i8** %344, align 8
  %346 = call i64 @IS_ERR(i8* %345)
  %347 = icmp ne i64 %346, 0
  br i1 %347, label %348, label %356

348:                                              ; preds = %329
  %349 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %350 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %349, i32 0, i32 0
  %351 = call i32 (%struct.TYPE_13__*, i8*, ...) @dev_err(%struct.TYPE_13__* %350, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0))
  %352 = load %struct.temac_local*, %struct.temac_local** %7, align 8
  %353 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %352, i32 0, i32 2
  %354 = load i8*, i8** %353, align 8
  %355 = call i32 @PTR_ERR(i8* %354)
  store i32 %355, i32* %2, align 4
  br label %608

356:                                              ; preds = %329
  %357 = load %struct.ll_temac_platform_data*, %struct.ll_temac_platform_data** %4, align 8
  %358 = getelementptr inbounds %struct.ll_temac_platform_data, %struct.ll_temac_platform_data* %357, i32 0, i32 8
  %359 = load i64, i64* %358, align 8
  %360 = icmp ne i64 %359, 0
  br i1 %360, label %361, label %368

361:                                              ; preds = %356
  %362 = load i8*, i8** @temac_dma_in32_le, align 8
  %363 = load %struct.temac_local*, %struct.temac_local** %7, align 8
  %364 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %363, i32 0, i32 14
  store i8* %362, i8** %364, align 8
  %365 = load i8*, i8** @temac_dma_out32_le, align 8
  %366 = load %struct.temac_local*, %struct.temac_local** %7, align 8
  %367 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %366, i32 0, i32 13
  store i8* %365, i8** %367, align 8
  br label %375

368:                                              ; preds = %356
  %369 = load i8*, i8** @temac_dma_in32_be, align 8
  %370 = load %struct.temac_local*, %struct.temac_local** %7, align 8
  %371 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %370, i32 0, i32 14
  store i8* %369, i8** %371, align 8
  %372 = load i8*, i8** @temac_dma_out32_be, align 8
  %373 = load %struct.temac_local*, %struct.temac_local** %7, align 8
  %374 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %373, i32 0, i32 13
  store i8* %372, i8** %374, align 8
  br label %375

375:                                              ; preds = %368, %361
  %376 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %377 = call i8* @platform_get_irq(%struct.platform_device* %376, i32 0)
  %378 = ptrtoint i8* %377 to i32
  %379 = load %struct.temac_local*, %struct.temac_local** %7, align 8
  %380 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %379, i32 0, i32 3
  store i32 %378, i32* %380, align 8
  %381 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %382 = call i8* @platform_get_irq(%struct.platform_device* %381, i32 1)
  %383 = ptrtoint i8* %382 to i32
  %384 = load %struct.temac_local*, %struct.temac_local** %7, align 8
  %385 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %384, i32 0, i32 4
  store i32 %383, i32* %385, align 4
  %386 = load %struct.ll_temac_platform_data*, %struct.ll_temac_platform_data** %4, align 8
  %387 = getelementptr inbounds %struct.ll_temac_platform_data, %struct.ll_temac_platform_data* %386, i32 0, i32 1
  %388 = load i32, i32* %387, align 4
  %389 = icmp ne i32 %388, 0
  br i1 %389, label %395, label %390

390:                                              ; preds = %375
  %391 = load %struct.ll_temac_platform_data*, %struct.ll_temac_platform_data** %4, align 8
  %392 = getelementptr inbounds %struct.ll_temac_platform_data, %struct.ll_temac_platform_data* %391, i32 0, i32 2
  %393 = load i32, i32* %392, align 8
  %394 = icmp ne i32 %393, 0
  br i1 %394, label %395, label %407

395:                                              ; preds = %390, %375
  %396 = load %struct.ll_temac_platform_data*, %struct.ll_temac_platform_data** %4, align 8
  %397 = getelementptr inbounds %struct.ll_temac_platform_data, %struct.ll_temac_platform_data* %396, i32 0, i32 1
  %398 = load i32, i32* %397, align 4
  %399 = shl i32 %398, 24
  %400 = load %struct.ll_temac_platform_data*, %struct.ll_temac_platform_data** %4, align 8
  %401 = getelementptr inbounds %struct.ll_temac_platform_data, %struct.ll_temac_platform_data* %400, i32 0, i32 2
  %402 = load i32, i32* %401, align 8
  %403 = shl i32 %402, 16
  %404 = or i32 %399, %403
  %405 = load %struct.temac_local*, %struct.temac_local** %7, align 8
  %406 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %405, i32 0, i32 5
  store i32 %404, i32* %406, align 8
  br label %410

407:                                              ; preds = %390
  %408 = load %struct.temac_local*, %struct.temac_local** %7, align 8
  %409 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %408, i32 0, i32 5
  store i32 270663680, i32* %409, align 8
  br label %410

410:                                              ; preds = %407, %395
  %411 = load %struct.ll_temac_platform_data*, %struct.ll_temac_platform_data** %4, align 8
  %412 = getelementptr inbounds %struct.ll_temac_platform_data, %struct.ll_temac_platform_data* %411, i32 0, i32 3
  %413 = load i32, i32* %412, align 4
  %414 = icmp ne i32 %413, 0
  br i1 %414, label %420, label %415

415:                                              ; preds = %410
  %416 = load %struct.ll_temac_platform_data*, %struct.ll_temac_platform_data** %4, align 8
  %417 = getelementptr inbounds %struct.ll_temac_platform_data, %struct.ll_temac_platform_data* %416, i32 0, i32 4
  %418 = load i32, i32* %417, align 8
  %419 = icmp ne i32 %418, 0
  br i1 %419, label %420, label %432

420:                                              ; preds = %415, %410
  %421 = load %struct.ll_temac_platform_data*, %struct.ll_temac_platform_data** %4, align 8
  %422 = getelementptr inbounds %struct.ll_temac_platform_data, %struct.ll_temac_platform_data* %421, i32 0, i32 3
  %423 = load i32, i32* %422, align 4
  %424 = shl i32 %423, 24
  %425 = load %struct.ll_temac_platform_data*, %struct.ll_temac_platform_data** %4, align 8
  %426 = getelementptr inbounds %struct.ll_temac_platform_data, %struct.ll_temac_platform_data* %425, i32 0, i32 4
  %427 = load i32, i32* %426, align 8
  %428 = shl i32 %427, 16
  %429 = or i32 %424, %428
  %430 = load %struct.temac_local*, %struct.temac_local** %7, align 8
  %431 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %430, i32 0, i32 6
  store i32 %429, i32* %431, align 4
  br label %435

432:                                              ; preds = %415
  %433 = load %struct.temac_local*, %struct.temac_local** %7, align 8
  %434 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %433, i32 0, i32 6
  store i32 -16318464, i32* %434, align 4
  br label %435

435:                                              ; preds = %432, %420
  br label %436

436:                                              ; preds = %435, %326
  br label %437

437:                                              ; preds = %436, %306
  %438 = load %struct.temac_local*, %struct.temac_local** %7, align 8
  %439 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %438, i32 0, i32 3
  %440 = load i32, i32* %439, align 8
  %441 = icmp slt i32 %440, 0
  br i1 %441, label %442, label %457

442:                                              ; preds = %437
  %443 = load %struct.temac_local*, %struct.temac_local** %7, align 8
  %444 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %443, i32 0, i32 3
  %445 = load i32, i32* %444, align 8
  %446 = load i32, i32* @EPROBE_DEFER, align 4
  %447 = sub nsw i32 0, %446
  %448 = icmp ne i32 %445, %447
  br i1 %448, label %449, label %453

449:                                              ; preds = %442
  %450 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %451 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %450, i32 0, i32 0
  %452 = call i32 (%struct.TYPE_13__*, i8*, ...) @dev_err(%struct.TYPE_13__* %451, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0))
  br label %453

453:                                              ; preds = %449, %442
  %454 = load %struct.temac_local*, %struct.temac_local** %7, align 8
  %455 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %454, i32 0, i32 3
  %456 = load i32, i32* %455, align 8
  store i32 %456, i32* %2, align 4
  br label %608

457:                                              ; preds = %437
  %458 = load %struct.temac_local*, %struct.temac_local** %7, align 8
  %459 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %458, i32 0, i32 4
  %460 = load i32, i32* %459, align 4
  %461 = icmp slt i32 %460, 0
  br i1 %461, label %462, label %477

462:                                              ; preds = %457
  %463 = load %struct.temac_local*, %struct.temac_local** %7, align 8
  %464 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %463, i32 0, i32 4
  %465 = load i32, i32* %464, align 4
  %466 = load i32, i32* @EPROBE_DEFER, align 4
  %467 = sub nsw i32 0, %466
  %468 = icmp ne i32 %465, %467
  br i1 %468, label %469, label %473

469:                                              ; preds = %462
  %470 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %471 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %470, i32 0, i32 0
  %472 = call i32 (%struct.TYPE_13__*, i8*, ...) @dev_err(%struct.TYPE_13__* %471, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i64 0, i64 0))
  br label %473

473:                                              ; preds = %469, %462
  %474 = load %struct.temac_local*, %struct.temac_local** %7, align 8
  %475 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %474, i32 0, i32 4
  %476 = load i32, i32* %475, align 4
  store i32 %476, i32* %2, align 4
  br label %608

477:                                              ; preds = %457
  %478 = load %struct.device_node*, %struct.device_node** %5, align 8
  %479 = icmp ne %struct.device_node* %478, null
  br i1 %479, label %480, label %497

480:                                              ; preds = %477
  %481 = load %struct.device_node*, %struct.device_node** %5, align 8
  %482 = bitcast %struct.device_node* %481 to i8*
  %483 = call i8* @of_get_mac_address(i8* %482)
  store i8* %483, i8** %10, align 8
  %484 = load i8*, i8** %10, align 8
  %485 = call i64 @IS_ERR(i8* %484)
  %486 = icmp ne i64 %485, 0
  br i1 %486, label %487, label %493

487:                                              ; preds = %480
  %488 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %489 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %488, i32 0, i32 0
  %490 = call i32 (%struct.TYPE_13__*, i8*, ...) @dev_err(%struct.TYPE_13__* %489, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i64 0, i64 0))
  %491 = load i32, i32* @ENODEV, align 4
  %492 = sub nsw i32 0, %491
  store i32 %492, i32* %2, align 4
  br label %608

493:                                              ; preds = %480
  %494 = load %struct.net_device*, %struct.net_device** %8, align 8
  %495 = load i8*, i8** %10, align 8
  %496 = call i32 @temac_init_mac_address(%struct.net_device* %494, i8* %495)
  br label %507

497:                                              ; preds = %477
  %498 = load %struct.ll_temac_platform_data*, %struct.ll_temac_platform_data** %4, align 8
  %499 = icmp ne %struct.ll_temac_platform_data* %498, null
  br i1 %499, label %500, label %506

500:                                              ; preds = %497
  %501 = load %struct.net_device*, %struct.net_device** %8, align 8
  %502 = load %struct.ll_temac_platform_data*, %struct.ll_temac_platform_data** %4, align 8
  %503 = getelementptr inbounds %struct.ll_temac_platform_data, %struct.ll_temac_platform_data* %502, i32 0, i32 5
  %504 = load i8*, i8** %503, align 8
  %505 = call i32 @temac_init_mac_address(%struct.net_device* %501, i8* %504)
  br label %506

506:                                              ; preds = %500, %497
  br label %507

507:                                              ; preds = %506, %493
  %508 = load %struct.temac_local*, %struct.temac_local** %7, align 8
  %509 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %510 = call i32 @temac_mdio_setup(%struct.temac_local* %508, %struct.platform_device* %509)
  store i32 %510, i32* %13, align 4
  %511 = load i32, i32* %13, align 4
  %512 = icmp ne i32 %511, 0
  br i1 %512, label %513, label %517

513:                                              ; preds = %507
  %514 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %515 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %514, i32 0, i32 0
  %516 = call i32 @dev_warn(%struct.TYPE_13__* %515, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.13, i64 0, i64 0))
  br label %517

517:                                              ; preds = %513, %507
  %518 = load %struct.device_node*, %struct.device_node** %5, align 8
  %519 = icmp ne %struct.device_node* %518, null
  br i1 %519, label %520, label %538

520:                                              ; preds = %517
  %521 = load %struct.device_node*, %struct.device_node** %5, align 8
  %522 = bitcast %struct.device_node* %521 to i8*
  %523 = call i8* @of_parse_phandle(i8* %522, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0), i32 0)
  %524 = load %struct.temac_local*, %struct.temac_local** %7, align 8
  %525 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %524, i32 0, i32 7
  store i8* %523, i8** %525, align 8
  %526 = load %struct.temac_local*, %struct.temac_local** %7, align 8
  %527 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %526, i32 0, i32 7
  %528 = load i8*, i8** %527, align 8
  %529 = icmp ne i8* %528, null
  br i1 %529, label %530, label %537

530:                                              ; preds = %520
  %531 = load %struct.temac_local*, %struct.temac_local** %7, align 8
  %532 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %531, i32 0, i32 8
  %533 = load %struct.TYPE_13__*, %struct.TYPE_13__** %532, align 8
  %534 = load %struct.device_node*, %struct.device_node** %5, align 8
  %535 = bitcast %struct.device_node* %534 to i8*
  %536 = call i32 @dev_dbg(%struct.TYPE_13__* %533, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i64 0, i64 0), i8* %535)
  br label %537

537:                                              ; preds = %530, %520
  br label %561

538:                                              ; preds = %517
  %539 = load %struct.ll_temac_platform_data*, %struct.ll_temac_platform_data** %4, align 8
  %540 = icmp ne %struct.ll_temac_platform_data* %539, null
  br i1 %540, label %541, label %560

541:                                              ; preds = %538
  %542 = load %struct.temac_local*, %struct.temac_local** %7, align 8
  %543 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %542, i32 0, i32 11
  %544 = load i32, i32* %543, align 4
  %545 = load i8*, i8** @PHY_ID_FMT, align 8
  %546 = load %struct.temac_local*, %struct.temac_local** %7, align 8
  %547 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %546, i32 0, i32 12
  %548 = load %struct.TYPE_12__*, %struct.TYPE_12__** %547, align 8
  %549 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %548, i32 0, i32 0
  %550 = load i32, i32* %549, align 4
  %551 = load %struct.ll_temac_platform_data*, %struct.ll_temac_platform_data** %4, align 8
  %552 = getelementptr inbounds %struct.ll_temac_platform_data, %struct.ll_temac_platform_data* %551, i32 0, i32 7
  %553 = load i32, i32* %552, align 4
  %554 = call i32 @snprintf(i32 %544, i32 4, i8* %545, i32 %550, i32 %553)
  %555 = load %struct.ll_temac_platform_data*, %struct.ll_temac_platform_data** %4, align 8
  %556 = getelementptr inbounds %struct.ll_temac_platform_data, %struct.ll_temac_platform_data* %555, i32 0, i32 6
  %557 = load i32, i32* %556, align 8
  %558 = load %struct.temac_local*, %struct.temac_local** %7, align 8
  %559 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %558, i32 0, i32 10
  store i32 %557, i32* %559, align 8
  br label %560

560:                                              ; preds = %541, %538
  br label %561

561:                                              ; preds = %560, %537
  %562 = load %struct.temac_local*, %struct.temac_local** %7, align 8
  %563 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %562, i32 0, i32 8
  %564 = load %struct.TYPE_13__*, %struct.TYPE_13__** %563, align 8
  %565 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %564, i32 0, i32 0
  %566 = call i32 @sysfs_create_group(i32* %565, i32* @temac_attr_group)
  store i32 %566, i32* %13, align 4
  %567 = load i32, i32* %13, align 4
  %568 = icmp ne i32 %567, 0
  br i1 %568, label %569, label %574

569:                                              ; preds = %561
  %570 = load %struct.temac_local*, %struct.temac_local** %7, align 8
  %571 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %570, i32 0, i32 8
  %572 = load %struct.TYPE_13__*, %struct.TYPE_13__** %571, align 8
  %573 = call i32 (%struct.TYPE_13__*, i8*, ...) @dev_err(%struct.TYPE_13__* %572, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.16, i64 0, i64 0))
  br label %594

574:                                              ; preds = %561
  %575 = load %struct.temac_local*, %struct.temac_local** %7, align 8
  %576 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %575, i32 0, i32 9
  %577 = load %struct.net_device*, %struct.net_device** %576, align 8
  %578 = call i32 @register_netdev(%struct.net_device* %577)
  store i32 %578, i32* %13, align 4
  %579 = load i32, i32* %13, align 4
  %580 = icmp ne i32 %579, 0
  br i1 %580, label %581, label %587

581:                                              ; preds = %574
  %582 = load %struct.temac_local*, %struct.temac_local** %7, align 8
  %583 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %582, i32 0, i32 8
  %584 = load %struct.TYPE_13__*, %struct.TYPE_13__** %583, align 8
  %585 = load i32, i32* %13, align 4
  %586 = call i32 (%struct.TYPE_13__*, i8*, ...) @dev_err(%struct.TYPE_13__* %584, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.17, i64 0, i64 0), i32 %585)
  br label %588

587:                                              ; preds = %574
  store i32 0, i32* %2, align 4
  br label %608

588:                                              ; preds = %581
  %589 = load %struct.temac_local*, %struct.temac_local** %7, align 8
  %590 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %589, i32 0, i32 8
  %591 = load %struct.TYPE_13__*, %struct.TYPE_13__** %590, align 8
  %592 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %591, i32 0, i32 0
  %593 = call i32 @sysfs_remove_group(i32* %592, i32* @temac_attr_group)
  br label %594

594:                                              ; preds = %588, %569
  %595 = load %struct.temac_local*, %struct.temac_local** %7, align 8
  %596 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %595, i32 0, i32 7
  %597 = load i8*, i8** %596, align 8
  %598 = icmp ne i8* %597, null
  br i1 %598, label %599, label %604

599:                                              ; preds = %594
  %600 = load %struct.temac_local*, %struct.temac_local** %7, align 8
  %601 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %600, i32 0, i32 7
  %602 = load i8*, i8** %601, align 8
  %603 = call i32 @of_node_put(i8* %602)
  br label %604

604:                                              ; preds = %599, %594
  %605 = load %struct.temac_local*, %struct.temac_local** %7, align 8
  %606 = call i32 @temac_mdio_teardown(%struct.temac_local* %605)
  %607 = load i32, i32* %13, align 4
  store i32 %607, i32* %2, align 4
  br label %608

608:                                              ; preds = %604, %587, %487, %473, %453, %348, %269, %243, %108, %66, %26
  %609 = load i32, i32* %2, align 4
  ret i32 %609
}

declare dso_local %struct.ll_temac_platform_data* @dev_get_platdata(%struct.TYPE_13__*) #1

declare dso_local i8* @dev_of_node(%struct.TYPE_13__*) #1

declare dso_local %struct.net_device* @devm_alloc_etherdev(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.net_device*) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, %struct.TYPE_13__*) #1

declare dso_local %struct.temac_local* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @dev_err(%struct.TYPE_13__*, i8*, ...) #1

declare dso_local i32* @devm_kmalloc(%struct.TYPE_13__*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i8* @devm_ioremap_nocache(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i64 @of_get_property(i8*, i8*, i32*) #1

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local i8* @of_parse_phandle(i8*, i8*, i32) #1

declare dso_local i64 @temac_dcr_setup(%struct.temac_local*, %struct.platform_device*, i8*) #1

declare dso_local i8* @devm_of_iomap(%struct.TYPE_13__*, i8*, i32, i32*) #1

declare dso_local i32 @of_node_put(i8*) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_13__*, i8*, i8*) #1

declare dso_local i8* @irq_of_parse_and_map(i8*, i32) #1

declare dso_local i8* @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i8* @of_get_mac_address(i8*) #1

declare dso_local i32 @temac_init_mac_address(%struct.net_device*, i8*) #1

declare dso_local i32 @temac_mdio_setup(%struct.temac_local*, %struct.platform_device*) #1

declare dso_local i32 @dev_warn(%struct.TYPE_13__*, i8*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32, i32) #1

declare dso_local i32 @sysfs_create_group(i32*, i32*) #1

declare dso_local i32 @register_netdev(%struct.net_device*) #1

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

declare dso_local i32 @temac_mdio_teardown(%struct.temac_local*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
