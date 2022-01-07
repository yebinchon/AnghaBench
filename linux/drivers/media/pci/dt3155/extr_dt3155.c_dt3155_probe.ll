; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/dt3155/extr_dt3155.c_dt3155_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/dt3155/extr_dt3155.c_dt3155_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_6__*, i32*, i32* }
%struct.TYPE_6__ = type { i32, i32, i32*, i32*, i32, %struct.dt3155_priv*, i32*, i32*, i32, i32 }
%struct.dt3155_priv = type { i32, i32, i32, i32, %struct.pci_dev*, %struct.TYPE_5__, i32, i32, %struct.TYPE_6__, i32, i32, i32, i32 }
%struct.pci_dev = type { i32, i32 }
%struct.pci_device_id = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@dt3155_vdev = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@V4L2_STD_625_50 = common dso_local global i32 0, align 4
@VT_50HZ = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC = common dso_local global i32 0, align 4
@VB2_MMAP = common dso_local global i32 0, align 4
@VB2_DMABUF = common dso_local global i32 0, align 4
@VB2_READ = common dso_local global i32 0, align 4
@q_ops = common dso_local global i32 0, align 4
@vb2_dma_contig_memops = common dso_local global i32 0, align 4
@GFP_DMA32 = common dso_local global i32 0, align 4
@ACQ_MODE_EVEN = common dso_local global i32 0, align 4
@dt3155_irq_handler_even = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@DT3155_NAME = common dso_local global i32 0, align 4
@VFL_TYPE_GRABBER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"/dev/video%i is ready\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @dt3155_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dt3155_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dt3155_priv*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %8 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %9 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %8, i32 0, i32 1
  %10 = call i32 @DMA_BIT_MASK(i32 32)
  %11 = call i32 @dma_set_mask_and_coherent(i32* %9, i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @ENODEV, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %225

17:                                               ; preds = %2
  %18 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %19 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %18, i32 0, i32 1
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.dt3155_priv* @devm_kzalloc(i32* %19, i32 144, i32 %20)
  store %struct.dt3155_priv* %21, %struct.dt3155_priv** %7, align 8
  %22 = load %struct.dt3155_priv*, %struct.dt3155_priv** %7, align 8
  %23 = icmp ne %struct.dt3155_priv* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %17
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %225

27:                                               ; preds = %17
  %28 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %29 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %28, i32 0, i32 1
  %30 = load %struct.dt3155_priv*, %struct.dt3155_priv** %7, align 8
  %31 = getelementptr inbounds %struct.dt3155_priv, %struct.dt3155_priv* %30, i32 0, i32 2
  %32 = call i32 @v4l2_device_register(i32* %29, i32* %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %27
  %36 = load i32, i32* %6, align 4
  store i32 %36, i32* %3, align 4
  br label %225

37:                                               ; preds = %27
  %38 = load %struct.dt3155_priv*, %struct.dt3155_priv** %7, align 8
  %39 = getelementptr inbounds %struct.dt3155_priv, %struct.dt3155_priv* %38, i32 0, i32 5
  %40 = bitcast %struct.TYPE_5__* %39 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %40, i8* align 8 bitcast (%struct.TYPE_5__* @dt3155_vdev to i8*), i64 32, i1 false)
  %41 = load %struct.dt3155_priv*, %struct.dt3155_priv** %7, align 8
  %42 = getelementptr inbounds %struct.dt3155_priv, %struct.dt3155_priv* %41, i32 0, i32 2
  %43 = load %struct.dt3155_priv*, %struct.dt3155_priv** %7, align 8
  %44 = getelementptr inbounds %struct.dt3155_priv, %struct.dt3155_priv* %43, i32 0, i32 5
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 3
  store i32* %42, i32** %45, align 8
  %46 = load %struct.dt3155_priv*, %struct.dt3155_priv** %7, align 8
  %47 = getelementptr inbounds %struct.dt3155_priv, %struct.dt3155_priv* %46, i32 0, i32 5
  %48 = load %struct.dt3155_priv*, %struct.dt3155_priv** %7, align 8
  %49 = call i32 @video_set_drvdata(%struct.TYPE_5__* %47, %struct.dt3155_priv* %48)
  %50 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %51 = load %struct.dt3155_priv*, %struct.dt3155_priv** %7, align 8
  %52 = getelementptr inbounds %struct.dt3155_priv, %struct.dt3155_priv* %51, i32 0, i32 4
  store %struct.pci_dev* %50, %struct.pci_dev** %52, align 8
  %53 = load i32, i32* @V4L2_STD_625_50, align 4
  %54 = load %struct.dt3155_priv*, %struct.dt3155_priv** %7, align 8
  %55 = getelementptr inbounds %struct.dt3155_priv, %struct.dt3155_priv* %54, i32 0, i32 12
  store i32 %53, i32* %55, align 4
  %56 = load i32, i32* @VT_50HZ, align 4
  %57 = load %struct.dt3155_priv*, %struct.dt3155_priv** %7, align 8
  %58 = getelementptr inbounds %struct.dt3155_priv, %struct.dt3155_priv* %57, i32 0, i32 11
  store i32 %56, i32* %58, align 8
  %59 = load %struct.dt3155_priv*, %struct.dt3155_priv** %7, align 8
  %60 = getelementptr inbounds %struct.dt3155_priv, %struct.dt3155_priv* %59, i32 0, i32 0
  store i32 768, i32* %60, align 8
  %61 = load %struct.dt3155_priv*, %struct.dt3155_priv** %7, align 8
  %62 = getelementptr inbounds %struct.dt3155_priv, %struct.dt3155_priv* %61, i32 0, i32 1
  store i32 576, i32* %62, align 4
  %63 = load %struct.dt3155_priv*, %struct.dt3155_priv** %7, align 8
  %64 = getelementptr inbounds %struct.dt3155_priv, %struct.dt3155_priv* %63, i32 0, i32 10
  %65 = call i32 @INIT_LIST_HEAD(i32* %64)
  %66 = load %struct.dt3155_priv*, %struct.dt3155_priv** %7, align 8
  %67 = getelementptr inbounds %struct.dt3155_priv, %struct.dt3155_priv* %66, i32 0, i32 9
  %68 = call i32 @mutex_init(i32* %67)
  %69 = load %struct.dt3155_priv*, %struct.dt3155_priv** %7, align 8
  %70 = getelementptr inbounds %struct.dt3155_priv, %struct.dt3155_priv* %69, i32 0, i32 9
  %71 = load %struct.dt3155_priv*, %struct.dt3155_priv** %7, align 8
  %72 = getelementptr inbounds %struct.dt3155_priv, %struct.dt3155_priv* %71, i32 0, i32 5
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 2
  store i32* %70, i32** %73, align 8
  %74 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 4
  %75 = load %struct.dt3155_priv*, %struct.dt3155_priv** %7, align 8
  %76 = getelementptr inbounds %struct.dt3155_priv, %struct.dt3155_priv* %75, i32 0, i32 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 9
  store i32 %74, i32* %77, align 4
  %78 = load i32, i32* @V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC, align 4
  %79 = load %struct.dt3155_priv*, %struct.dt3155_priv** %7, align 8
  %80 = getelementptr inbounds %struct.dt3155_priv, %struct.dt3155_priv* %79, i32 0, i32 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 8
  store i32 %78, i32* %81, align 8
  %82 = load i32, i32* @VB2_MMAP, align 4
  %83 = load i32, i32* @VB2_DMABUF, align 4
  %84 = or i32 %82, %83
  %85 = load i32, i32* @VB2_READ, align 4
  %86 = or i32 %84, %85
  %87 = load %struct.dt3155_priv*, %struct.dt3155_priv** %7, align 8
  %88 = getelementptr inbounds %struct.dt3155_priv, %struct.dt3155_priv* %87, i32 0, i32 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  store i32 %86, i32* %89, align 8
  %90 = load %struct.dt3155_priv*, %struct.dt3155_priv** %7, align 8
  %91 = getelementptr inbounds %struct.dt3155_priv, %struct.dt3155_priv* %90, i32 0, i32 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 7
  store i32* @q_ops, i32** %92, align 8
  %93 = load %struct.dt3155_priv*, %struct.dt3155_priv** %7, align 8
  %94 = getelementptr inbounds %struct.dt3155_priv, %struct.dt3155_priv* %93, i32 0, i32 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 6
  store i32* @vb2_dma_contig_memops, i32** %95, align 8
  %96 = load %struct.dt3155_priv*, %struct.dt3155_priv** %7, align 8
  %97 = load %struct.dt3155_priv*, %struct.dt3155_priv** %7, align 8
  %98 = getelementptr inbounds %struct.dt3155_priv, %struct.dt3155_priv* %97, i32 0, i32 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 5
  store %struct.dt3155_priv* %96, %struct.dt3155_priv** %99, align 8
  %100 = load %struct.dt3155_priv*, %struct.dt3155_priv** %7, align 8
  %101 = getelementptr inbounds %struct.dt3155_priv, %struct.dt3155_priv* %100, i32 0, i32 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 1
  store i32 2, i32* %102, align 4
  %103 = load i32, i32* @GFP_DMA32, align 4
  %104 = load %struct.dt3155_priv*, %struct.dt3155_priv** %7, align 8
  %105 = getelementptr inbounds %struct.dt3155_priv, %struct.dt3155_priv* %104, i32 0, i32 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 4
  store i32 %103, i32* %106, align 8
  %107 = load %struct.dt3155_priv*, %struct.dt3155_priv** %7, align 8
  %108 = getelementptr inbounds %struct.dt3155_priv, %struct.dt3155_priv* %107, i32 0, i32 9
  %109 = load %struct.dt3155_priv*, %struct.dt3155_priv** %7, align 8
  %110 = getelementptr inbounds %struct.dt3155_priv, %struct.dt3155_priv* %109, i32 0, i32 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 3
  store i32* %108, i32** %111, align 8
  %112 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %113 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %112, i32 0, i32 1
  %114 = load %struct.dt3155_priv*, %struct.dt3155_priv** %7, align 8
  %115 = getelementptr inbounds %struct.dt3155_priv, %struct.dt3155_priv* %114, i32 0, i32 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 2
  store i32* %113, i32** %116, align 8
  %117 = load %struct.dt3155_priv*, %struct.dt3155_priv** %7, align 8
  %118 = getelementptr inbounds %struct.dt3155_priv, %struct.dt3155_priv* %117, i32 0, i32 8
  %119 = load %struct.dt3155_priv*, %struct.dt3155_priv** %7, align 8
  %120 = getelementptr inbounds %struct.dt3155_priv, %struct.dt3155_priv* %119, i32 0, i32 5
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 1
  store %struct.TYPE_6__* %118, %struct.TYPE_6__** %121, align 8
  %122 = load %struct.dt3155_priv*, %struct.dt3155_priv** %7, align 8
  %123 = getelementptr inbounds %struct.dt3155_priv, %struct.dt3155_priv* %122, i32 0, i32 8
  %124 = call i32 @vb2_queue_init(%struct.TYPE_6__* %123)
  store i32 %124, i32* %6, align 4
  %125 = load i32, i32* %6, align 4
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %37
  br label %220

128:                                              ; preds = %37
  %129 = load %struct.dt3155_priv*, %struct.dt3155_priv** %7, align 8
  %130 = getelementptr inbounds %struct.dt3155_priv, %struct.dt3155_priv* %129, i32 0, i32 7
  %131 = call i32 @spin_lock_init(i32* %130)
  %132 = load i32, i32* @ACQ_MODE_EVEN, align 4
  %133 = load %struct.dt3155_priv*, %struct.dt3155_priv** %7, align 8
  %134 = getelementptr inbounds %struct.dt3155_priv, %struct.dt3155_priv* %133, i32 0, i32 6
  store i32 %132, i32* %134, align 8
  %135 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %136 = call i32 @pci_enable_device(%struct.pci_dev* %135)
  store i32 %136, i32* %6, align 4
  %137 = load i32, i32* %6, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %128
  br label %220

140:                                              ; preds = %128
  %141 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %142 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %143 = call i32 @pci_name(%struct.pci_dev* %142)
  %144 = call i32 @pci_request_region(%struct.pci_dev* %141, i32 0, i32 %143)
  store i32 %144, i32* %6, align 4
  %145 = load i32, i32* %6, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %140
  br label %217

148:                                              ; preds = %140
  %149 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %150 = load %struct.dt3155_priv*, %struct.dt3155_priv** %7, align 8
  %151 = getelementptr inbounds %struct.dt3155_priv, %struct.dt3155_priv* %150, i32 0, i32 4
  %152 = load %struct.pci_dev*, %struct.pci_dev** %151, align 8
  %153 = call i32 @pci_resource_len(%struct.pci_dev* %152, i32 0)
  %154 = call i32 @pci_iomap(%struct.pci_dev* %149, i32 0, i32 %153)
  %155 = load %struct.dt3155_priv*, %struct.dt3155_priv** %7, align 8
  %156 = getelementptr inbounds %struct.dt3155_priv, %struct.dt3155_priv* %155, i32 0, i32 3
  store i32 %154, i32* %156, align 4
  %157 = load %struct.dt3155_priv*, %struct.dt3155_priv** %7, align 8
  %158 = getelementptr inbounds %struct.dt3155_priv, %struct.dt3155_priv* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %164, label %161

161:                                              ; preds = %148
  %162 = load i32, i32* @ENOMEM, align 4
  %163 = sub nsw i32 0, %162
  store i32 %163, i32* %6, align 4
  br label %214

164:                                              ; preds = %148
  %165 = load %struct.dt3155_priv*, %struct.dt3155_priv** %7, align 8
  %166 = call i32 @dt3155_init_board(%struct.dt3155_priv* %165)
  store i32 %166, i32* %6, align 4
  %167 = load i32, i32* %6, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %164
  br label %208

170:                                              ; preds = %164
  %171 = load %struct.dt3155_priv*, %struct.dt3155_priv** %7, align 8
  %172 = getelementptr inbounds %struct.dt3155_priv, %struct.dt3155_priv* %171, i32 0, i32 4
  %173 = load %struct.pci_dev*, %struct.pci_dev** %172, align 8
  %174 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* @dt3155_irq_handler_even, align 4
  %177 = load i32, i32* @IRQF_SHARED, align 4
  %178 = load i32, i32* @DT3155_NAME, align 4
  %179 = load %struct.dt3155_priv*, %struct.dt3155_priv** %7, align 8
  %180 = call i32 @request_irq(i32 %175, i32 %176, i32 %177, i32 %178, %struct.dt3155_priv* %179)
  store i32 %180, i32* %6, align 4
  %181 = load i32, i32* %6, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %170
  br label %208

184:                                              ; preds = %170
  %185 = load %struct.dt3155_priv*, %struct.dt3155_priv** %7, align 8
  %186 = getelementptr inbounds %struct.dt3155_priv, %struct.dt3155_priv* %185, i32 0, i32 5
  %187 = load i32, i32* @VFL_TYPE_GRABBER, align 4
  %188 = call i32 @video_register_device(%struct.TYPE_5__* %186, i32 %187, i32 -1)
  store i32 %188, i32* %6, align 4
  %189 = load i32, i32* %6, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %192

191:                                              ; preds = %184
  br label %200

192:                                              ; preds = %184
  %193 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %194 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %193, i32 0, i32 1
  %195 = load %struct.dt3155_priv*, %struct.dt3155_priv** %7, align 8
  %196 = getelementptr inbounds %struct.dt3155_priv, %struct.dt3155_priv* %195, i32 0, i32 5
  %197 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = call i32 @dev_info(i32* %194, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %198)
  store i32 0, i32* %3, align 4
  br label %225

200:                                              ; preds = %191
  %201 = load %struct.dt3155_priv*, %struct.dt3155_priv** %7, align 8
  %202 = getelementptr inbounds %struct.dt3155_priv, %struct.dt3155_priv* %201, i32 0, i32 4
  %203 = load %struct.pci_dev*, %struct.pci_dev** %202, align 8
  %204 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.dt3155_priv*, %struct.dt3155_priv** %7, align 8
  %207 = call i32 @free_irq(i32 %205, %struct.dt3155_priv* %206)
  br label %208

208:                                              ; preds = %200, %183, %169
  %209 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %210 = load %struct.dt3155_priv*, %struct.dt3155_priv** %7, align 8
  %211 = getelementptr inbounds %struct.dt3155_priv, %struct.dt3155_priv* %210, i32 0, i32 3
  %212 = load i32, i32* %211, align 4
  %213 = call i32 @pci_iounmap(%struct.pci_dev* %209, i32 %212)
  br label %214

214:                                              ; preds = %208, %161
  %215 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %216 = call i32 @pci_release_region(%struct.pci_dev* %215, i32 0)
  br label %217

217:                                              ; preds = %214, %147
  %218 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %219 = call i32 @pci_disable_device(%struct.pci_dev* %218)
  br label %220

220:                                              ; preds = %217, %139, %127
  %221 = load %struct.dt3155_priv*, %struct.dt3155_priv** %7, align 8
  %222 = getelementptr inbounds %struct.dt3155_priv, %struct.dt3155_priv* %221, i32 0, i32 2
  %223 = call i32 @v4l2_device_unregister(i32* %222)
  %224 = load i32, i32* %6, align 4
  store i32 %224, i32* %3, align 4
  br label %225

225:                                              ; preds = %220, %192, %35, %24, %14
  %226 = load i32, i32* %3, align 4
  ret i32 %226
}

declare dso_local i32 @dma_set_mask_and_coherent(i32*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local %struct.dt3155_priv* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @v4l2_device_register(i32*, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @video_set_drvdata(%struct.TYPE_5__*, %struct.dt3155_priv*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @vb2_queue_init(%struct.TYPE_6__*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @pci_request_region(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_name(%struct.pci_dev*) #1

declare dso_local i32 @pci_iomap(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_resource_len(%struct.pci_dev*, i32) #1

declare dso_local i32 @dt3155_init_board(%struct.dt3155_priv*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.dt3155_priv*) #1

declare dso_local i32 @video_register_device(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i32 @free_irq(i32, %struct.dt3155_priv*) #1

declare dso_local i32 @pci_iounmap(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_release_region(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

declare dso_local i32 @v4l2_device_unregister(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
