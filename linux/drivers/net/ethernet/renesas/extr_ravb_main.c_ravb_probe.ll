; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/renesas/extr_ravb_main.c_ravb_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/renesas/extr_ravb_main.c_ravb_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.ravb_private = type { i32, i32*, i32*, i32, i32, i32, %struct.TYPE_17__*, i32*, i32, i32, i32, i32, i8*, i8*, i32, i32, i32, i32, i32*, i32*, %struct.platform_device*, %struct.net_device* }
%struct.TYPE_17__ = type { i32 }
%struct.net_device = type { i32, %struct.TYPE_15__, i32, i64, i32*, i32*, i32, i64, i8*, i8* }
%struct.TYPE_15__ = type { i32 }
%struct.resource = type { i64 }

@.str = private unnamed_addr constant [61 x i8] c"this driver is required to be instantiated from device tree\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"invalid resource\0A\00", align 1
@NUM_TX_QUEUE = common dso_local global i32 0, align 4
@NUM_RX_QUEUE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NETIF_F_RXCSUM = common dso_local global i8* null, align 8
@RCAR_GEN3 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"ch22\00", align 1
@BE_TX_RING_SIZE = common dso_local global i32 0, align 4
@RAVB_BE = common dso_local global i64 0, align 8
@BE_RX_RING_SIZE = common dso_local global i32 0, align 4
@NC_TX_RING_SIZE = common dso_local global i32 0, align 4
@RAVB_NC = common dso_local global i64 0, align 8
@NC_RX_RING_SIZE = common dso_local global i32 0, align 4
@ravb_tx_timeout_work = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"renesas,no-ether-link\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"renesas,ether-link-active-low\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"ch24\00", align 1
@ravb_rx_irqs = common dso_local global i8** null, align 8
@ravb_tx_irqs = common dso_local global i8** null, align 8
@ETH_HLEN = common dso_local global i64 0, align 8
@VLAN_HLEN = common dso_local global i64 0, align 8
@ETH_FCS_LEN = common dso_local global i64 0, align 8
@ETH_MIN_MTU = common dso_local global i32 0, align 4
@RCAR_GEN2 = common dso_local global i32 0, align 4
@NUM_TX_DESC_GEN2 = common dso_local global i32 0, align 4
@NUM_TX_DESC_GEN3 = common dso_local global i32 0, align 4
@ravb_netdev_ops = common dso_local global i32 0, align 4
@ravb_ethtool_ops = common dso_local global i32 0, align 4
@GCCR = common dso_local global i32 0, align 4
@GCCR_LTI = common dso_local global i32 0, align 4
@DBAT_ENTRY_NUM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [57 x i8] c"Cannot allocate desc base address table (size %d bytes)\0A\00", align 1
@DT_EOS = common dso_local global i32 0, align 4
@DBAT = common dso_local global i32 0, align 4
@RAVB_DEF_MSG_ENABLE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [51 x i8] c"no valid MAC address supplied, using a random one\0A\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"failed to initialize MDIO\0A\00", align 1
@ravb_poll = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [35 x i8] c"Base address at %#x, %pM, IRQ %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ravb_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ravb_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.ravb_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.resource*, align 8
  %12 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  %16 = load %struct.device_node*, %struct.device_node** %15, align 8
  store %struct.device_node* %16, %struct.device_node** %4, align 8
  %17 = load %struct.device_node*, %struct.device_node** %4, align 8
  %18 = icmp ne %struct.device_node* %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %1
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  %22 = call i32 (%struct.TYPE_16__*, i8*, ...) @dev_err(%struct.TYPE_16__* %21, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %480

25:                                               ; preds = %1
  %26 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %27 = load i32, i32* @IORESOURCE_MEM, align 4
  %28 = call %struct.resource* @platform_get_resource(%struct.platform_device* %26, i32 %27, i32 0)
  store %struct.resource* %28, %struct.resource** %11, align 8
  %29 = load %struct.resource*, %struct.resource** %11, align 8
  %30 = icmp ne %struct.resource* %29, null
  br i1 %30, label %37, label %31

31:                                               ; preds = %25
  %32 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %33 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %32, i32 0, i32 0
  %34 = call i32 (%struct.TYPE_16__*, i8*, ...) @dev_err(%struct.TYPE_16__* %33, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %480

37:                                               ; preds = %25
  %38 = load i32, i32* @NUM_TX_QUEUE, align 4
  %39 = load i32, i32* @NUM_RX_QUEUE, align 4
  %40 = call %struct.net_device* @alloc_etherdev_mqs(i32 136, i32 %38, i32 %39)
  store %struct.net_device* %40, %struct.net_device** %7, align 8
  %41 = load %struct.net_device*, %struct.net_device** %7, align 8
  %42 = icmp ne %struct.net_device* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %37
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %480

46:                                               ; preds = %37
  %47 = load i8*, i8** @NETIF_F_RXCSUM, align 8
  %48 = load %struct.net_device*, %struct.net_device** %7, align 8
  %49 = getelementptr inbounds %struct.net_device, %struct.net_device* %48, i32 0, i32 9
  store i8* %47, i8** %49, align 8
  %50 = load i8*, i8** @NETIF_F_RXCSUM, align 8
  %51 = load %struct.net_device*, %struct.net_device** %7, align 8
  %52 = getelementptr inbounds %struct.net_device, %struct.net_device* %51, i32 0, i32 8
  store i8* %50, i8** %52, align 8
  %53 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %54 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %53, i32 0, i32 0
  %55 = call i32 @pm_runtime_enable(%struct.TYPE_16__* %54)
  %56 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %57 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %56, i32 0, i32 0
  %58 = call i32 @pm_runtime_get_sync(%struct.TYPE_16__* %57)
  %59 = load %struct.resource*, %struct.resource** %11, align 8
  %60 = getelementptr inbounds %struct.resource, %struct.resource* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.net_device*, %struct.net_device** %7, align 8
  %63 = getelementptr inbounds %struct.net_device, %struct.net_device* %62, i32 0, i32 3
  store i64 %61, i64* %63, align 8
  %64 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %65 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %64, i32 0, i32 0
  %66 = call i64 @of_device_get_match_data(%struct.TYPE_16__* %65)
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* @RCAR_GEN3, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %46
  %72 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %73 = call i32 @platform_get_irq_byname(%struct.platform_device* %72, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store i32 %73, i32* %9, align 4
  br label %77

74:                                               ; preds = %46
  %75 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %76 = call i32 @platform_get_irq(%struct.platform_device* %75, i32 0)
  store i32 %76, i32* %9, align 4
  br label %77

77:                                               ; preds = %74, %71
  %78 = load i32, i32* %9, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %77
  %81 = load i32, i32* %9, align 4
  store i32 %81, i32* %8, align 4
  br label %470

82:                                               ; preds = %77
  %83 = load i32, i32* %9, align 4
  %84 = load %struct.net_device*, %struct.net_device** %7, align 8
  %85 = getelementptr inbounds %struct.net_device, %struct.net_device* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 8
  %86 = load %struct.net_device*, %struct.net_device** %7, align 8
  %87 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %88 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %87, i32 0, i32 0
  %89 = call i32 @SET_NETDEV_DEV(%struct.net_device* %86, %struct.TYPE_16__* %88)
  %90 = load %struct.net_device*, %struct.net_device** %7, align 8
  %91 = call %struct.ravb_private* @netdev_priv(%struct.net_device* %90)
  store %struct.ravb_private* %91, %struct.ravb_private** %5, align 8
  %92 = load %struct.net_device*, %struct.net_device** %7, align 8
  %93 = load %struct.ravb_private*, %struct.ravb_private** %5, align 8
  %94 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %93, i32 0, i32 21
  store %struct.net_device* %92, %struct.net_device** %94, align 8
  %95 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %96 = load %struct.ravb_private*, %struct.ravb_private** %5, align 8
  %97 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %96, i32 0, i32 20
  store %struct.platform_device* %95, %struct.platform_device** %97, align 8
  %98 = load i32, i32* @BE_TX_RING_SIZE, align 4
  %99 = load %struct.ravb_private*, %struct.ravb_private** %5, align 8
  %100 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %99, i32 0, i32 19
  %101 = load i32*, i32** %100, align 8
  %102 = load i64, i64* @RAVB_BE, align 8
  %103 = getelementptr inbounds i32, i32* %101, i64 %102
  store i32 %98, i32* %103, align 4
  %104 = load i32, i32* @BE_RX_RING_SIZE, align 4
  %105 = load %struct.ravb_private*, %struct.ravb_private** %5, align 8
  %106 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %105, i32 0, i32 18
  %107 = load i32*, i32** %106, align 8
  %108 = load i64, i64* @RAVB_BE, align 8
  %109 = getelementptr inbounds i32, i32* %107, i64 %108
  store i32 %104, i32* %109, align 4
  %110 = load i32, i32* @NC_TX_RING_SIZE, align 4
  %111 = load %struct.ravb_private*, %struct.ravb_private** %5, align 8
  %112 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %111, i32 0, i32 19
  %113 = load i32*, i32** %112, align 8
  %114 = load i64, i64* @RAVB_NC, align 8
  %115 = getelementptr inbounds i32, i32* %113, i64 %114
  store i32 %110, i32* %115, align 4
  %116 = load i32, i32* @NC_RX_RING_SIZE, align 4
  %117 = load %struct.ravb_private*, %struct.ravb_private** %5, align 8
  %118 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %117, i32 0, i32 18
  %119 = load i32*, i32** %118, align 8
  %120 = load i64, i64* @RAVB_NC, align 8
  %121 = getelementptr inbounds i32, i32* %119, i64 %120
  store i32 %116, i32* %121, align 4
  %122 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %123 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %122, i32 0, i32 0
  %124 = load %struct.resource*, %struct.resource** %11, align 8
  %125 = call i32 @devm_ioremap_resource(%struct.TYPE_16__* %123, %struct.resource* %124)
  %126 = load %struct.ravb_private*, %struct.ravb_private** %5, align 8
  %127 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %126, i32 0, i32 17
  store i32 %125, i32* %127, align 4
  %128 = load %struct.ravb_private*, %struct.ravb_private** %5, align 8
  %129 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %128, i32 0, i32 17
  %130 = load i32, i32* %129, align 4
  %131 = call i64 @IS_ERR(i32 %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %82
  %134 = load %struct.ravb_private*, %struct.ravb_private** %5, align 8
  %135 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %134, i32 0, i32 17
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @PTR_ERR(i32 %136)
  store i32 %137, i32* %8, align 4
  br label %470

138:                                              ; preds = %82
  %139 = load %struct.ravb_private*, %struct.ravb_private** %5, align 8
  %140 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %139, i32 0, i32 16
  %141 = call i32 @spin_lock_init(i32* %140)
  %142 = load %struct.ravb_private*, %struct.ravb_private** %5, align 8
  %143 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %142, i32 0, i32 15
  %144 = load i32, i32* @ravb_tx_timeout_work, align 4
  %145 = call i32 @INIT_WORK(i32* %143, i32 %144)
  %146 = load %struct.device_node*, %struct.device_node** %4, align 8
  %147 = call i32 @of_get_phy_mode(%struct.device_node* %146)
  %148 = load %struct.ravb_private*, %struct.ravb_private** %5, align 8
  %149 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %148, i32 0, i32 14
  store i32 %147, i32* %149, align 8
  %150 = load %struct.device_node*, %struct.device_node** %4, align 8
  %151 = call i8* @of_property_read_bool(%struct.device_node* %150, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %152 = load %struct.ravb_private*, %struct.ravb_private** %5, align 8
  %153 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %152, i32 0, i32 13
  store i8* %151, i8** %153, align 8
  %154 = load %struct.device_node*, %struct.device_node** %4, align 8
  %155 = call i8* @of_property_read_bool(%struct.device_node* %154, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %156 = load %struct.ravb_private*, %struct.ravb_private** %5, align 8
  %157 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %156, i32 0, i32 12
  store i8* %155, i8** %157, align 8
  %158 = load i32, i32* %6, align 4
  %159 = load i32, i32* @RCAR_GEN3, align 4
  %160 = icmp eq i32 %158, %159
  br i1 %160, label %161, label %228

161:                                              ; preds = %138
  %162 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %163 = call i32 @platform_get_irq_byname(%struct.platform_device* %162, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  store i32 %163, i32* %9, align 4
  %164 = load i32, i32* %9, align 4
  %165 = icmp slt i32 %164, 0
  br i1 %165, label %166, label %168

166:                                              ; preds = %161
  %167 = load i32, i32* %9, align 4
  store i32 %167, i32* %8, align 4
  br label %470

168:                                              ; preds = %161
  %169 = load i32, i32* %9, align 4
  %170 = load %struct.ravb_private*, %struct.ravb_private** %5, align 8
  %171 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %170, i32 0, i32 0
  store i32 %169, i32* %171, align 8
  store i32 0, i32* %12, align 4
  br label %172

172:                                              ; preds = %196, %168
  %173 = load i32, i32* %12, align 4
  %174 = load i32, i32* @NUM_RX_QUEUE, align 4
  %175 = icmp slt i32 %173, %174
  br i1 %175, label %176, label %199

176:                                              ; preds = %172
  %177 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %178 = load i8**, i8*** @ravb_rx_irqs, align 8
  %179 = load i32, i32* %12, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i8*, i8** %178, i64 %180
  %182 = load i8*, i8** %181, align 8
  %183 = call i32 @platform_get_irq_byname(%struct.platform_device* %177, i8* %182)
  store i32 %183, i32* %9, align 4
  %184 = load i32, i32* %9, align 4
  %185 = icmp slt i32 %184, 0
  br i1 %185, label %186, label %188

186:                                              ; preds = %176
  %187 = load i32, i32* %9, align 4
  store i32 %187, i32* %8, align 4
  br label %470

188:                                              ; preds = %176
  %189 = load i32, i32* %9, align 4
  %190 = load %struct.ravb_private*, %struct.ravb_private** %5, align 8
  %191 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %190, i32 0, i32 1
  %192 = load i32*, i32** %191, align 8
  %193 = load i32, i32* %12, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %192, i64 %194
  store i32 %189, i32* %195, align 4
  br label %196

196:                                              ; preds = %188
  %197 = load i32, i32* %12, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %12, align 4
  br label %172

199:                                              ; preds = %172
  store i32 0, i32* %12, align 4
  br label %200

200:                                              ; preds = %224, %199
  %201 = load i32, i32* %12, align 4
  %202 = load i32, i32* @NUM_TX_QUEUE, align 4
  %203 = icmp slt i32 %201, %202
  br i1 %203, label %204, label %227

204:                                              ; preds = %200
  %205 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %206 = load i8**, i8*** @ravb_tx_irqs, align 8
  %207 = load i32, i32* %12, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i8*, i8** %206, i64 %208
  %210 = load i8*, i8** %209, align 8
  %211 = call i32 @platform_get_irq_byname(%struct.platform_device* %205, i8* %210)
  store i32 %211, i32* %9, align 4
  %212 = load i32, i32* %9, align 4
  %213 = icmp slt i32 %212, 0
  br i1 %213, label %214, label %216

214:                                              ; preds = %204
  %215 = load i32, i32* %9, align 4
  store i32 %215, i32* %8, align 4
  br label %470

216:                                              ; preds = %204
  %217 = load i32, i32* %9, align 4
  %218 = load %struct.ravb_private*, %struct.ravb_private** %5, align 8
  %219 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %218, i32 0, i32 2
  %220 = load i32*, i32** %219, align 8
  %221 = load i32, i32* %12, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i32, i32* %220, i64 %222
  store i32 %217, i32* %223, align 4
  br label %224

224:                                              ; preds = %216
  %225 = load i32, i32* %12, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %12, align 4
  br label %200

227:                                              ; preds = %200
  br label %228

228:                                              ; preds = %227, %138
  %229 = load i32, i32* %6, align 4
  %230 = load %struct.ravb_private*, %struct.ravb_private** %5, align 8
  %231 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %230, i32 0, i32 3
  store i32 %229, i32* %231, align 8
  %232 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %233 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %232, i32 0, i32 0
  %234 = call i32 @devm_clk_get(%struct.TYPE_16__* %233, i32* null)
  %235 = load %struct.ravb_private*, %struct.ravb_private** %5, align 8
  %236 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %235, i32 0, i32 11
  store i32 %234, i32* %236, align 4
  %237 = load %struct.ravb_private*, %struct.ravb_private** %5, align 8
  %238 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %237, i32 0, i32 11
  %239 = load i32, i32* %238, align 4
  %240 = call i64 @IS_ERR(i32 %239)
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %247

242:                                              ; preds = %228
  %243 = load %struct.ravb_private*, %struct.ravb_private** %5, align 8
  %244 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %243, i32 0, i32 11
  %245 = load i32, i32* %244, align 4
  %246 = call i32 @PTR_ERR(i32 %245)
  store i32 %246, i32* %8, align 4
  br label %470

247:                                              ; preds = %228
  %248 = load i64, i64* @ETH_HLEN, align 8
  %249 = load i64, i64* @VLAN_HLEN, align 8
  %250 = add nsw i64 %248, %249
  %251 = load i64, i64* @ETH_FCS_LEN, align 8
  %252 = add nsw i64 %250, %251
  %253 = sub nsw i64 2048, %252
  %254 = load %struct.net_device*, %struct.net_device** %7, align 8
  %255 = getelementptr inbounds %struct.net_device, %struct.net_device* %254, i32 0, i32 7
  store i64 %253, i64* %255, align 8
  %256 = load i32, i32* @ETH_MIN_MTU, align 4
  %257 = load %struct.net_device*, %struct.net_device** %7, align 8
  %258 = getelementptr inbounds %struct.net_device, %struct.net_device* %257, i32 0, i32 6
  store i32 %256, i32* %258, align 8
  %259 = load i32, i32* %6, align 4
  %260 = load i32, i32* @RCAR_GEN2, align 4
  %261 = icmp eq i32 %259, %260
  br i1 %261, label %262, label %264

262:                                              ; preds = %247
  %263 = load i32, i32* @NUM_TX_DESC_GEN2, align 4
  br label %266

264:                                              ; preds = %247
  %265 = load i32, i32* @NUM_TX_DESC_GEN3, align 4
  br label %266

266:                                              ; preds = %264, %262
  %267 = phi i32 [ %263, %262 ], [ %265, %264 ]
  %268 = load %struct.ravb_private*, %struct.ravb_private** %5, align 8
  %269 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %268, i32 0, i32 10
  store i32 %267, i32* %269, align 8
  %270 = load %struct.net_device*, %struct.net_device** %7, align 8
  %271 = getelementptr inbounds %struct.net_device, %struct.net_device* %270, i32 0, i32 5
  store i32* @ravb_netdev_ops, i32** %271, align 8
  %272 = load %struct.net_device*, %struct.net_device** %7, align 8
  %273 = getelementptr inbounds %struct.net_device, %struct.net_device* %272, i32 0, i32 4
  store i32* @ravb_ethtool_ops, i32** %273, align 8
  %274 = load %struct.net_device*, %struct.net_device** %7, align 8
  %275 = call i32 @ravb_set_config_mode(%struct.net_device* %274)
  %276 = load %struct.net_device*, %struct.net_device** %7, align 8
  %277 = call i32 @ravb_set_gti(%struct.net_device* %276)
  store i32 %277, i32* %8, align 4
  %278 = load i32, i32* %8, align 4
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %281

280:                                              ; preds = %266
  br label %470

281:                                              ; preds = %266
  %282 = load %struct.net_device*, %struct.net_device** %7, align 8
  %283 = load i32, i32* @GCCR, align 4
  %284 = load i32, i32* @GCCR_LTI, align 4
  %285 = load i32, i32* @GCCR_LTI, align 4
  %286 = call i32 @ravb_modify(%struct.net_device* %282, i32 %283, i32 %284, i32 %285)
  %287 = load %struct.ravb_private*, %struct.ravb_private** %5, align 8
  %288 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %287, i32 0, i32 3
  %289 = load i32, i32* %288, align 8
  %290 = load i32, i32* @RCAR_GEN2, align 4
  %291 = icmp ne i32 %289, %290
  br i1 %291, label %292, label %295

292:                                              ; preds = %281
  %293 = load %struct.net_device*, %struct.net_device** %7, align 8
  %294 = call i32 @ravb_set_delay_mode(%struct.net_device* %293)
  br label %295

295:                                              ; preds = %292, %281
  %296 = load i32, i32* @DBAT_ENTRY_NUM, align 4
  %297 = sext i32 %296 to i64
  %298 = mul i64 4, %297
  %299 = trunc i64 %298 to i32
  %300 = load %struct.ravb_private*, %struct.ravb_private** %5, align 8
  %301 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %300, i32 0, i32 4
  store i32 %299, i32* %301, align 4
  %302 = load %struct.net_device*, %struct.net_device** %7, align 8
  %303 = getelementptr inbounds %struct.net_device, %struct.net_device* %302, i32 0, i32 1
  %304 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %303, i32 0, i32 0
  %305 = load i32, i32* %304, align 4
  %306 = load %struct.ravb_private*, %struct.ravb_private** %5, align 8
  %307 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %306, i32 0, i32 4
  %308 = load i32, i32* %307, align 4
  %309 = load %struct.ravb_private*, %struct.ravb_private** %5, align 8
  %310 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %309, i32 0, i32 5
  %311 = load i32, i32* @GFP_KERNEL, align 4
  %312 = call %struct.TYPE_17__* @dma_alloc_coherent(i32 %305, i32 %308, i32* %310, i32 %311)
  %313 = load %struct.ravb_private*, %struct.ravb_private** %5, align 8
  %314 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %313, i32 0, i32 6
  store %struct.TYPE_17__* %312, %struct.TYPE_17__** %314, align 8
  %315 = load %struct.ravb_private*, %struct.ravb_private** %5, align 8
  %316 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %315, i32 0, i32 6
  %317 = load %struct.TYPE_17__*, %struct.TYPE_17__** %316, align 8
  %318 = icmp ne %struct.TYPE_17__* %317, null
  br i1 %318, label %328, label %319

319:                                              ; preds = %295
  %320 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %321 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %320, i32 0, i32 0
  %322 = load %struct.ravb_private*, %struct.ravb_private** %5, align 8
  %323 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %322, i32 0, i32 4
  %324 = load i32, i32* %323, align 4
  %325 = call i32 (%struct.TYPE_16__*, i8*, ...) @dev_err(%struct.TYPE_16__* %321, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.6, i64 0, i64 0), i32 %324)
  %326 = load i32, i32* @ENOMEM, align 4
  %327 = sub nsw i32 0, %326
  store i32 %327, i32* %8, align 4
  br label %470

328:                                              ; preds = %295
  %329 = load i64, i64* @RAVB_BE, align 8
  %330 = trunc i64 %329 to i32
  store i32 %330, i32* %10, align 4
  br label %331

331:                                              ; preds = %344, %328
  %332 = load i32, i32* %10, align 4
  %333 = load i32, i32* @DBAT_ENTRY_NUM, align 4
  %334 = icmp slt i32 %332, %333
  br i1 %334, label %335, label %347

335:                                              ; preds = %331
  %336 = load i32, i32* @DT_EOS, align 4
  %337 = load %struct.ravb_private*, %struct.ravb_private** %5, align 8
  %338 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %337, i32 0, i32 6
  %339 = load %struct.TYPE_17__*, %struct.TYPE_17__** %338, align 8
  %340 = load i32, i32* %10, align 4
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %339, i64 %341
  %343 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %342, i32 0, i32 0
  store i32 %336, i32* %343, align 4
  br label %344

344:                                              ; preds = %335
  %345 = load i32, i32* %10, align 4
  %346 = add nsw i32 %345, 1
  store i32 %346, i32* %10, align 4
  br label %331

347:                                              ; preds = %331
  %348 = load %struct.net_device*, %struct.net_device** %7, align 8
  %349 = load %struct.ravb_private*, %struct.ravb_private** %5, align 8
  %350 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %349, i32 0, i32 5
  %351 = load i32, i32* %350, align 8
  %352 = load i32, i32* @DBAT, align 4
  %353 = call i32 @ravb_write(%struct.net_device* %348, i32 %351, i32 %352)
  %354 = load %struct.ravb_private*, %struct.ravb_private** %5, align 8
  %355 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %354, i32 0, i32 9
  %356 = call i32 @INIT_LIST_HEAD(i32* %355)
  %357 = load i32, i32* %6, align 4
  %358 = load i32, i32* @RCAR_GEN2, align 4
  %359 = icmp ne i32 %357, %358
  br i1 %359, label %360, label %364

360:                                              ; preds = %347
  %361 = load %struct.net_device*, %struct.net_device** %7, align 8
  %362 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %363 = call i32 @ravb_ptp_init(%struct.net_device* %361, %struct.platform_device* %362)
  br label %364

364:                                              ; preds = %360, %347
  %365 = load i32, i32* @RAVB_DEF_MSG_ENABLE, align 4
  %366 = load %struct.ravb_private*, %struct.ravb_private** %5, align 8
  %367 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %366, i32 0, i32 8
  store i32 %365, i32* %367, align 8
  %368 = load %struct.net_device*, %struct.net_device** %7, align 8
  %369 = load %struct.device_node*, %struct.device_node** %4, align 8
  %370 = call i32 @of_get_mac_address(%struct.device_node* %369)
  %371 = call i32 @ravb_read_mac_address(%struct.net_device* %368, i32 %370)
  %372 = load %struct.net_device*, %struct.net_device** %7, align 8
  %373 = getelementptr inbounds %struct.net_device, %struct.net_device* %372, i32 0, i32 2
  %374 = load i32, i32* %373, align 8
  %375 = call i32 @is_valid_ether_addr(i32 %374)
  %376 = icmp ne i32 %375, 0
  br i1 %376, label %383, label %377

377:                                              ; preds = %364
  %378 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %379 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %378, i32 0, i32 0
  %380 = call i32 @dev_warn(%struct.TYPE_16__* %379, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.7, i64 0, i64 0))
  %381 = load %struct.net_device*, %struct.net_device** %7, align 8
  %382 = call i32 @eth_hw_addr_random(%struct.net_device* %381)
  br label %383

383:                                              ; preds = %377, %364
  %384 = load %struct.ravb_private*, %struct.ravb_private** %5, align 8
  %385 = call i32 @ravb_mdio_init(%struct.ravb_private* %384)
  store i32 %385, i32* %8, align 4
  %386 = load i32, i32* %8, align 4
  %387 = icmp ne i32 %386, 0
  br i1 %387, label %388, label %392

388:                                              ; preds = %383
  %389 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %390 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %389, i32 0, i32 0
  %391 = call i32 (%struct.TYPE_16__*, i8*, ...) @dev_err(%struct.TYPE_16__* %390, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0))
  br label %448

392:                                              ; preds = %383
  %393 = load %struct.net_device*, %struct.net_device** %7, align 8
  %394 = load %struct.ravb_private*, %struct.ravb_private** %5, align 8
  %395 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %394, i32 0, i32 7
  %396 = load i32*, i32** %395, align 8
  %397 = load i64, i64* @RAVB_BE, align 8
  %398 = getelementptr inbounds i32, i32* %396, i64 %397
  %399 = load i32, i32* @ravb_poll, align 4
  %400 = call i32 @netif_napi_add(%struct.net_device* %393, i32* %398, i32 %399, i32 64)
  %401 = load %struct.net_device*, %struct.net_device** %7, align 8
  %402 = load %struct.ravb_private*, %struct.ravb_private** %5, align 8
  %403 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %402, i32 0, i32 7
  %404 = load i32*, i32** %403, align 8
  %405 = load i64, i64* @RAVB_NC, align 8
  %406 = getelementptr inbounds i32, i32* %404, i64 %405
  %407 = load i32, i32* @ravb_poll, align 4
  %408 = call i32 @netif_napi_add(%struct.net_device* %401, i32* %406, i32 %407, i32 64)
  %409 = load %struct.net_device*, %struct.net_device** %7, align 8
  %410 = call i32 @register_netdev(%struct.net_device* %409)
  store i32 %410, i32* %8, align 4
  %411 = load i32, i32* %8, align 4
  %412 = icmp ne i32 %411, 0
  br i1 %412, label %413, label %414

413:                                              ; preds = %392
  br label %433

414:                                              ; preds = %392
  %415 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %416 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %415, i32 0, i32 0
  %417 = call i32 @device_set_wakeup_capable(%struct.TYPE_16__* %416, i32 1)
  %418 = load %struct.net_device*, %struct.net_device** %7, align 8
  %419 = load %struct.net_device*, %struct.net_device** %7, align 8
  %420 = getelementptr inbounds %struct.net_device, %struct.net_device* %419, i32 0, i32 3
  %421 = load i64, i64* %420, align 8
  %422 = trunc i64 %421 to i32
  %423 = load %struct.net_device*, %struct.net_device** %7, align 8
  %424 = getelementptr inbounds %struct.net_device, %struct.net_device* %423, i32 0, i32 2
  %425 = load i32, i32* %424, align 8
  %426 = load %struct.net_device*, %struct.net_device** %7, align 8
  %427 = getelementptr inbounds %struct.net_device, %struct.net_device* %426, i32 0, i32 0
  %428 = load i32, i32* %427, align 8
  %429 = call i32 @netdev_info(%struct.net_device* %418, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0), i32 %422, i32 %425, i32 %428)
  %430 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %431 = load %struct.net_device*, %struct.net_device** %7, align 8
  %432 = call i32 @platform_set_drvdata(%struct.platform_device* %430, %struct.net_device* %431)
  store i32 0, i32* %2, align 4
  br label %480

433:                                              ; preds = %413
  %434 = load %struct.ravb_private*, %struct.ravb_private** %5, align 8
  %435 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %434, i32 0, i32 7
  %436 = load i32*, i32** %435, align 8
  %437 = load i64, i64* @RAVB_NC, align 8
  %438 = getelementptr inbounds i32, i32* %436, i64 %437
  %439 = call i32 @netif_napi_del(i32* %438)
  %440 = load %struct.ravb_private*, %struct.ravb_private** %5, align 8
  %441 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %440, i32 0, i32 7
  %442 = load i32*, i32** %441, align 8
  %443 = load i64, i64* @RAVB_BE, align 8
  %444 = getelementptr inbounds i32, i32* %442, i64 %443
  %445 = call i32 @netif_napi_del(i32* %444)
  %446 = load %struct.ravb_private*, %struct.ravb_private** %5, align 8
  %447 = call i32 @ravb_mdio_release(%struct.ravb_private* %446)
  br label %448

448:                                              ; preds = %433, %388
  %449 = load %struct.net_device*, %struct.net_device** %7, align 8
  %450 = getelementptr inbounds %struct.net_device, %struct.net_device* %449, i32 0, i32 1
  %451 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %450, i32 0, i32 0
  %452 = load i32, i32* %451, align 4
  %453 = load %struct.ravb_private*, %struct.ravb_private** %5, align 8
  %454 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %453, i32 0, i32 4
  %455 = load i32, i32* %454, align 4
  %456 = load %struct.ravb_private*, %struct.ravb_private** %5, align 8
  %457 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %456, i32 0, i32 6
  %458 = load %struct.TYPE_17__*, %struct.TYPE_17__** %457, align 8
  %459 = load %struct.ravb_private*, %struct.ravb_private** %5, align 8
  %460 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %459, i32 0, i32 5
  %461 = load i32, i32* %460, align 8
  %462 = call i32 @dma_free_coherent(i32 %452, i32 %455, %struct.TYPE_17__* %458, i32 %461)
  %463 = load i32, i32* %6, align 4
  %464 = load i32, i32* @RCAR_GEN2, align 4
  %465 = icmp ne i32 %463, %464
  br i1 %465, label %466, label %469

466:                                              ; preds = %448
  %467 = load %struct.net_device*, %struct.net_device** %7, align 8
  %468 = call i32 @ravb_ptp_stop(%struct.net_device* %467)
  br label %469

469:                                              ; preds = %466, %448
  br label %470

470:                                              ; preds = %469, %319, %280, %242, %214, %186, %166, %133, %80
  %471 = load %struct.net_device*, %struct.net_device** %7, align 8
  %472 = call i32 @free_netdev(%struct.net_device* %471)
  %473 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %474 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %473, i32 0, i32 0
  %475 = call i32 @pm_runtime_put(%struct.TYPE_16__* %474)
  %476 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %477 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %476, i32 0, i32 0
  %478 = call i32 @pm_runtime_disable(%struct.TYPE_16__* %477)
  %479 = load i32, i32* %8, align 4
  store i32 %479, i32* %2, align 4
  br label %480

480:                                              ; preds = %470, %414, %43, %31, %19
  %481 = load i32, i32* %2, align 4
  ret i32 %481
}

declare dso_local i32 @dev_err(%struct.TYPE_16__*, i8*, ...) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local %struct.net_device* @alloc_etherdev_mqs(i32, i32, i32) #1

declare dso_local i32 @pm_runtime_enable(%struct.TYPE_16__*) #1

declare dso_local i32 @pm_runtime_get_sync(%struct.TYPE_16__*) #1

declare dso_local i64 @of_device_get_match_data(%struct.TYPE_16__*) #1

declare dso_local i32 @platform_get_irq_byname(%struct.platform_device*, i8*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, %struct.TYPE_16__*) #1

declare dso_local %struct.ravb_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @devm_ioremap_resource(%struct.TYPE_16__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @of_get_phy_mode(%struct.device_node*) #1

declare dso_local i8* @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local i32 @devm_clk_get(%struct.TYPE_16__*, i32*) #1

declare dso_local i32 @ravb_set_config_mode(%struct.net_device*) #1

declare dso_local i32 @ravb_set_gti(%struct.net_device*) #1

declare dso_local i32 @ravb_modify(%struct.net_device*, i32, i32, i32) #1

declare dso_local i32 @ravb_set_delay_mode(%struct.net_device*) #1

declare dso_local %struct.TYPE_17__* @dma_alloc_coherent(i32, i32, i32*, i32) #1

declare dso_local i32 @ravb_write(%struct.net_device*, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @ravb_ptp_init(%struct.net_device*, %struct.platform_device*) #1

declare dso_local i32 @ravb_read_mac_address(%struct.net_device*, i32) #1

declare dso_local i32 @of_get_mac_address(%struct.device_node*) #1

declare dso_local i32 @is_valid_ether_addr(i32) #1

declare dso_local i32 @dev_warn(%struct.TYPE_16__*, i8*) #1

declare dso_local i32 @eth_hw_addr_random(%struct.net_device*) #1

declare dso_local i32 @ravb_mdio_init(%struct.ravb_private*) #1

declare dso_local i32 @netif_napi_add(%struct.net_device*, i32*, i32, i32) #1

declare dso_local i32 @register_netdev(%struct.net_device*) #1

declare dso_local i32 @device_set_wakeup_capable(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*, i32, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.net_device*) #1

declare dso_local i32 @netif_napi_del(i32*) #1

declare dso_local i32 @ravb_mdio_release(%struct.ravb_private*) #1

declare dso_local i32 @dma_free_coherent(i32, i32, %struct.TYPE_17__*, i32) #1

declare dso_local i32 @ravb_ptp_stop(%struct.net_device*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

declare dso_local i32 @pm_runtime_put(%struct.TYPE_16__*) #1

declare dso_local i32 @pm_runtime_disable(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
