; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/tw686x/extr_tw686x-core.c_tw686x_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/tw686x/extr_tw686x-core.c_tw686x_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i32, i32 }
%struct.pci_device_id = type { i32 }
%struct.tw686x_dev = type { %struct.tw686x_dev*, %struct.tw686x_dev*, i32, %struct.TYPE_2__, i32, i32, i32, %struct.pci_dev*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@dma_mode = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"tw%04X\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"%s: PCI %s, IRQ %d, MMIO 0x%lx (%s mode)\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"32-bit PCI DMA not supported\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"unable to request PCI region\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"unable to remap PCI region\0A\00", align 1
@SYS_SOFT_RST = common dso_local global i32 0, align 4
@SRST = common dso_local global i32* null, align 8
@DMA_CMD = common dso_local global i32 0, align 4
@DMA_CHANNEL_ENABLE = common dso_local global i32 0, align 4
@DMA_CONFIG = common dso_local global i32 0, align 4
@DMA_CHANNEL_TIMEOUT = common dso_local global i32 0, align 4
@DMA_TIMER_INTERVAL = common dso_local global i32 0, align 4
@dma_interval = common dso_local global i32 0, align 4
@tw686x_irq = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [29 x i8] c"unable to request interrupt\0A\00", align 1
@tw686x_dma_delay = common dso_local global i32 0, align 4
@tw686x_dev_release = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [22 x i8] c"can't register video\0A\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"can't register audio\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @tw686x_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tw686x_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.tw686x_dev*, align 8
  %7 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.tw686x_dev* @kzalloc(i32 56, i32 %8)
  store %struct.tw686x_dev* %9, %struct.tw686x_dev** %6, align 8
  %10 = load %struct.tw686x_dev*, %struct.tw686x_dev** %6, align 8
  %11 = icmp ne %struct.tw686x_dev* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %241

15:                                               ; preds = %2
  %16 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %17 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.tw686x_dev*, %struct.tw686x_dev** %6, align 8
  %20 = getelementptr inbounds %struct.tw686x_dev, %struct.tw686x_dev* %19, i32 0, i32 9
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @dma_mode, align 4
  %22 = load %struct.tw686x_dev*, %struct.tw686x_dev** %6, align 8
  %23 = getelementptr inbounds %struct.tw686x_dev, %struct.tw686x_dev* %22, i32 0, i32 8
  store i32 %21, i32* %23, align 8
  %24 = load %struct.tw686x_dev*, %struct.tw686x_dev** %6, align 8
  %25 = getelementptr inbounds %struct.tw686x_dev, %struct.tw686x_dev* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %28 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @sprintf(i32 %26, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load %struct.tw686x_dev*, %struct.tw686x_dev** %6, align 8
  %32 = call i32 @max_channels(%struct.tw686x_dev* %31)
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call i8* @kcalloc(i32 %32, i32 56, i32 %33)
  %35 = bitcast i8* %34 to %struct.tw686x_dev*
  %36 = load %struct.tw686x_dev*, %struct.tw686x_dev** %6, align 8
  %37 = getelementptr inbounds %struct.tw686x_dev, %struct.tw686x_dev* %36, i32 0, i32 0
  store %struct.tw686x_dev* %35, %struct.tw686x_dev** %37, align 8
  %38 = load %struct.tw686x_dev*, %struct.tw686x_dev** %6, align 8
  %39 = getelementptr inbounds %struct.tw686x_dev, %struct.tw686x_dev* %38, i32 0, i32 0
  %40 = load %struct.tw686x_dev*, %struct.tw686x_dev** %39, align 8
  %41 = icmp ne %struct.tw686x_dev* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %15
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %7, align 4
  br label %237

45:                                               ; preds = %15
  %46 = load %struct.tw686x_dev*, %struct.tw686x_dev** %6, align 8
  %47 = call i32 @max_channels(%struct.tw686x_dev* %46)
  %48 = load i32, i32* @GFP_KERNEL, align 4
  %49 = call i8* @kcalloc(i32 %47, i32 56, i32 %48)
  %50 = bitcast i8* %49 to %struct.tw686x_dev*
  %51 = load %struct.tw686x_dev*, %struct.tw686x_dev** %6, align 8
  %52 = getelementptr inbounds %struct.tw686x_dev, %struct.tw686x_dev* %51, i32 0, i32 1
  store %struct.tw686x_dev* %50, %struct.tw686x_dev** %52, align 8
  %53 = load %struct.tw686x_dev*, %struct.tw686x_dev** %6, align 8
  %54 = getelementptr inbounds %struct.tw686x_dev, %struct.tw686x_dev* %53, i32 0, i32 1
  %55 = load %struct.tw686x_dev*, %struct.tw686x_dev** %54, align 8
  %56 = icmp ne %struct.tw686x_dev* %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %45
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %7, align 4
  br label %232

60:                                               ; preds = %45
  %61 = load %struct.tw686x_dev*, %struct.tw686x_dev** %6, align 8
  %62 = getelementptr inbounds %struct.tw686x_dev, %struct.tw686x_dev* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %65 = call i32 @pci_name(%struct.pci_dev* %64)
  %66 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %67 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %70 = call i64 @pci_resource_start(%struct.pci_dev* %69, i32 0)
  %71 = load i32, i32* @dma_mode, align 4
  %72 = call i32 @dma_mode_name(i32 %71)
  %73 = call i32 @pr_info(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %63, i32 %65, i32 %68, i64 %70, i32 %72)
  %74 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %75 = load %struct.tw686x_dev*, %struct.tw686x_dev** %6, align 8
  %76 = getelementptr inbounds %struct.tw686x_dev, %struct.tw686x_dev* %75, i32 0, i32 7
  store %struct.pci_dev* %74, %struct.pci_dev** %76, align 8
  %77 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %78 = call i64 @pci_enable_device(%struct.pci_dev* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %60
  %81 = load i32, i32* @EIO, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %7, align 4
  br label %227

83:                                               ; preds = %60
  %84 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %85 = call i32 @pci_set_master(%struct.pci_dev* %84)
  %86 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %87 = call i32 @DMA_BIT_MASK(i32 32)
  %88 = call i32 @pci_set_dma_mask(%struct.pci_dev* %86, i32 %87)
  store i32 %88, i32* %7, align 4
  %89 = load i32, i32* %7, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %83
  %92 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %93 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %92, i32 0, i32 2
  %94 = call i32 @dev_err(i32* %93, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %95 = load i32, i32* @EIO, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %7, align 4
  br label %224

97:                                               ; preds = %83
  %98 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %99 = load %struct.tw686x_dev*, %struct.tw686x_dev** %6, align 8
  %100 = getelementptr inbounds %struct.tw686x_dev, %struct.tw686x_dev* %99, i32 0, i32 5
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @pci_request_regions(%struct.pci_dev* %98, i32 %101)
  store i32 %102, i32* %7, align 4
  %103 = load i32, i32* %7, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %97
  %106 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %107 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %106, i32 0, i32 2
  %108 = call i32 @dev_err(i32* %107, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  br label %224

109:                                              ; preds = %97
  %110 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %111 = call i32 @pci_ioremap_bar(%struct.pci_dev* %110, i32 0)
  %112 = load %struct.tw686x_dev*, %struct.tw686x_dev** %6, align 8
  %113 = getelementptr inbounds %struct.tw686x_dev, %struct.tw686x_dev* %112, i32 0, i32 2
  store i32 %111, i32* %113, align 8
  %114 = load %struct.tw686x_dev*, %struct.tw686x_dev** %6, align 8
  %115 = getelementptr inbounds %struct.tw686x_dev, %struct.tw686x_dev* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %124, label %118

118:                                              ; preds = %109
  %119 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %120 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %119, i32 0, i32 2
  %121 = call i32 @dev_err(i32* %120, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %122 = load i32, i32* @ENOMEM, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %7, align 4
  br label %221

124:                                              ; preds = %109
  %125 = load %struct.tw686x_dev*, %struct.tw686x_dev** %6, align 8
  %126 = load i32, i32* @SYS_SOFT_RST, align 4
  %127 = call i32 @reg_write(%struct.tw686x_dev* %125, i32 %126, i32 15)
  %128 = call i32 @mdelay(i32 1)
  %129 = load %struct.tw686x_dev*, %struct.tw686x_dev** %6, align 8
  %130 = load i32*, i32** @SRST, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 0
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @reg_write(%struct.tw686x_dev* %129, i32 %132, i32 63)
  %134 = load %struct.tw686x_dev*, %struct.tw686x_dev** %6, align 8
  %135 = call i32 @max_channels(%struct.tw686x_dev* %134)
  %136 = icmp sgt i32 %135, 4
  br i1 %136, label %137, label %143

137:                                              ; preds = %124
  %138 = load %struct.tw686x_dev*, %struct.tw686x_dev** %6, align 8
  %139 = load i32*, i32** @SRST, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 1
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @reg_write(%struct.tw686x_dev* %138, i32 %141, i32 63)
  br label %143

143:                                              ; preds = %137, %124
  %144 = load %struct.tw686x_dev*, %struct.tw686x_dev** %6, align 8
  %145 = load i32, i32* @DMA_CMD, align 4
  %146 = call i32 @reg_write(%struct.tw686x_dev* %144, i32 %145, i32 0)
  %147 = load %struct.tw686x_dev*, %struct.tw686x_dev** %6, align 8
  %148 = load i32, i32* @DMA_CHANNEL_ENABLE, align 4
  %149 = call i32 @reg_write(%struct.tw686x_dev* %147, i32 %148, i32 0)
  %150 = load %struct.tw686x_dev*, %struct.tw686x_dev** %6, align 8
  %151 = load i32, i32* @DMA_CONFIG, align 4
  %152 = call i32 @reg_write(%struct.tw686x_dev* %150, i32 %151, i32 -252)
  %153 = load %struct.tw686x_dev*, %struct.tw686x_dev** %6, align 8
  %154 = load i32, i32* @DMA_CHANNEL_TIMEOUT, align 4
  %155 = call i32 @reg_write(%struct.tw686x_dev* %153, i32 %154, i32 336364932)
  %156 = load %struct.tw686x_dev*, %struct.tw686x_dev** %6, align 8
  %157 = load i32, i32* @DMA_TIMER_INTERVAL, align 4
  %158 = load i32, i32* @dma_interval, align 4
  %159 = call i32 @reg_write(%struct.tw686x_dev* %156, i32 %157, i32 %158)
  %160 = load %struct.tw686x_dev*, %struct.tw686x_dev** %6, align 8
  %161 = getelementptr inbounds %struct.tw686x_dev, %struct.tw686x_dev* %160, i32 0, i32 6
  %162 = call i32 @spin_lock_init(i32* %161)
  %163 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %164 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* @tw686x_irq, align 4
  %167 = load i32, i32* @IRQF_SHARED, align 4
  %168 = load %struct.tw686x_dev*, %struct.tw686x_dev** %6, align 8
  %169 = getelementptr inbounds %struct.tw686x_dev, %struct.tw686x_dev* %168, i32 0, i32 5
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.tw686x_dev*, %struct.tw686x_dev** %6, align 8
  %172 = call i32 @request_irq(i32 %165, i32 %166, i32 %167, i32 %170, %struct.tw686x_dev* %171)
  store i32 %172, i32* %7, align 4
  %173 = load i32, i32* %7, align 4
  %174 = icmp slt i32 %173, 0
  br i1 %174, label %175, label %179

175:                                              ; preds = %143
  %176 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %177 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %176, i32 0, i32 2
  %178 = call i32 @dev_err(i32* %177, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  br label %215

179:                                              ; preds = %143
  %180 = load %struct.tw686x_dev*, %struct.tw686x_dev** %6, align 8
  %181 = getelementptr inbounds %struct.tw686x_dev, %struct.tw686x_dev* %180, i32 0, i32 4
  %182 = load i32, i32* @tw686x_dma_delay, align 4
  %183 = call i32 @timer_setup(i32* %181, i32 %182, i32 0)
  %184 = load i32, i32* @tw686x_dev_release, align 4
  %185 = load %struct.tw686x_dev*, %struct.tw686x_dev** %6, align 8
  %186 = getelementptr inbounds %struct.tw686x_dev, %struct.tw686x_dev* %185, i32 0, i32 3
  %187 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %186, i32 0, i32 0
  store i32 %184, i32* %187, align 4
  %188 = load %struct.tw686x_dev*, %struct.tw686x_dev** %6, align 8
  %189 = call i32 @tw686x_video_init(%struct.tw686x_dev* %188)
  store i32 %189, i32* %7, align 4
  %190 = load i32, i32* %7, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %196

192:                                              ; preds = %179
  %193 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %194 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %193, i32 0, i32 2
  %195 = call i32 @dev_err(i32* %194, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  br label %209

196:                                              ; preds = %179
  %197 = load %struct.tw686x_dev*, %struct.tw686x_dev** %6, align 8
  %198 = call i32 @tw686x_audio_init(%struct.tw686x_dev* %197)
  store i32 %198, i32* %7, align 4
  %199 = load i32, i32* %7, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %205

201:                                              ; preds = %196
  %202 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %203 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %202, i32 0, i32 2
  %204 = call i32 @dev_warn(i32* %203, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0))
  br label %205

205:                                              ; preds = %201, %196
  %206 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %207 = load %struct.tw686x_dev*, %struct.tw686x_dev** %6, align 8
  %208 = call i32 @pci_set_drvdata(%struct.pci_dev* %206, %struct.tw686x_dev* %207)
  store i32 0, i32* %3, align 4
  br label %241

209:                                              ; preds = %192
  %210 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %211 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = load %struct.tw686x_dev*, %struct.tw686x_dev** %6, align 8
  %214 = call i32 @free_irq(i32 %212, %struct.tw686x_dev* %213)
  br label %215

215:                                              ; preds = %209, %175
  %216 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %217 = load %struct.tw686x_dev*, %struct.tw686x_dev** %6, align 8
  %218 = getelementptr inbounds %struct.tw686x_dev, %struct.tw686x_dev* %217, i32 0, i32 2
  %219 = load i32, i32* %218, align 8
  %220 = call i32 @pci_iounmap(%struct.pci_dev* %216, i32 %219)
  br label %221

221:                                              ; preds = %215, %118
  %222 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %223 = call i32 @pci_release_regions(%struct.pci_dev* %222)
  br label %224

224:                                              ; preds = %221, %105, %91
  %225 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %226 = call i32 @pci_disable_device(%struct.pci_dev* %225)
  br label %227

227:                                              ; preds = %224, %80
  %228 = load %struct.tw686x_dev*, %struct.tw686x_dev** %6, align 8
  %229 = getelementptr inbounds %struct.tw686x_dev, %struct.tw686x_dev* %228, i32 0, i32 1
  %230 = load %struct.tw686x_dev*, %struct.tw686x_dev** %229, align 8
  %231 = call i32 @kfree(%struct.tw686x_dev* %230)
  br label %232

232:                                              ; preds = %227, %57
  %233 = load %struct.tw686x_dev*, %struct.tw686x_dev** %6, align 8
  %234 = getelementptr inbounds %struct.tw686x_dev, %struct.tw686x_dev* %233, i32 0, i32 0
  %235 = load %struct.tw686x_dev*, %struct.tw686x_dev** %234, align 8
  %236 = call i32 @kfree(%struct.tw686x_dev* %235)
  br label %237

237:                                              ; preds = %232, %42
  %238 = load %struct.tw686x_dev*, %struct.tw686x_dev** %6, align 8
  %239 = call i32 @kfree(%struct.tw686x_dev* %238)
  %240 = load i32, i32* %7, align 4
  store i32 %240, i32* %3, align 4
  br label %241

241:                                              ; preds = %237, %205, %12
  %242 = load i32, i32* %3, align 4
  ret i32 %242
}

declare dso_local %struct.tw686x_dev* @kzalloc(i32, i32) #1

declare dso_local i32 @sprintf(i32, i8*, i32) #1

declare dso_local i8* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @max_channels(%struct.tw686x_dev*) #1

declare dso_local i32 @pr_info(i8*, i32, i32, i32, i64, i32) #1

declare dso_local i32 @pci_name(%struct.pci_dev*) #1

declare dso_local i64 @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i32 @dma_mode_name(i32) #1

declare dso_local i64 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i32 @pci_set_dma_mask(%struct.pci_dev*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @pci_request_regions(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_ioremap_bar(%struct.pci_dev*, i32) #1

declare dso_local i32 @reg_write(%struct.tw686x_dev*, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.tw686x_dev*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @tw686x_video_init(%struct.tw686x_dev*) #1

declare dso_local i32 @tw686x_audio_init(%struct.tw686x_dev*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.tw686x_dev*) #1

declare dso_local i32 @free_irq(i32, %struct.tw686x_dev*) #1

declare dso_local i32 @pci_iounmap(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

declare dso_local i32 @kfree(%struct.tw686x_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
