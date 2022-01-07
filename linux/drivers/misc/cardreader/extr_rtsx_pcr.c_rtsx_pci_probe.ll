; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rtsx_pcr.c_rtsx_pci_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rtsx_pcr.c_rtsx_pci_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.rtsx_pcr* }
%struct.rtsx_pcr = type { i32, i32, i32, i32, i32, i32, i32*, %struct.pci_dev*, i32, i32, i32, i64, i64, i32*, i32*, %struct.rtsx_pcr* }
%struct.pci_dev = type { i32, i64, i64, i64 }
%struct.pci_device_id = type { i32 }
%struct.pcr_handle = type { i32, i32, i32, i32, i32, i32, i32*, %struct.pci_dev*, i32, i32, i32, i64, i64, i32*, i32*, %struct.pcr_handle* }

@.str = private unnamed_addr constant [62 x i8] c": Realtek PCI-E Card Reader found at %s [%04x:%04x] (rev %x)\0A\00", align 1
@DRV_NAME_RTSX_PCI = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@rtsx_pci_lock = common dso_local global i32 0, align 4
@rtsx_pci_idr = common dso_local global i32 0, align 4
@GFP_NOWAIT = common dso_local global i32 0, align 4
@RTSX_RESV_BUF_LEN = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@HOST_CMDS_BUF_LEN = common dso_local global i32 0, align 4
@rtsx_pci_card_detect = common dso_local global i32 0, align 4
@rtsx_pci_idle_work = common dso_local global i32 0, align 4
@msi_en = common dso_local global i32 0, align 4
@rtsx_pcr_cells = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @rtsx_pci_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtsx_pci_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.rtsx_pcr*, align 8
  %7 = alloca %struct.pcr_handle*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  store i32 0, i32* %12, align 4
  %13 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %14 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %13, i32 0, i32 0
  %15 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %16 = call i32 @pci_name(%struct.pci_dev* %15)
  %17 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %18 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = trunc i64 %19 to i32
  %21 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %22 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = trunc i64 %23 to i32
  %25 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %26 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = trunc i64 %27 to i32
  %29 = call i32 @dev_dbg(i32* %14, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %20, i32 %24, i32 %28)
  %30 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %31 = call i32 @DMA_BIT_MASK(i32 32)
  %32 = call i32 @pci_set_dma_mask(%struct.pci_dev* %30, i32 %31)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %2
  %36 = load i32, i32* %10, align 4
  store i32 %36, i32* %3, align 4
  br label %301

37:                                               ; preds = %2
  %38 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %39 = call i32 @pci_enable_device(%struct.pci_dev* %38)
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = load i32, i32* %10, align 4
  store i32 %43, i32* %3, align 4
  br label %301

44:                                               ; preds = %37
  %45 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %46 = load i32, i32* @DRV_NAME_RTSX_PCI, align 4
  %47 = call i32 @pci_request_regions(%struct.pci_dev* %45, i32 %46)
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %10, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  br label %297

51:                                               ; preds = %44
  %52 = load i32, i32* @GFP_KERNEL, align 4
  %53 = call %struct.rtsx_pcr* @kzalloc(i32 96, i32 %52)
  store %struct.rtsx_pcr* %53, %struct.rtsx_pcr** %6, align 8
  %54 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %6, align 8
  %55 = icmp ne %struct.rtsx_pcr* %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %51
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %10, align 4
  br label %294

59:                                               ; preds = %51
  %60 = load i32, i32* @GFP_KERNEL, align 4
  %61 = call %struct.rtsx_pcr* @kzalloc(i32 96, i32 %60)
  %62 = bitcast %struct.rtsx_pcr* %61 to %struct.pcr_handle*
  store %struct.pcr_handle* %62, %struct.pcr_handle** %7, align 8
  %63 = load %struct.pcr_handle*, %struct.pcr_handle** %7, align 8
  %64 = icmp ne %struct.pcr_handle* %63, null
  br i1 %64, label %68, label %65

65:                                               ; preds = %59
  %66 = load i32, i32* @ENOMEM, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %10, align 4
  br label %291

68:                                               ; preds = %59
  %69 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %6, align 8
  %70 = bitcast %struct.rtsx_pcr* %69 to %struct.pcr_handle*
  %71 = load %struct.pcr_handle*, %struct.pcr_handle** %7, align 8
  %72 = getelementptr inbounds %struct.pcr_handle, %struct.pcr_handle* %71, i32 0, i32 15
  store %struct.pcr_handle* %70, %struct.pcr_handle** %72, align 8
  %73 = load i32, i32* @GFP_KERNEL, align 4
  %74 = call i32 @idr_preload(i32 %73)
  %75 = call i32 @spin_lock(i32* @rtsx_pci_lock)
  %76 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %6, align 8
  %77 = load i32, i32* @GFP_NOWAIT, align 4
  %78 = call i32 @idr_alloc(i32* @rtsx_pci_idr, %struct.rtsx_pcr* %76, i32 0, i32 0, i32 %77)
  store i32 %78, i32* %10, align 4
  %79 = load i32, i32* %10, align 4
  %80 = icmp sge i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %68
  %82 = load i32, i32* %10, align 4
  %83 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %6, align 8
  %84 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 8
  br label %85

85:                                               ; preds = %81, %68
  %86 = call i32 @spin_unlock(i32* @rtsx_pci_lock)
  %87 = call i32 (...) @idr_preload_end()
  %88 = load i32, i32* %10, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %85
  br label %287

91:                                               ; preds = %85
  %92 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %93 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %6, align 8
  %94 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %93, i32 0, i32 7
  store %struct.pci_dev* %92, %struct.pci_dev** %94, align 8
  %95 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %96 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %95, i32 0, i32 0
  %97 = load %struct.pcr_handle*, %struct.pcr_handle** %7, align 8
  %98 = bitcast %struct.pcr_handle* %97 to %struct.rtsx_pcr*
  %99 = call i32 @dev_set_drvdata(i32* %96, %struct.rtsx_pcr* %98)
  %100 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %6, align 8
  %101 = call i64 @CHK_PCI_PID(%struct.rtsx_pcr* %100, i32 21082)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %91
  store i32 1, i32* %12, align 4
  br label %104

104:                                              ; preds = %103, %91
  %105 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %106 = load i32, i32* %12, align 4
  %107 = call i32 @pci_resource_len(%struct.pci_dev* %105, i32 %106)
  store i32 %107, i32* %9, align 4
  %108 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %109 = load i32, i32* %12, align 4
  %110 = call i32 @pci_resource_start(%struct.pci_dev* %108, i32 %109)
  store i32 %110, i32* %8, align 4
  %111 = load i32, i32* %8, align 4
  %112 = load i32, i32* %9, align 4
  %113 = call i32 @ioremap_nocache(i32 %111, i32 %112)
  %114 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %6, align 8
  %115 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %114, i32 0, i32 5
  store i32 %113, i32* %115, align 4
  %116 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %6, align 8
  %117 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %116, i32 0, i32 5
  %118 = load i32, i32* %117, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %123, label %120

120:                                              ; preds = %104
  %121 = load i32, i32* @ENOMEM, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %10, align 4
  br label %287

123:                                              ; preds = %104
  %124 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %125 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %124, i32 0, i32 0
  %126 = load i32, i32* @RTSX_RESV_BUF_LEN, align 4
  %127 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %6, align 8
  %128 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %127, i32 0, i32 1
  %129 = load i32, i32* @GFP_KERNEL, align 4
  %130 = call i32* @dma_alloc_coherent(i32* %125, i32 %126, i32* %128, i32 %129)
  %131 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %6, align 8
  %132 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %131, i32 0, i32 6
  store i32* %130, i32** %132, align 8
  %133 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %6, align 8
  %134 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %133, i32 0, i32 6
  %135 = load i32*, i32** %134, align 8
  %136 = icmp eq i32* %135, null
  br i1 %136, label %137, label %140

137:                                              ; preds = %123
  %138 = load i32, i32* @ENXIO, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %10, align 4
  br label %282

140:                                              ; preds = %123
  %141 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %6, align 8
  %142 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %141, i32 0, i32 6
  %143 = load i32*, i32** %142, align 8
  %144 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %6, align 8
  %145 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %144, i32 0, i32 14
  store i32* %143, i32** %145, align 8
  %146 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %6, align 8
  %147 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %6, align 8
  %150 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %149, i32 0, i32 2
  store i32 %148, i32* %150, align 8
  %151 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %6, align 8
  %152 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %151, i32 0, i32 6
  %153 = load i32*, i32** %152, align 8
  %154 = load i32, i32* @HOST_CMDS_BUF_LEN, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %153, i64 %155
  %157 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %6, align 8
  %158 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %157, i32 0, i32 13
  store i32* %156, i32** %158, align 8
  %159 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %6, align 8
  %160 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* @HOST_CMDS_BUF_LEN, align 4
  %163 = add nsw i32 %161, %162
  %164 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %6, align 8
  %165 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %164, i32 0, i32 3
  store i32 %163, i32* %165, align 4
  %166 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %6, align 8
  %167 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %166, i32 0, i32 12
  store i64 0, i64* %167, align 8
  %168 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %6, align 8
  %169 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %168, i32 0, i32 11
  store i64 0, i64* %169, align 8
  %170 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %6, align 8
  %171 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %170, i32 0, i32 10
  %172 = load i32, i32* @rtsx_pci_card_detect, align 4
  %173 = call i32 @INIT_DELAYED_WORK(i32* %171, i32 %172)
  %174 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %6, align 8
  %175 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %174, i32 0, i32 9
  %176 = load i32, i32* @rtsx_pci_idle_work, align 4
  %177 = call i32 @INIT_DELAYED_WORK(i32* %175, i32 %176)
  %178 = load i32, i32* @msi_en, align 4
  %179 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %6, align 8
  %180 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %179, i32 0, i32 4
  store i32 %178, i32* %180, align 8
  %181 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %6, align 8
  %182 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %181, i32 0, i32 4
  %183 = load i32, i32* %182, align 8
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %194

185:                                              ; preds = %140
  %186 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %187 = call i32 @pci_enable_msi(%struct.pci_dev* %186)
  store i32 %187, i32* %10, align 4
  %188 = load i32, i32* %10, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %193

190:                                              ; preds = %185
  %191 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %6, align 8
  %192 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %191, i32 0, i32 4
  store i32 0, i32* %192, align 8
  br label %193

193:                                              ; preds = %190, %185
  br label %194

194:                                              ; preds = %193, %140
  %195 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %6, align 8
  %196 = call i32 @rtsx_pci_acquire_irq(%struct.rtsx_pcr* %195)
  store i32 %196, i32* %10, align 4
  %197 = load i32, i32* %10, align 4
  %198 = icmp slt i32 %197, 0
  br i1 %198, label %199, label %200

199:                                              ; preds = %194
  br label %259

200:                                              ; preds = %194
  %201 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %202 = call i32 @pci_set_master(%struct.pci_dev* %201)
  %203 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %6, align 8
  %204 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %203, i32 0, i32 8
  %205 = load i32, i32* %204, align 8
  %206 = call i32 @synchronize_irq(i32 %205)
  %207 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %6, align 8
  %208 = call i32 @rtsx_pci_init_chip(%struct.rtsx_pcr* %207)
  store i32 %208, i32* %10, align 4
  %209 = load i32, i32* %10, align 4
  %210 = icmp slt i32 %209, 0
  br i1 %210, label %211, label %212

211:                                              ; preds = %200
  br label %252

212:                                              ; preds = %200
  store i32 0, i32* %11, align 4
  br label %213

213:                                              ; preds = %231, %212
  %214 = load i32, i32* %11, align 4
  %215 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rtsx_pcr_cells, align 8
  %216 = call i32 @ARRAY_SIZE(%struct.TYPE_4__* %215)
  %217 = icmp slt i32 %214, %216
  br i1 %217, label %218, label %234

218:                                              ; preds = %213
  %219 = load %struct.pcr_handle*, %struct.pcr_handle** %7, align 8
  %220 = bitcast %struct.pcr_handle* %219 to %struct.rtsx_pcr*
  %221 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rtsx_pcr_cells, align 8
  %222 = load i32, i32* %11, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %221, i64 %223
  %225 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %224, i32 0, i32 1
  store %struct.rtsx_pcr* %220, %struct.rtsx_pcr** %225, align 8
  %226 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rtsx_pcr_cells, align 8
  %227 = load i32, i32* %11, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %226, i64 %228
  %230 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %229, i32 0, i32 0
  store i32 96, i32* %230, align 8
  br label %231

231:                                              ; preds = %218
  %232 = load i32, i32* %11, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %11, align 4
  br label %213

234:                                              ; preds = %213
  %235 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %236 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %235, i32 0, i32 0
  %237 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %6, align 8
  %238 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rtsx_pcr_cells, align 8
  %241 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rtsx_pcr_cells, align 8
  %242 = call i32 @ARRAY_SIZE(%struct.TYPE_4__* %241)
  %243 = call i32 @mfd_add_devices(i32* %236, i32 %239, %struct.TYPE_4__* %240, i32 %242, i32* null, i32 0, i32* null)
  store i32 %243, i32* %10, align 4
  %244 = load i32, i32* %10, align 4
  %245 = icmp slt i32 %244, 0
  br i1 %245, label %246, label %247

246:                                              ; preds = %234
  br label %252

247:                                              ; preds = %234
  %248 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %6, align 8
  %249 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %248, i32 0, i32 9
  %250 = call i32 @msecs_to_jiffies(i32 200)
  %251 = call i32 @schedule_delayed_work(i32* %249, i32 %250)
  store i32 0, i32* %3, align 4
  br label %301

252:                                              ; preds = %246, %211
  %253 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %6, align 8
  %254 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %253, i32 0, i32 8
  %255 = load i32, i32* %254, align 8
  %256 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %6, align 8
  %257 = bitcast %struct.rtsx_pcr* %256 to i8*
  %258 = call i32 @free_irq(i32 %255, i8* %257)
  br label %259

259:                                              ; preds = %252, %199
  %260 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %6, align 8
  %261 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %260, i32 0, i32 4
  %262 = load i32, i32* %261, align 8
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %269

264:                                              ; preds = %259
  %265 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %6, align 8
  %266 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %265, i32 0, i32 7
  %267 = load %struct.pci_dev*, %struct.pci_dev** %266, align 8
  %268 = call i32 @pci_disable_msi(%struct.pci_dev* %267)
  br label %269

269:                                              ; preds = %264, %259
  %270 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %6, align 8
  %271 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %270, i32 0, i32 7
  %272 = load %struct.pci_dev*, %struct.pci_dev** %271, align 8
  %273 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %272, i32 0, i32 0
  %274 = load i32, i32* @RTSX_RESV_BUF_LEN, align 4
  %275 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %6, align 8
  %276 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %275, i32 0, i32 6
  %277 = load i32*, i32** %276, align 8
  %278 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %6, align 8
  %279 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %278, i32 0, i32 1
  %280 = load i32, i32* %279, align 4
  %281 = call i32 @dma_free_coherent(i32* %273, i32 %274, i32* %277, i32 %280)
  br label %282

282:                                              ; preds = %269, %137
  %283 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %6, align 8
  %284 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %283, i32 0, i32 5
  %285 = load i32, i32* %284, align 4
  %286 = call i32 @iounmap(i32 %285)
  br label %287

287:                                              ; preds = %282, %120, %90
  %288 = load %struct.pcr_handle*, %struct.pcr_handle** %7, align 8
  %289 = bitcast %struct.pcr_handle* %288 to %struct.rtsx_pcr*
  %290 = call i32 @kfree(%struct.rtsx_pcr* %289)
  br label %291

291:                                              ; preds = %287, %65
  %292 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %6, align 8
  %293 = call i32 @kfree(%struct.rtsx_pcr* %292)
  br label %294

294:                                              ; preds = %291, %56
  %295 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %296 = call i32 @pci_release_regions(%struct.pci_dev* %295)
  br label %297

297:                                              ; preds = %294, %50
  %298 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %299 = call i32 @pci_disable_device(%struct.pci_dev* %298)
  %300 = load i32, i32* %10, align 4
  store i32 %300, i32* %3, align 4
  br label %301

301:                                              ; preds = %297, %247, %42, %35
  %302 = load i32, i32* %3, align 4
  ret i32 %302
}

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @pci_name(%struct.pci_dev*) #1

declare dso_local i32 @pci_set_dma_mask(%struct.pci_dev*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @pci_request_regions(%struct.pci_dev*, i32) #1

declare dso_local %struct.rtsx_pcr* @kzalloc(i32, i32) #1

declare dso_local i32 @idr_preload(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @idr_alloc(i32*, %struct.rtsx_pcr*, i32, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @idr_preload_end(...) #1

declare dso_local i32 @dev_set_drvdata(i32*, %struct.rtsx_pcr*) #1

declare dso_local i64 @CHK_PCI_PID(%struct.rtsx_pcr*, i32) #1

declare dso_local i32 @pci_resource_len(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i32 @ioremap_nocache(i32, i32) #1

declare dso_local i32* @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @pci_enable_msi(%struct.pci_dev*) #1

declare dso_local i32 @rtsx_pci_acquire_irq(%struct.rtsx_pcr*) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i32 @synchronize_irq(i32) #1

declare dso_local i32 @rtsx_pci_init_chip(%struct.rtsx_pcr*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_4__*) #1

declare dso_local i32 @mfd_add_devices(i32*, i32, %struct.TYPE_4__*, i32, i32*, i32, i32*) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @free_irq(i32, i8*) #1

declare dso_local i32 @pci_disable_msi(%struct.pci_dev*) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @kfree(%struct.rtsx_pcr*) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
