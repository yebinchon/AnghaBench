; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_main.c_iavf_init_get_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_main.c_iavf_init_get_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iavf_adapter = type { i64, i32, i32, i32, i32, %struct.TYPE_6__*, i32, i8*, i8*, i32, %struct.TYPE_5__, %struct.iavf_hw, i32, i32, i32, i32, %struct.pci_dev*, %struct.net_device* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.iavf_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.pci_dev = type { i32 }
%struct.net_device = type { i32, i32, i32, i32, i64, i32, i32* }

@__IAVF_INIT_GET_RESOURCES = common dso_local global i64 0, align 8
@IAVF_MAX_VF_VSI = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@IAVF_ERR_ADMIN_QUEUE_NO_WORK = common dso_local global i32 0, align 4
@IAVF_ERR_PARAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"Unable to get VF config due to PF error condition, not retrying\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Unable to get VF config (%d)\0A\00", align 1
@VIRTCHNL_OP_UNKNOWN = common dso_local global i32 0, align 4
@IAVF_FLAG_RX_CSUM_ENABLED = common dso_local global i32 0, align 4
@iavf_netdev_ops = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@ETH_MIN_MTU = common dso_local global i32 0, align 4
@IAVF_MAX_RXBUFFER = common dso_local global i64 0, align 8
@IAVF_PACKET_HDR_PAD = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [39 x i8] c"Invalid MAC address %pM, using random\0A\00", align 1
@IAVF_DEFAULT_TXD = common dso_local global i32 0, align 4
@IAVF_DEFAULT_RXD = common dso_local global i32 0, align 4
@VIRTCHNL_VF_OFFLOAD_WB_ON_ITR = common dso_local global i32 0, align 4
@IAVF_FLAG_WB_ON_ITR_CAPABLE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [49 x i8] c"Failed to add VF to client API service list: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"MAC address: %pM\0A\00", align 1
@NETIF_F_GRO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [16 x i8] c"GRO is enabled\0A\00", align 1
@__IAVF_DOWN = common dso_local global i64 0, align 8
@__IAVF_VSI_DOWN = common dso_local global i32 0, align 4
@IAVF_FLAG_AQ_CONFIGURE_RSS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iavf_adapter*)* @iavf_init_get_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iavf_init_get_resources(%struct.iavf_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iavf_adapter*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca %struct.iavf_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.iavf_adapter* %0, %struct.iavf_adapter** %3, align 8
  %9 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %10 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %9, i32 0, i32 17
  %11 = load %struct.net_device*, %struct.net_device** %10, align 8
  store %struct.net_device* %11, %struct.net_device** %4, align 8
  %12 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %13 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %12, i32 0, i32 16
  %14 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  store %struct.pci_dev* %14, %struct.pci_dev** %5, align 8
  %15 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %16 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %15, i32 0, i32 11
  store %struct.iavf_hw* %16, %struct.iavf_hw** %6, align 8
  store i32 0, i32* %7, align 4
  %17 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %18 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @__IAVF_INIT_GET_RESOURCES, align 8
  %21 = icmp ne i64 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @WARN_ON(i32 %22)
  %24 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %25 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %24, i32 0, i32 5
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = icmp ne %struct.TYPE_6__* %26, null
  br i1 %27, label %46, label %28

28:                                               ; preds = %1
  %29 = load i32, i32* @IAVF_MAX_VF_VSI, align 4
  %30 = sext i32 %29 to i64
  %31 = mul i64 %30, 4
  %32 = add i64 4, %31
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call i8* @kzalloc(i32 %34, i32 %35)
  %37 = bitcast i8* %36 to %struct.TYPE_6__*
  %38 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %39 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %38, i32 0, i32 5
  store %struct.TYPE_6__* %37, %struct.TYPE_6__** %39, align 8
  %40 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %41 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %40, i32 0, i32 5
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = icmp ne %struct.TYPE_6__* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %28
  br label %313

45:                                               ; preds = %28
  br label %46

46:                                               ; preds = %45, %1
  %47 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %48 = call i32 @iavf_get_vf_config(%struct.iavf_adapter* %47)
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @IAVF_ERR_ADMIN_QUEUE_NO_WORK, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %46
  %53 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %54 = call i32 @iavf_send_vf_config_msg(%struct.iavf_adapter* %53)
  store i32 %54, i32* %7, align 4
  br label %313

55:                                               ; preds = %46
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @IAVF_ERR_PARAM, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %55
  %60 = load %struct.iavf_hw*, %struct.iavf_hw** %6, align 8
  %61 = call i32 @iavf_shutdown_adminq(%struct.iavf_hw* %60)
  %62 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %63 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %62, i32 0, i32 0
  %64 = call i32 (i32*, i8*, ...) @dev_err(i32* %63, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %315

65:                                               ; preds = %55
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %7, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %66
  %70 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %71 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %70, i32 0, i32 0
  %72 = load i32, i32* %7, align 4
  %73 = call i32 (i32*, i8*, ...) @dev_err(i32* %71, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %72)
  br label %306

74:                                               ; preds = %66
  %75 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %76 = call i64 @iavf_process_config(%struct.iavf_adapter* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %74
  br label %306

79:                                               ; preds = %74
  %80 = load i32, i32* @VIRTCHNL_OP_UNKNOWN, align 4
  %81 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %82 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %81, i32 0, i32 15
  store i32 %80, i32* %82, align 8
  %83 = load i32, i32* @IAVF_FLAG_RX_CSUM_ENABLED, align 4
  %84 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %85 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %84, i32 0, i32 12
  %86 = load i32, i32* %85, align 4
  %87 = or i32 %86, %83
  store i32 %87, i32* %85, align 4
  %88 = load %struct.net_device*, %struct.net_device** %4, align 8
  %89 = getelementptr inbounds %struct.net_device, %struct.net_device* %88, i32 0, i32 6
  store i32* @iavf_netdev_ops, i32** %89, align 8
  %90 = load %struct.net_device*, %struct.net_device** %4, align 8
  %91 = call i32 @iavf_set_ethtool_ops(%struct.net_device* %90)
  %92 = load i32, i32* @HZ, align 4
  %93 = mul nsw i32 5, %92
  %94 = load %struct.net_device*, %struct.net_device** %4, align 8
  %95 = getelementptr inbounds %struct.net_device, %struct.net_device* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 8
  %96 = load i32, i32* @ETH_MIN_MTU, align 4
  %97 = load %struct.net_device*, %struct.net_device** %4, align 8
  %98 = getelementptr inbounds %struct.net_device, %struct.net_device* %97, i32 0, i32 5
  store i32 %96, i32* %98, align 8
  %99 = load i64, i64* @IAVF_MAX_RXBUFFER, align 8
  %100 = load i64, i64* @IAVF_PACKET_HDR_PAD, align 8
  %101 = sub nsw i64 %99, %100
  %102 = load %struct.net_device*, %struct.net_device** %4, align 8
  %103 = getelementptr inbounds %struct.net_device, %struct.net_device* %102, i32 0, i32 4
  store i64 %101, i64* %103, align 8
  %104 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %105 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %104, i32 0, i32 11
  %106 = getelementptr inbounds %struct.iavf_hw, %struct.iavf_hw* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @is_valid_ether_addr(i32 %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %131, label %111

111:                                              ; preds = %79
  %112 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %113 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %112, i32 0, i32 0
  %114 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %115 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %114, i32 0, i32 11
  %116 = getelementptr inbounds %struct.iavf_hw, %struct.iavf_hw* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = call i32 (i32*, i8*, ...) @dev_info(i32* %113, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %118)
  %120 = load %struct.net_device*, %struct.net_device** %4, align 8
  %121 = call i32 @eth_hw_addr_random(%struct.net_device* %120)
  %122 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %123 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %122, i32 0, i32 11
  %124 = getelementptr inbounds %struct.iavf_hw, %struct.iavf_hw* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.net_device*, %struct.net_device** %4, align 8
  %128 = getelementptr inbounds %struct.net_device, %struct.net_device* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @ether_addr_copy(i32 %126, i32 %129)
  br label %150

131:                                              ; preds = %79
  %132 = load %struct.net_device*, %struct.net_device** %4, align 8
  %133 = getelementptr inbounds %struct.net_device, %struct.net_device* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %136 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %135, i32 0, i32 11
  %137 = getelementptr inbounds %struct.iavf_hw, %struct.iavf_hw* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @ether_addr_copy(i32 %134, i32 %139)
  %141 = load %struct.net_device*, %struct.net_device** %4, align 8
  %142 = getelementptr inbounds %struct.net_device, %struct.net_device* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %145 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %144, i32 0, i32 11
  %146 = getelementptr inbounds %struct.iavf_hw, %struct.iavf_hw* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @ether_addr_copy(i32 %143, i32 %148)
  br label %150

150:                                              ; preds = %131, %111
  %151 = load i32, i32* @IAVF_DEFAULT_TXD, align 4
  %152 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %153 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %152, i32 0, i32 14
  store i32 %151, i32* %153, align 4
  %154 = load i32, i32* @IAVF_DEFAULT_RXD, align 4
  %155 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %156 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %155, i32 0, i32 13
  store i32 %154, i32* %156, align 8
  %157 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %158 = call i32 @iavf_init_interrupt_scheme(%struct.iavf_adapter* %157)
  store i32 %158, i32* %7, align 4
  %159 = load i32, i32* %7, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %150
  br label %303

162:                                              ; preds = %150
  %163 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %164 = call i32 @iavf_map_rings_to_vectors(%struct.iavf_adapter* %163)
  %165 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %166 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %165, i32 0, i32 5
  %167 = load %struct.TYPE_6__*, %struct.TYPE_6__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* @VIRTCHNL_VF_OFFLOAD_WB_ON_ITR, align 4
  %171 = and i32 %169, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %179

173:                                              ; preds = %162
  %174 = load i32, i32* @IAVF_FLAG_WB_ON_ITR_CAPABLE, align 4
  %175 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %176 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %175, i32 0, i32 12
  %177 = load i32, i32* %176, align 4
  %178 = or i32 %177, %174
  store i32 %178, i32* %176, align 4
  br label %179

179:                                              ; preds = %173, %162
  %180 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %181 = call i32 @iavf_request_misc_irq(%struct.iavf_adapter* %180)
  store i32 %181, i32* %7, align 4
  %182 = load i32, i32* %7, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %185

184:                                              ; preds = %179
  br label %303

185:                                              ; preds = %179
  %186 = load %struct.net_device*, %struct.net_device** %4, align 8
  %187 = call i32 @netif_carrier_off(%struct.net_device* %186)
  %188 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %189 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %188, i32 0, i32 1
  store i32 0, i32* %189, align 8
  %190 = call i32 (...) @rtnl_lock()
  %191 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %192 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %203, label %195

195:                                              ; preds = %185
  %196 = load %struct.net_device*, %struct.net_device** %4, align 8
  %197 = call i32 @register_netdevice(%struct.net_device* %196)
  store i32 %197, i32* %7, align 4
  %198 = load i32, i32* %7, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %202

200:                                              ; preds = %195
  %201 = call i32 (...) @rtnl_unlock()
  br label %300

202:                                              ; preds = %195
  br label %203

203:                                              ; preds = %202, %185
  %204 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %205 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %204, i32 0, i32 2
  store i32 1, i32* %205, align 4
  %206 = load %struct.net_device*, %struct.net_device** %4, align 8
  %207 = call i32 @netif_tx_stop_all_queues(%struct.net_device* %206)
  %208 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %209 = call i64 @CLIENT_ALLOWED(%struct.iavf_adapter* %208)
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %223

211:                                              ; preds = %203
  %212 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %213 = call i32 @iavf_lan_add_device(%struct.iavf_adapter* %212)
  store i32 %213, i32* %7, align 4
  %214 = load i32, i32* %7, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %222

216:                                              ; preds = %211
  %217 = call i32 (...) @rtnl_unlock()
  %218 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %219 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %218, i32 0, i32 0
  %220 = load i32, i32* %7, align 4
  %221 = call i32 (i32*, i8*, ...) @dev_info(i32* %219, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i32 %220)
  br label %222

222:                                              ; preds = %216, %211
  br label %223

223:                                              ; preds = %222, %203
  %224 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %225 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %224, i32 0, i32 0
  %226 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %227 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %226, i32 0, i32 11
  %228 = getelementptr inbounds %struct.iavf_hw, %struct.iavf_hw* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 8
  %231 = call i32 (i32*, i8*, ...) @dev_info(i32* %225, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 %230)
  %232 = load %struct.net_device*, %struct.net_device** %4, align 8
  %233 = getelementptr inbounds %struct.net_device, %struct.net_device* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 4
  %235 = load i32, i32* @NETIF_F_GRO, align 4
  %236 = and i32 %234, %235
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %242

238:                                              ; preds = %223
  %239 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %240 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %239, i32 0, i32 0
  %241 = call i32 (i32*, i8*, ...) @dev_info(i32* %240, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  br label %242

242:                                              ; preds = %238, %223
  %243 = load i64, i64* @__IAVF_DOWN, align 8
  %244 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %245 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %244, i32 0, i32 0
  store i64 %243, i64* %245, align 8
  %246 = load i32, i32* @__IAVF_VSI_DOWN, align 4
  %247 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %248 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %247, i32 0, i32 10
  %249 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 4
  %251 = call i32 @set_bit(i32 %246, i32 %250)
  %252 = call i32 (...) @rtnl_unlock()
  %253 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %254 = call i32 @iavf_misc_irq_enable(%struct.iavf_adapter* %253)
  %255 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %256 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %255, i32 0, i32 9
  %257 = call i32 @wake_up(i32* %256)
  %258 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %259 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %258, i32 0, i32 3
  %260 = load i32, i32* %259, align 8
  %261 = load i32, i32* @GFP_KERNEL, align 4
  %262 = call i8* @kzalloc(i32 %260, i32 %261)
  %263 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %264 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %263, i32 0, i32 8
  store i8* %262, i8** %264, align 8
  %265 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %266 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %265, i32 0, i32 4
  %267 = load i32, i32* %266, align 4
  %268 = load i32, i32* @GFP_KERNEL, align 4
  %269 = call i8* @kzalloc(i32 %267, i32 %268)
  %270 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %271 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %270, i32 0, i32 7
  store i8* %269, i8** %271, align 8
  %272 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %273 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %272, i32 0, i32 8
  %274 = load i8*, i8** %273, align 8
  %275 = icmp ne i8* %274, null
  br i1 %275, label %276, label %281

276:                                              ; preds = %242
  %277 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %278 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %277, i32 0, i32 7
  %279 = load i8*, i8** %278, align 8
  %280 = icmp ne i8* %279, null
  br i1 %280, label %282, label %281

281:                                              ; preds = %276, %242
  br label %297

282:                                              ; preds = %276
  %283 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %284 = call i64 @RSS_AQ(%struct.iavf_adapter* %283)
  %285 = icmp ne i64 %284, 0
  br i1 %285, label %286, label %292

286:                                              ; preds = %282
  %287 = load i32, i32* @IAVF_FLAG_AQ_CONFIGURE_RSS, align 4
  %288 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %289 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %288, i32 0, i32 6
  %290 = load i32, i32* %289, align 8
  %291 = or i32 %290, %287
  store i32 %291, i32* %289, align 8
  br label %295

292:                                              ; preds = %282
  %293 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %294 = call i32 @iavf_init_rss(%struct.iavf_adapter* %293)
  br label %295

295:                                              ; preds = %292, %286
  %296 = load i32, i32* %7, align 4
  store i32 %296, i32* %2, align 4
  br label %315

297:                                              ; preds = %281
  %298 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %299 = call i32 @iavf_free_rss(%struct.iavf_adapter* %298)
  br label %300

300:                                              ; preds = %297, %200
  %301 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %302 = call i32 @iavf_free_misc_irq(%struct.iavf_adapter* %301)
  br label %303

303:                                              ; preds = %300, %184, %161
  %304 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %305 = call i32 @iavf_reset_interrupt_capability(%struct.iavf_adapter* %304)
  br label %306

306:                                              ; preds = %303, %78, %69
  %307 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %308 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %307, i32 0, i32 5
  %309 = load %struct.TYPE_6__*, %struct.TYPE_6__** %308, align 8
  %310 = call i32 @kfree(%struct.TYPE_6__* %309)
  %311 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %312 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %311, i32 0, i32 5
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %312, align 8
  br label %313

313:                                              ; preds = %306, %52, %44
  %314 = load i32, i32* %7, align 4
  store i32 %314, i32* %2, align 4
  br label %315

315:                                              ; preds = %313, %295, %59
  %316 = load i32, i32* %2, align 4
  ret i32 %316
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @iavf_get_vf_config(%struct.iavf_adapter*) #1

declare dso_local i32 @iavf_send_vf_config_msg(%struct.iavf_adapter*) #1

declare dso_local i32 @iavf_shutdown_adminq(%struct.iavf_hw*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i64 @iavf_process_config(%struct.iavf_adapter*) #1

declare dso_local i32 @iavf_set_ethtool_ops(%struct.net_device*) #1

declare dso_local i32 @is_valid_ether_addr(i32) #1

declare dso_local i32 @dev_info(i32*, i8*, ...) #1

declare dso_local i32 @eth_hw_addr_random(%struct.net_device*) #1

declare dso_local i32 @ether_addr_copy(i32, i32) #1

declare dso_local i32 @iavf_init_interrupt_scheme(%struct.iavf_adapter*) #1

declare dso_local i32 @iavf_map_rings_to_vectors(%struct.iavf_adapter*) #1

declare dso_local i32 @iavf_request_misc_irq(%struct.iavf_adapter*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @register_netdevice(%struct.net_device*) #1

declare dso_local i32 @rtnl_unlock(...) #1

declare dso_local i32 @netif_tx_stop_all_queues(%struct.net_device*) #1

declare dso_local i64 @CLIENT_ALLOWED(%struct.iavf_adapter*) #1

declare dso_local i32 @iavf_lan_add_device(%struct.iavf_adapter*) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @iavf_misc_irq_enable(%struct.iavf_adapter*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i64 @RSS_AQ(%struct.iavf_adapter*) #1

declare dso_local i32 @iavf_init_rss(%struct.iavf_adapter*) #1

declare dso_local i32 @iavf_free_rss(%struct.iavf_adapter*) #1

declare dso_local i32 @iavf_free_misc_irq(%struct.iavf_adapter*) #1

declare dso_local i32 @iavf_reset_interrupt_capability(%struct.iavf_adapter*) #1

declare dso_local i32 @kfree(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
