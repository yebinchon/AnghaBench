; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mic/host/extr_mic_main.c_mic_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mic/host/extr_mic_main.c_mic_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.pci_device_id = type { i32 }
%struct.mic_device = type { i32, %struct.TYPE_10__, %struct.TYPE_9__, i32, %struct.TYPE_8__*, %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_10__ = type { i32, i8*, i8* }
%struct.TYPE_9__ = type { i32, i8*, i8* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 (%struct.mic_device*)* }
%struct.TYPE_6__ = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"mdev kmalloc failed rc %d\0A\00", align 1
@g_mic_ida = common dso_local global i32 0, align 4
@MIC_MAX_NUM_DEVS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"ida_simple_get failed rc %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"failed to enable pci device.\0A\00", align 1
@mic_driver_name = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"failed to get pci regions.\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"Cannot set DMA mask\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"Cannot remap MMIO BAR\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [27 x i8] c"Cannot remap Aperture BAR\0A\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"mic_setup_interrupts failed %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"smpt_init failed %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"mic_dp_init failed rc %d\0A\00", align 1
@cosm_hw_ops = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [30 x i8] c"cosm_add_device failed rc %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"Probe failed rc %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @mic_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mic_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mic_device*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.mic_device* @kzalloc(i32 88, i32 %8)
  store %struct.mic_device* %9, %struct.mic_device** %7, align 8
  %10 = load %struct.mic_device*, %struct.mic_device** %7, align 8
  %11 = icmp ne %struct.mic_device* %10, null
  br i1 %11, label %19, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %6, align 4
  %15 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %16 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %15, i32 0, i32 0
  %17 = load i32, i32* %6, align 4
  %18 = call i32 (i32*, i8*, ...) @dev_err(i32* %16, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %17)
  br label %263

19:                                               ; preds = %2
  %20 = load i32, i32* @MIC_MAX_NUM_DEVS, align 4
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call i32 @ida_simple_get(i32* @g_mic_ida, i32 0, i32 %20, i32 %21)
  %23 = load %struct.mic_device*, %struct.mic_device** %7, align 8
  %24 = getelementptr inbounds %struct.mic_device, %struct.mic_device* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load %struct.mic_device*, %struct.mic_device** %7, align 8
  %26 = getelementptr inbounds %struct.mic_device, %struct.mic_device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %19
  %30 = load %struct.mic_device*, %struct.mic_device** %7, align 8
  %31 = getelementptr inbounds %struct.mic_device, %struct.mic_device* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %6, align 4
  %33 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %34 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %33, i32 0, i32 0
  %35 = load i32, i32* %6, align 4
  %36 = call i32 (i32*, i8*, ...) @dev_err(i32* %34, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  br label %260

37:                                               ; preds = %19
  %38 = load %struct.mic_device*, %struct.mic_device** %7, align 8
  %39 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %40 = call i32 @mic_device_init(%struct.mic_device* %38, %struct.pci_dev* %39)
  %41 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %42 = call i32 @pci_enable_device(%struct.pci_dev* %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %37
  %46 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %47 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %46, i32 0, i32 0
  %48 = call i32 (i32*, i8*, ...) @dev_err(i32* %47, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %255

49:                                               ; preds = %37
  %50 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %51 = call i32 @pci_set_master(%struct.pci_dev* %50)
  %52 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %53 = load i32, i32* @mic_driver_name, align 4
  %54 = call i32 @pci_request_regions(%struct.pci_dev* %52, i32 %53)
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %49
  %58 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %59 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %58, i32 0, i32 0
  %60 = call i32 (i32*, i8*, ...) @dev_err(i32* %59, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  br label %252

61:                                               ; preds = %49
  %62 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %63 = call i32 @DMA_BIT_MASK(i32 64)
  %64 = call i32 @pci_set_dma_mask(%struct.pci_dev* %62, i32 %63)
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %6, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %61
  %68 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %69 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %68, i32 0, i32 0
  %70 = call i32 (i32*, i8*, ...) @dev_err(i32* %69, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  br label %249

71:                                               ; preds = %61
  %72 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %73 = load %struct.mic_device*, %struct.mic_device** %7, align 8
  %74 = getelementptr inbounds %struct.mic_device, %struct.mic_device* %73, i32 0, i32 6
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i8* @pci_resource_start(%struct.pci_dev* %72, i32 %77)
  %79 = load %struct.mic_device*, %struct.mic_device** %7, align 8
  %80 = getelementptr inbounds %struct.mic_device, %struct.mic_device* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 2
  store i8* %78, i8** %81, align 8
  %82 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %83 = load %struct.mic_device*, %struct.mic_device** %7, align 8
  %84 = getelementptr inbounds %struct.mic_device, %struct.mic_device* %83, i32 0, i32 6
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i8* @pci_resource_len(%struct.pci_dev* %82, i32 %87)
  %89 = load %struct.mic_device*, %struct.mic_device** %7, align 8
  %90 = getelementptr inbounds %struct.mic_device, %struct.mic_device* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 1
  store i8* %88, i8** %91, align 8
  %92 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %93 = load %struct.mic_device*, %struct.mic_device** %7, align 8
  %94 = getelementptr inbounds %struct.mic_device, %struct.mic_device* %93, i32 0, i32 6
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @pci_ioremap_bar(%struct.pci_dev* %92, i32 %97)
  %99 = load %struct.mic_device*, %struct.mic_device** %7, align 8
  %100 = getelementptr inbounds %struct.mic_device, %struct.mic_device* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 0
  store i32 %98, i32* %101, align 8
  %102 = load %struct.mic_device*, %struct.mic_device** %7, align 8
  %103 = getelementptr inbounds %struct.mic_device, %struct.mic_device* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %113, label %107

107:                                              ; preds = %71
  %108 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %109 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %108, i32 0, i32 0
  %110 = call i32 (i32*, i8*, ...) @dev_err(i32* %109, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %111 = load i32, i32* @EIO, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %6, align 4
  br label %249

113:                                              ; preds = %71
  %114 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %115 = load %struct.mic_device*, %struct.mic_device** %7, align 8
  %116 = getelementptr inbounds %struct.mic_device, %struct.mic_device* %115, i32 0, i32 6
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i8* @pci_resource_start(%struct.pci_dev* %114, i32 %119)
  %121 = load %struct.mic_device*, %struct.mic_device** %7, align 8
  %122 = getelementptr inbounds %struct.mic_device, %struct.mic_device* %121, i32 0, i32 2
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 2
  store i8* %120, i8** %123, align 8
  %124 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %125 = load %struct.mic_device*, %struct.mic_device** %7, align 8
  %126 = getelementptr inbounds %struct.mic_device, %struct.mic_device* %125, i32 0, i32 6
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = call i8* @pci_resource_len(%struct.pci_dev* %124, i32 %129)
  %131 = load %struct.mic_device*, %struct.mic_device** %7, align 8
  %132 = getelementptr inbounds %struct.mic_device, %struct.mic_device* %131, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 1
  store i8* %130, i8** %133, align 8
  %134 = load %struct.mic_device*, %struct.mic_device** %7, align 8
  %135 = getelementptr inbounds %struct.mic_device, %struct.mic_device* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 2
  %137 = load i8*, i8** %136, align 8
  %138 = load %struct.mic_device*, %struct.mic_device** %7, align 8
  %139 = getelementptr inbounds %struct.mic_device, %struct.mic_device* %138, i32 0, i32 2
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 1
  %141 = load i8*, i8** %140, align 8
  %142 = call i32 @ioremap_wc(i8* %137, i8* %141)
  %143 = load %struct.mic_device*, %struct.mic_device** %7, align 8
  %144 = getelementptr inbounds %struct.mic_device, %struct.mic_device* %143, i32 0, i32 2
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 0
  store i32 %142, i32* %145, align 8
  %146 = load %struct.mic_device*, %struct.mic_device** %7, align 8
  %147 = getelementptr inbounds %struct.mic_device, %struct.mic_device* %146, i32 0, i32 2
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %157, label %151

151:                                              ; preds = %113
  %152 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %153 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %152, i32 0, i32 0
  %154 = call i32 (i32*, i8*, ...) @dev_err(i32* %153, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0))
  %155 = load i32, i32* @EIO, align 4
  %156 = sub nsw i32 0, %155
  store i32 %156, i32* %6, align 4
  br label %243

157:                                              ; preds = %113
  %158 = load %struct.mic_device*, %struct.mic_device** %7, align 8
  %159 = getelementptr inbounds %struct.mic_device, %struct.mic_device* %158, i32 0, i32 5
  %160 = load %struct.TYPE_7__*, %struct.TYPE_7__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 0
  %162 = load i32 (%struct.mic_device*)*, i32 (%struct.mic_device*)** %161, align 8
  %163 = load %struct.mic_device*, %struct.mic_device** %7, align 8
  %164 = call i32 %162(%struct.mic_device* %163)
  %165 = load %struct.mic_device*, %struct.mic_device** %7, align 8
  %166 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %167 = call i32 @mic_setup_interrupts(%struct.mic_device* %165, %struct.pci_dev* %166)
  store i32 %167, i32* %6, align 4
  %168 = load i32, i32* %6, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %175

170:                                              ; preds = %157
  %171 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %172 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %171, i32 0, i32 0
  %173 = load i32, i32* %6, align 4
  %174 = call i32 (i32*, i8*, ...) @dev_err(i32* %172, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i32 %173)
  br label %237

175:                                              ; preds = %157
  %176 = load %struct.mic_device*, %struct.mic_device** %7, align 8
  %177 = call i32 @mic_smpt_init(%struct.mic_device* %176)
  store i32 %177, i32* %6, align 4
  %178 = load i32, i32* %6, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %185

180:                                              ; preds = %175
  %181 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %182 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %181, i32 0, i32 0
  %183 = load i32, i32* %6, align 4
  %184 = call i32 (i32*, i8*, ...) @dev_err(i32* %182, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i32 %183)
  br label %233

185:                                              ; preds = %175
  %186 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %187 = load %struct.mic_device*, %struct.mic_device** %7, align 8
  %188 = call i32 @pci_set_drvdata(%struct.pci_dev* %186, %struct.mic_device* %187)
  %189 = load %struct.mic_device*, %struct.mic_device** %7, align 8
  %190 = call i32 @mic_dp_init(%struct.mic_device* %189)
  store i32 %190, i32* %6, align 4
  %191 = load i32, i32* %6, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %198

193:                                              ; preds = %185
  %194 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %195 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %194, i32 0, i32 0
  %196 = load i32, i32* %6, align 4
  %197 = call i32 (i32*, i8*, ...) @dev_err(i32* %195, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0), i32 %196)
  br label %230

198:                                              ; preds = %185
  %199 = load %struct.mic_device*, %struct.mic_device** %7, align 8
  %200 = call i32 @mic_bootparam_init(%struct.mic_device* %199)
  %201 = load %struct.mic_device*, %struct.mic_device** %7, align 8
  %202 = call i32 @mic_create_debug_dir(%struct.mic_device* %201)
  %203 = load %struct.mic_device*, %struct.mic_device** %7, align 8
  %204 = getelementptr inbounds %struct.mic_device, %struct.mic_device* %203, i32 0, i32 4
  %205 = load %struct.TYPE_8__*, %struct.TYPE_8__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %205, i32 0, i32 0
  %207 = call i32 @cosm_register_device(i32* %206, i32* @cosm_hw_ops)
  %208 = load %struct.mic_device*, %struct.mic_device** %7, align 8
  %209 = getelementptr inbounds %struct.mic_device, %struct.mic_device* %208, i32 0, i32 3
  store i32 %207, i32* %209, align 8
  %210 = load %struct.mic_device*, %struct.mic_device** %7, align 8
  %211 = getelementptr inbounds %struct.mic_device, %struct.mic_device* %210, i32 0, i32 3
  %212 = load i32, i32* %211, align 8
  %213 = call i64 @IS_ERR(i32 %212)
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %224

215:                                              ; preds = %198
  %216 = load %struct.mic_device*, %struct.mic_device** %7, align 8
  %217 = getelementptr inbounds %struct.mic_device, %struct.mic_device* %216, i32 0, i32 3
  %218 = load i32, i32* %217, align 8
  %219 = call i32 @PTR_ERR(i32 %218)
  store i32 %219, i32* %6, align 4
  %220 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %221 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %220, i32 0, i32 0
  %222 = load i32, i32* %6, align 4
  %223 = call i32 (i32*, i8*, ...) @dev_err(i32* %221, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0), i32 %222)
  br label %225

224:                                              ; preds = %198
  store i32 0, i32* %3, align 4
  br label %269

225:                                              ; preds = %215
  %226 = load %struct.mic_device*, %struct.mic_device** %7, align 8
  %227 = call i32 @mic_delete_debug_dir(%struct.mic_device* %226)
  %228 = load %struct.mic_device*, %struct.mic_device** %7, align 8
  %229 = call i32 @mic_dp_uninit(%struct.mic_device* %228)
  br label %230

230:                                              ; preds = %225, %193
  %231 = load %struct.mic_device*, %struct.mic_device** %7, align 8
  %232 = call i32 @mic_smpt_uninit(%struct.mic_device* %231)
  br label %233

233:                                              ; preds = %230, %180
  %234 = load %struct.mic_device*, %struct.mic_device** %7, align 8
  %235 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %236 = call i32 @mic_free_interrupts(%struct.mic_device* %234, %struct.pci_dev* %235)
  br label %237

237:                                              ; preds = %233, %170
  %238 = load %struct.mic_device*, %struct.mic_device** %7, align 8
  %239 = getelementptr inbounds %struct.mic_device, %struct.mic_device* %238, i32 0, i32 2
  %240 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 8
  %242 = call i32 @iounmap(i32 %241)
  br label %243

243:                                              ; preds = %237, %151
  %244 = load %struct.mic_device*, %struct.mic_device** %7, align 8
  %245 = getelementptr inbounds %struct.mic_device, %struct.mic_device* %244, i32 0, i32 1
  %246 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 8
  %248 = call i32 @iounmap(i32 %247)
  br label %249

249:                                              ; preds = %243, %107, %67
  %250 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %251 = call i32 @pci_release_regions(%struct.pci_dev* %250)
  br label %252

252:                                              ; preds = %249, %57
  %253 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %254 = call i32 @pci_disable_device(%struct.pci_dev* %253)
  br label %255

255:                                              ; preds = %252, %45
  %256 = load %struct.mic_device*, %struct.mic_device** %7, align 8
  %257 = getelementptr inbounds %struct.mic_device, %struct.mic_device* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 8
  %259 = call i32 @ida_simple_remove(i32* @g_mic_ida, i32 %258)
  br label %260

260:                                              ; preds = %255, %29
  %261 = load %struct.mic_device*, %struct.mic_device** %7, align 8
  %262 = call i32 @kfree(%struct.mic_device* %261)
  br label %263

263:                                              ; preds = %260, %12
  %264 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %265 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %264, i32 0, i32 0
  %266 = load i32, i32* %6, align 4
  %267 = call i32 (i32*, i8*, ...) @dev_err(i32* %265, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0), i32 %266)
  %268 = load i32, i32* %6, align 4
  store i32 %268, i32* %3, align 4
  br label %269

269:                                              ; preds = %263, %224
  %270 = load i32, i32* %3, align 4
  ret i32 %270
}

declare dso_local %struct.mic_device* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @ida_simple_get(i32*, i32, i32, i32) #1

declare dso_local i32 @mic_device_init(%struct.mic_device*, %struct.pci_dev*) #1

declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i32 @pci_request_regions(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_set_dma_mask(%struct.pci_dev*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i8* @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i8* @pci_resource_len(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_ioremap_bar(%struct.pci_dev*, i32) #1

declare dso_local i32 @ioremap_wc(i8*, i8*) #1

declare dso_local i32 @mic_setup_interrupts(%struct.mic_device*, %struct.pci_dev*) #1

declare dso_local i32 @mic_smpt_init(%struct.mic_device*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.mic_device*) #1

declare dso_local i32 @mic_dp_init(%struct.mic_device*) #1

declare dso_local i32 @mic_bootparam_init(%struct.mic_device*) #1

declare dso_local i32 @mic_create_debug_dir(%struct.mic_device*) #1

declare dso_local i32 @cosm_register_device(i32*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @mic_delete_debug_dir(%struct.mic_device*) #1

declare dso_local i32 @mic_dp_uninit(%struct.mic_device*) #1

declare dso_local i32 @mic_smpt_uninit(%struct.mic_device*) #1

declare dso_local i32 @mic_free_interrupts(%struct.mic_device*, %struct.pci_dev*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

declare dso_local i32 @ida_simple_remove(i32*, i32) #1

declare dso_local i32 @kfree(%struct.mic_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
