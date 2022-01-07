; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_r852.c_r852_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_r852.c_r852_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i32 }
%struct.pci_device_id = type { i32 }
%struct.nand_chip = type { i32, i32, i32, %struct.nand_chip*, i32, i32, i64, i32, i32, i32, %struct.pci_dev*, %struct.nand_chip*, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32 }
%struct.r852_device = type { i32, i32, i32, %struct.r852_device*, i32, i32, i64, i32, i32, i32, %struct.pci_dev*, %struct.r852_device*, %struct.TYPE_4__, %struct.TYPE_3__ }

@DRV_NAME = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@r852_cmdctl = common dso_local global i32 0, align 4
@r852_wait = common dso_local global i32 0, align 4
@r852_ready = common dso_local global i32 0, align 4
@r852_read_byte = common dso_local global i32 0, align 4
@r852_read_buf = common dso_local global i32 0, align 4
@r852_write_buf = common dso_local global i32 0, align 4
@NAND_ECC_HW_SYNDROME = common dso_local global i32 0, align 4
@R852_DMA_LEN = common dso_local global i32 0, align 4
@SM_OOB_SIZE = common dso_local global i32 0, align 4
@r852_ecc_hwctl = common dso_local global i32 0, align 4
@r852_ecc_calculate = common dso_local global i32 0, align 4
@r852_ecc_correct = common dso_local global i32 0, align 4
@r852_read_oob = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@SM_SECTOR_SIZE = common dso_local global i32 0, align 4
@r852_card_detect_work = common dso_local global i32 0, align 4
@r852_irq = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"driver loaded successfully\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @r852_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r852_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nand_chip*, align 8
  %8 = alloca %struct.r852_device*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %9 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %10 = call i32 @pci_enable_device(%struct.pci_dev* %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %253

14:                                               ; preds = %2
  %15 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %16 = call i32 @pci_set_master(%struct.pci_dev* %15)
  %17 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %18 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %17, i32 0, i32 0
  %19 = call i32 @DMA_BIT_MASK(i32 32)
  %20 = call i32 @dma_set_mask(i32* %18, i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %14
  br label %250

24:                                               ; preds = %14
  %25 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %26 = load i32, i32* @DRV_NAME, align 4
  %27 = call i32 @pci_request_regions(%struct.pci_dev* %25, i32 %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  br label %249

31:                                               ; preds = %24
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call i8* @kzalloc(i32 128, i32 %34)
  %36 = bitcast i8* %35 to %struct.nand_chip*
  store %struct.nand_chip* %36, %struct.nand_chip** %7, align 8
  %37 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %38 = icmp ne %struct.nand_chip* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %31
  br label %246

40:                                               ; preds = %31
  %41 = load i32, i32* @r852_cmdctl, align 4
  %42 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %43 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %42, i32 0, i32 13
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 5
  store i32 %41, i32* %44, align 4
  %45 = load i32, i32* @r852_wait, align 4
  %46 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %47 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %46, i32 0, i32 13
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 4
  store i32 %45, i32* %48, align 8
  %49 = load i32, i32* @r852_ready, align 4
  %50 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %51 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %50, i32 0, i32 13
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 3
  store i32 %49, i32* %52, align 4
  %53 = load i32, i32* @r852_read_byte, align 4
  %54 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %55 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %54, i32 0, i32 13
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 2
  store i32 %53, i32* %56, align 8
  %57 = load i32, i32* @r852_read_buf, align 4
  %58 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %59 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %58, i32 0, i32 13
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 1
  store i32 %57, i32* %60, align 4
  %61 = load i32, i32* @r852_write_buf, align 4
  %62 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %63 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %62, i32 0, i32 13
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  store i32 %61, i32* %64, align 8
  %65 = load i32, i32* @NAND_ECC_HW_SYNDROME, align 4
  %66 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %67 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %66, i32 0, i32 12
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 7
  store i32 %65, i32* %68, align 4
  %69 = load i32, i32* @R852_DMA_LEN, align 4
  %70 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %71 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %70, i32 0, i32 12
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 6
  store i32 %69, i32* %72, align 8
  %73 = load i32, i32* @SM_OOB_SIZE, align 4
  %74 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %75 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %74, i32 0, i32 12
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 5
  store i32 %73, i32* %76, align 4
  %77 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %78 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %77, i32 0, i32 12
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  store i32 2, i32* %79, align 8
  %80 = load i32, i32* @r852_ecc_hwctl, align 4
  %81 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %82 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %81, i32 0, i32 12
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 4
  store i32 %80, i32* %83, align 8
  %84 = load i32, i32* @r852_ecc_calculate, align 4
  %85 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %86 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %85, i32 0, i32 12
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 3
  store i32 %84, i32* %87, align 4
  %88 = load i32, i32* @r852_ecc_correct, align 4
  %89 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %90 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %89, i32 0, i32 12
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 2
  store i32 %88, i32* %91, align 8
  %92 = load i32, i32* @r852_read_oob, align 4
  %93 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %94 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %93, i32 0, i32 12
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 1
  store i32 %92, i32* %95, align 4
  %96 = load i32, i32* @GFP_KERNEL, align 4
  %97 = call i8* @kzalloc(i32 128, i32 %96)
  %98 = bitcast i8* %97 to %struct.r852_device*
  store %struct.r852_device* %98, %struct.r852_device** %8, align 8
  %99 = load %struct.r852_device*, %struct.r852_device** %8, align 8
  %100 = icmp ne %struct.r852_device* %99, null
  br i1 %100, label %102, label %101

101:                                              ; preds = %40
  br label %242

102:                                              ; preds = %40
  %103 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %104 = bitcast %struct.nand_chip* %103 to %struct.r852_device*
  %105 = load %struct.r852_device*, %struct.r852_device** %8, align 8
  %106 = call i32 @nand_set_controller_data(%struct.r852_device* %104, %struct.r852_device* %105)
  %107 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %108 = bitcast %struct.nand_chip* %107 to %struct.r852_device*
  %109 = load %struct.r852_device*, %struct.r852_device** %8, align 8
  %110 = getelementptr inbounds %struct.r852_device, %struct.r852_device* %109, i32 0, i32 11
  store %struct.r852_device* %108, %struct.r852_device** %110, align 8
  %111 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %112 = load %struct.r852_device*, %struct.r852_device** %8, align 8
  %113 = getelementptr inbounds %struct.r852_device, %struct.r852_device* %112, i32 0, i32 10
  store %struct.pci_dev* %111, %struct.pci_dev** %113, align 8
  %114 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %115 = load %struct.r852_device*, %struct.r852_device** %8, align 8
  %116 = call i32 @pci_set_drvdata(%struct.pci_dev* %114, %struct.r852_device* %115)
  %117 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %118 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %117, i32 0, i32 0
  %119 = load i32, i32* @R852_DMA_LEN, align 4
  %120 = load %struct.r852_device*, %struct.r852_device** %8, align 8
  %121 = getelementptr inbounds %struct.r852_device, %struct.r852_device* %120, i32 0, i32 0
  %122 = load i32, i32* @GFP_KERNEL, align 4
  %123 = call i32 @dma_alloc_coherent(i32* %118, i32 %119, i32* %121, i32 %122)
  %124 = load %struct.r852_device*, %struct.r852_device** %8, align 8
  %125 = getelementptr inbounds %struct.r852_device, %struct.r852_device* %124, i32 0, i32 1
  store i32 %123, i32* %125, align 4
  %126 = load %struct.r852_device*, %struct.r852_device** %8, align 8
  %127 = getelementptr inbounds %struct.r852_device, %struct.r852_device* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %131, label %130

130:                                              ; preds = %102
  br label %239

131:                                              ; preds = %102
  %132 = load i32, i32* @ENODEV, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %6, align 4
  %134 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %135 = call i32 @pci_ioremap_bar(%struct.pci_dev* %134, i32 0)
  %136 = load %struct.r852_device*, %struct.r852_device** %8, align 8
  %137 = getelementptr inbounds %struct.r852_device, %struct.r852_device* %136, i32 0, i32 2
  store i32 %135, i32* %137, align 8
  %138 = load %struct.r852_device*, %struct.r852_device** %8, align 8
  %139 = getelementptr inbounds %struct.r852_device, %struct.r852_device* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %143, label %142

142:                                              ; preds = %131
  br label %228

143:                                              ; preds = %131
  %144 = load i32, i32* @ENOMEM, align 4
  %145 = sub nsw i32 0, %144
  store i32 %145, i32* %6, align 4
  %146 = load i32, i32* @SM_SECTOR_SIZE, align 4
  %147 = load i32, i32* @GFP_KERNEL, align 4
  %148 = call i8* @kzalloc(i32 %146, i32 %147)
  %149 = bitcast i8* %148 to %struct.r852_device*
  %150 = load %struct.r852_device*, %struct.r852_device** %8, align 8
  %151 = getelementptr inbounds %struct.r852_device, %struct.r852_device* %150, i32 0, i32 3
  store %struct.r852_device* %149, %struct.r852_device** %151, align 8
  %152 = load %struct.r852_device*, %struct.r852_device** %8, align 8
  %153 = getelementptr inbounds %struct.r852_device, %struct.r852_device* %152, i32 0, i32 3
  %154 = load %struct.r852_device*, %struct.r852_device** %153, align 8
  %155 = icmp ne %struct.r852_device* %154, null
  br i1 %155, label %157, label %156

156:                                              ; preds = %143
  br label %222

157:                                              ; preds = %143
  %158 = load %struct.r852_device*, %struct.r852_device** %8, align 8
  %159 = getelementptr inbounds %struct.r852_device, %struct.r852_device* %158, i32 0, i32 9
  %160 = call i32 @init_completion(i32* %159)
  %161 = load i32, i32* @DRV_NAME, align 4
  %162 = call i32 @create_freezable_workqueue(i32 %161)
  %163 = load %struct.r852_device*, %struct.r852_device** %8, align 8
  %164 = getelementptr inbounds %struct.r852_device, %struct.r852_device* %163, i32 0, i32 4
  store i32 %162, i32* %164, align 8
  %165 = load %struct.r852_device*, %struct.r852_device** %8, align 8
  %166 = getelementptr inbounds %struct.r852_device, %struct.r852_device* %165, i32 0, i32 4
  %167 = load i32, i32* %166, align 8
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %170, label %169

169:                                              ; preds = %157
  br label %217

170:                                              ; preds = %157
  %171 = load %struct.r852_device*, %struct.r852_device** %8, align 8
  %172 = getelementptr inbounds %struct.r852_device, %struct.r852_device* %171, i32 0, i32 5
  %173 = load i32, i32* @r852_card_detect_work, align 4
  %174 = call i32 @INIT_DELAYED_WORK(i32* %172, i32 %173)
  %175 = load %struct.r852_device*, %struct.r852_device** %8, align 8
  %176 = call i32 @r852_engine_disable(%struct.r852_device* %175)
  %177 = load %struct.r852_device*, %struct.r852_device** %8, align 8
  %178 = call i32 @r852_disable_irqs(%struct.r852_device* %177)
  %179 = load %struct.r852_device*, %struct.r852_device** %8, align 8
  %180 = call i32 @r852_dma_test(%struct.r852_device* %179)
  %181 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %182 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.r852_device*, %struct.r852_device** %8, align 8
  %185 = getelementptr inbounds %struct.r852_device, %struct.r852_device* %184, i32 0, i32 8
  store i32 %183, i32* %185, align 4
  %186 = load %struct.r852_device*, %struct.r852_device** %8, align 8
  %187 = getelementptr inbounds %struct.r852_device, %struct.r852_device* %186, i32 0, i32 7
  %188 = call i32 @spin_lock_init(i32* %187)
  %189 = load %struct.r852_device*, %struct.r852_device** %8, align 8
  %190 = getelementptr inbounds %struct.r852_device, %struct.r852_device* %189, i32 0, i32 6
  store i64 0, i64* %190, align 8
  %191 = load %struct.r852_device*, %struct.r852_device** %8, align 8
  %192 = call i32 @r852_card_update_present(%struct.r852_device* %191)
  %193 = load i32, i32* @ENODEV, align 4
  %194 = sub nsw i32 0, %193
  store i32 %194, i32* %6, align 4
  %195 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %196 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = load i32, i32* @IRQF_SHARED, align 4
  %199 = load i32, i32* @DRV_NAME, align 4
  %200 = load %struct.r852_device*, %struct.r852_device** %8, align 8
  %201 = call i64 @request_irq(i32 %197, i32* @r852_irq, i32 %198, i32 %199, %struct.r852_device* %200)
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %204

203:                                              ; preds = %170
  br label %212

204:                                              ; preds = %170
  %205 = load %struct.r852_device*, %struct.r852_device** %8, align 8
  %206 = getelementptr inbounds %struct.r852_device, %struct.r852_device* %205, i32 0, i32 4
  %207 = load i32, i32* %206, align 8
  %208 = load %struct.r852_device*, %struct.r852_device** %8, align 8
  %209 = getelementptr inbounds %struct.r852_device, %struct.r852_device* %208, i32 0, i32 5
  %210 = call i32 @queue_delayed_work(i32 %207, i32* %209, i32 0)
  %211 = call i32 @pr_notice(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %255

212:                                              ; preds = %203
  %213 = load %struct.r852_device*, %struct.r852_device** %8, align 8
  %214 = getelementptr inbounds %struct.r852_device, %struct.r852_device* %213, i32 0, i32 4
  %215 = load i32, i32* %214, align 8
  %216 = call i32 @destroy_workqueue(i32 %215)
  br label %217

217:                                              ; preds = %212, %169
  %218 = load %struct.r852_device*, %struct.r852_device** %8, align 8
  %219 = getelementptr inbounds %struct.r852_device, %struct.r852_device* %218, i32 0, i32 3
  %220 = load %struct.r852_device*, %struct.r852_device** %219, align 8
  %221 = call i32 @kfree(%struct.r852_device* %220)
  br label %222

222:                                              ; preds = %217, %156
  %223 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %224 = load %struct.r852_device*, %struct.r852_device** %8, align 8
  %225 = getelementptr inbounds %struct.r852_device, %struct.r852_device* %224, i32 0, i32 2
  %226 = load i32, i32* %225, align 8
  %227 = call i32 @pci_iounmap(%struct.pci_dev* %223, i32 %226)
  br label %228

228:                                              ; preds = %222, %142
  %229 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %230 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %229, i32 0, i32 0
  %231 = load i32, i32* @R852_DMA_LEN, align 4
  %232 = load %struct.r852_device*, %struct.r852_device** %8, align 8
  %233 = getelementptr inbounds %struct.r852_device, %struct.r852_device* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 4
  %235 = load %struct.r852_device*, %struct.r852_device** %8, align 8
  %236 = getelementptr inbounds %struct.r852_device, %struct.r852_device* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = call i32 @dma_free_coherent(i32* %230, i32 %231, i32 %234, i32 %237)
  br label %239

239:                                              ; preds = %228, %130
  %240 = load %struct.r852_device*, %struct.r852_device** %8, align 8
  %241 = call i32 @kfree(%struct.r852_device* %240)
  br label %242

242:                                              ; preds = %239, %101
  %243 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %244 = bitcast %struct.nand_chip* %243 to %struct.r852_device*
  %245 = call i32 @kfree(%struct.r852_device* %244)
  br label %246

246:                                              ; preds = %242, %39
  %247 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %248 = call i32 @pci_release_regions(%struct.pci_dev* %247)
  br label %249

249:                                              ; preds = %246, %30
  br label %250

250:                                              ; preds = %249, %23
  %251 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %252 = call i32 @pci_disable_device(%struct.pci_dev* %251)
  br label %253

253:                                              ; preds = %250, %13
  %254 = load i32, i32* %6, align 4
  store i32 %254, i32* %3, align 4
  br label %255

255:                                              ; preds = %253, %204
  %256 = load i32, i32* %3, align 4
  ret i32 %256
}

declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i32 @dma_set_mask(i32*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @pci_request_regions(%struct.pci_dev*, i32) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @nand_set_controller_data(%struct.r852_device*, %struct.r852_device*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.r852_device*) #1

declare dso_local i32 @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @pci_ioremap_bar(%struct.pci_dev*, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @create_freezable_workqueue(i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @r852_engine_disable(%struct.r852_device*) #1

declare dso_local i32 @r852_disable_irqs(%struct.r852_device*) #1

declare dso_local i32 @r852_dma_test(%struct.r852_device*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @r852_card_update_present(%struct.r852_device*) #1

declare dso_local i64 @request_irq(i32, i32*, i32, i32, %struct.r852_device*) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @pr_notice(i8*) #1

declare dso_local i32 @destroy_workqueue(i32) #1

declare dso_local i32 @kfree(%struct.r852_device*) #1

declare dso_local i32 @pci_iounmap(%struct.pci_dev*, i32) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i32, i32) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
