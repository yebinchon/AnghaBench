; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_pci.c_fm10k_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_pci.c_fm10k_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i64, i32 }
%struct.pci_device_id = type { i64 }
%struct.net_device = type { i32 }
%struct.fm10k_intfc = type { i64, i64, i32, %struct.pci_dev*, i32, i32, i32, %struct.net_device* }

@pci_channel_io_normal = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [55 x i8] c"PCI device still in an error state. Unable to load...\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"PCI enable device failed: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"DMA configuration failed: %d\0A\00", align 1
@fm10k_driver_name = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"pci_request_selected_regions failed: %d\0A\00", align 1
@fm10k_info_tbl = common dso_local global i32* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@FM10K_UC_ADDR_SIZE = common dso_local global i32 0, align 4
@__FM10K_SERVICE_DISABLE = common dso_local global i32 0, align 4
@fm10k_service_timer = common dso_local global i32 0, align 4
@fm10k_service_task = common dso_local global i32 0, align 4
@fm10k_macvlan_task = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [5 x i8] c"%pM\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @fm10k_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fm10k_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.fm10k_intfc*, align 8
  %8 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %9 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %10 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @pci_channel_io_normal, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %20

14:                                               ; preds = %2
  %15 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %16 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %15, i32 0, i32 1
  %17 = call i32 (i32*, i8*, ...) @dev_err(i32* %16, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @EIO, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %224

20:                                               ; preds = %2
  %21 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %22 = call i32 @pci_enable_device_mem(%struct.pci_dev* %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %20
  %26 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %27 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %26, i32 0, i32 1
  %28 = load i32, i32* %8, align 4
  %29 = call i32 (i32*, i8*, ...) @dev_err(i32* %27, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* %8, align 4
  store i32 %30, i32* %3, align 4
  br label %224

31:                                               ; preds = %20
  %32 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %33 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %32, i32 0, i32 1
  %34 = call i32 @DMA_BIT_MASK(i32 48)
  %35 = call i32 @dma_set_mask_and_coherent(i32* %33, i32 %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %31
  %39 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %40 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %39, i32 0, i32 1
  %41 = call i32 @DMA_BIT_MASK(i32 32)
  %42 = call i32 @dma_set_mask_and_coherent(i32* %40, i32 %41)
  store i32 %42, i32* %8, align 4
  br label %43

43:                                               ; preds = %38, %31
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %43
  %47 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %48 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %47, i32 0, i32 1
  %49 = load i32, i32* %8, align 4
  %50 = call i32 (i32*, i8*, ...) @dev_err(i32* %48, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %49)
  br label %220

51:                                               ; preds = %43
  %52 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %53 = load i32, i32* @fm10k_driver_name, align 4
  %54 = call i32 @pci_request_mem_regions(%struct.pci_dev* %52, i32 %53)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %51
  %58 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %59 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %58, i32 0, i32 1
  %60 = load i32, i32* %8, align 4
  %61 = call i32 (i32*, i8*, ...) @dev_err(i32* %59, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %60)
  br label %219

62:                                               ; preds = %51
  %63 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %64 = call i32 @pci_enable_pcie_error_reporting(%struct.pci_dev* %63)
  %65 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %66 = call i32 @pci_set_master(%struct.pci_dev* %65)
  %67 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %68 = call i32 @pci_save_state(%struct.pci_dev* %67)
  %69 = load i32*, i32** @fm10k_info_tbl, align 8
  %70 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %71 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds i32, i32* %69, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = call %struct.net_device* @fm10k_alloc_netdev(i32 %74)
  store %struct.net_device* %75, %struct.net_device** %6, align 8
  %76 = load %struct.net_device*, %struct.net_device** %6, align 8
  %77 = icmp ne %struct.net_device* %76, null
  br i1 %77, label %81, label %78

78:                                               ; preds = %62
  %79 = load i32, i32* @ENOMEM, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %8, align 4
  br label %216

81:                                               ; preds = %62
  %82 = load %struct.net_device*, %struct.net_device** %6, align 8
  %83 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %84 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %83, i32 0, i32 1
  %85 = call i32 @SET_NETDEV_DEV(%struct.net_device* %82, i32* %84)
  %86 = load %struct.net_device*, %struct.net_device** %6, align 8
  %87 = call %struct.fm10k_intfc* @netdev_priv(%struct.net_device* %86)
  store %struct.fm10k_intfc* %87, %struct.fm10k_intfc** %7, align 8
  %88 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %89 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %7, align 8
  %90 = call i32 @pci_set_drvdata(%struct.pci_dev* %88, %struct.fm10k_intfc* %89)
  %91 = load %struct.net_device*, %struct.net_device** %6, align 8
  %92 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %7, align 8
  %93 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %92, i32 0, i32 7
  store %struct.net_device* %91, %struct.net_device** %93, align 8
  %94 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %95 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %7, align 8
  %96 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %95, i32 0, i32 3
  store %struct.pci_dev* %94, %struct.pci_dev** %96, align 8
  %97 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %98 = call i32 @pci_resource_start(%struct.pci_dev* %97, i32 0)
  %99 = load i32, i32* @FM10K_UC_ADDR_SIZE, align 4
  %100 = call i64 @ioremap(i32 %98, i32 %99)
  %101 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %7, align 8
  %102 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %101, i32 0, i32 0
  store i64 %100, i64* %102, align 8
  %103 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %7, align 8
  %104 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %110, label %107

107:                                              ; preds = %81
  %108 = load i32, i32* @EIO, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %8, align 4
  br label %213

110:                                              ; preds = %81
  %111 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %7, align 8
  %112 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %113 = call i32 @fm10k_sw_init(%struct.fm10k_intfc* %111, %struct.pci_device_id* %112)
  store i32 %113, i32* %8, align 4
  %114 = load i32, i32* %8, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %110
  br label %198

117:                                              ; preds = %110
  %118 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %7, align 8
  %119 = call i32 @fm10k_dbg_intfc_init(%struct.fm10k_intfc* %118)
  %120 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %7, align 8
  %121 = call i32 @fm10k_init_queueing_scheme(%struct.fm10k_intfc* %120)
  store i32 %121, i32* %8, align 4
  %122 = load i32, i32* %8, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %117
  br label %198

125:                                              ; preds = %117
  %126 = load i32, i32* @__FM10K_SERVICE_DISABLE, align 4
  %127 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %7, align 8
  %128 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @set_bit(i32 %126, i32 %129)
  %131 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %7, align 8
  %132 = call i32 @fm10k_mbx_request_irq(%struct.fm10k_intfc* %131)
  store i32 %132, i32* %8, align 4
  %133 = load i32, i32* %8, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %125
  br label %195

136:                                              ; preds = %125
  %137 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %7, align 8
  %138 = call i32 @fm10k_hw_ready(%struct.fm10k_intfc* %137)
  store i32 %138, i32* %8, align 4
  %139 = load i32, i32* %8, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %136
  br label %192

142:                                              ; preds = %136
  %143 = load %struct.net_device*, %struct.net_device** %6, align 8
  %144 = call i32 @register_netdev(%struct.net_device* %143)
  store i32 %144, i32* %8, align 4
  %145 = load i32, i32* %8, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %142
  br label %192

148:                                              ; preds = %142
  %149 = load %struct.net_device*, %struct.net_device** %6, align 8
  %150 = call i32 @netif_carrier_off(%struct.net_device* %149)
  %151 = load %struct.net_device*, %struct.net_device** %6, align 8
  %152 = call i32 @netif_tx_stop_all_queues(%struct.net_device* %151)
  %153 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %7, align 8
  %154 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %153, i32 0, i32 4
  %155 = load i32, i32* @fm10k_service_timer, align 4
  %156 = call i32 @timer_setup(i32* %154, i32 %155, i32 0)
  %157 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %7, align 8
  %158 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %157, i32 0, i32 6
  %159 = load i32, i32* @fm10k_service_task, align 4
  %160 = call i32 @INIT_WORK(i32* %158, i32 %159)
  %161 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %7, align 8
  %162 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %161, i32 0, i32 5
  %163 = load i32, i32* @fm10k_macvlan_task, align 4
  %164 = call i32 @INIT_DELAYED_WORK(i32* %162, i32 %163)
  %165 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %7, align 8
  %166 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %165, i32 0, i32 4
  %167 = load i32, i32* @HZ, align 4
  %168 = mul nsw i32 %167, 2
  %169 = sext i32 %168 to i64
  %170 = load i64, i64* @jiffies, align 8
  %171 = add nsw i64 %169, %170
  %172 = call i32 @mod_timer(i32* %166, i64 %171)
  %173 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %7, align 8
  %174 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %173, i32 0, i32 3
  %175 = load %struct.pci_dev*, %struct.pci_dev** %174, align 8
  %176 = call i32 @pcie_print_link_status(%struct.pci_dev* %175)
  %177 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %178 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %177, i32 0, i32 1
  %179 = load %struct.net_device*, %struct.net_device** %6, align 8
  %180 = getelementptr inbounds %struct.net_device, %struct.net_device* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @dev_info(i32* %178, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %181)
  %183 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %184 = call i32 @fm10k_iov_configure(%struct.pci_dev* %183, i32 0)
  %185 = load i32, i32* @__FM10K_SERVICE_DISABLE, align 4
  %186 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %7, align 8
  %187 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 8
  %189 = call i32 @clear_bit(i32 %185, i32 %188)
  %190 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %7, align 8
  %191 = call i32 @fm10k_service_event_schedule(%struct.fm10k_intfc* %190)
  store i32 0, i32* %3, align 4
  br label %224

192:                                              ; preds = %147, %141
  %193 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %7, align 8
  %194 = call i32 @fm10k_mbx_free_irq(%struct.fm10k_intfc* %193)
  br label %195

195:                                              ; preds = %192, %135
  %196 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %7, align 8
  %197 = call i32 @fm10k_clear_queueing_scheme(%struct.fm10k_intfc* %196)
  br label %198

198:                                              ; preds = %195, %124, %116
  %199 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %7, align 8
  %200 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %199, i32 0, i32 1
  %201 = load i64, i64* %200, align 8
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %208

203:                                              ; preds = %198
  %204 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %7, align 8
  %205 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %204, i32 0, i32 1
  %206 = load i64, i64* %205, align 8
  %207 = call i32 @iounmap(i64 %206)
  br label %208

208:                                              ; preds = %203, %198
  %209 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %7, align 8
  %210 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = call i32 @iounmap(i64 %211)
  br label %213

213:                                              ; preds = %208, %107
  %214 = load %struct.net_device*, %struct.net_device** %6, align 8
  %215 = call i32 @free_netdev(%struct.net_device* %214)
  br label %216

216:                                              ; preds = %213, %78
  %217 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %218 = call i32 @pci_release_mem_regions(%struct.pci_dev* %217)
  br label %219

219:                                              ; preds = %216, %57
  br label %220

220:                                              ; preds = %219, %46
  %221 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %222 = call i32 @pci_disable_device(%struct.pci_dev* %221)
  %223 = load i32, i32* %8, align 4
  store i32 %223, i32* %3, align 4
  br label %224

224:                                              ; preds = %220, %148, %25, %14
  %225 = load i32, i32* %3, align 4
  ret i32 %225
}

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @pci_enable_device_mem(%struct.pci_dev*) #1

declare dso_local i32 @dma_set_mask_and_coherent(i32*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @pci_request_mem_regions(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_enable_pcie_error_reporting(%struct.pci_dev*) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i32 @pci_save_state(%struct.pci_dev*) #1

declare dso_local %struct.net_device* @fm10k_alloc_netdev(i32) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, i32*) #1

declare dso_local %struct.fm10k_intfc* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.fm10k_intfc*) #1

declare dso_local i64 @ioremap(i32, i32) #1

declare dso_local i32 @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i32 @fm10k_sw_init(%struct.fm10k_intfc*, %struct.pci_device_id*) #1

declare dso_local i32 @fm10k_dbg_intfc_init(%struct.fm10k_intfc*) #1

declare dso_local i32 @fm10k_init_queueing_scheme(%struct.fm10k_intfc*) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @fm10k_mbx_request_irq(%struct.fm10k_intfc*) #1

declare dso_local i32 @fm10k_hw_ready(%struct.fm10k_intfc*) #1

declare dso_local i32 @register_netdev(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @netif_tx_stop_all_queues(%struct.net_device*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @pcie_print_link_status(%struct.pci_dev*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i32 @fm10k_iov_configure(%struct.pci_dev*, i32) #1

declare dso_local i32 @clear_bit(i32, i32) #1

declare dso_local i32 @fm10k_service_event_schedule(%struct.fm10k_intfc*) #1

declare dso_local i32 @fm10k_mbx_free_irq(%struct.fm10k_intfc*) #1

declare dso_local i32 @fm10k_clear_queueing_scheme(%struct.fm10k_intfc*) #1

declare dso_local i32 @iounmap(i64) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

declare dso_local i32 @pci_release_mem_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
