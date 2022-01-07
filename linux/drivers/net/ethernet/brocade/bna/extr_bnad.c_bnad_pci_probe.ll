; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bnad.c_bnad_pci_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bnad.c_bnad_pci_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.pci_device_id = type { i32 }
%struct.bnad = type { i32, i32, i32*, i32, %struct.bna, i32*, i32, i32, %struct.TYPE_7__, i32, %struct.TYPE_6__*, i64 }
%struct.bna = type { %struct.TYPE_9__, i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.net_device = type { i32 }
%struct.bfa_pcidev = type { i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i64, i64 }

@bnad_fwimg_mutex = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"failed to load firmware image!\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@bna_id = common dso_local global i32 0, align 4
@bna_debugfs_enable = common dso_local global i64 0, align 8
@BNA_RES_T_MAX = common dso_local global i32 0, align 4
@bnad_ioc_timeout = common dso_local global i32 0, align 4
@bnad_ioc_hb_check = common dso_local global i32 0, align 4
@bnad_iocpf_timeout = common dso_local global i32 0, align 4
@bnad_iocpf_sem_timeout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"initialization failed err=%d\0A\00", align 1
@BNAD_NUM_TXQ = common dso_local global i64 0, align 8
@BNAD_NUM_RXP = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@BNA_MOD_RES_T_MAX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"registering net device failed\0A\00", align 1
@BNAD_RF_NETDEV_REGISTERED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @bnad_pci_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnad_pci_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.bnad*, align 8
  %9 = alloca %struct.bna*, align 8
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca %struct.bfa_pcidev, align 4
  %12 = alloca i64, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %13 = call i32 @mutex_lock(i32* @bnad_fwimg_mutex)
  %14 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %15 = call i32 @cna_get_firmware_buf(%struct.pci_dev* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %2
  %18 = call i32 @mutex_unlock(i32* @bnad_fwimg_mutex)
  %19 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %20 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %19, i32 0, i32 0
  %21 = call i32 (i32*, i8*, ...) @dev_err(i32* %20, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @ENODEV, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %393

24:                                               ; preds = %2
  %25 = call i32 @mutex_unlock(i32* @bnad_fwimg_mutex)
  %26 = call %struct.net_device* @alloc_etherdev(i32 96)
  store %struct.net_device* %26, %struct.net_device** %10, align 8
  %27 = load %struct.net_device*, %struct.net_device** %10, align 8
  %28 = icmp ne %struct.net_device* %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  store i32 %32, i32* %3, align 4
  br label %393

33:                                               ; preds = %24
  %34 = load %struct.net_device*, %struct.net_device** %10, align 8
  %35 = call %struct.bnad* @netdev_priv(%struct.net_device* %34)
  store %struct.bnad* %35, %struct.bnad** %8, align 8
  %36 = load %struct.bnad*, %struct.bnad** %8, align 8
  %37 = call i32 @bnad_lock_init(%struct.bnad* %36)
  %38 = call i64 @atomic_inc_return(i32* @bna_id)
  %39 = sub nsw i64 %38, 1
  %40 = load %struct.bnad*, %struct.bnad** %8, align 8
  %41 = getelementptr inbounds %struct.bnad, %struct.bnad* %40, i32 0, i32 11
  store i64 %39, i64* %41, align 8
  %42 = load %struct.bnad*, %struct.bnad** %8, align 8
  %43 = getelementptr inbounds %struct.bnad, %struct.bnad* %42, i32 0, i32 0
  %44 = call i32 @mutex_lock(i32* %43)
  store i32 0, i32* %6, align 4
  %45 = load %struct.bnad*, %struct.bnad** %8, align 8
  %46 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %47 = call i32 @bnad_pci_init(%struct.bnad* %45, %struct.pci_dev* %46, i32* %6)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %33
  br label %384

51:                                               ; preds = %33
  %52 = load %struct.bnad*, %struct.bnad** %8, align 8
  %53 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %54 = load %struct.net_device*, %struct.net_device** %10, align 8
  %55 = call i32 @bnad_init(%struct.bnad* %52, %struct.pci_dev* %53, %struct.net_device* %54)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %51
  br label %381

59:                                               ; preds = %51
  %60 = load %struct.bnad*, %struct.bnad** %8, align 8
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @bnad_netdev_init(%struct.bnad* %60, i32 %61)
  %63 = load %struct.net_device*, %struct.net_device** %10, align 8
  %64 = call i32 @netif_carrier_off(%struct.net_device* %63)
  %65 = load i64, i64* @bna_debugfs_enable, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %59
  %68 = load %struct.bnad*, %struct.bnad** %8, align 8
  %69 = call i32 @bnad_debugfs_init(%struct.bnad* %68)
  br label %70

70:                                               ; preds = %67, %59
  %71 = load %struct.bnad*, %struct.bnad** %8, align 8
  %72 = getelementptr inbounds %struct.bnad, %struct.bnad* %71, i32 0, i32 3
  %73 = load i64, i64* %12, align 8
  %74 = call i32 @spin_lock_irqsave(i32* %72, i64 %73)
  %75 = load %struct.bnad*, %struct.bnad** %8, align 8
  %76 = getelementptr inbounds %struct.bnad, %struct.bnad* %75, i32 0, i32 2
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 0
  %79 = call i32 @bna_res_req(i32* %78)
  %80 = load %struct.bnad*, %struct.bnad** %8, align 8
  %81 = getelementptr inbounds %struct.bnad, %struct.bnad* %80, i32 0, i32 3
  %82 = load i64, i64* %12, align 8
  %83 = call i32 @spin_unlock_irqrestore(i32* %81, i64 %82)
  %84 = load %struct.bnad*, %struct.bnad** %8, align 8
  %85 = load %struct.bnad*, %struct.bnad** %8, align 8
  %86 = getelementptr inbounds %struct.bnad, %struct.bnad* %85, i32 0, i32 2
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 0
  %89 = load i32, i32* @BNA_RES_T_MAX, align 4
  %90 = call i32 @bnad_res_alloc(%struct.bnad* %84, i32* %88, i32 %89)
  store i32 %90, i32* %7, align 4
  %91 = load i32, i32* %7, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %70
  br label %372

94:                                               ; preds = %70
  %95 = load %struct.bnad*, %struct.bnad** %8, align 8
  %96 = getelementptr inbounds %struct.bnad, %struct.bnad* %95, i32 0, i32 4
  store %struct.bna* %96, %struct.bna** %9, align 8
  %97 = load %struct.bnad*, %struct.bnad** %8, align 8
  %98 = getelementptr inbounds %struct.bnad, %struct.bnad* %97, i32 0, i32 10
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @PCI_SLOT(i32 %101)
  %103 = getelementptr inbounds %struct.bfa_pcidev, %struct.bfa_pcidev* %11, i32 0, i32 3
  store i32 %102, i32* %103, align 4
  %104 = load %struct.bnad*, %struct.bnad** %8, align 8
  %105 = getelementptr inbounds %struct.bnad, %struct.bnad* %104, i32 0, i32 10
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @PCI_FUNC(i32 %108)
  %110 = getelementptr inbounds %struct.bfa_pcidev, %struct.bfa_pcidev* %11, i32 0, i32 2
  store i32 %109, i32* %110, align 4
  %111 = load %struct.bnad*, %struct.bnad** %8, align 8
  %112 = getelementptr inbounds %struct.bnad, %struct.bnad* %111, i32 0, i32 10
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = getelementptr inbounds %struct.bfa_pcidev, %struct.bfa_pcidev* %11, i32 0, i32 1
  store i32 %115, i32* %116, align 4
  %117 = load %struct.bnad*, %struct.bnad** %8, align 8
  %118 = getelementptr inbounds %struct.bnad, %struct.bnad* %117, i32 0, i32 9
  %119 = load i32, i32* %118, align 8
  %120 = getelementptr inbounds %struct.bfa_pcidev, %struct.bfa_pcidev* %11, i32 0, i32 0
  store i32 %119, i32* %120, align 4
  %121 = load %struct.bnad*, %struct.bnad** %8, align 8
  %122 = getelementptr inbounds %struct.bnad, %struct.bnad* %121, i32 0, i32 3
  %123 = load i64, i64* %12, align 8
  %124 = call i32 @spin_lock_irqsave(i32* %122, i64 %123)
  %125 = load %struct.bna*, %struct.bna** %9, align 8
  %126 = load %struct.bnad*, %struct.bnad** %8, align 8
  %127 = load %struct.bnad*, %struct.bnad** %8, align 8
  %128 = getelementptr inbounds %struct.bnad, %struct.bnad* %127, i32 0, i32 2
  %129 = load i32*, i32** %128, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 0
  %131 = call i32 @bna_init(%struct.bna* %125, %struct.bnad* %126, %struct.bfa_pcidev* %11, i32* %130)
  %132 = load %struct.bnad*, %struct.bnad** %8, align 8
  %133 = getelementptr inbounds %struct.bnad, %struct.bnad* %132, i32 0, i32 3
  %134 = load i64, i64* %12, align 8
  %135 = call i32 @spin_unlock_irqrestore(i32* %133, i64 %134)
  %136 = load %struct.bna*, %struct.bna** %9, align 8
  %137 = getelementptr inbounds %struct.bna, %struct.bna* %136, i32 0, i32 2
  %138 = load %struct.bnad*, %struct.bnad** %8, align 8
  %139 = getelementptr inbounds %struct.bnad, %struct.bnad* %138, i32 0, i32 8
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 0
  store i32* %137, i32** %140, align 8
  %141 = load %struct.bnad*, %struct.bnad** %8, align 8
  %142 = call i32 @bnad_enable_msix(%struct.bnad* %141)
  %143 = load %struct.bnad*, %struct.bnad** %8, align 8
  %144 = call i32 @bnad_mbox_irq_alloc(%struct.bnad* %143)
  store i32 %144, i32* %7, align 4
  %145 = load i32, i32* %7, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %94
  br label %364

148:                                              ; preds = %94
  %149 = load %struct.bnad*, %struct.bnad** %8, align 8
  %150 = getelementptr inbounds %struct.bnad, %struct.bnad* %149, i32 0, i32 4
  %151 = getelementptr inbounds %struct.bna, %struct.bna* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 2
  %154 = load i32, i32* @bnad_ioc_timeout, align 4
  %155 = call i32 @timer_setup(i32* %153, i32 %154, i32 0)
  %156 = load %struct.bnad*, %struct.bnad** %8, align 8
  %157 = getelementptr inbounds %struct.bnad, %struct.bnad* %156, i32 0, i32 4
  %158 = getelementptr inbounds %struct.bna, %struct.bna* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 0
  %161 = load i32, i32* @bnad_ioc_hb_check, align 4
  %162 = call i32 @timer_setup(i32* %160, i32 %161, i32 0)
  %163 = load %struct.bnad*, %struct.bnad** %8, align 8
  %164 = getelementptr inbounds %struct.bnad, %struct.bnad* %163, i32 0, i32 4
  %165 = getelementptr inbounds %struct.bna, %struct.bna* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 3
  %168 = load i32, i32* @bnad_iocpf_timeout, align 4
  %169 = call i32 @timer_setup(i32* %167, i32 %168, i32 0)
  %170 = load %struct.bnad*, %struct.bnad** %8, align 8
  %171 = getelementptr inbounds %struct.bnad, %struct.bnad* %170, i32 0, i32 4
  %172 = getelementptr inbounds %struct.bna, %struct.bna* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i32 0, i32 1
  %175 = load i32, i32* @bnad_iocpf_sem_timeout, align 4
  %176 = call i32 @timer_setup(i32* %174, i32 %175, i32 0)
  %177 = load %struct.bnad*, %struct.bnad** %8, align 8
  %178 = call i32 @bnad_ioceth_enable(%struct.bnad* %177)
  store i32 %178, i32* %7, align 4
  %179 = load i32, i32* %7, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %186

181:                                              ; preds = %148
  %182 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %183 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %182, i32 0, i32 0
  %184 = load i32, i32* %7, align 4
  %185 = call i32 (i32*, i8*, ...) @dev_err(i32* %183, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %184)
  br label %314

186:                                              ; preds = %148
  %187 = load %struct.bnad*, %struct.bnad** %8, align 8
  %188 = getelementptr inbounds %struct.bnad, %struct.bnad* %187, i32 0, i32 3
  %189 = load i64, i64* %12, align 8
  %190 = call i32 @spin_lock_irqsave(i32* %188, i64 %189)
  %191 = load %struct.bna*, %struct.bna** %9, align 8
  %192 = load i64, i64* @BNAD_NUM_TXQ, align 8
  %193 = add nsw i64 %192, 1
  %194 = call i64 @bna_num_txq_set(%struct.bna* %191, i64 %193)
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %202, label %196

196:                                              ; preds = %186
  %197 = load %struct.bna*, %struct.bna** %9, align 8
  %198 = load i64, i64* @BNAD_NUM_RXP, align 8
  %199 = add nsw i64 %198, 1
  %200 = call i64 @bna_num_rxp_set(%struct.bna* %197, i64 %199)
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %230

202:                                              ; preds = %196, %186
  %203 = load %struct.bnad*, %struct.bnad** %8, align 8
  %204 = load %struct.bna*, %struct.bna** %9, align 8
  %205 = call %struct.TYPE_10__* @bna_attr(%struct.bna* %204)
  %206 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %205, i32 0, i32 1
  %207 = load i64, i64* %206, align 8
  %208 = sub nsw i64 %207, 1
  %209 = load %struct.bna*, %struct.bna** %9, align 8
  %210 = call %struct.TYPE_10__* @bna_attr(%struct.bna* %209)
  %211 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %210, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = sub nsw i64 %212, 1
  %214 = call i32 @bnad_q_num_adjust(%struct.bnad* %203, i64 %208, i64 %213)
  %215 = load %struct.bna*, %struct.bna** %9, align 8
  %216 = load i64, i64* @BNAD_NUM_TXQ, align 8
  %217 = add nsw i64 %216, 1
  %218 = call i64 @bna_num_txq_set(%struct.bna* %215, i64 %217)
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %226, label %220

220:                                              ; preds = %202
  %221 = load %struct.bna*, %struct.bna** %9, align 8
  %222 = load i64, i64* @BNAD_NUM_RXP, align 8
  %223 = add nsw i64 %222, 1
  %224 = call i64 @bna_num_rxp_set(%struct.bna* %221, i64 %223)
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %229

226:                                              ; preds = %220, %202
  %227 = load i32, i32* @EIO, align 4
  %228 = sub nsw i32 0, %227
  store i32 %228, i32* %7, align 4
  br label %229

229:                                              ; preds = %226, %220
  br label %230

230:                                              ; preds = %229, %196
  %231 = load %struct.bnad*, %struct.bnad** %8, align 8
  %232 = getelementptr inbounds %struct.bnad, %struct.bnad* %231, i32 0, i32 3
  %233 = load i64, i64* %12, align 8
  %234 = call i32 @spin_unlock_irqrestore(i32* %232, i64 %233)
  %235 = load i32, i32* %7, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %238

237:                                              ; preds = %230
  br label %329

238:                                              ; preds = %230
  %239 = load %struct.bnad*, %struct.bnad** %8, align 8
  %240 = getelementptr inbounds %struct.bnad, %struct.bnad* %239, i32 0, i32 3
  %241 = load i64, i64* %12, align 8
  %242 = call i32 @spin_lock_irqsave(i32* %240, i64 %241)
  %243 = load %struct.bnad*, %struct.bnad** %8, align 8
  %244 = getelementptr inbounds %struct.bnad, %struct.bnad* %243, i32 0, i32 4
  %245 = load %struct.bnad*, %struct.bnad** %8, align 8
  %246 = getelementptr inbounds %struct.bnad, %struct.bnad* %245, i32 0, i32 5
  %247 = load i32*, i32** %246, align 8
  %248 = getelementptr inbounds i32, i32* %247, i64 0
  %249 = call i32 @bna_mod_res_req(%struct.bna* %244, i32* %248)
  %250 = load %struct.bnad*, %struct.bnad** %8, align 8
  %251 = getelementptr inbounds %struct.bnad, %struct.bnad* %250, i32 0, i32 3
  %252 = load i64, i64* %12, align 8
  %253 = call i32 @spin_unlock_irqrestore(i32* %251, i64 %252)
  %254 = load %struct.bnad*, %struct.bnad** %8, align 8
  %255 = load %struct.bnad*, %struct.bnad** %8, align 8
  %256 = getelementptr inbounds %struct.bnad, %struct.bnad* %255, i32 0, i32 5
  %257 = load i32*, i32** %256, align 8
  %258 = getelementptr inbounds i32, i32* %257, i64 0
  %259 = load i32, i32* @BNA_MOD_RES_T_MAX, align 4
  %260 = call i32 @bnad_res_alloc(%struct.bnad* %254, i32* %258, i32 %259)
  store i32 %260, i32* %7, align 4
  %261 = load i32, i32* %7, align 4
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %266

263:                                              ; preds = %238
  %264 = load i32, i32* @EIO, align 4
  %265 = sub nsw i32 0, %264
  store i32 %265, i32* %7, align 4
  br label %329

266:                                              ; preds = %238
  %267 = load %struct.bnad*, %struct.bnad** %8, align 8
  %268 = getelementptr inbounds %struct.bnad, %struct.bnad* %267, i32 0, i32 3
  %269 = load i64, i64* %12, align 8
  %270 = call i32 @spin_lock_irqsave(i32* %268, i64 %269)
  %271 = load %struct.bnad*, %struct.bnad** %8, align 8
  %272 = getelementptr inbounds %struct.bnad, %struct.bnad* %271, i32 0, i32 4
  %273 = load %struct.bnad*, %struct.bnad** %8, align 8
  %274 = getelementptr inbounds %struct.bnad, %struct.bnad* %273, i32 0, i32 5
  %275 = load i32*, i32** %274, align 8
  %276 = getelementptr inbounds i32, i32* %275, i64 0
  %277 = call i32 @bna_mod_init(%struct.bna* %272, i32* %276)
  %278 = load %struct.bnad*, %struct.bnad** %8, align 8
  %279 = getelementptr inbounds %struct.bnad, %struct.bnad* %278, i32 0, i32 3
  %280 = load i64, i64* %12, align 8
  %281 = call i32 @spin_unlock_irqrestore(i32* %279, i64 %280)
  %282 = load %struct.bnad*, %struct.bnad** %8, align 8
  %283 = getelementptr inbounds %struct.bnad, %struct.bnad* %282, i32 0, i32 3
  %284 = load i64, i64* %12, align 8
  %285 = call i32 @spin_lock_irqsave(i32* %283, i64 %284)
  %286 = load %struct.bna*, %struct.bna** %9, align 8
  %287 = getelementptr inbounds %struct.bna, %struct.bna* %286, i32 0, i32 1
  %288 = load %struct.bnad*, %struct.bnad** %8, align 8
  %289 = getelementptr inbounds %struct.bnad, %struct.bnad* %288, i32 0, i32 7
  %290 = load i32, i32* %289, align 4
  %291 = call i32 @bna_enet_perm_mac_get(i32* %287, i32 %290)
  %292 = load %struct.bnad*, %struct.bnad** %8, align 8
  %293 = call i32 @bnad_set_netdev_perm_addr(%struct.bnad* %292)
  %294 = load %struct.bnad*, %struct.bnad** %8, align 8
  %295 = getelementptr inbounds %struct.bnad, %struct.bnad* %294, i32 0, i32 3
  %296 = load i64, i64* %12, align 8
  %297 = call i32 @spin_unlock_irqrestore(i32* %295, i64 %296)
  %298 = load %struct.bnad*, %struct.bnad** %8, align 8
  %299 = getelementptr inbounds %struct.bnad, %struct.bnad* %298, i32 0, i32 0
  %300 = call i32 @mutex_unlock(i32* %299)
  %301 = load %struct.net_device*, %struct.net_device** %10, align 8
  %302 = call i32 @register_netdev(%struct.net_device* %301)
  store i32 %302, i32* %7, align 4
  %303 = load i32, i32* %7, align 4
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %305, label %309

305:                                              ; preds = %266
  %306 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %307 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %306, i32 0, i32 0
  %308 = call i32 (i32*, i8*, ...) @dev_err(i32* %307, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %318

309:                                              ; preds = %266
  %310 = load i32, i32* @BNAD_RF_NETDEV_REGISTERED, align 4
  %311 = load %struct.bnad*, %struct.bnad** %8, align 8
  %312 = getelementptr inbounds %struct.bnad, %struct.bnad* %311, i32 0, i32 6
  %313 = call i32 @set_bit(i32 %310, i32* %312)
  store i32 0, i32* %3, align 4
  br label %393

314:                                              ; preds = %181
  %315 = load %struct.bnad*, %struct.bnad** %8, align 8
  %316 = getelementptr inbounds %struct.bnad, %struct.bnad* %315, i32 0, i32 0
  %317 = call i32 @mutex_unlock(i32* %316)
  store i32 0, i32* %3, align 4
  br label %393

318:                                              ; preds = %305
  %319 = load %struct.bnad*, %struct.bnad** %8, align 8
  %320 = getelementptr inbounds %struct.bnad, %struct.bnad* %319, i32 0, i32 0
  %321 = call i32 @mutex_lock(i32* %320)
  %322 = load %struct.bnad*, %struct.bnad** %8, align 8
  %323 = load %struct.bnad*, %struct.bnad** %8, align 8
  %324 = getelementptr inbounds %struct.bnad, %struct.bnad* %323, i32 0, i32 5
  %325 = load i32*, i32** %324, align 8
  %326 = getelementptr inbounds i32, i32* %325, i64 0
  %327 = load i32, i32* @BNA_MOD_RES_T_MAX, align 4
  %328 = call i32 @bnad_res_free(%struct.bnad* %322, i32* %326, i32 %327)
  br label %329

329:                                              ; preds = %318, %263, %237
  %330 = load %struct.bnad*, %struct.bnad** %8, align 8
  %331 = call i32 @bnad_ioceth_disable(%struct.bnad* %330)
  %332 = load %struct.bnad*, %struct.bnad** %8, align 8
  %333 = getelementptr inbounds %struct.bnad, %struct.bnad* %332, i32 0, i32 4
  %334 = getelementptr inbounds %struct.bna, %struct.bna* %333, i32 0, i32 0
  %335 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %334, i32 0, i32 0
  %336 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %335, i32 0, i32 2
  %337 = call i32 @del_timer_sync(i32* %336)
  %338 = load %struct.bnad*, %struct.bnad** %8, align 8
  %339 = getelementptr inbounds %struct.bnad, %struct.bnad* %338, i32 0, i32 4
  %340 = getelementptr inbounds %struct.bna, %struct.bna* %339, i32 0, i32 0
  %341 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %340, i32 0, i32 0
  %342 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %341, i32 0, i32 1
  %343 = call i32 @del_timer_sync(i32* %342)
  %344 = load %struct.bnad*, %struct.bnad** %8, align 8
  %345 = getelementptr inbounds %struct.bnad, %struct.bnad* %344, i32 0, i32 4
  %346 = getelementptr inbounds %struct.bna, %struct.bna* %345, i32 0, i32 0
  %347 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %346, i32 0, i32 0
  %348 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %347, i32 0, i32 0
  %349 = call i32 @del_timer_sync(i32* %348)
  %350 = load %struct.bnad*, %struct.bnad** %8, align 8
  %351 = getelementptr inbounds %struct.bnad, %struct.bnad* %350, i32 0, i32 3
  %352 = load i64, i64* %12, align 8
  %353 = call i32 @spin_lock_irqsave(i32* %351, i64 %352)
  %354 = load %struct.bna*, %struct.bna** %9, align 8
  %355 = call i32 @bna_uninit(%struct.bna* %354)
  %356 = load %struct.bnad*, %struct.bnad** %8, align 8
  %357 = getelementptr inbounds %struct.bnad, %struct.bnad* %356, i32 0, i32 3
  %358 = load i64, i64* %12, align 8
  %359 = call i32 @spin_unlock_irqrestore(i32* %357, i64 %358)
  %360 = load %struct.bnad*, %struct.bnad** %8, align 8
  %361 = call i32 @bnad_mbox_irq_free(%struct.bnad* %360)
  %362 = load %struct.bnad*, %struct.bnad** %8, align 8
  %363 = call i32 @bnad_disable_msix(%struct.bnad* %362)
  br label %364

364:                                              ; preds = %329, %147
  %365 = load %struct.bnad*, %struct.bnad** %8, align 8
  %366 = load %struct.bnad*, %struct.bnad** %8, align 8
  %367 = getelementptr inbounds %struct.bnad, %struct.bnad* %366, i32 0, i32 2
  %368 = load i32*, i32** %367, align 8
  %369 = getelementptr inbounds i32, i32* %368, i64 0
  %370 = load i32, i32* @BNA_RES_T_MAX, align 4
  %371 = call i32 @bnad_res_free(%struct.bnad* %365, i32* %369, i32 %370)
  br label %372

372:                                              ; preds = %364, %93
  %373 = load %struct.bnad*, %struct.bnad** %8, align 8
  %374 = getelementptr inbounds %struct.bnad, %struct.bnad* %373, i32 0, i32 1
  %375 = load i32, i32* %374, align 4
  %376 = call i32 @kfree(i32 %375)
  %377 = load %struct.bnad*, %struct.bnad** %8, align 8
  %378 = call i32 @bnad_debugfs_uninit(%struct.bnad* %377)
  %379 = load %struct.bnad*, %struct.bnad** %8, align 8
  %380 = call i32 @bnad_uninit(%struct.bnad* %379)
  br label %381

381:                                              ; preds = %372, %58
  %382 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %383 = call i32 @bnad_pci_uninit(%struct.pci_dev* %382)
  br label %384

384:                                              ; preds = %381, %50
  %385 = load %struct.bnad*, %struct.bnad** %8, align 8
  %386 = getelementptr inbounds %struct.bnad, %struct.bnad* %385, i32 0, i32 0
  %387 = call i32 @mutex_unlock(i32* %386)
  %388 = load %struct.bnad*, %struct.bnad** %8, align 8
  %389 = call i32 @bnad_lock_uninit(%struct.bnad* %388)
  %390 = load %struct.net_device*, %struct.net_device** %10, align 8
  %391 = call i32 @free_netdev(%struct.net_device* %390)
  %392 = load i32, i32* %7, align 4
  store i32 %392, i32* %3, align 4
  br label %393

393:                                              ; preds = %384, %314, %309, %29, %17
  %394 = load i32, i32* %3, align 4
  ret i32 %394
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @cna_get_firmware_buf(%struct.pci_dev*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local %struct.net_device* @alloc_etherdev(i32) #1

declare dso_local %struct.bnad* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @bnad_lock_init(%struct.bnad*) #1

declare dso_local i64 @atomic_inc_return(i32*) #1

declare dso_local i32 @bnad_pci_init(%struct.bnad*, %struct.pci_dev*, i32*) #1

declare dso_local i32 @bnad_init(%struct.bnad*, %struct.pci_dev*, %struct.net_device*) #1

declare dso_local i32 @bnad_netdev_init(%struct.bnad*, i32) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @bnad_debugfs_init(%struct.bnad*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @bna_res_req(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @bnad_res_alloc(%struct.bnad*, i32*, i32) #1

declare dso_local i32 @PCI_SLOT(i32) #1

declare dso_local i32 @PCI_FUNC(i32) #1

declare dso_local i32 @bna_init(%struct.bna*, %struct.bnad*, %struct.bfa_pcidev*, i32*) #1

declare dso_local i32 @bnad_enable_msix(%struct.bnad*) #1

declare dso_local i32 @bnad_mbox_irq_alloc(%struct.bnad*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @bnad_ioceth_enable(%struct.bnad*) #1

declare dso_local i64 @bna_num_txq_set(%struct.bna*, i64) #1

declare dso_local i64 @bna_num_rxp_set(%struct.bna*, i64) #1

declare dso_local i32 @bnad_q_num_adjust(%struct.bnad*, i64, i64) #1

declare dso_local %struct.TYPE_10__* @bna_attr(%struct.bna*) #1

declare dso_local i32 @bna_mod_res_req(%struct.bna*, i32*) #1

declare dso_local i32 @bna_mod_init(%struct.bna*, i32*) #1

declare dso_local i32 @bna_enet_perm_mac_get(i32*, i32) #1

declare dso_local i32 @bnad_set_netdev_perm_addr(%struct.bnad*) #1

declare dso_local i32 @register_netdev(%struct.net_device*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @bnad_res_free(%struct.bnad*, i32*, i32) #1

declare dso_local i32 @bnad_ioceth_disable(%struct.bnad*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @bna_uninit(%struct.bna*) #1

declare dso_local i32 @bnad_mbox_irq_free(%struct.bnad*) #1

declare dso_local i32 @bnad_disable_msix(%struct.bnad*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @bnad_debugfs_uninit(%struct.bnad*) #1

declare dso_local i32 @bnad_uninit(%struct.bnad*) #1

declare dso_local i32 @bnad_pci_uninit(%struct.pci_dev*) #1

declare dso_local i32 @bnad_lock_uninit(%struct.bnad*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
