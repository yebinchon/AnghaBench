; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/rockchip/rga/extr_rga.c_rga_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/rockchip/rga/extr_rga.c_rga_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.video_device = type { i32, i32*, i32* }
%struct.TYPE_15__ = type { i32, i32, i32, i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32 }
%struct.platform_device = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32 }
%struct.rockchip_rga = type { i32*, i32*, %struct.TYPE_18__*, i32, %struct.video_device*, i32, i32, %struct.TYPE_16__, i32, i32, i32, i32 }
%struct.TYPE_16__ = type { i32, i32 }
%struct.resource = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Unable to parse OF data\0A\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@rga_isr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"failed to request irq\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Failed to allocate video device\0A\00", align 1
@rga_videodev = common dso_local global %struct.video_device zeroinitializer, align 8
@rga_m2m_ops = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"Failed to init mem2mem device\0A\00", align 1
@RGA_VERSION_INFO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"HW Version: 0x%02x.%02x\0A\00", align 1
@RGA_CMDBUF_SIZE = common dso_local global i32 0, align 4
@DMA_ATTR_WRITE_COMBINE = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@def_frame = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@VFL_TYPE_GRABBER = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [33 x i8] c"Failed to register video device\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"Registered %s as /dev/%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @rga_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rga_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.rockchip_rga*, align 8
  %5 = alloca %struct.video_device*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store i32 0, i32* %7, align 4
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENODEV, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %258

17:                                               ; preds = %1
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 0
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.rockchip_rga* @devm_kzalloc(%struct.TYPE_18__* %19, i32 72, i32 %20)
  store %struct.rockchip_rga* %21, %struct.rockchip_rga** %4, align 8
  %22 = load %struct.rockchip_rga*, %struct.rockchip_rga** %4, align 8
  %23 = icmp ne %struct.rockchip_rga* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %17
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %258

27:                                               ; preds = %17
  %28 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %29 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %28, i32 0, i32 0
  %30 = load %struct.rockchip_rga*, %struct.rockchip_rga** %4, align 8
  %31 = getelementptr inbounds %struct.rockchip_rga, %struct.rockchip_rga* %30, i32 0, i32 2
  store %struct.TYPE_18__* %29, %struct.TYPE_18__** %31, align 8
  %32 = load %struct.rockchip_rga*, %struct.rockchip_rga** %4, align 8
  %33 = getelementptr inbounds %struct.rockchip_rga, %struct.rockchip_rga* %32, i32 0, i32 11
  %34 = call i32 @spin_lock_init(i32* %33)
  %35 = load %struct.rockchip_rga*, %struct.rockchip_rga** %4, align 8
  %36 = getelementptr inbounds %struct.rockchip_rga, %struct.rockchip_rga* %35, i32 0, i32 9
  %37 = call i32 @mutex_init(i32* %36)
  %38 = load %struct.rockchip_rga*, %struct.rockchip_rga** %4, align 8
  %39 = call i32 @rga_parse_dt(%struct.rockchip_rga* %38)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %27
  %43 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %44 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %43, i32 0, i32 0
  %45 = call i32 @dev_err(%struct.TYPE_18__* %44, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %46

46:                                               ; preds = %42, %27
  %47 = load %struct.rockchip_rga*, %struct.rockchip_rga** %4, align 8
  %48 = getelementptr inbounds %struct.rockchip_rga, %struct.rockchip_rga* %47, i32 0, i32 2
  %49 = load %struct.TYPE_18__*, %struct.TYPE_18__** %48, align 8
  %50 = call i32 @pm_runtime_enable(%struct.TYPE_18__* %49)
  %51 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %52 = load i32, i32* @IORESOURCE_MEM, align 4
  %53 = call %struct.resource* @platform_get_resource(%struct.platform_device* %51, i32 %52, i32 0)
  store %struct.resource* %53, %struct.resource** %6, align 8
  %54 = load %struct.rockchip_rga*, %struct.rockchip_rga** %4, align 8
  %55 = getelementptr inbounds %struct.rockchip_rga, %struct.rockchip_rga* %54, i32 0, i32 2
  %56 = load %struct.TYPE_18__*, %struct.TYPE_18__** %55, align 8
  %57 = load %struct.resource*, %struct.resource** %6, align 8
  %58 = call i32 @devm_ioremap_resource(%struct.TYPE_18__* %56, %struct.resource* %57)
  %59 = load %struct.rockchip_rga*, %struct.rockchip_rga** %4, align 8
  %60 = getelementptr inbounds %struct.rockchip_rga, %struct.rockchip_rga* %59, i32 0, i32 10
  store i32 %58, i32* %60, align 8
  %61 = load %struct.rockchip_rga*, %struct.rockchip_rga** %4, align 8
  %62 = getelementptr inbounds %struct.rockchip_rga, %struct.rockchip_rga* %61, i32 0, i32 10
  %63 = load i32, i32* %62, align 8
  %64 = call i64 @IS_ERR(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %46
  %67 = load %struct.rockchip_rga*, %struct.rockchip_rga** %4, align 8
  %68 = getelementptr inbounds %struct.rockchip_rga, %struct.rockchip_rga* %67, i32 0, i32 10
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @PTR_ERR(i32 %69)
  store i32 %70, i32* %7, align 4
  br label %252

71:                                               ; preds = %46
  %72 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %73 = call i32 @platform_get_irq(%struct.platform_device* %72, i32 0)
  store i32 %73, i32* %8, align 4
  %74 = load i32, i32* %8, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %71
  %77 = load i32, i32* %8, align 4
  store i32 %77, i32* %7, align 4
  br label %252

78:                                               ; preds = %71
  %79 = load %struct.rockchip_rga*, %struct.rockchip_rga** %4, align 8
  %80 = getelementptr inbounds %struct.rockchip_rga, %struct.rockchip_rga* %79, i32 0, i32 2
  %81 = load %struct.TYPE_18__*, %struct.TYPE_18__** %80, align 8
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* @rga_isr, align 4
  %84 = load %struct.rockchip_rga*, %struct.rockchip_rga** %4, align 8
  %85 = getelementptr inbounds %struct.rockchip_rga, %struct.rockchip_rga* %84, i32 0, i32 2
  %86 = load %struct.TYPE_18__*, %struct.TYPE_18__** %85, align 8
  %87 = call i32 @dev_name(%struct.TYPE_18__* %86)
  %88 = load %struct.rockchip_rga*, %struct.rockchip_rga** %4, align 8
  %89 = call i32 @devm_request_irq(%struct.TYPE_18__* %81, i32 %82, i32 %83, i32 0, i32 %87, %struct.rockchip_rga* %88)
  store i32 %89, i32* %7, align 4
  %90 = load i32, i32* %7, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %78
  %93 = load %struct.rockchip_rga*, %struct.rockchip_rga** %4, align 8
  %94 = getelementptr inbounds %struct.rockchip_rga, %struct.rockchip_rga* %93, i32 0, i32 2
  %95 = load %struct.TYPE_18__*, %struct.TYPE_18__** %94, align 8
  %96 = call i32 @dev_err(%struct.TYPE_18__* %95, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %252

97:                                               ; preds = %78
  %98 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %99 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %98, i32 0, i32 0
  %100 = load %struct.rockchip_rga*, %struct.rockchip_rga** %4, align 8
  %101 = getelementptr inbounds %struct.rockchip_rga, %struct.rockchip_rga* %100, i32 0, i32 3
  %102 = call i32 @v4l2_device_register(%struct.TYPE_18__* %99, i32* %101)
  store i32 %102, i32* %7, align 4
  %103 = load i32, i32* %7, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %97
  br label %252

106:                                              ; preds = %97
  %107 = call %struct.video_device* (...) @video_device_alloc()
  store %struct.video_device* %107, %struct.video_device** %5, align 8
  %108 = load %struct.video_device*, %struct.video_device** %5, align 8
  %109 = icmp ne %struct.video_device* %108, null
  br i1 %109, label %116, label %110

110:                                              ; preds = %106
  %111 = load %struct.rockchip_rga*, %struct.rockchip_rga** %4, align 8
  %112 = getelementptr inbounds %struct.rockchip_rga, %struct.rockchip_rga* %111, i32 0, i32 3
  %113 = call i32 @v4l2_err(i32* %112, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %114 = load i32, i32* @ENOMEM, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %7, align 4
  br label %248

116:                                              ; preds = %106
  %117 = load %struct.video_device*, %struct.video_device** %5, align 8
  %118 = bitcast %struct.video_device* %117 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %118, i8* align 8 bitcast (%struct.video_device* @rga_videodev to i8*), i64 24, i1 false)
  %119 = load %struct.rockchip_rga*, %struct.rockchip_rga** %4, align 8
  %120 = getelementptr inbounds %struct.rockchip_rga, %struct.rockchip_rga* %119, i32 0, i32 9
  %121 = load %struct.video_device*, %struct.video_device** %5, align 8
  %122 = getelementptr inbounds %struct.video_device, %struct.video_device* %121, i32 0, i32 2
  store i32* %120, i32** %122, align 8
  %123 = load %struct.rockchip_rga*, %struct.rockchip_rga** %4, align 8
  %124 = getelementptr inbounds %struct.rockchip_rga, %struct.rockchip_rga* %123, i32 0, i32 3
  %125 = load %struct.video_device*, %struct.video_device** %5, align 8
  %126 = getelementptr inbounds %struct.video_device, %struct.video_device* %125, i32 0, i32 1
  store i32* %124, i32** %126, align 8
  %127 = load %struct.video_device*, %struct.video_device** %5, align 8
  %128 = load %struct.rockchip_rga*, %struct.rockchip_rga** %4, align 8
  %129 = call i32 @video_set_drvdata(%struct.video_device* %127, %struct.rockchip_rga* %128)
  %130 = load %struct.video_device*, %struct.video_device** %5, align 8
  %131 = load %struct.rockchip_rga*, %struct.rockchip_rga** %4, align 8
  %132 = getelementptr inbounds %struct.rockchip_rga, %struct.rockchip_rga* %131, i32 0, i32 4
  store %struct.video_device* %130, %struct.video_device** %132, align 8
  %133 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %134 = load %struct.rockchip_rga*, %struct.rockchip_rga** %4, align 8
  %135 = call i32 @platform_set_drvdata(%struct.platform_device* %133, %struct.rockchip_rga* %134)
  %136 = call i32 @v4l2_m2m_init(i32* @rga_m2m_ops)
  %137 = load %struct.rockchip_rga*, %struct.rockchip_rga** %4, align 8
  %138 = getelementptr inbounds %struct.rockchip_rga, %struct.rockchip_rga* %137, i32 0, i32 8
  store i32 %136, i32* %138, align 8
  %139 = load %struct.rockchip_rga*, %struct.rockchip_rga** %4, align 8
  %140 = getelementptr inbounds %struct.rockchip_rga, %struct.rockchip_rga* %139, i32 0, i32 8
  %141 = load i32, i32* %140, align 8
  %142 = call i64 @IS_ERR(i32 %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %152

144:                                              ; preds = %116
  %145 = load %struct.rockchip_rga*, %struct.rockchip_rga** %4, align 8
  %146 = getelementptr inbounds %struct.rockchip_rga, %struct.rockchip_rga* %145, i32 0, i32 3
  %147 = call i32 @v4l2_err(i32* %146, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %148 = load %struct.rockchip_rga*, %struct.rockchip_rga** %4, align 8
  %149 = getelementptr inbounds %struct.rockchip_rga, %struct.rockchip_rga* %148, i32 0, i32 8
  %150 = load i32, i32* %149, align 8
  %151 = call i32 @PTR_ERR(i32 %150)
  store i32 %151, i32* %7, align 4
  br label %243

152:                                              ; preds = %116
  %153 = load %struct.rockchip_rga*, %struct.rockchip_rga** %4, align 8
  %154 = getelementptr inbounds %struct.rockchip_rga, %struct.rockchip_rga* %153, i32 0, i32 2
  %155 = load %struct.TYPE_18__*, %struct.TYPE_18__** %154, align 8
  %156 = call i32 @pm_runtime_get_sync(%struct.TYPE_18__* %155)
  %157 = load %struct.rockchip_rga*, %struct.rockchip_rga** %4, align 8
  %158 = load i32, i32* @RGA_VERSION_INFO, align 4
  %159 = call i32 @rga_read(%struct.rockchip_rga* %157, i32 %158)
  %160 = ashr i32 %159, 24
  %161 = and i32 %160, 255
  %162 = load %struct.rockchip_rga*, %struct.rockchip_rga** %4, align 8
  %163 = getelementptr inbounds %struct.rockchip_rga, %struct.rockchip_rga* %162, i32 0, i32 7
  %164 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %163, i32 0, i32 0
  store i32 %161, i32* %164, align 8
  %165 = load %struct.rockchip_rga*, %struct.rockchip_rga** %4, align 8
  %166 = load i32, i32* @RGA_VERSION_INFO, align 4
  %167 = call i32 @rga_read(%struct.rockchip_rga* %165, i32 %166)
  %168 = ashr i32 %167, 20
  %169 = and i32 %168, 15
  %170 = load %struct.rockchip_rga*, %struct.rockchip_rga** %4, align 8
  %171 = getelementptr inbounds %struct.rockchip_rga, %struct.rockchip_rga* %170, i32 0, i32 7
  %172 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %171, i32 0, i32 1
  store i32 %169, i32* %172, align 4
  %173 = load %struct.rockchip_rga*, %struct.rockchip_rga** %4, align 8
  %174 = getelementptr inbounds %struct.rockchip_rga, %struct.rockchip_rga* %173, i32 0, i32 3
  %175 = load %struct.rockchip_rga*, %struct.rockchip_rga** %4, align 8
  %176 = getelementptr inbounds %struct.rockchip_rga, %struct.rockchip_rga* %175, i32 0, i32 7
  %177 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = load %struct.rockchip_rga*, %struct.rockchip_rga** %4, align 8
  %180 = getelementptr inbounds %struct.rockchip_rga, %struct.rockchip_rga* %179, i32 0, i32 7
  %181 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = call i32 @v4l2_info(i32* %174, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %178, i32 %182)
  %184 = load %struct.rockchip_rga*, %struct.rockchip_rga** %4, align 8
  %185 = getelementptr inbounds %struct.rockchip_rga, %struct.rockchip_rga* %184, i32 0, i32 2
  %186 = load %struct.TYPE_18__*, %struct.TYPE_18__** %185, align 8
  %187 = call i32 @pm_runtime_put(%struct.TYPE_18__* %186)
  %188 = load %struct.rockchip_rga*, %struct.rockchip_rga** %4, align 8
  %189 = getelementptr inbounds %struct.rockchip_rga, %struct.rockchip_rga* %188, i32 0, i32 2
  %190 = load %struct.TYPE_18__*, %struct.TYPE_18__** %189, align 8
  %191 = load i32, i32* @RGA_CMDBUF_SIZE, align 4
  %192 = load %struct.rockchip_rga*, %struct.rockchip_rga** %4, align 8
  %193 = getelementptr inbounds %struct.rockchip_rga, %struct.rockchip_rga* %192, i32 0, i32 5
  %194 = load i32, i32* @GFP_KERNEL, align 4
  %195 = load i32, i32* @DMA_ATTR_WRITE_COMBINE, align 4
  %196 = call i32 @dma_alloc_attrs(%struct.TYPE_18__* %190, i32 %191, i32* %193, i32 %194, i32 %195)
  %197 = load %struct.rockchip_rga*, %struct.rockchip_rga** %4, align 8
  %198 = getelementptr inbounds %struct.rockchip_rga, %struct.rockchip_rga* %197, i32 0, i32 6
  store i32 %196, i32* %198, align 4
  %199 = load i32, i32* @GFP_KERNEL, align 4
  %200 = load i32, i32* @__GFP_ZERO, align 4
  %201 = or i32 %199, %200
  %202 = call i64 @__get_free_pages(i32 %201, i32 3)
  %203 = inttoptr i64 %202 to i32*
  %204 = load %struct.rockchip_rga*, %struct.rockchip_rga** %4, align 8
  %205 = getelementptr inbounds %struct.rockchip_rga, %struct.rockchip_rga* %204, i32 0, i32 0
  store i32* %203, i32** %205, align 8
  %206 = load i32, i32* @GFP_KERNEL, align 4
  %207 = load i32, i32* @__GFP_ZERO, align 4
  %208 = or i32 %206, %207
  %209 = call i64 @__get_free_pages(i32 %208, i32 3)
  %210 = inttoptr i64 %209 to i32*
  %211 = load %struct.rockchip_rga*, %struct.rockchip_rga** %4, align 8
  %212 = getelementptr inbounds %struct.rockchip_rga, %struct.rockchip_rga* %211, i32 0, i32 1
  store i32* %210, i32** %212, align 8
  %213 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @def_frame, i32 0, i32 1), align 4
  %214 = load %struct.TYPE_17__*, %struct.TYPE_17__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @def_frame, i32 0, i32 4), align 8
  %215 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = mul nsw i32 %213, %216
  %218 = ashr i32 %217, 3
  store i32 %218, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @def_frame, i32 0, i32 0), align 8
  %219 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @def_frame, i32 0, i32 0), align 8
  %220 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @def_frame, i32 0, i32 3), align 4
  %221 = mul nsw i32 %219, %220
  store i32 %221, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @def_frame, i32 0, i32 2), align 8
  %222 = load %struct.video_device*, %struct.video_device** %5, align 8
  %223 = load i32, i32* @VFL_TYPE_GRABBER, align 4
  %224 = call i32 @video_register_device(%struct.video_device* %222, i32 %223, i32 -1)
  store i32 %224, i32* %7, align 4
  %225 = load i32, i32* %7, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %231

227:                                              ; preds = %152
  %228 = load %struct.rockchip_rga*, %struct.rockchip_rga** %4, align 8
  %229 = getelementptr inbounds %struct.rockchip_rga, %struct.rockchip_rga* %228, i32 0, i32 3
  %230 = call i32 @v4l2_err(i32* %229, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  br label %240

231:                                              ; preds = %152
  %232 = load %struct.rockchip_rga*, %struct.rockchip_rga** %4, align 8
  %233 = getelementptr inbounds %struct.rockchip_rga, %struct.rockchip_rga* %232, i32 0, i32 3
  %234 = load %struct.video_device*, %struct.video_device** %5, align 8
  %235 = getelementptr inbounds %struct.video_device, %struct.video_device* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  %237 = load %struct.video_device*, %struct.video_device** %5, align 8
  %238 = call i32 @video_device_node_name(%struct.video_device* %237)
  %239 = call i32 @v4l2_info(i32* %233, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i32 %236, i32 %238)
  store i32 0, i32* %2, align 4
  br label %258

240:                                              ; preds = %227
  %241 = load %struct.video_device*, %struct.video_device** %5, align 8
  %242 = call i32 @video_device_release(%struct.video_device* %241)
  br label %243

243:                                              ; preds = %240, %144
  %244 = load %struct.rockchip_rga*, %struct.rockchip_rga** %4, align 8
  %245 = getelementptr inbounds %struct.rockchip_rga, %struct.rockchip_rga* %244, i32 0, i32 4
  %246 = load %struct.video_device*, %struct.video_device** %245, align 8
  %247 = call i32 @video_unregister_device(%struct.video_device* %246)
  br label %248

248:                                              ; preds = %243, %110
  %249 = load %struct.rockchip_rga*, %struct.rockchip_rga** %4, align 8
  %250 = getelementptr inbounds %struct.rockchip_rga, %struct.rockchip_rga* %249, i32 0, i32 3
  %251 = call i32 @v4l2_device_unregister(i32* %250)
  br label %252

252:                                              ; preds = %248, %105, %92, %76, %66
  %253 = load %struct.rockchip_rga*, %struct.rockchip_rga** %4, align 8
  %254 = getelementptr inbounds %struct.rockchip_rga, %struct.rockchip_rga* %253, i32 0, i32 2
  %255 = load %struct.TYPE_18__*, %struct.TYPE_18__** %254, align 8
  %256 = call i32 @pm_runtime_disable(%struct.TYPE_18__* %255)
  %257 = load i32, i32* %7, align 4
  store i32 %257, i32* %2, align 4
  br label %258

258:                                              ; preds = %252, %231, %24, %14
  %259 = load i32, i32* %2, align 4
  ret i32 %259
}

declare dso_local %struct.rockchip_rga* @devm_kzalloc(%struct.TYPE_18__*, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @rga_parse_dt(%struct.rockchip_rga*) #1

declare dso_local i32 @dev_err(%struct.TYPE_18__*, i8*) #1

declare dso_local i32 @pm_runtime_enable(%struct.TYPE_18__*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.TYPE_18__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_irq(%struct.TYPE_18__*, i32, i32, i32, i32, %struct.rockchip_rga*) #1

declare dso_local i32 @dev_name(%struct.TYPE_18__*) #1

declare dso_local i32 @v4l2_device_register(%struct.TYPE_18__*, i32*) #1

declare dso_local %struct.video_device* @video_device_alloc(...) #1

declare dso_local i32 @v4l2_err(i32*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @video_set_drvdata(%struct.video_device*, %struct.rockchip_rga*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.rockchip_rga*) #1

declare dso_local i32 @v4l2_m2m_init(i32*) #1

declare dso_local i32 @pm_runtime_get_sync(%struct.TYPE_18__*) #1

declare dso_local i32 @rga_read(%struct.rockchip_rga*, i32) #1

declare dso_local i32 @v4l2_info(i32*, i8*, i32, i32) #1

declare dso_local i32 @pm_runtime_put(%struct.TYPE_18__*) #1

declare dso_local i32 @dma_alloc_attrs(%struct.TYPE_18__*, i32, i32*, i32, i32) #1

declare dso_local i64 @__get_free_pages(i32, i32) #1

declare dso_local i32 @video_register_device(%struct.video_device*, i32, i32) #1

declare dso_local i32 @video_device_node_name(%struct.video_device*) #1

declare dso_local i32 @video_device_release(%struct.video_device*) #1

declare dso_local i32 @video_unregister_device(%struct.video_device*) #1

declare dso_local i32 @v4l2_device_unregister(i32*) #1

declare dso_local i32 @pm_runtime_disable(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
