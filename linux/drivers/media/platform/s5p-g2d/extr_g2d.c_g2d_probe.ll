; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-g2d/extr_g2d.c_g2d_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-g2d/extr_g2d.c_g2d_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.video_device = type { i32, i32, i32*, i32*, i32 }
%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.platform_device = type { %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.g2d_dev = type { i8*, i8*, i32, %struct.video_device*, %struct.g2d_variant*, i8*, i32, i32, i8*, i32, i32 }
%struct.g2d_variant = type { i32 }
%struct.resource = type { i32 }
%struct.of_device_id = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"sclk_fimg2d\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"failed to get g2d clock\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"failed to prepare g2d clock\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"fimg2d\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"failed to get g2d clock gate\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"failed to prepare g2d clock gate\0A\00", align 1
@IORESOURCE_IRQ = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [20 x i8] c"failed to find IRQ\0A\00", align 1
@g2d_isr = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [23 x i8] c"failed to install IRQ\0A\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"Failed to allocate video device\0A\00", align 1
@g2d_videodev = common dso_local global %struct.video_device zeroinitializer, align 8
@V4L2_FL_QUIRK_INVERTED_CROP = common dso_local global i32 0, align 4
@V4L2_CAP_VIDEO_M2M = common dso_local global i32 0, align 4
@V4L2_CAP_STREAMING = common dso_local global i32 0, align 4
@VFL_TYPE_GRABBER = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [33 x i8] c"Failed to register video device\0A\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"device registered as /dev/video%d\0A\00", align 1
@g2d_m2m_ops = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [31 x i8] c"Failed to init mem2mem device\0A\00", align 1
@def_frame = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@exynos_g2d_match = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @g2d_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g2d_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.g2d_dev*, align 8
  %5 = alloca %struct.video_device*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca %struct.of_device_id*, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.g2d_dev* @devm_kzalloc(%struct.TYPE_11__* %10, i32 72, i32 %11)
  store %struct.g2d_dev* %12, %struct.g2d_dev** %4, align 8
  %13 = load %struct.g2d_dev*, %struct.g2d_dev** %4, align 8
  %14 = icmp ne %struct.g2d_dev* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %280

18:                                               ; preds = %1
  %19 = load %struct.g2d_dev*, %struct.g2d_dev** %4, align 8
  %20 = getelementptr inbounds %struct.g2d_dev, %struct.g2d_dev* %19, i32 0, i32 10
  %21 = call i32 @spin_lock_init(i32* %20)
  %22 = load %struct.g2d_dev*, %struct.g2d_dev** %4, align 8
  %23 = getelementptr inbounds %struct.g2d_dev, %struct.g2d_dev* %22, i32 0, i32 6
  %24 = call i32 @mutex_init(i32* %23)
  %25 = load %struct.g2d_dev*, %struct.g2d_dev** %4, align 8
  %26 = getelementptr inbounds %struct.g2d_dev, %struct.g2d_dev* %25, i32 0, i32 9
  %27 = call i32 @atomic_set(i32* %26, i32 0)
  %28 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %29 = load i32, i32* @IORESOURCE_MEM, align 4
  %30 = call %struct.resource* @platform_get_resource(%struct.platform_device* %28, i32 %29, i32 0)
  store %struct.resource* %30, %struct.resource** %6, align 8
  %31 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %32 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %31, i32 0, i32 0
  %33 = load %struct.resource*, %struct.resource** %6, align 8
  %34 = call i8* @devm_ioremap_resource(%struct.TYPE_11__* %32, %struct.resource* %33)
  %35 = load %struct.g2d_dev*, %struct.g2d_dev** %4, align 8
  %36 = getelementptr inbounds %struct.g2d_dev, %struct.g2d_dev* %35, i32 0, i32 8
  store i8* %34, i8** %36, align 8
  %37 = load %struct.g2d_dev*, %struct.g2d_dev** %4, align 8
  %38 = getelementptr inbounds %struct.g2d_dev, %struct.g2d_dev* %37, i32 0, i32 8
  %39 = load i8*, i8** %38, align 8
  %40 = call i64 @IS_ERR(i8* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %18
  %43 = load %struct.g2d_dev*, %struct.g2d_dev** %4, align 8
  %44 = getelementptr inbounds %struct.g2d_dev, %struct.g2d_dev* %43, i32 0, i32 8
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 @PTR_ERR(i8* %45)
  store i32 %46, i32* %2, align 4
  br label %280

47:                                               ; preds = %18
  %48 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %49 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %48, i32 0, i32 0
  %50 = call i8* @clk_get(%struct.TYPE_11__* %49, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %51 = load %struct.g2d_dev*, %struct.g2d_dev** %4, align 8
  %52 = getelementptr inbounds %struct.g2d_dev, %struct.g2d_dev* %51, i32 0, i32 0
  store i8* %50, i8** %52, align 8
  %53 = load %struct.g2d_dev*, %struct.g2d_dev** %4, align 8
  %54 = getelementptr inbounds %struct.g2d_dev, %struct.g2d_dev* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = call i64 @IS_ERR(i8* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %47
  %59 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %60 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %59, i32 0, i32 0
  %61 = call i32 @dev_err(%struct.TYPE_11__* %60, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %62 = load i32, i32* @ENXIO, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %2, align 4
  br label %280

64:                                               ; preds = %47
  %65 = load %struct.g2d_dev*, %struct.g2d_dev** %4, align 8
  %66 = getelementptr inbounds %struct.g2d_dev, %struct.g2d_dev* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 @clk_prepare(i8* %67)
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %8, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %64
  %72 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %73 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %72, i32 0, i32 0
  %74 = call i32 @dev_err(%struct.TYPE_11__* %73, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %274

75:                                               ; preds = %64
  %76 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %77 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %76, i32 0, i32 0
  %78 = call i8* @clk_get(%struct.TYPE_11__* %77, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %79 = load %struct.g2d_dev*, %struct.g2d_dev** %4, align 8
  %80 = getelementptr inbounds %struct.g2d_dev, %struct.g2d_dev* %79, i32 0, i32 1
  store i8* %78, i8** %80, align 8
  %81 = load %struct.g2d_dev*, %struct.g2d_dev** %4, align 8
  %82 = getelementptr inbounds %struct.g2d_dev, %struct.g2d_dev* %81, i32 0, i32 1
  %83 = load i8*, i8** %82, align 8
  %84 = call i64 @IS_ERR(i8* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %75
  %87 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %88 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %87, i32 0, i32 0
  %89 = call i32 @dev_err(%struct.TYPE_11__* %88, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %90 = load i32, i32* @ENXIO, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %8, align 4
  br label %269

92:                                               ; preds = %75
  %93 = load %struct.g2d_dev*, %struct.g2d_dev** %4, align 8
  %94 = getelementptr inbounds %struct.g2d_dev, %struct.g2d_dev* %93, i32 0, i32 1
  %95 = load i8*, i8** %94, align 8
  %96 = call i32 @clk_prepare(i8* %95)
  store i32 %96, i32* %8, align 4
  %97 = load i32, i32* %8, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %92
  %100 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %101 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %100, i32 0, i32 0
  %102 = call i32 @dev_err(%struct.TYPE_11__* %101, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  br label %264

103:                                              ; preds = %92
  %104 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %105 = load i32, i32* @IORESOURCE_IRQ, align 4
  %106 = call %struct.resource* @platform_get_resource(%struct.platform_device* %104, i32 %105, i32 0)
  store %struct.resource* %106, %struct.resource** %6, align 8
  %107 = load %struct.resource*, %struct.resource** %6, align 8
  %108 = icmp ne %struct.resource* %107, null
  br i1 %108, label %115, label %109

109:                                              ; preds = %103
  %110 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %111 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %110, i32 0, i32 0
  %112 = call i32 @dev_err(%struct.TYPE_11__* %111, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  %113 = load i32, i32* @ENXIO, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %8, align 4
  br label %259

115:                                              ; preds = %103
  %116 = load %struct.resource*, %struct.resource** %6, align 8
  %117 = getelementptr inbounds %struct.resource, %struct.resource* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.g2d_dev*, %struct.g2d_dev** %4, align 8
  %120 = getelementptr inbounds %struct.g2d_dev, %struct.g2d_dev* %119, i32 0, i32 7
  store i32 %118, i32* %120, align 4
  %121 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %122 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %121, i32 0, i32 0
  %123 = load %struct.g2d_dev*, %struct.g2d_dev** %4, align 8
  %124 = getelementptr inbounds %struct.g2d_dev, %struct.g2d_dev* %123, i32 0, i32 7
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @g2d_isr, align 4
  %127 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %128 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.g2d_dev*, %struct.g2d_dev** %4, align 8
  %131 = call i32 @devm_request_irq(%struct.TYPE_11__* %122, i32 %125, i32 %126, i32 0, i32 %129, %struct.g2d_dev* %130)
  store i32 %131, i32* %8, align 4
  %132 = load i32, i32* %8, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %115
  %135 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %136 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %135, i32 0, i32 0
  %137 = call i32 @dev_err(%struct.TYPE_11__* %136, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  br label %259

138:                                              ; preds = %115
  %139 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %140 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %139, i32 0, i32 0
  %141 = call i32 @DMA_BIT_MASK(i32 32)
  %142 = call i32 @vb2_dma_contig_set_max_seg_size(%struct.TYPE_11__* %140, i32 %141)
  %143 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %144 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %143, i32 0, i32 0
  %145 = load %struct.g2d_dev*, %struct.g2d_dev** %4, align 8
  %146 = getelementptr inbounds %struct.g2d_dev, %struct.g2d_dev* %145, i32 0, i32 2
  %147 = call i32 @v4l2_device_register(%struct.TYPE_11__* %144, i32* %146)
  store i32 %147, i32* %8, align 4
  %148 = load i32, i32* %8, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %138
  br label %259

151:                                              ; preds = %138
  %152 = call %struct.video_device* (...) @video_device_alloc()
  store %struct.video_device* %152, %struct.video_device** %5, align 8
  %153 = load %struct.video_device*, %struct.video_device** %5, align 8
  %154 = icmp ne %struct.video_device* %153, null
  br i1 %154, label %161, label %155

155:                                              ; preds = %151
  %156 = load %struct.g2d_dev*, %struct.g2d_dev** %4, align 8
  %157 = getelementptr inbounds %struct.g2d_dev, %struct.g2d_dev* %156, i32 0, i32 2
  %158 = call i32 @v4l2_err(i32* %157, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0))
  %159 = load i32, i32* @ENOMEM, align 4
  %160 = sub nsw i32 0, %159
  store i32 %160, i32* %8, align 4
  br label %255

161:                                              ; preds = %151
  %162 = load %struct.video_device*, %struct.video_device** %5, align 8
  %163 = bitcast %struct.video_device* %162 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %163, i8* align 8 bitcast (%struct.video_device* @g2d_videodev to i8*), i64 32, i1 false)
  %164 = load i32, i32* @V4L2_FL_QUIRK_INVERTED_CROP, align 4
  %165 = load %struct.video_device*, %struct.video_device** %5, align 8
  %166 = getelementptr inbounds %struct.video_device, %struct.video_device* %165, i32 0, i32 4
  %167 = call i32 @set_bit(i32 %164, i32* %166)
  %168 = load %struct.g2d_dev*, %struct.g2d_dev** %4, align 8
  %169 = getelementptr inbounds %struct.g2d_dev, %struct.g2d_dev* %168, i32 0, i32 6
  %170 = load %struct.video_device*, %struct.video_device** %5, align 8
  %171 = getelementptr inbounds %struct.video_device, %struct.video_device* %170, i32 0, i32 3
  store i32* %169, i32** %171, align 8
  %172 = load %struct.g2d_dev*, %struct.g2d_dev** %4, align 8
  %173 = getelementptr inbounds %struct.g2d_dev, %struct.g2d_dev* %172, i32 0, i32 2
  %174 = load %struct.video_device*, %struct.video_device** %5, align 8
  %175 = getelementptr inbounds %struct.video_device, %struct.video_device* %174, i32 0, i32 2
  store i32* %173, i32** %175, align 8
  %176 = load i32, i32* @V4L2_CAP_VIDEO_M2M, align 4
  %177 = load i32, i32* @V4L2_CAP_STREAMING, align 4
  %178 = or i32 %176, %177
  %179 = load %struct.video_device*, %struct.video_device** %5, align 8
  %180 = getelementptr inbounds %struct.video_device, %struct.video_device* %179, i32 0, i32 0
  store i32 %178, i32* %180, align 8
  %181 = load %struct.video_device*, %struct.video_device** %5, align 8
  %182 = load i32, i32* @VFL_TYPE_GRABBER, align 4
  %183 = call i32 @video_register_device(%struct.video_device* %181, i32 %182, i32 0)
  store i32 %183, i32* %8, align 4
  %184 = load i32, i32* %8, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %190

186:                                              ; preds = %161
  %187 = load %struct.g2d_dev*, %struct.g2d_dev** %4, align 8
  %188 = getelementptr inbounds %struct.g2d_dev, %struct.g2d_dev* %187, i32 0, i32 2
  %189 = call i32 @v4l2_err(i32* %188, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0))
  br label %252

190:                                              ; preds = %161
  %191 = load %struct.video_device*, %struct.video_device** %5, align 8
  %192 = load %struct.g2d_dev*, %struct.g2d_dev** %4, align 8
  %193 = call i32 @video_set_drvdata(%struct.video_device* %191, %struct.g2d_dev* %192)
  %194 = load %struct.video_device*, %struct.video_device** %5, align 8
  %195 = load %struct.g2d_dev*, %struct.g2d_dev** %4, align 8
  %196 = getelementptr inbounds %struct.g2d_dev, %struct.g2d_dev* %195, i32 0, i32 3
  store %struct.video_device* %194, %struct.video_device** %196, align 8
  %197 = load %struct.g2d_dev*, %struct.g2d_dev** %4, align 8
  %198 = getelementptr inbounds %struct.g2d_dev, %struct.g2d_dev* %197, i32 0, i32 2
  %199 = load %struct.video_device*, %struct.video_device** %5, align 8
  %200 = getelementptr inbounds %struct.video_device, %struct.video_device* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = call i32 @v4l2_info(i32* %198, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i64 0, i64 0), i32 %201)
  %203 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %204 = load %struct.g2d_dev*, %struct.g2d_dev** %4, align 8
  %205 = call i32 @platform_set_drvdata(%struct.platform_device* %203, %struct.g2d_dev* %204)
  %206 = call i8* @v4l2_m2m_init(i32* @g2d_m2m_ops)
  %207 = load %struct.g2d_dev*, %struct.g2d_dev** %4, align 8
  %208 = getelementptr inbounds %struct.g2d_dev, %struct.g2d_dev* %207, i32 0, i32 5
  store i8* %206, i8** %208, align 8
  %209 = load %struct.g2d_dev*, %struct.g2d_dev** %4, align 8
  %210 = getelementptr inbounds %struct.g2d_dev, %struct.g2d_dev* %209, i32 0, i32 5
  %211 = load i8*, i8** %210, align 8
  %212 = call i64 @IS_ERR(i8* %211)
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %222

214:                                              ; preds = %190
  %215 = load %struct.g2d_dev*, %struct.g2d_dev** %4, align 8
  %216 = getelementptr inbounds %struct.g2d_dev, %struct.g2d_dev* %215, i32 0, i32 2
  %217 = call i32 @v4l2_err(i32* %216, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i64 0, i64 0))
  %218 = load %struct.g2d_dev*, %struct.g2d_dev** %4, align 8
  %219 = getelementptr inbounds %struct.g2d_dev, %struct.g2d_dev* %218, i32 0, i32 5
  %220 = load i8*, i8** %219, align 8
  %221 = call i32 @PTR_ERR(i8* %220)
  store i32 %221, i32* %8, align 4
  br label %247

222:                                              ; preds = %190
  %223 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @def_frame, i32 0, i32 1), align 4
  %224 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @def_frame, i32 0, i32 2), align 8
  %225 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 4
  %227 = mul nsw i32 %223, %226
  %228 = ashr i32 %227, 3
  store i32 %228, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @def_frame, i32 0, i32 0), align 8
  %229 = load i32, i32* @exynos_g2d_match, align 4
  %230 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %231 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 4
  %234 = call %struct.of_device_id* @of_match_node(i32 %229, i32 %233)
  store %struct.of_device_id* %234, %struct.of_device_id** %7, align 8
  %235 = load %struct.of_device_id*, %struct.of_device_id** %7, align 8
  %236 = icmp ne %struct.of_device_id* %235, null
  br i1 %236, label %240, label %237

237:                                              ; preds = %222
  %238 = load i32, i32* @ENODEV, align 4
  %239 = sub nsw i32 0, %238
  store i32 %239, i32* %8, align 4
  br label %247

240:                                              ; preds = %222
  %241 = load %struct.of_device_id*, %struct.of_device_id** %7, align 8
  %242 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %241, i32 0, i32 0
  %243 = load i64, i64* %242, align 8
  %244 = inttoptr i64 %243 to %struct.g2d_variant*
  %245 = load %struct.g2d_dev*, %struct.g2d_dev** %4, align 8
  %246 = getelementptr inbounds %struct.g2d_dev, %struct.g2d_dev* %245, i32 0, i32 4
  store %struct.g2d_variant* %244, %struct.g2d_variant** %246, align 8
  store i32 0, i32* %2, align 4
  br label %280

247:                                              ; preds = %237, %214
  %248 = load %struct.g2d_dev*, %struct.g2d_dev** %4, align 8
  %249 = getelementptr inbounds %struct.g2d_dev, %struct.g2d_dev* %248, i32 0, i32 3
  %250 = load %struct.video_device*, %struct.video_device** %249, align 8
  %251 = call i32 @video_unregister_device(%struct.video_device* %250)
  br label %252

252:                                              ; preds = %247, %186
  %253 = load %struct.video_device*, %struct.video_device** %5, align 8
  %254 = call i32 @video_device_release(%struct.video_device* %253)
  br label %255

255:                                              ; preds = %252, %155
  %256 = load %struct.g2d_dev*, %struct.g2d_dev** %4, align 8
  %257 = getelementptr inbounds %struct.g2d_dev, %struct.g2d_dev* %256, i32 0, i32 2
  %258 = call i32 @v4l2_device_unregister(i32* %257)
  br label %259

259:                                              ; preds = %255, %150, %134, %109
  %260 = load %struct.g2d_dev*, %struct.g2d_dev** %4, align 8
  %261 = getelementptr inbounds %struct.g2d_dev, %struct.g2d_dev* %260, i32 0, i32 1
  %262 = load i8*, i8** %261, align 8
  %263 = call i32 @clk_unprepare(i8* %262)
  br label %264

264:                                              ; preds = %259, %99
  %265 = load %struct.g2d_dev*, %struct.g2d_dev** %4, align 8
  %266 = getelementptr inbounds %struct.g2d_dev, %struct.g2d_dev* %265, i32 0, i32 1
  %267 = load i8*, i8** %266, align 8
  %268 = call i32 @clk_put(i8* %267)
  br label %269

269:                                              ; preds = %264, %86
  %270 = load %struct.g2d_dev*, %struct.g2d_dev** %4, align 8
  %271 = getelementptr inbounds %struct.g2d_dev, %struct.g2d_dev* %270, i32 0, i32 0
  %272 = load i8*, i8** %271, align 8
  %273 = call i32 @clk_unprepare(i8* %272)
  br label %274

274:                                              ; preds = %269, %71
  %275 = load %struct.g2d_dev*, %struct.g2d_dev** %4, align 8
  %276 = getelementptr inbounds %struct.g2d_dev, %struct.g2d_dev* %275, i32 0, i32 0
  %277 = load i8*, i8** %276, align 8
  %278 = call i32 @clk_put(i8* %277)
  %279 = load i32, i32* %8, align 4
  store i32 %279, i32* %2, align 4
  br label %280

280:                                              ; preds = %274, %240, %58, %42, %15
  %281 = load i32, i32* %2, align 4
  ret i32 %281
}

declare dso_local %struct.g2d_dev* @devm_kzalloc(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i8* @devm_ioremap_resource(%struct.TYPE_11__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i8* @clk_get(%struct.TYPE_11__*, i8*) #1

declare dso_local i32 @dev_err(%struct.TYPE_11__*, i8*) #1

declare dso_local i32 @clk_prepare(i8*) #1

declare dso_local i32 @devm_request_irq(%struct.TYPE_11__*, i32, i32, i32, i32, %struct.g2d_dev*) #1

declare dso_local i32 @vb2_dma_contig_set_max_seg_size(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @v4l2_device_register(%struct.TYPE_11__*, i32*) #1

declare dso_local %struct.video_device* @video_device_alloc(...) #1

declare dso_local i32 @v4l2_err(i32*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @video_register_device(%struct.video_device*, i32, i32) #1

declare dso_local i32 @video_set_drvdata(%struct.video_device*, %struct.g2d_dev*) #1

declare dso_local i32 @v4l2_info(i32*, i8*, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.g2d_dev*) #1

declare dso_local i8* @v4l2_m2m_init(i32*) #1

declare dso_local %struct.of_device_id* @of_match_node(i32, i32) #1

declare dso_local i32 @video_unregister_device(%struct.video_device*) #1

declare dso_local i32 @video_device_release(%struct.video_device*) #1

declare dso_local i32 @v4l2_device_unregister(i32*) #1

declare dso_local i32 @clk_unprepare(i8*) #1

declare dso_local i32 @clk_put(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
