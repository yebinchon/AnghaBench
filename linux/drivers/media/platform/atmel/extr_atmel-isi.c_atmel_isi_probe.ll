; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/atmel/extr_atmel-isi.c_atmel_isi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/atmel/extr_atmel-isi.c_atmel_isi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.atmel_isi = type { i32, i32, i32, %struct.TYPE_8__*, i64, i64, %struct.TYPE_6__, i32, i32, %struct.TYPE_7__*, i32, %struct.vb2_queue, i32, i32, i32*, i32*, i32 }
%struct.TYPE_8__ = type { i32, i32*, i32*, i32 (%struct.TYPE_8__*)*, i32, %struct.vb2_queue*, i32*, i32* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32, i64, i64 }
%struct.vb2_queue = type { i32, i32, i32, i32*, i32, i32*, i32*, %struct.atmel_isi*, i32*, i32 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"isi_clk\00", align 1
@isi_fops = common dso_local global i32 0, align 4
@KBUILD_MODNAME = common dso_local global i32 0, align 4
@isi_ioctl_ops = common dso_local global i32 0, align 4
@V4L2_CAP_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@V4L2_CAP_STREAMING = common dso_local global i32 0, align 4
@V4L2_CAP_READWRITE = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@VB2_MMAP = common dso_local global i32 0, align 4
@VB2_READ = common dso_local global i32 0, align 4
@VB2_DMABUF = common dso_local global i32 0, align 4
@isi_video_qops = common dso_local global i32 0, align 4
@vb2_dma_contig_memops = common dso_local global i32 0, align 4
@V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"failed to initialize VB2 queue\0A\00", align 1
@VIDEO_MAX_FRAME = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Can't allocate descriptors!\0A\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@ISI_DATAWIDTH_8 = common dso_local global i32 0, align 4
@ISI_DATAWIDTH_10 = common dso_local global i32 0, align 4
@isi_interrupt = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"isi\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"Unable to request irq %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @atmel_isi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_isi_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.atmel_isi*, align 8
  %6 = alloca %struct.vb2_queue*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.atmel_isi* @devm_kzalloc(i32* %11, i32 176, i32 %12)
  store %struct.atmel_isi* %13, %struct.atmel_isi** %5, align 8
  %14 = load %struct.atmel_isi*, %struct.atmel_isi** %5, align 8
  %15 = icmp ne %struct.atmel_isi* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %355

19:                                               ; preds = %1
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  %22 = call i32 @devm_clk_get(i32* %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.atmel_isi*, %struct.atmel_isi** %5, align 8
  %24 = getelementptr inbounds %struct.atmel_isi, %struct.atmel_isi* %23, i32 0, i32 16
  store i32 %22, i32* %24, align 8
  %25 = load %struct.atmel_isi*, %struct.atmel_isi** %5, align 8
  %26 = getelementptr inbounds %struct.atmel_isi, %struct.atmel_isi* %25, i32 0, i32 16
  %27 = load i32, i32* %26, align 8
  %28 = call i64 @IS_ERR(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %19
  %31 = load %struct.atmel_isi*, %struct.atmel_isi** %5, align 8
  %32 = getelementptr inbounds %struct.atmel_isi, %struct.atmel_isi* %31, i32 0, i32 16
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @PTR_ERR(i32 %33)
  store i32 %34, i32* %2, align 4
  br label %355

35:                                               ; preds = %19
  %36 = load %struct.atmel_isi*, %struct.atmel_isi** %5, align 8
  %37 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %38 = call i32 @atmel_isi_parse_dt(%struct.atmel_isi* %36, %struct.platform_device* %37)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load i32, i32* %8, align 4
  store i32 %42, i32* %2, align 4
  br label %355

43:                                               ; preds = %35
  %44 = load %struct.atmel_isi*, %struct.atmel_isi** %5, align 8
  %45 = getelementptr inbounds %struct.atmel_isi, %struct.atmel_isi* %44, i32 0, i32 15
  store i32* null, i32** %45, align 8
  %46 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %47 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %46, i32 0, i32 0
  %48 = load %struct.atmel_isi*, %struct.atmel_isi** %5, align 8
  %49 = getelementptr inbounds %struct.atmel_isi, %struct.atmel_isi* %48, i32 0, i32 14
  store i32* %47, i32** %49, align 8
  %50 = load %struct.atmel_isi*, %struct.atmel_isi** %5, align 8
  %51 = getelementptr inbounds %struct.atmel_isi, %struct.atmel_isi* %50, i32 0, i32 10
  %52 = call i32 @mutex_init(i32* %51)
  %53 = load %struct.atmel_isi*, %struct.atmel_isi** %5, align 8
  %54 = getelementptr inbounds %struct.atmel_isi, %struct.atmel_isi* %53, i32 0, i32 13
  %55 = call i32 @spin_lock_init(i32* %54)
  %56 = load %struct.atmel_isi*, %struct.atmel_isi** %5, align 8
  %57 = getelementptr inbounds %struct.atmel_isi, %struct.atmel_isi* %56, i32 0, i32 12
  %58 = call i32 @INIT_LIST_HEAD(i32* %57)
  %59 = load %struct.atmel_isi*, %struct.atmel_isi** %5, align 8
  %60 = getelementptr inbounds %struct.atmel_isi, %struct.atmel_isi* %59, i32 0, i32 8
  %61 = call i32 @INIT_LIST_HEAD(i32* %60)
  %62 = load %struct.atmel_isi*, %struct.atmel_isi** %5, align 8
  %63 = getelementptr inbounds %struct.atmel_isi, %struct.atmel_isi* %62, i32 0, i32 11
  store %struct.vb2_queue* %63, %struct.vb2_queue** %6, align 8
  %64 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %65 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %64, i32 0, i32 0
  %66 = load %struct.atmel_isi*, %struct.atmel_isi** %5, align 8
  %67 = getelementptr inbounds %struct.atmel_isi, %struct.atmel_isi* %66, i32 0, i32 2
  %68 = call i32 @v4l2_device_register(i32* %65, i32* %67)
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %8, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %43
  %72 = load i32, i32* %8, align 4
  store i32 %72, i32* %2, align 4
  br label %355

73:                                               ; preds = %43
  %74 = call %struct.TYPE_8__* (...) @video_device_alloc()
  %75 = load %struct.atmel_isi*, %struct.atmel_isi** %5, align 8
  %76 = getelementptr inbounds %struct.atmel_isi, %struct.atmel_isi* %75, i32 0, i32 3
  store %struct.TYPE_8__* %74, %struct.TYPE_8__** %76, align 8
  %77 = load %struct.atmel_isi*, %struct.atmel_isi** %5, align 8
  %78 = getelementptr inbounds %struct.atmel_isi, %struct.atmel_isi* %77, i32 0, i32 3
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %78, align 8
  %80 = icmp ne %struct.TYPE_8__* %79, null
  br i1 %80, label %84, label %81

81:                                               ; preds = %73
  %82 = load i32, i32* @ENOMEM, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %8, align 4
  br label %350

84:                                               ; preds = %73
  %85 = load %struct.atmel_isi*, %struct.atmel_isi** %5, align 8
  %86 = getelementptr inbounds %struct.atmel_isi, %struct.atmel_isi* %85, i32 0, i32 3
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 7
  store i32* @isi_fops, i32** %88, align 8
  %89 = load %struct.atmel_isi*, %struct.atmel_isi** %5, align 8
  %90 = getelementptr inbounds %struct.atmel_isi, %struct.atmel_isi* %89, i32 0, i32 2
  %91 = load %struct.atmel_isi*, %struct.atmel_isi** %5, align 8
  %92 = getelementptr inbounds %struct.atmel_isi, %struct.atmel_isi* %91, i32 0, i32 3
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 6
  store i32* %90, i32** %94, align 8
  %95 = load %struct.atmel_isi*, %struct.atmel_isi** %5, align 8
  %96 = getelementptr inbounds %struct.atmel_isi, %struct.atmel_isi* %95, i32 0, i32 11
  %97 = load %struct.atmel_isi*, %struct.atmel_isi** %5, align 8
  %98 = getelementptr inbounds %struct.atmel_isi, %struct.atmel_isi* %97, i32 0, i32 3
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 5
  store %struct.vb2_queue* %96, %struct.vb2_queue** %100, align 8
  %101 = load %struct.atmel_isi*, %struct.atmel_isi** %5, align 8
  %102 = getelementptr inbounds %struct.atmel_isi, %struct.atmel_isi* %101, i32 0, i32 3
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @KBUILD_MODNAME, align 4
  %107 = call i32 @strscpy(i32 %105, i32 %106, i32 4)
  %108 = load %struct.atmel_isi*, %struct.atmel_isi** %5, align 8
  %109 = getelementptr inbounds %struct.atmel_isi, %struct.atmel_isi* %108, i32 0, i32 3
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 3
  store i32 (%struct.TYPE_8__*)* @video_device_release, i32 (%struct.TYPE_8__*)** %111, align 8
  %112 = load %struct.atmel_isi*, %struct.atmel_isi** %5, align 8
  %113 = getelementptr inbounds %struct.atmel_isi, %struct.atmel_isi* %112, i32 0, i32 3
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 2
  store i32* @isi_ioctl_ops, i32** %115, align 8
  %116 = load %struct.atmel_isi*, %struct.atmel_isi** %5, align 8
  %117 = getelementptr inbounds %struct.atmel_isi, %struct.atmel_isi* %116, i32 0, i32 10
  %118 = load %struct.atmel_isi*, %struct.atmel_isi** %5, align 8
  %119 = getelementptr inbounds %struct.atmel_isi, %struct.atmel_isi* %118, i32 0, i32 3
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 1
  store i32* %117, i32** %121, align 8
  %122 = load i32, i32* @V4L2_CAP_VIDEO_CAPTURE, align 4
  %123 = load i32, i32* @V4L2_CAP_STREAMING, align 4
  %124 = or i32 %122, %123
  %125 = load i32, i32* @V4L2_CAP_READWRITE, align 4
  %126 = or i32 %124, %125
  %127 = load %struct.atmel_isi*, %struct.atmel_isi** %5, align 8
  %128 = getelementptr inbounds %struct.atmel_isi, %struct.atmel_isi* %127, i32 0, i32 3
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 0
  store i32 %126, i32* %130, align 8
  %131 = load %struct.atmel_isi*, %struct.atmel_isi** %5, align 8
  %132 = getelementptr inbounds %struct.atmel_isi, %struct.atmel_isi* %131, i32 0, i32 3
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %132, align 8
  %134 = load %struct.atmel_isi*, %struct.atmel_isi** %5, align 8
  %135 = call i32 @video_set_drvdata(%struct.TYPE_8__* %133, %struct.atmel_isi* %134)
  %136 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 4
  %137 = load %struct.vb2_queue*, %struct.vb2_queue** %6, align 8
  %138 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %137, i32 0, i32 9
  store i32 %136, i32* %138, align 8
  %139 = load i32, i32* @VB2_MMAP, align 4
  %140 = load i32, i32* @VB2_READ, align 4
  %141 = or i32 %139, %140
  %142 = load i32, i32* @VB2_DMABUF, align 4
  %143 = or i32 %141, %142
  %144 = load %struct.vb2_queue*, %struct.vb2_queue** %6, align 8
  %145 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %144, i32 0, i32 0
  store i32 %143, i32* %145, align 8
  %146 = load %struct.atmel_isi*, %struct.atmel_isi** %5, align 8
  %147 = getelementptr inbounds %struct.atmel_isi, %struct.atmel_isi* %146, i32 0, i32 10
  %148 = load %struct.vb2_queue*, %struct.vb2_queue** %6, align 8
  %149 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %148, i32 0, i32 8
  store i32* %147, i32** %149, align 8
  %150 = load %struct.atmel_isi*, %struct.atmel_isi** %5, align 8
  %151 = load %struct.vb2_queue*, %struct.vb2_queue** %6, align 8
  %152 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %151, i32 0, i32 7
  store %struct.atmel_isi* %150, %struct.atmel_isi** %152, align 8
  %153 = load %struct.vb2_queue*, %struct.vb2_queue** %6, align 8
  %154 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %153, i32 0, i32 1
  store i32 4, i32* %154, align 4
  %155 = load %struct.vb2_queue*, %struct.vb2_queue** %6, align 8
  %156 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %155, i32 0, i32 6
  store i32* @isi_video_qops, i32** %156, align 8
  %157 = load %struct.vb2_queue*, %struct.vb2_queue** %6, align 8
  %158 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %157, i32 0, i32 5
  store i32* @vb2_dma_contig_memops, i32** %158, align 8
  %159 = load i32, i32* @V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC, align 4
  %160 = load %struct.vb2_queue*, %struct.vb2_queue** %6, align 8
  %161 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %160, i32 0, i32 4
  store i32 %159, i32* %161, align 8
  %162 = load %struct.vb2_queue*, %struct.vb2_queue** %6, align 8
  %163 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %162, i32 0, i32 2
  store i32 2, i32* %163, align 8
  %164 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %165 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %164, i32 0, i32 0
  %166 = load %struct.vb2_queue*, %struct.vb2_queue** %6, align 8
  %167 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %166, i32 0, i32 3
  store i32* %165, i32** %167, align 8
  %168 = load %struct.vb2_queue*, %struct.vb2_queue** %6, align 8
  %169 = call i32 @vb2_queue_init(%struct.vb2_queue* %168)
  store i32 %169, i32* %8, align 4
  %170 = load i32, i32* %8, align 4
  %171 = icmp slt i32 %170, 0
  br i1 %171, label %172, label %176

172:                                              ; preds = %84
  %173 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %174 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %173, i32 0, i32 0
  %175 = call i32 (i32*, i8*, ...) @dev_err(i32* %174, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %345

176:                                              ; preds = %84
  %177 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %178 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %177, i32 0, i32 0
  %179 = load i32, i32* @VIDEO_MAX_FRAME, align 4
  %180 = sext i32 %179 to i64
  %181 = mul i64 4, %180
  %182 = trunc i64 %181 to i32
  %183 = load %struct.atmel_isi*, %struct.atmel_isi** %5, align 8
  %184 = getelementptr inbounds %struct.atmel_isi, %struct.atmel_isi* %183, i32 0, i32 4
  %185 = load i32, i32* @GFP_KERNEL, align 4
  %186 = call i64 @dma_alloc_coherent(i32* %178, i32 %182, i64* %184, i32 %185)
  %187 = load %struct.atmel_isi*, %struct.atmel_isi** %5, align 8
  %188 = getelementptr inbounds %struct.atmel_isi, %struct.atmel_isi* %187, i32 0, i32 5
  store i64 %186, i64* %188, align 8
  %189 = load %struct.atmel_isi*, %struct.atmel_isi** %5, align 8
  %190 = getelementptr inbounds %struct.atmel_isi, %struct.atmel_isi* %189, i32 0, i32 5
  %191 = load i64, i64* %190, align 8
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %199, label %193

193:                                              ; preds = %176
  %194 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %195 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %194, i32 0, i32 0
  %196 = call i32 (i32*, i8*, ...) @dev_err(i32* %195, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %197 = load i32, i32* @ENOMEM, align 4
  %198 = sub nsw i32 0, %197
  store i32 %198, i32* %8, align 4
  br label %344

199:                                              ; preds = %176
  store i32 0, i32* %9, align 4
  br label %200

200:                                              ; preds = %242, %199
  %201 = load i32, i32* %9, align 4
  %202 = load i32, i32* @VIDEO_MAX_FRAME, align 4
  %203 = icmp slt i32 %201, %202
  br i1 %203, label %204, label %245

204:                                              ; preds = %200
  %205 = load %struct.atmel_isi*, %struct.atmel_isi** %5, align 8
  %206 = getelementptr inbounds %struct.atmel_isi, %struct.atmel_isi* %205, i32 0, i32 5
  %207 = load i64, i64* %206, align 8
  %208 = load i32, i32* %9, align 4
  %209 = sext i32 %208 to i64
  %210 = add nsw i64 %207, %209
  %211 = load %struct.atmel_isi*, %struct.atmel_isi** %5, align 8
  %212 = getelementptr inbounds %struct.atmel_isi, %struct.atmel_isi* %211, i32 0, i32 9
  %213 = load %struct.TYPE_7__*, %struct.TYPE_7__** %212, align 8
  %214 = load i32, i32* %9, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %213, i64 %215
  %217 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %216, i32 0, i32 2
  store i64 %210, i64* %217, align 8
  %218 = load %struct.atmel_isi*, %struct.atmel_isi** %5, align 8
  %219 = getelementptr inbounds %struct.atmel_isi, %struct.atmel_isi* %218, i32 0, i32 4
  %220 = load i64, i64* %219, align 8
  %221 = load i32, i32* %9, align 4
  %222 = sext i32 %221 to i64
  %223 = mul i64 %222, 4
  %224 = add i64 %220, %223
  %225 = load %struct.atmel_isi*, %struct.atmel_isi** %5, align 8
  %226 = getelementptr inbounds %struct.atmel_isi, %struct.atmel_isi* %225, i32 0, i32 9
  %227 = load %struct.TYPE_7__*, %struct.TYPE_7__** %226, align 8
  %228 = load i32, i32* %9, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %227, i64 %229
  %231 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %230, i32 0, i32 1
  store i64 %224, i64* %231, align 8
  %232 = load %struct.atmel_isi*, %struct.atmel_isi** %5, align 8
  %233 = getelementptr inbounds %struct.atmel_isi, %struct.atmel_isi* %232, i32 0, i32 9
  %234 = load %struct.TYPE_7__*, %struct.TYPE_7__** %233, align 8
  %235 = load i32, i32* %9, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %234, i64 %236
  %238 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %237, i32 0, i32 0
  %239 = load %struct.atmel_isi*, %struct.atmel_isi** %5, align 8
  %240 = getelementptr inbounds %struct.atmel_isi, %struct.atmel_isi* %239, i32 0, i32 8
  %241 = call i32 @list_add(i32* %238, i32* %240)
  br label %242

242:                                              ; preds = %204
  %243 = load i32, i32* %9, align 4
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %9, align 4
  br label %200

245:                                              ; preds = %200
  %246 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %247 = load i32, i32* @IORESOURCE_MEM, align 4
  %248 = call %struct.resource* @platform_get_resource(%struct.platform_device* %246, i32 %247, i32 0)
  store %struct.resource* %248, %struct.resource** %7, align 8
  %249 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %250 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %249, i32 0, i32 0
  %251 = load %struct.resource*, %struct.resource** %7, align 8
  %252 = call i32 @devm_ioremap_resource(i32* %250, %struct.resource* %251)
  %253 = load %struct.atmel_isi*, %struct.atmel_isi** %5, align 8
  %254 = getelementptr inbounds %struct.atmel_isi, %struct.atmel_isi* %253, i32 0, i32 7
  store i32 %252, i32* %254, align 4
  %255 = load %struct.atmel_isi*, %struct.atmel_isi** %5, align 8
  %256 = getelementptr inbounds %struct.atmel_isi, %struct.atmel_isi* %255, i32 0, i32 7
  %257 = load i32, i32* %256, align 4
  %258 = call i64 @IS_ERR(i32 %257)
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %265

260:                                              ; preds = %245
  %261 = load %struct.atmel_isi*, %struct.atmel_isi** %5, align 8
  %262 = getelementptr inbounds %struct.atmel_isi, %struct.atmel_isi* %261, i32 0, i32 7
  %263 = load i32, i32* %262, align 4
  %264 = call i32 @PTR_ERR(i32 %263)
  store i32 %264, i32* %8, align 4
  br label %330

265:                                              ; preds = %245
  %266 = load %struct.atmel_isi*, %struct.atmel_isi** %5, align 8
  %267 = getelementptr inbounds %struct.atmel_isi, %struct.atmel_isi* %266, i32 0, i32 6
  %268 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  %270 = load i32, i32* @ISI_DATAWIDTH_8, align 4
  %271 = and i32 %269, %270
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %276

273:                                              ; preds = %265
  %274 = load %struct.atmel_isi*, %struct.atmel_isi** %5, align 8
  %275 = getelementptr inbounds %struct.atmel_isi, %struct.atmel_isi* %274, i32 0, i32 0
  store i32 128, i32* %275, align 8
  br label %276

276:                                              ; preds = %273, %265
  %277 = load %struct.atmel_isi*, %struct.atmel_isi** %5, align 8
  %278 = getelementptr inbounds %struct.atmel_isi, %struct.atmel_isi* %277, i32 0, i32 6
  %279 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 8
  %281 = load i32, i32* @ISI_DATAWIDTH_10, align 4
  %282 = and i32 %280, %281
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %289

284:                                              ; preds = %276
  %285 = load %struct.atmel_isi*, %struct.atmel_isi** %5, align 8
  %286 = getelementptr inbounds %struct.atmel_isi, %struct.atmel_isi* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 8
  %288 = or i32 %287, 512
  store i32 %288, i32* %286, align 8
  br label %289

289:                                              ; preds = %284, %276
  %290 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %291 = call i32 @platform_get_irq(%struct.platform_device* %290, i32 0)
  store i32 %291, i32* %4, align 4
  %292 = load i32, i32* %4, align 4
  %293 = icmp slt i32 %292, 0
  br i1 %293, label %294, label %296

294:                                              ; preds = %289
  %295 = load i32, i32* %4, align 4
  store i32 %295, i32* %8, align 4
  br label %329

296:                                              ; preds = %289
  %297 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %298 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %297, i32 0, i32 0
  %299 = load i32, i32* %4, align 4
  %300 = load i32, i32* @isi_interrupt, align 4
  %301 = load %struct.atmel_isi*, %struct.atmel_isi** %5, align 8
  %302 = call i32 @devm_request_irq(i32* %298, i32 %299, i32 %300, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), %struct.atmel_isi* %301)
  store i32 %302, i32* %8, align 4
  %303 = load i32, i32* %8, align 4
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %305, label %310

305:                                              ; preds = %296
  %306 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %307 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %306, i32 0, i32 0
  %308 = load i32, i32* %4, align 4
  %309 = call i32 (i32*, i8*, ...) @dev_err(i32* %307, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %308)
  br label %329

310:                                              ; preds = %296
  %311 = load i32, i32* %4, align 4
  %312 = load %struct.atmel_isi*, %struct.atmel_isi** %5, align 8
  %313 = getelementptr inbounds %struct.atmel_isi, %struct.atmel_isi* %312, i32 0, i32 1
  store i32 %311, i32* %313, align 4
  %314 = load %struct.atmel_isi*, %struct.atmel_isi** %5, align 8
  %315 = call i32 @isi_graph_init(%struct.atmel_isi* %314)
  store i32 %315, i32* %8, align 4
  %316 = load i32, i32* %8, align 4
  %317 = icmp slt i32 %316, 0
  br i1 %317, label %318, label %319

318:                                              ; preds = %310
  br label %329

319:                                              ; preds = %310
  %320 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %321 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %320, i32 0, i32 0
  %322 = call i32 @pm_suspend_ignore_children(i32* %321, i32 1)
  %323 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %324 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %323, i32 0, i32 0
  %325 = call i32 @pm_runtime_enable(i32* %324)
  %326 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %327 = load %struct.atmel_isi*, %struct.atmel_isi** %5, align 8
  %328 = call i32 @platform_set_drvdata(%struct.platform_device* %326, %struct.atmel_isi* %327)
  store i32 0, i32* %2, align 4
  br label %355

329:                                              ; preds = %318, %305, %294
  br label %330

330:                                              ; preds = %329, %260
  %331 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %332 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %331, i32 0, i32 0
  %333 = load i32, i32* @VIDEO_MAX_FRAME, align 4
  %334 = sext i32 %333 to i64
  %335 = mul i64 4, %334
  %336 = trunc i64 %335 to i32
  %337 = load %struct.atmel_isi*, %struct.atmel_isi** %5, align 8
  %338 = getelementptr inbounds %struct.atmel_isi, %struct.atmel_isi* %337, i32 0, i32 5
  %339 = load i64, i64* %338, align 8
  %340 = load %struct.atmel_isi*, %struct.atmel_isi** %5, align 8
  %341 = getelementptr inbounds %struct.atmel_isi, %struct.atmel_isi* %340, i32 0, i32 4
  %342 = load i64, i64* %341, align 8
  %343 = call i32 @dma_free_coherent(i32* %332, i32 %336, i64 %339, i64 %342)
  br label %344

344:                                              ; preds = %330, %193
  br label %345

345:                                              ; preds = %344, %172
  %346 = load %struct.atmel_isi*, %struct.atmel_isi** %5, align 8
  %347 = getelementptr inbounds %struct.atmel_isi, %struct.atmel_isi* %346, i32 0, i32 3
  %348 = load %struct.TYPE_8__*, %struct.TYPE_8__** %347, align 8
  %349 = call i32 @video_device_release(%struct.TYPE_8__* %348)
  br label %350

350:                                              ; preds = %345, %81
  %351 = load %struct.atmel_isi*, %struct.atmel_isi** %5, align 8
  %352 = getelementptr inbounds %struct.atmel_isi, %struct.atmel_isi* %351, i32 0, i32 2
  %353 = call i32 @v4l2_device_unregister(i32* %352)
  %354 = load i32, i32* %8, align 4
  store i32 %354, i32* %2, align 4
  br label %355

355:                                              ; preds = %350, %319, %71, %41, %30, %16
  %356 = load i32, i32* %2, align 4
  ret i32 %356
}

declare dso_local %struct.atmel_isi* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @devm_clk_get(i32*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @atmel_isi_parse_dt(%struct.atmel_isi*, %struct.platform_device*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @v4l2_device_register(i32*, i32*) #1

declare dso_local %struct.TYPE_8__* @video_device_alloc(...) #1

declare dso_local i32 @strscpy(i32, i32, i32) #1

declare dso_local i32 @video_device_release(%struct.TYPE_8__*) #1

declare dso_local i32 @video_set_drvdata(%struct.TYPE_8__*, %struct.atmel_isi*) #1

declare dso_local i32 @vb2_queue_init(%struct.vb2_queue*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i64 @dma_alloc_coherent(i32*, i32, i64*, i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(i32*, %struct.resource*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_irq(i32*, i32, i32, i32, i8*, %struct.atmel_isi*) #1

declare dso_local i32 @isi_graph_init(%struct.atmel_isi*) #1

declare dso_local i32 @pm_suspend_ignore_children(i32*, i32) #1

declare dso_local i32 @pm_runtime_enable(i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.atmel_isi*) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i64, i64) #1

declare dso_local i32 @v4l2_device_unregister(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
