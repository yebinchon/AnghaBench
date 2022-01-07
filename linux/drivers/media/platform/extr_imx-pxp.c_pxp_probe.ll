; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_imx-pxp.c_pxp_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_imx-pxp.c_pxp_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.video_device = type { i8*, i32, i32*, i32* }
%struct.platform_device = type { i32 }
%struct.pxp_dev = type { i32, i32, i32, i32, %struct.video_device, i32, i32, i32 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"axi\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Failed to get clk: %d\0A\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"Failed to map register space: %d\0A\00", align 1
@pxp_irq_handler = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"Failed to request irq: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"PXP reset timeout: %d\0A\00", align 1
@pxp_videodev = common dso_local global %struct.video_device zeroinitializer, align 8
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"Device registered as /dev/video%d\0A\00", align 1
@m2m_ops = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [31 x i8] c"Failed to init mem2mem device\0A\00", align 1
@VFL_TYPE_GRABBER = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [33 x i8] c"Failed to register video device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @pxp_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxp_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.pxp_dev*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca %struct.video_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.pxp_dev* @devm_kzalloc(i32* %10, i32 64, i32 %11)
  store %struct.pxp_dev* %12, %struct.pxp_dev** %4, align 8
  %13 = load %struct.pxp_dev*, %struct.pxp_dev** %4, align 8
  %14 = icmp ne %struct.pxp_dev* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %200

18:                                               ; preds = %1
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 0
  %21 = call i32 @devm_clk_get(i32* %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.pxp_dev*, %struct.pxp_dev** %4, align 8
  %23 = getelementptr inbounds %struct.pxp_dev, %struct.pxp_dev* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load %struct.pxp_dev*, %struct.pxp_dev** %4, align 8
  %25 = getelementptr inbounds %struct.pxp_dev, %struct.pxp_dev* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i64 @IS_ERR(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %18
  %30 = load %struct.pxp_dev*, %struct.pxp_dev** %4, align 8
  %31 = getelementptr inbounds %struct.pxp_dev, %struct.pxp_dev* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @PTR_ERR(i32 %32)
  store i32 %33, i32* %8, align 4
  %34 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %35 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %34, i32 0, i32 0
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @dev_err(i32* %35, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* %8, align 4
  store i32 %38, i32* %2, align 4
  br label %200

39:                                               ; preds = %18
  %40 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %41 = load i32, i32* @IORESOURCE_MEM, align 4
  %42 = call %struct.resource* @platform_get_resource(%struct.platform_device* %40, i32 %41, i32 0)
  store %struct.resource* %42, %struct.resource** %5, align 8
  %43 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %44 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %43, i32 0, i32 0
  %45 = load %struct.resource*, %struct.resource** %5, align 8
  %46 = call i32 @devm_ioremap_resource(i32* %44, %struct.resource* %45)
  %47 = load %struct.pxp_dev*, %struct.pxp_dev** %4, align 8
  %48 = getelementptr inbounds %struct.pxp_dev, %struct.pxp_dev* %47, i32 0, i32 7
  store i32 %46, i32* %48, align 8
  %49 = load %struct.pxp_dev*, %struct.pxp_dev** %4, align 8
  %50 = getelementptr inbounds %struct.pxp_dev, %struct.pxp_dev* %49, i32 0, i32 7
  %51 = load i32, i32* %50, align 8
  %52 = call i64 @IS_ERR(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %64

54:                                               ; preds = %39
  %55 = load %struct.pxp_dev*, %struct.pxp_dev** %4, align 8
  %56 = getelementptr inbounds %struct.pxp_dev, %struct.pxp_dev* %55, i32 0, i32 7
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @PTR_ERR(i32 %57)
  store i32 %58, i32* %8, align 4
  %59 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %60 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %59, i32 0, i32 0
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @dev_err(i32* %60, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %61)
  %63 = load i32, i32* %8, align 4
  store i32 %63, i32* %2, align 4
  br label %200

64:                                               ; preds = %39
  %65 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %66 = call i32 @platform_get_irq(%struct.platform_device* %65, i32 0)
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %7, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %64
  %70 = load i32, i32* %7, align 4
  store i32 %70, i32* %2, align 4
  br label %200

71:                                               ; preds = %64
  %72 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %73 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %72, i32 0, i32 0
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* @pxp_irq_handler, align 4
  %76 = load i32, i32* @IRQF_ONESHOT, align 4
  %77 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %78 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %77, i32 0, i32 0
  %79 = call i32 @dev_name(i32* %78)
  %80 = load %struct.pxp_dev*, %struct.pxp_dev** %4, align 8
  %81 = call i32 @devm_request_threaded_irq(i32* %73, i32 %74, i32* null, i32 %75, i32 %76, i32 %79, %struct.pxp_dev* %80)
  store i32 %81, i32* %8, align 4
  %82 = load i32, i32* %8, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %71
  %85 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %86 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %85, i32 0, i32 0
  %87 = load i32, i32* %8, align 4
  %88 = call i32 @dev_err(i32* %86, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %87)
  %89 = load i32, i32* %8, align 4
  store i32 %89, i32* %2, align 4
  br label %200

90:                                               ; preds = %71
  %91 = load %struct.pxp_dev*, %struct.pxp_dev** %4, align 8
  %92 = getelementptr inbounds %struct.pxp_dev, %struct.pxp_dev* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @clk_prepare_enable(i32 %93)
  store i32 %94, i32* %8, align 4
  %95 = load i32, i32* %8, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %90
  %98 = load i32, i32* %8, align 4
  store i32 %98, i32* %2, align 4
  br label %200

99:                                               ; preds = %90
  %100 = load %struct.pxp_dev*, %struct.pxp_dev** %4, align 8
  %101 = call i32 @pxp_soft_reset(%struct.pxp_dev* %100)
  store i32 %101, i32* %8, align 4
  %102 = load i32, i32* %8, align 4
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %99
  %105 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %106 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %105, i32 0, i32 0
  %107 = load i32, i32* %8, align 4
  %108 = call i32 @dev_err(i32* %106, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %107)
  br label %194

109:                                              ; preds = %99
  %110 = load %struct.pxp_dev*, %struct.pxp_dev** %4, align 8
  %111 = getelementptr inbounds %struct.pxp_dev, %struct.pxp_dev* %110, i32 0, i32 6
  %112 = call i32 @spin_lock_init(i32* %111)
  %113 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %114 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %113, i32 0, i32 0
  %115 = load %struct.pxp_dev*, %struct.pxp_dev** %4, align 8
  %116 = getelementptr inbounds %struct.pxp_dev, %struct.pxp_dev* %115, i32 0, i32 1
  %117 = call i32 @v4l2_device_register(i32* %114, i32* %116)
  store i32 %117, i32* %8, align 4
  %118 = load i32, i32* %8, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %109
  br label %194

121:                                              ; preds = %109
  %122 = load %struct.pxp_dev*, %struct.pxp_dev** %4, align 8
  %123 = getelementptr inbounds %struct.pxp_dev, %struct.pxp_dev* %122, i32 0, i32 5
  %124 = call i32 @atomic_set(i32* %123, i32 0)
  %125 = load %struct.pxp_dev*, %struct.pxp_dev** %4, align 8
  %126 = getelementptr inbounds %struct.pxp_dev, %struct.pxp_dev* %125, i32 0, i32 3
  %127 = call i32 @mutex_init(i32* %126)
  %128 = load %struct.pxp_dev*, %struct.pxp_dev** %4, align 8
  %129 = getelementptr inbounds %struct.pxp_dev, %struct.pxp_dev* %128, i32 0, i32 4
  %130 = bitcast %struct.video_device* %129 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %130, i8* align 8 bitcast (%struct.video_device* @pxp_videodev to i8*), i64 32, i1 false)
  %131 = load %struct.pxp_dev*, %struct.pxp_dev** %4, align 8
  %132 = getelementptr inbounds %struct.pxp_dev, %struct.pxp_dev* %131, i32 0, i32 4
  store %struct.video_device* %132, %struct.video_device** %6, align 8
  %133 = load %struct.pxp_dev*, %struct.pxp_dev** %4, align 8
  %134 = getelementptr inbounds %struct.pxp_dev, %struct.pxp_dev* %133, i32 0, i32 3
  %135 = load %struct.video_device*, %struct.video_device** %6, align 8
  %136 = getelementptr inbounds %struct.video_device, %struct.video_device* %135, i32 0, i32 3
  store i32* %134, i32** %136, align 8
  %137 = load %struct.pxp_dev*, %struct.pxp_dev** %4, align 8
  %138 = getelementptr inbounds %struct.pxp_dev, %struct.pxp_dev* %137, i32 0, i32 1
  %139 = load %struct.video_device*, %struct.video_device** %6, align 8
  %140 = getelementptr inbounds %struct.video_device, %struct.video_device* %139, i32 0, i32 2
  store i32* %138, i32** %140, align 8
  %141 = load %struct.video_device*, %struct.video_device** %6, align 8
  %142 = load %struct.pxp_dev*, %struct.pxp_dev** %4, align 8
  %143 = call i32 @video_set_drvdata(%struct.video_device* %141, %struct.pxp_dev* %142)
  %144 = load %struct.video_device*, %struct.video_device** %6, align 8
  %145 = getelementptr inbounds %struct.video_device, %struct.video_device* %144, i32 0, i32 0
  %146 = load i8*, i8** %145, align 8
  %147 = load i8*, i8** getelementptr inbounds (%struct.video_device, %struct.video_device* @pxp_videodev, i32 0, i32 0), align 8
  %148 = call i32 @snprintf(i8* %146, i32 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %147)
  %149 = load %struct.pxp_dev*, %struct.pxp_dev** %4, align 8
  %150 = getelementptr inbounds %struct.pxp_dev, %struct.pxp_dev* %149, i32 0, i32 1
  %151 = load %struct.video_device*, %struct.video_device** %6, align 8
  %152 = getelementptr inbounds %struct.video_device, %struct.video_device* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 8
  %154 = call i32 @v4l2_info(i32* %150, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0), i32 %153)
  %155 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %156 = load %struct.pxp_dev*, %struct.pxp_dev** %4, align 8
  %157 = call i32 @platform_set_drvdata(%struct.platform_device* %155, %struct.pxp_dev* %156)
  %158 = call i32 @v4l2_m2m_init(i32* @m2m_ops)
  %159 = load %struct.pxp_dev*, %struct.pxp_dev** %4, align 8
  %160 = getelementptr inbounds %struct.pxp_dev, %struct.pxp_dev* %159, i32 0, i32 2
  store i32 %158, i32* %160, align 8
  %161 = load %struct.pxp_dev*, %struct.pxp_dev** %4, align 8
  %162 = getelementptr inbounds %struct.pxp_dev, %struct.pxp_dev* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 8
  %164 = call i64 @IS_ERR(i32 %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %174

166:                                              ; preds = %121
  %167 = load %struct.pxp_dev*, %struct.pxp_dev** %4, align 8
  %168 = getelementptr inbounds %struct.pxp_dev, %struct.pxp_dev* %167, i32 0, i32 1
  %169 = call i32 @v4l2_err(i32* %168, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0))
  %170 = load %struct.pxp_dev*, %struct.pxp_dev** %4, align 8
  %171 = getelementptr inbounds %struct.pxp_dev, %struct.pxp_dev* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 8
  %173 = call i32 @PTR_ERR(i32 %172)
  store i32 %173, i32* %8, align 4
  br label %190

174:                                              ; preds = %121
  %175 = load %struct.video_device*, %struct.video_device** %6, align 8
  %176 = load i32, i32* @VFL_TYPE_GRABBER, align 4
  %177 = call i32 @video_register_device(%struct.video_device* %175, i32 %176, i32 0)
  store i32 %177, i32* %8, align 4
  %178 = load i32, i32* %8, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %184

180:                                              ; preds = %174
  %181 = load %struct.pxp_dev*, %struct.pxp_dev** %4, align 8
  %182 = getelementptr inbounds %struct.pxp_dev, %struct.pxp_dev* %181, i32 0, i32 1
  %183 = call i32 @v4l2_err(i32* %182, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0))
  br label %185

184:                                              ; preds = %174
  store i32 0, i32* %2, align 4
  br label %200

185:                                              ; preds = %180
  %186 = load %struct.pxp_dev*, %struct.pxp_dev** %4, align 8
  %187 = getelementptr inbounds %struct.pxp_dev, %struct.pxp_dev* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 8
  %189 = call i32 @v4l2_m2m_release(i32 %188)
  br label %190

190:                                              ; preds = %185, %166
  %191 = load %struct.pxp_dev*, %struct.pxp_dev** %4, align 8
  %192 = getelementptr inbounds %struct.pxp_dev, %struct.pxp_dev* %191, i32 0, i32 1
  %193 = call i32 @v4l2_device_unregister(i32* %192)
  br label %194

194:                                              ; preds = %190, %120, %104
  %195 = load %struct.pxp_dev*, %struct.pxp_dev** %4, align 8
  %196 = getelementptr inbounds %struct.pxp_dev, %struct.pxp_dev* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = call i32 @clk_disable_unprepare(i32 %197)
  %199 = load i32, i32* %8, align 4
  store i32 %199, i32* %2, align 4
  br label %200

200:                                              ; preds = %194, %184, %97, %84, %69, %54, %29, %15
  %201 = load i32, i32* %2, align 4
  ret i32 %201
}

declare dso_local %struct.pxp_dev* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @devm_clk_get(i32*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(i32*, %struct.resource*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_threaded_irq(i32*, i32, i32*, i32, i32, i32, %struct.pxp_dev*) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @pxp_soft_reset(%struct.pxp_dev*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @v4l2_device_register(i32*, i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @video_set_drvdata(%struct.video_device*, %struct.pxp_dev*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @v4l2_info(i32*, i8*, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.pxp_dev*) #1

declare dso_local i32 @v4l2_m2m_init(i32*) #1

declare dso_local i32 @v4l2_err(i32*, i8*) #1

declare dso_local i32 @video_register_device(%struct.video_device*, i32, i32) #1

declare dso_local i32 @v4l2_m2m_release(i32) #1

declare dso_local i32 @v4l2_device_unregister(i32*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
