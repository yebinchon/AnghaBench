; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_main.c_nic_dev_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_main.c_nic_dev_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.hinic_rx_mode_work = type { i32 }
%struct.hinic_txq_stats = type { i32 }
%struct.hinic_rxq_stats = type { i32 }
%struct.hinic_dev = type { i32, %struct.hinic_hwdev*, %struct.net_device*, %struct.hinic_rx_mode_work, i32, %struct.hinic_rxq_stats, %struct.hinic_txq_stats, i32, i32, i32, i32*, i32*, i64, i32 }
%struct.hinic_hwdev = type { i32 }
%struct.net_device = type { i32, i32, i32, i32, i32* }

@.str = private unnamed_addr constant [32 x i8] c"Failed to initialize HW device\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Invalid number of QPS\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"Failed to allocate Ethernet device\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@hinic_netdev_ops = common dso_local global i32 0, align 4
@ETH_MAX_MTU = common dso_local global i32 0, align 4
@MSG_ENABLE_DEFAULT = common dso_local global i32 0, align 4
@tx_weight = common dso_local global i32 0, align 4
@rx_weight = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@HINIC_WQ_NAME = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"Failed to get mac address\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"Failed to add mac\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"Failed to set mtu\0A\00", align 1
@set_rx_mode = common dso_local global i32 0, align 4
@HINIC_MGMT_MSG_CMD_LINK_STATUS = common dso_local global i32 0, align 4
@link_status_event_handler = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [27 x i8] c"Failed to register netdev\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*)* @nic_dev_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nic_dev_init(%struct.pci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.hinic_rx_mode_work*, align 8
  %5 = alloca %struct.hinic_txq_stats*, align 8
  %6 = alloca %struct.hinic_rxq_stats*, align 8
  %7 = alloca %struct.hinic_dev*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.hinic_hwdev*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  %12 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %13 = call %struct.hinic_hwdev* @hinic_init_hwdev(%struct.pci_dev* %12)
  store %struct.hinic_hwdev* %13, %struct.hinic_hwdev** %9, align 8
  %14 = load %struct.hinic_hwdev*, %struct.hinic_hwdev** %9, align 8
  %15 = call i64 @IS_ERR(%struct.hinic_hwdev* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %1
  %18 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %19 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %18, i32 0, i32 0
  %20 = call i32 @dev_err(i32* %19, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.hinic_hwdev*, %struct.hinic_hwdev** %9, align 8
  %22 = call i32 @PTR_ERR(%struct.hinic_hwdev* %21)
  store i32 %22, i32* %2, align 4
  br label %224

23:                                               ; preds = %1
  %24 = load %struct.hinic_hwdev*, %struct.hinic_hwdev** %9, align 8
  %25 = call i32 @hinic_hwdev_num_qps(%struct.hinic_hwdev* %24)
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = icmp sle i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %30 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %29, i32 0, i32 0
  %31 = call i32 @dev_err(i32* %30, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %10, align 4
  br label %220

34:                                               ; preds = %23
  %35 = load i32, i32* %11, align 4
  %36 = call %struct.net_device* @alloc_etherdev_mq(i32 88, i32 %35)
  store %struct.net_device* %36, %struct.net_device** %8, align 8
  %37 = load %struct.net_device*, %struct.net_device** %8, align 8
  %38 = icmp ne %struct.net_device* %37, null
  br i1 %38, label %45, label %39

39:                                               ; preds = %34
  %40 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %41 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %40, i32 0, i32 0
  %42 = call i32 @dev_err(i32* %41, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %10, align 4
  br label %219

45:                                               ; preds = %34
  %46 = load %struct.net_device*, %struct.net_device** %8, align 8
  %47 = call i32 @hinic_set_ethtool_ops(%struct.net_device* %46)
  %48 = load %struct.net_device*, %struct.net_device** %8, align 8
  %49 = getelementptr inbounds %struct.net_device, %struct.net_device* %48, i32 0, i32 4
  store i32* @hinic_netdev_ops, i32** %49, align 8
  %50 = load i32, i32* @ETH_MAX_MTU, align 4
  %51 = load %struct.net_device*, %struct.net_device** %8, align 8
  %52 = getelementptr inbounds %struct.net_device, %struct.net_device* %51, i32 0, i32 3
  store i32 %50, i32* %52, align 4
  %53 = load %struct.net_device*, %struct.net_device** %8, align 8
  %54 = call %struct.hinic_dev* @netdev_priv(%struct.net_device* %53)
  store %struct.hinic_dev* %54, %struct.hinic_dev** %7, align 8
  %55 = load %struct.net_device*, %struct.net_device** %8, align 8
  %56 = load %struct.hinic_dev*, %struct.hinic_dev** %7, align 8
  %57 = getelementptr inbounds %struct.hinic_dev, %struct.hinic_dev* %56, i32 0, i32 2
  store %struct.net_device* %55, %struct.net_device** %57, align 8
  %58 = load %struct.hinic_hwdev*, %struct.hinic_hwdev** %9, align 8
  %59 = load %struct.hinic_dev*, %struct.hinic_dev** %7, align 8
  %60 = getelementptr inbounds %struct.hinic_dev, %struct.hinic_dev* %59, i32 0, i32 1
  store %struct.hinic_hwdev* %58, %struct.hinic_hwdev** %60, align 8
  %61 = load i32, i32* @MSG_ENABLE_DEFAULT, align 4
  %62 = load %struct.hinic_dev*, %struct.hinic_dev** %7, align 8
  %63 = getelementptr inbounds %struct.hinic_dev, %struct.hinic_dev* %62, i32 0, i32 13
  store i32 %61, i32* %63, align 8
  %64 = load %struct.hinic_dev*, %struct.hinic_dev** %7, align 8
  %65 = getelementptr inbounds %struct.hinic_dev, %struct.hinic_dev* %64, i32 0, i32 12
  store i64 0, i64* %65, align 8
  %66 = load %struct.hinic_dev*, %struct.hinic_dev** %7, align 8
  %67 = getelementptr inbounds %struct.hinic_dev, %struct.hinic_dev* %66, i32 0, i32 11
  store i32* null, i32** %67, align 8
  %68 = load %struct.hinic_dev*, %struct.hinic_dev** %7, align 8
  %69 = getelementptr inbounds %struct.hinic_dev, %struct.hinic_dev* %68, i32 0, i32 10
  store i32* null, i32** %69, align 8
  %70 = load i32, i32* @tx_weight, align 4
  %71 = load %struct.hinic_dev*, %struct.hinic_dev** %7, align 8
  %72 = getelementptr inbounds %struct.hinic_dev, %struct.hinic_dev* %71, i32 0, i32 9
  store i32 %70, i32* %72, align 8
  %73 = load i32, i32* @rx_weight, align 4
  %74 = load %struct.hinic_dev*, %struct.hinic_dev** %7, align 8
  %75 = getelementptr inbounds %struct.hinic_dev, %struct.hinic_dev* %74, i32 0, i32 8
  store i32 %73, i32* %75, align 4
  %76 = load %struct.hinic_dev*, %struct.hinic_dev** %7, align 8
  %77 = getelementptr inbounds %struct.hinic_dev, %struct.hinic_dev* %76, i32 0, i32 7
  %78 = call i32 @sema_init(i32* %77, i32 1)
  %79 = load %struct.hinic_dev*, %struct.hinic_dev** %7, align 8
  %80 = getelementptr inbounds %struct.hinic_dev, %struct.hinic_dev* %79, i32 0, i32 6
  store %struct.hinic_txq_stats* %80, %struct.hinic_txq_stats** %5, align 8
  %81 = load %struct.hinic_dev*, %struct.hinic_dev** %7, align 8
  %82 = getelementptr inbounds %struct.hinic_dev, %struct.hinic_dev* %81, i32 0, i32 5
  store %struct.hinic_rxq_stats* %82, %struct.hinic_rxq_stats** %6, align 8
  %83 = load %struct.hinic_txq_stats*, %struct.hinic_txq_stats** %5, align 8
  %84 = getelementptr inbounds %struct.hinic_txq_stats, %struct.hinic_txq_stats* %83, i32 0, i32 0
  %85 = call i32 @u64_stats_init(i32* %84)
  %86 = load %struct.hinic_rxq_stats*, %struct.hinic_rxq_stats** %6, align 8
  %87 = getelementptr inbounds %struct.hinic_rxq_stats, %struct.hinic_rxq_stats* %86, i32 0, i32 0
  %88 = call i32 @u64_stats_init(i32* %87)
  %89 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %90 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %89, i32 0, i32 0
  %91 = load %struct.hinic_dev*, %struct.hinic_dev** %7, align 8
  %92 = call i32 @VLAN_BITMAP_SIZE(%struct.hinic_dev* %91)
  %93 = load i32, i32* @GFP_KERNEL, align 4
  %94 = call i32 @devm_kzalloc(i32* %90, i32 %92, i32 %93)
  %95 = load %struct.hinic_dev*, %struct.hinic_dev** %7, align 8
  %96 = getelementptr inbounds %struct.hinic_dev, %struct.hinic_dev* %95, i32 0, i32 4
  store i32 %94, i32* %96, align 4
  %97 = load %struct.hinic_dev*, %struct.hinic_dev** %7, align 8
  %98 = getelementptr inbounds %struct.hinic_dev, %struct.hinic_dev* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %104, label %101

101:                                              ; preds = %45
  %102 = load i32, i32* @ENOMEM, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %10, align 4
  br label %216

104:                                              ; preds = %45
  %105 = load i32, i32* @HINIC_WQ_NAME, align 4
  %106 = call i32 @create_singlethread_workqueue(i32 %105)
  %107 = load %struct.hinic_dev*, %struct.hinic_dev** %7, align 8
  %108 = getelementptr inbounds %struct.hinic_dev, %struct.hinic_dev* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 8
  %109 = load %struct.hinic_dev*, %struct.hinic_dev** %7, align 8
  %110 = getelementptr inbounds %struct.hinic_dev, %struct.hinic_dev* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %116, label %113

113:                                              ; preds = %104
  %114 = load i32, i32* @ENOMEM, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %10, align 4
  br label %215

116:                                              ; preds = %104
  %117 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %118 = load %struct.net_device*, %struct.net_device** %8, align 8
  %119 = call i32 @pci_set_drvdata(%struct.pci_dev* %117, %struct.net_device* %118)
  %120 = load %struct.hinic_dev*, %struct.hinic_dev** %7, align 8
  %121 = load %struct.net_device*, %struct.net_device** %8, align 8
  %122 = getelementptr inbounds %struct.net_device, %struct.net_device* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @hinic_port_get_mac(%struct.hinic_dev* %120, i32 %123)
  store i32 %124, i32* %10, align 4
  %125 = load i32, i32* %10, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %116
  %128 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %129 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %128, i32 0, i32 0
  %130 = call i32 @dev_warn(i32* %129, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  br label %131

131:                                              ; preds = %127, %116
  %132 = load %struct.hinic_dev*, %struct.hinic_dev** %7, align 8
  %133 = load %struct.net_device*, %struct.net_device** %8, align 8
  %134 = getelementptr inbounds %struct.net_device, %struct.net_device* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @hinic_port_add_mac(%struct.hinic_dev* %132, i32 %135, i32 0)
  store i32 %136, i32* %10, align 4
  %137 = load i32, i32* %10, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %143

139:                                              ; preds = %131
  %140 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %141 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %140, i32 0, i32 0
  %142 = call i32 @dev_err(i32* %141, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  br label %208

143:                                              ; preds = %131
  %144 = load %struct.hinic_dev*, %struct.hinic_dev** %7, align 8
  %145 = load %struct.net_device*, %struct.net_device** %8, align 8
  %146 = getelementptr inbounds %struct.net_device, %struct.net_device* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @hinic_port_set_mtu(%struct.hinic_dev* %144, i32 %147)
  store i32 %148, i32* %10, align 4
  %149 = load i32, i32* %10, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %155

151:                                              ; preds = %143
  %152 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %153 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %152, i32 0, i32 0
  %154 = call i32 @dev_err(i32* %153, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  br label %207

155:                                              ; preds = %143
  %156 = load %struct.hinic_dev*, %struct.hinic_dev** %7, align 8
  %157 = getelementptr inbounds %struct.hinic_dev, %struct.hinic_dev* %156, i32 0, i32 3
  store %struct.hinic_rx_mode_work* %157, %struct.hinic_rx_mode_work** %4, align 8
  %158 = load %struct.hinic_rx_mode_work*, %struct.hinic_rx_mode_work** %4, align 8
  %159 = getelementptr inbounds %struct.hinic_rx_mode_work, %struct.hinic_rx_mode_work* %158, i32 0, i32 0
  %160 = load i32, i32* @set_rx_mode, align 4
  %161 = call i32 @INIT_WORK(i32* %159, i32 %160)
  %162 = load %struct.net_device*, %struct.net_device** %8, align 8
  %163 = call i32 @netdev_features_init(%struct.net_device* %162)
  %164 = load %struct.net_device*, %struct.net_device** %8, align 8
  %165 = call i32 @netif_carrier_off(%struct.net_device* %164)
  %166 = load %struct.hinic_dev*, %struct.hinic_dev** %7, align 8
  %167 = getelementptr inbounds %struct.hinic_dev, %struct.hinic_dev* %166, i32 0, i32 1
  %168 = load %struct.hinic_hwdev*, %struct.hinic_hwdev** %167, align 8
  %169 = load i32, i32* @HINIC_MGMT_MSG_CMD_LINK_STATUS, align 4
  %170 = load %struct.hinic_dev*, %struct.hinic_dev** %7, align 8
  %171 = load i32, i32* @link_status_event_handler, align 4
  %172 = call i32 @hinic_hwdev_cb_register(%struct.hinic_hwdev* %168, i32 %169, %struct.hinic_dev* %170, i32 %171)
  %173 = load %struct.hinic_dev*, %struct.hinic_dev** %7, align 8
  %174 = load %struct.hinic_dev*, %struct.hinic_dev** %7, align 8
  %175 = getelementptr inbounds %struct.hinic_dev, %struct.hinic_dev* %174, i32 0, i32 2
  %176 = load %struct.net_device*, %struct.net_device** %175, align 8
  %177 = getelementptr inbounds %struct.net_device, %struct.net_device* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = call i32 @set_features(%struct.hinic_dev* %173, i32 0, i32 %178, i32 1)
  store i32 %179, i32* %10, align 4
  %180 = load i32, i32* %10, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %155
  br label %198

183:                                              ; preds = %155
  %184 = load %struct.net_device*, %struct.net_device** %8, align 8
  %185 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %186 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %185, i32 0, i32 0
  %187 = call i32 @SET_NETDEV_DEV(%struct.net_device* %184, i32* %186)
  %188 = load %struct.net_device*, %struct.net_device** %8, align 8
  %189 = call i32 @register_netdev(%struct.net_device* %188)
  store i32 %189, i32* %10, align 4
  %190 = load i32, i32* %10, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %196

192:                                              ; preds = %183
  %193 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %194 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %193, i32 0, i32 0
  %195 = call i32 @dev_err(i32* %194, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0))
  br label %197

196:                                              ; preds = %183
  store i32 0, i32* %2, align 4
  br label %224

197:                                              ; preds = %192
  br label %198

198:                                              ; preds = %197, %182
  %199 = load %struct.hinic_dev*, %struct.hinic_dev** %7, align 8
  %200 = getelementptr inbounds %struct.hinic_dev, %struct.hinic_dev* %199, i32 0, i32 1
  %201 = load %struct.hinic_hwdev*, %struct.hinic_hwdev** %200, align 8
  %202 = load i32, i32* @HINIC_MGMT_MSG_CMD_LINK_STATUS, align 4
  %203 = call i32 @hinic_hwdev_cb_unregister(%struct.hinic_hwdev* %201, i32 %202)
  %204 = load %struct.hinic_rx_mode_work*, %struct.hinic_rx_mode_work** %4, align 8
  %205 = getelementptr inbounds %struct.hinic_rx_mode_work, %struct.hinic_rx_mode_work* %204, i32 0, i32 0
  %206 = call i32 @cancel_work_sync(i32* %205)
  br label %207

207:                                              ; preds = %198, %151
  br label %208

208:                                              ; preds = %207, %139
  %209 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %210 = call i32 @pci_set_drvdata(%struct.pci_dev* %209, %struct.net_device* null)
  %211 = load %struct.hinic_dev*, %struct.hinic_dev** %7, align 8
  %212 = getelementptr inbounds %struct.hinic_dev, %struct.hinic_dev* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = call i32 @destroy_workqueue(i32 %213)
  br label %215

215:                                              ; preds = %208, %113
  br label %216

216:                                              ; preds = %215, %101
  %217 = load %struct.net_device*, %struct.net_device** %8, align 8
  %218 = call i32 @free_netdev(%struct.net_device* %217)
  br label %219

219:                                              ; preds = %216, %39
  br label %220

220:                                              ; preds = %219, %28
  %221 = load %struct.hinic_hwdev*, %struct.hinic_hwdev** %9, align 8
  %222 = call i32 @hinic_free_hwdev(%struct.hinic_hwdev* %221)
  %223 = load i32, i32* %10, align 4
  store i32 %223, i32* %2, align 4
  br label %224

224:                                              ; preds = %220, %196, %17
  %225 = load i32, i32* %2, align 4
  ret i32 %225
}

declare dso_local %struct.hinic_hwdev* @hinic_init_hwdev(%struct.pci_dev*) #1

declare dso_local i64 @IS_ERR(%struct.hinic_hwdev*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @PTR_ERR(%struct.hinic_hwdev*) #1

declare dso_local i32 @hinic_hwdev_num_qps(%struct.hinic_hwdev*) #1

declare dso_local %struct.net_device* @alloc_etherdev_mq(i32, i32) #1

declare dso_local i32 @hinic_set_ethtool_ops(%struct.net_device*) #1

declare dso_local %struct.hinic_dev* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @sema_init(i32*, i32) #1

declare dso_local i32 @u64_stats_init(i32*) #1

declare dso_local i32 @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @VLAN_BITMAP_SIZE(%struct.hinic_dev*) #1

declare dso_local i32 @create_singlethread_workqueue(i32) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.net_device*) #1

declare dso_local i32 @hinic_port_get_mac(%struct.hinic_dev*, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @hinic_port_add_mac(%struct.hinic_dev*, i32, i32) #1

declare dso_local i32 @hinic_port_set_mtu(%struct.hinic_dev*, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @netdev_features_init(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @hinic_hwdev_cb_register(%struct.hinic_hwdev*, i32, %struct.hinic_dev*, i32) #1

declare dso_local i32 @set_features(%struct.hinic_dev*, i32, i32, i32) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, i32*) #1

declare dso_local i32 @register_netdev(%struct.net_device*) #1

declare dso_local i32 @hinic_hwdev_cb_unregister(%struct.hinic_hwdev*, i32) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @destroy_workqueue(i32) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

declare dso_local i32 @hinic_free_hwdev(%struct.hinic_hwdev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
