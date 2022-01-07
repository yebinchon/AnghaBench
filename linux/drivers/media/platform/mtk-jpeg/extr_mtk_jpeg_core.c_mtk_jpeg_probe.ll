; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/mtk-jpeg/extr_mtk_jpeg_core.c_mtk_jpeg_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/mtk-jpeg/extr_mtk_jpeg_core.c_mtk_jpeg_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, i32 }
%struct.mtk_jpeg_dev = type { i32, i32, %struct.TYPE_5__*, i32, i32, i32*, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32*, i32*, i32 (%struct.TYPE_5__*)*, i32*, i32*, i32 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@IORESOURCE_IRQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Failed to get dec_irq %d.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@mtk_jpeg_dec_irq = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Failed to request dec_irq %d (%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Failed to init clk, err %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Failed to register v4l2 device\0A\00", align 1
@mtk_jpeg_m2m_ops = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"Failed to init mem2mem device\0A\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"%s-dec\00", align 1
@MTK_JPEG_NAME = common dso_local global i8* null, align 8
@mtk_jpeg_fops = common dso_local global i32 0, align 4
@mtk_jpeg_ioctl_ops = common dso_local global i32 0, align 4
@VFL_DIR_M2M = common dso_local global i32 0, align 4
@V4L2_CAP_STREAMING = common dso_local global i32 0, align 4
@V4L2_CAP_VIDEO_M2M_MPLANE = common dso_local global i32 0, align 4
@VFL_TYPE_GRABBER = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [33 x i8] c"Failed to register video device\0A\00", align 1
@.str.7 = private unnamed_addr constant [51 x i8] c"decoder device registered as /dev/video%d (%d,%d)\0A\00", align 1
@VIDEO_MAJOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mtk_jpeg_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_jpeg_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.mtk_jpeg_dev*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.mtk_jpeg_dev* @devm_kzalloc(i32* %9, i32 40, i32 %10)
  store %struct.mtk_jpeg_dev* %11, %struct.mtk_jpeg_dev** %4, align 8
  %12 = load %struct.mtk_jpeg_dev*, %struct.mtk_jpeg_dev** %4, align 8
  %13 = icmp ne %struct.mtk_jpeg_dev* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %242

17:                                               ; preds = %1
  %18 = load %struct.mtk_jpeg_dev*, %struct.mtk_jpeg_dev** %4, align 8
  %19 = getelementptr inbounds %struct.mtk_jpeg_dev, %struct.mtk_jpeg_dev* %18, i32 0, i32 3
  %20 = call i32 @mutex_init(i32* %19)
  %21 = load %struct.mtk_jpeg_dev*, %struct.mtk_jpeg_dev** %4, align 8
  %22 = getelementptr inbounds %struct.mtk_jpeg_dev, %struct.mtk_jpeg_dev* %21, i32 0, i32 6
  %23 = call i32 @spin_lock_init(i32* %22)
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %24, i32 0, i32 0
  %26 = load %struct.mtk_jpeg_dev*, %struct.mtk_jpeg_dev** %4, align 8
  %27 = getelementptr inbounds %struct.mtk_jpeg_dev, %struct.mtk_jpeg_dev* %26, i32 0, i32 5
  store i32* %25, i32** %27, align 8
  %28 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %29 = load i32, i32* @IORESOURCE_MEM, align 4
  %30 = call %struct.resource* @platform_get_resource(%struct.platform_device* %28, i32 %29, i32 0)
  store %struct.resource* %30, %struct.resource** %5, align 8
  %31 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %32 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %31, i32 0, i32 0
  %33 = load %struct.resource*, %struct.resource** %5, align 8
  %34 = call i32 @devm_ioremap_resource(i32* %32, %struct.resource* %33)
  %35 = load %struct.mtk_jpeg_dev*, %struct.mtk_jpeg_dev** %4, align 8
  %36 = getelementptr inbounds %struct.mtk_jpeg_dev, %struct.mtk_jpeg_dev* %35, i32 0, i32 4
  store i32 %34, i32* %36, align 4
  %37 = load %struct.mtk_jpeg_dev*, %struct.mtk_jpeg_dev** %4, align 8
  %38 = getelementptr inbounds %struct.mtk_jpeg_dev, %struct.mtk_jpeg_dev* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @IS_ERR(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %17
  %43 = load %struct.mtk_jpeg_dev*, %struct.mtk_jpeg_dev** %4, align 8
  %44 = getelementptr inbounds %struct.mtk_jpeg_dev, %struct.mtk_jpeg_dev* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @PTR_ERR(i32 %45)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  store i32 %47, i32* %2, align 4
  br label %242

48:                                               ; preds = %17
  %49 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %50 = load i32, i32* @IORESOURCE_IRQ, align 4
  %51 = call %struct.resource* @platform_get_resource(%struct.platform_device* %49, i32 %50, i32 0)
  store %struct.resource* %51, %struct.resource** %5, align 8
  %52 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %53 = call i32 @platform_get_irq(%struct.platform_device* %52, i32 0)
  store i32 %53, i32* %6, align 4
  %54 = load %struct.resource*, %struct.resource** %5, align 8
  %55 = icmp ne %struct.resource* %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %48
  %57 = load i32, i32* %6, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %56, %48
  %60 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %61 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %60, i32 0, i32 0
  %62 = load i32, i32* %6, align 4
  %63 = call i32 (i32*, i8*, ...) @dev_err(i32* %61, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* %7, align 4
  store i32 %66, i32* %2, align 4
  br label %242

67:                                               ; preds = %56
  %68 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %69 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %68, i32 0, i32 0
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* @mtk_jpeg_dec_irq, align 4
  %72 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %73 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.mtk_jpeg_dev*, %struct.mtk_jpeg_dev** %4, align 8
  %76 = call i32 @devm_request_irq(i32* %69, i32 %70, i32 %71, i32 0, i32 %74, %struct.mtk_jpeg_dev* %75)
  store i32 %76, i32* %7, align 4
  %77 = load i32, i32* %7, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %87

79:                                               ; preds = %67
  %80 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %81 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %80, i32 0, i32 0
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* %7, align 4
  %84 = call i32 (i32*, i8*, ...) @dev_err(i32* %81, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %82, i32 %83)
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %7, align 4
  br label %240

87:                                               ; preds = %67
  %88 = load %struct.mtk_jpeg_dev*, %struct.mtk_jpeg_dev** %4, align 8
  %89 = call i32 @mtk_jpeg_clk_init(%struct.mtk_jpeg_dev* %88)
  store i32 %89, i32* %7, align 4
  %90 = load i32, i32* %7, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %87
  %93 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %94 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %93, i32 0, i32 0
  %95 = load i32, i32* %7, align 4
  %96 = call i32 (i32*, i8*, ...) @dev_err(i32* %94, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %95)
  br label %239

97:                                               ; preds = %87
  %98 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %99 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %98, i32 0, i32 0
  %100 = load %struct.mtk_jpeg_dev*, %struct.mtk_jpeg_dev** %4, align 8
  %101 = getelementptr inbounds %struct.mtk_jpeg_dev, %struct.mtk_jpeg_dev* %100, i32 0, i32 0
  %102 = call i32 @v4l2_device_register(i32* %99, i32* %101)
  store i32 %102, i32* %7, align 4
  %103 = load i32, i32* %7, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %97
  %106 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %107 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %106, i32 0, i32 0
  %108 = call i32 (i32*, i8*, ...) @dev_err(i32* %107, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %109 = load i32, i32* @EINVAL, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %7, align 4
  br label %238

111:                                              ; preds = %97
  %112 = call i32 @v4l2_m2m_init(i32* @mtk_jpeg_m2m_ops)
  %113 = load %struct.mtk_jpeg_dev*, %struct.mtk_jpeg_dev** %4, align 8
  %114 = getelementptr inbounds %struct.mtk_jpeg_dev, %struct.mtk_jpeg_dev* %113, i32 0, i32 1
  store i32 %112, i32* %114, align 4
  %115 = load %struct.mtk_jpeg_dev*, %struct.mtk_jpeg_dev** %4, align 8
  %116 = getelementptr inbounds %struct.mtk_jpeg_dev, %struct.mtk_jpeg_dev* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = call i64 @IS_ERR(i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %128

120:                                              ; preds = %111
  %121 = load %struct.mtk_jpeg_dev*, %struct.mtk_jpeg_dev** %4, align 8
  %122 = getelementptr inbounds %struct.mtk_jpeg_dev, %struct.mtk_jpeg_dev* %121, i32 0, i32 0
  %123 = call i32 @v4l2_err(i32* %122, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %124 = load %struct.mtk_jpeg_dev*, %struct.mtk_jpeg_dev** %4, align 8
  %125 = getelementptr inbounds %struct.mtk_jpeg_dev, %struct.mtk_jpeg_dev* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @PTR_ERR(i32 %126)
  store i32 %127, i32* %7, align 4
  br label %234

128:                                              ; preds = %111
  %129 = call %struct.TYPE_5__* (...) @video_device_alloc()
  %130 = load %struct.mtk_jpeg_dev*, %struct.mtk_jpeg_dev** %4, align 8
  %131 = getelementptr inbounds %struct.mtk_jpeg_dev, %struct.mtk_jpeg_dev* %130, i32 0, i32 2
  store %struct.TYPE_5__* %129, %struct.TYPE_5__** %131, align 8
  %132 = load %struct.mtk_jpeg_dev*, %struct.mtk_jpeg_dev** %4, align 8
  %133 = getelementptr inbounds %struct.mtk_jpeg_dev, %struct.mtk_jpeg_dev* %132, i32 0, i32 2
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** %133, align 8
  %135 = icmp ne %struct.TYPE_5__* %134, null
  br i1 %135, label %139, label %136

136:                                              ; preds = %128
  %137 = load i32, i32* @ENOMEM, align 4
  %138 = sub nsw i32 0, %137
  store i32 %138, i32* %7, align 4
  br label %229

139:                                              ; preds = %128
  %140 = load %struct.mtk_jpeg_dev*, %struct.mtk_jpeg_dev** %4, align 8
  %141 = getelementptr inbounds %struct.mtk_jpeg_dev, %struct.mtk_jpeg_dev* %140, i32 0, i32 2
  %142 = load %struct.TYPE_5__*, %struct.TYPE_5__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 9
  %144 = load i32, i32* %143, align 8
  %145 = load i8*, i8** @MTK_JPEG_NAME, align 8
  %146 = call i32 @snprintf(i32 %144, i32 4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* %145)
  %147 = load %struct.mtk_jpeg_dev*, %struct.mtk_jpeg_dev** %4, align 8
  %148 = getelementptr inbounds %struct.mtk_jpeg_dev, %struct.mtk_jpeg_dev* %147, i32 0, i32 2
  %149 = load %struct.TYPE_5__*, %struct.TYPE_5__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 8
  store i32* @mtk_jpeg_fops, i32** %150, align 8
  %151 = load %struct.mtk_jpeg_dev*, %struct.mtk_jpeg_dev** %4, align 8
  %152 = getelementptr inbounds %struct.mtk_jpeg_dev, %struct.mtk_jpeg_dev* %151, i32 0, i32 2
  %153 = load %struct.TYPE_5__*, %struct.TYPE_5__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i32 0, i32 7
  store i32* @mtk_jpeg_ioctl_ops, i32** %154, align 8
  %155 = load %struct.mtk_jpeg_dev*, %struct.mtk_jpeg_dev** %4, align 8
  %156 = getelementptr inbounds %struct.mtk_jpeg_dev, %struct.mtk_jpeg_dev* %155, i32 0, i32 2
  %157 = load %struct.TYPE_5__*, %struct.TYPE_5__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 0
  store i32 -1, i32* %158, align 8
  %159 = load %struct.mtk_jpeg_dev*, %struct.mtk_jpeg_dev** %4, align 8
  %160 = getelementptr inbounds %struct.mtk_jpeg_dev, %struct.mtk_jpeg_dev* %159, i32 0, i32 2
  %161 = load %struct.TYPE_5__*, %struct.TYPE_5__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i32 0, i32 6
  store i32 (%struct.TYPE_5__*)* @video_device_release, i32 (%struct.TYPE_5__*)** %162, align 8
  %163 = load %struct.mtk_jpeg_dev*, %struct.mtk_jpeg_dev** %4, align 8
  %164 = getelementptr inbounds %struct.mtk_jpeg_dev, %struct.mtk_jpeg_dev* %163, i32 0, i32 3
  %165 = load %struct.mtk_jpeg_dev*, %struct.mtk_jpeg_dev** %4, align 8
  %166 = getelementptr inbounds %struct.mtk_jpeg_dev, %struct.mtk_jpeg_dev* %165, i32 0, i32 2
  %167 = load %struct.TYPE_5__*, %struct.TYPE_5__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i32 0, i32 5
  store i32* %164, i32** %168, align 8
  %169 = load %struct.mtk_jpeg_dev*, %struct.mtk_jpeg_dev** %4, align 8
  %170 = getelementptr inbounds %struct.mtk_jpeg_dev, %struct.mtk_jpeg_dev* %169, i32 0, i32 0
  %171 = load %struct.mtk_jpeg_dev*, %struct.mtk_jpeg_dev** %4, align 8
  %172 = getelementptr inbounds %struct.mtk_jpeg_dev, %struct.mtk_jpeg_dev* %171, i32 0, i32 2
  %173 = load %struct.TYPE_5__*, %struct.TYPE_5__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %173, i32 0, i32 4
  store i32* %170, i32** %174, align 8
  %175 = load i32, i32* @VFL_DIR_M2M, align 4
  %176 = load %struct.mtk_jpeg_dev*, %struct.mtk_jpeg_dev** %4, align 8
  %177 = getelementptr inbounds %struct.mtk_jpeg_dev, %struct.mtk_jpeg_dev* %176, i32 0, i32 2
  %178 = load %struct.TYPE_5__*, %struct.TYPE_5__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %178, i32 0, i32 3
  store i32 %175, i32* %179, align 4
  %180 = load i32, i32* @V4L2_CAP_STREAMING, align 4
  %181 = load i32, i32* @V4L2_CAP_VIDEO_M2M_MPLANE, align 4
  %182 = or i32 %180, %181
  %183 = load %struct.mtk_jpeg_dev*, %struct.mtk_jpeg_dev** %4, align 8
  %184 = getelementptr inbounds %struct.mtk_jpeg_dev, %struct.mtk_jpeg_dev* %183, i32 0, i32 2
  %185 = load %struct.TYPE_5__*, %struct.TYPE_5__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %185, i32 0, i32 1
  store i32 %182, i32* %186, align 4
  %187 = load %struct.mtk_jpeg_dev*, %struct.mtk_jpeg_dev** %4, align 8
  %188 = getelementptr inbounds %struct.mtk_jpeg_dev, %struct.mtk_jpeg_dev* %187, i32 0, i32 2
  %189 = load %struct.TYPE_5__*, %struct.TYPE_5__** %188, align 8
  %190 = load i32, i32* @VFL_TYPE_GRABBER, align 4
  %191 = call i32 @video_register_device(%struct.TYPE_5__* %189, i32 %190, i32 3)
  store i32 %191, i32* %7, align 4
  %192 = load i32, i32* %7, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %198

194:                                              ; preds = %139
  %195 = load %struct.mtk_jpeg_dev*, %struct.mtk_jpeg_dev** %4, align 8
  %196 = getelementptr inbounds %struct.mtk_jpeg_dev, %struct.mtk_jpeg_dev* %195, i32 0, i32 0
  %197 = call i32 @v4l2_err(i32* %196, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0))
  br label %224

198:                                              ; preds = %139
  %199 = load %struct.mtk_jpeg_dev*, %struct.mtk_jpeg_dev** %4, align 8
  %200 = getelementptr inbounds %struct.mtk_jpeg_dev, %struct.mtk_jpeg_dev* %199, i32 0, i32 2
  %201 = load %struct.TYPE_5__*, %struct.TYPE_5__** %200, align 8
  %202 = load %struct.mtk_jpeg_dev*, %struct.mtk_jpeg_dev** %4, align 8
  %203 = call i32 @video_set_drvdata(%struct.TYPE_5__* %201, %struct.mtk_jpeg_dev* %202)
  %204 = load %struct.mtk_jpeg_dev*, %struct.mtk_jpeg_dev** %4, align 8
  %205 = getelementptr inbounds %struct.mtk_jpeg_dev, %struct.mtk_jpeg_dev* %204, i32 0, i32 0
  %206 = load %struct.mtk_jpeg_dev*, %struct.mtk_jpeg_dev** %4, align 8
  %207 = getelementptr inbounds %struct.mtk_jpeg_dev, %struct.mtk_jpeg_dev* %206, i32 0, i32 2
  %208 = load %struct.TYPE_5__*, %struct.TYPE_5__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %208, i32 0, i32 2
  %210 = load i32, i32* %209, align 8
  %211 = load i32, i32* @VIDEO_MAJOR, align 4
  %212 = load %struct.mtk_jpeg_dev*, %struct.mtk_jpeg_dev** %4, align 8
  %213 = getelementptr inbounds %struct.mtk_jpeg_dev, %struct.mtk_jpeg_dev* %212, i32 0, i32 2
  %214 = load %struct.TYPE_5__*, %struct.TYPE_5__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = call i32 @v4l2_info(i32* %205, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.7, i64 0, i64 0), i32 %210, i32 %211, i32 %216)
  %218 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %219 = load %struct.mtk_jpeg_dev*, %struct.mtk_jpeg_dev** %4, align 8
  %220 = call i32 @platform_set_drvdata(%struct.platform_device* %218, %struct.mtk_jpeg_dev* %219)
  %221 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %222 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %221, i32 0, i32 0
  %223 = call i32 @pm_runtime_enable(i32* %222)
  store i32 0, i32* %2, align 4
  br label %242

224:                                              ; preds = %194
  %225 = load %struct.mtk_jpeg_dev*, %struct.mtk_jpeg_dev** %4, align 8
  %226 = getelementptr inbounds %struct.mtk_jpeg_dev, %struct.mtk_jpeg_dev* %225, i32 0, i32 2
  %227 = load %struct.TYPE_5__*, %struct.TYPE_5__** %226, align 8
  %228 = call i32 @video_device_release(%struct.TYPE_5__* %227)
  br label %229

229:                                              ; preds = %224, %136
  %230 = load %struct.mtk_jpeg_dev*, %struct.mtk_jpeg_dev** %4, align 8
  %231 = getelementptr inbounds %struct.mtk_jpeg_dev, %struct.mtk_jpeg_dev* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = call i32 @v4l2_m2m_release(i32 %232)
  br label %234

234:                                              ; preds = %229, %120
  %235 = load %struct.mtk_jpeg_dev*, %struct.mtk_jpeg_dev** %4, align 8
  %236 = getelementptr inbounds %struct.mtk_jpeg_dev, %struct.mtk_jpeg_dev* %235, i32 0, i32 0
  %237 = call i32 @v4l2_device_unregister(i32* %236)
  br label %238

238:                                              ; preds = %234, %105
  br label %239

239:                                              ; preds = %238, %92
  br label %240

240:                                              ; preds = %239, %79
  %241 = load i32, i32* %7, align 4
  store i32 %241, i32* %2, align 4
  br label %242

242:                                              ; preds = %240, %198, %59, %42, %14
  %243 = load i32, i32* %2, align 4
  ret i32 %243
}

declare dso_local %struct.mtk_jpeg_dev* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(i32*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @devm_request_irq(i32*, i32, i32, i32, i32, %struct.mtk_jpeg_dev*) #1

declare dso_local i32 @mtk_jpeg_clk_init(%struct.mtk_jpeg_dev*) #1

declare dso_local i32 @v4l2_device_register(i32*, i32*) #1

declare dso_local i32 @v4l2_m2m_init(i32*) #1

declare dso_local i32 @v4l2_err(i32*, i8*) #1

declare dso_local %struct.TYPE_5__* @video_device_alloc(...) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i32 @video_device_release(%struct.TYPE_5__*) #1

declare dso_local i32 @video_register_device(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @video_set_drvdata(%struct.TYPE_5__*, %struct.mtk_jpeg_dev*) #1

declare dso_local i32 @v4l2_info(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.mtk_jpeg_dev*) #1

declare dso_local i32 @pm_runtime_enable(i32*) #1

declare dso_local i32 @v4l2_m2m_release(i32) #1

declare dso_local i32 @v4l2_device_unregister(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
