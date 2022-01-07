; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/marvell-ccic/extr_mmp-driver.c_mmpcam_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/marvell-ccic/extr_mmp-driver.c_mmpcam_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, %struct.mmp_camera_platform_data* }
%struct.mmp_camera_platform_data = type { i32, i32, i64, i64*, i32 }
%struct.mmp_camera = type { i32, i32, %struct.mcam_camera, i32, %struct.platform_device* }
%struct.mcam_camera = type { i32, i32, i64, i64*, i32, %struct.TYPE_9__, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_10__*, i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { %struct.fwnode_handle* }
%struct.fwnode_handle = type { i32 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@mmpcam_calc_dphy = common dso_local global i32 0, align 4
@V4L2_MBUS_CSI2_DPHY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"mipi\00", align 1
@MCAM_ARMADA610 = common dso_local global i32 0, align 4
@B_DMA_sg = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"platform:mmp-camera\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@V4L2_ASYNC_MATCH_FWNODE = common dso_local global i32 0, align 4
@of_clk_src_simple_get = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"can't add DT clock provider\0A\00", align 1
@IORESOURCE_IRQ = common dso_local global i32 0, align 4
@mmpcam_irq = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"mmp-camera\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mmpcam_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmpcam_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.mmp_camera*, align 8
  %5 = alloca %struct.mcam_camera*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca %struct.fwnode_handle*, align 8
  %8 = alloca %struct.mmp_camera_platform_data*, align 8
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.mmp_camera* @devm_kzalloc(%struct.TYPE_10__* %11, i32 120, i32 %12)
  store %struct.mmp_camera* %13, %struct.mmp_camera** %4, align 8
  %14 = load %struct.mmp_camera*, %struct.mmp_camera** %4, align 8
  %15 = icmp eq %struct.mmp_camera* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %231

19:                                               ; preds = %1
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = load %struct.mmp_camera*, %struct.mmp_camera** %4, align 8
  %22 = getelementptr inbounds %struct.mmp_camera, %struct.mmp_camera* %21, i32 0, i32 4
  store %struct.platform_device* %20, %struct.platform_device** %22, align 8
  %23 = load %struct.mmp_camera*, %struct.mmp_camera** %4, align 8
  %24 = getelementptr inbounds %struct.mmp_camera, %struct.mmp_camera* %23, i32 0, i32 3
  %25 = call i32 @INIT_LIST_HEAD(i32* %24)
  %26 = load %struct.mmp_camera*, %struct.mmp_camera** %4, align 8
  %27 = getelementptr inbounds %struct.mmp_camera, %struct.mmp_camera* %26, i32 0, i32 2
  store %struct.mcam_camera* %27, %struct.mcam_camera** %5, align 8
  %28 = load i32, i32* @mmpcam_calc_dphy, align 4
  %29 = load %struct.mcam_camera*, %struct.mcam_camera** %5, align 8
  %30 = getelementptr inbounds %struct.mcam_camera, %struct.mcam_camera* %29, i32 0, i32 15
  store i32 %28, i32* %30, align 4
  %31 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %32 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %31, i32 0, i32 0
  %33 = load %struct.mcam_camera*, %struct.mcam_camera** %5, align 8
  %34 = getelementptr inbounds %struct.mcam_camera, %struct.mcam_camera* %33, i32 0, i32 13
  store %struct.TYPE_10__* %32, %struct.TYPE_10__** %34, align 8
  %35 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %36 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 1
  %38 = load %struct.mmp_camera_platform_data*, %struct.mmp_camera_platform_data** %37, align 8
  store %struct.mmp_camera_platform_data* %38, %struct.mmp_camera_platform_data** %8, align 8
  %39 = load %struct.mmp_camera_platform_data*, %struct.mmp_camera_platform_data** %8, align 8
  %40 = icmp ne %struct.mmp_camera_platform_data* %39, null
  br i1 %40, label %41, label %67

41:                                               ; preds = %19
  %42 = load %struct.mmp_camera_platform_data*, %struct.mmp_camera_platform_data** %8, align 8
  %43 = getelementptr inbounds %struct.mmp_camera_platform_data, %struct.mmp_camera_platform_data* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.mcam_camera*, %struct.mcam_camera** %5, align 8
  %46 = getelementptr inbounds %struct.mcam_camera, %struct.mcam_camera* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load %struct.mmp_camera_platform_data*, %struct.mmp_camera_platform_data** %8, align 8
  %48 = getelementptr inbounds %struct.mmp_camera_platform_data, %struct.mmp_camera_platform_data* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.mcam_camera*, %struct.mcam_camera** %5, align 8
  %51 = getelementptr inbounds %struct.mcam_camera, %struct.mcam_camera* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load %struct.mmp_camera_platform_data*, %struct.mmp_camera_platform_data** %8, align 8
  %53 = getelementptr inbounds %struct.mmp_camera_platform_data, %struct.mmp_camera_platform_data* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.mcam_camera*, %struct.mcam_camera** %5, align 8
  %56 = getelementptr inbounds %struct.mcam_camera, %struct.mcam_camera* %55, i32 0, i32 2
  store i64 %54, i64* %56, align 8
  %57 = load %struct.mmp_camera_platform_data*, %struct.mmp_camera_platform_data** %8, align 8
  %58 = getelementptr inbounds %struct.mmp_camera_platform_data, %struct.mmp_camera_platform_data* %57, i32 0, i32 3
  %59 = load i64*, i64** %58, align 8
  %60 = load %struct.mcam_camera*, %struct.mcam_camera** %5, align 8
  %61 = getelementptr inbounds %struct.mcam_camera, %struct.mcam_camera* %60, i32 0, i32 3
  store i64* %59, i64** %61, align 8
  %62 = load %struct.mmp_camera_platform_data*, %struct.mmp_camera_platform_data** %8, align 8
  %63 = getelementptr inbounds %struct.mmp_camera_platform_data, %struct.mmp_camera_platform_data* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.mcam_camera*, %struct.mcam_camera** %5, align 8
  %66 = getelementptr inbounds %struct.mcam_camera, %struct.mcam_camera* %65, i32 0, i32 14
  store i32 %64, i32* %66, align 8
  br label %72

67:                                               ; preds = %19
  %68 = load %struct.mcam_camera*, %struct.mcam_camera** %5, align 8
  %69 = getelementptr inbounds %struct.mcam_camera, %struct.mcam_camera* %68, i32 0, i32 0
  store i32 3, i32* %69, align 8
  %70 = load %struct.mcam_camera*, %struct.mcam_camera** %5, align 8
  %71 = getelementptr inbounds %struct.mcam_camera, %struct.mcam_camera* %70, i32 0, i32 1
  store i32 2, i32* %71, align 4
  br label %72

72:                                               ; preds = %67, %41
  %73 = load %struct.mcam_camera*, %struct.mcam_camera** %5, align 8
  %74 = getelementptr inbounds %struct.mcam_camera, %struct.mcam_camera* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @V4L2_MBUS_CSI2_DPHY, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %103

78:                                               ; preds = %72
  %79 = load %struct.mcam_camera*, %struct.mcam_camera** %5, align 8
  %80 = getelementptr inbounds %struct.mcam_camera, %struct.mcam_camera* %79, i32 0, i32 13
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %80, align 8
  %82 = call i32 @devm_clk_get(%struct.TYPE_10__* %81, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %83 = load %struct.mmp_camera*, %struct.mmp_camera** %4, align 8
  %84 = getelementptr inbounds %struct.mmp_camera, %struct.mmp_camera* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 4
  %85 = load %struct.mmp_camera*, %struct.mmp_camera** %4, align 8
  %86 = getelementptr inbounds %struct.mmp_camera, %struct.mmp_camera* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i64 @IS_ERR(i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %102

90:                                               ; preds = %78
  %91 = load %struct.mcam_camera*, %struct.mcam_camera** %5, align 8
  %92 = getelementptr inbounds %struct.mcam_camera, %struct.mcam_camera* %91, i32 0, i32 3
  %93 = load i64*, i64** %92, align 8
  %94 = getelementptr inbounds i64, i64* %93, i64 2
  %95 = load i64, i64* %94, align 8
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %90
  %98 = load %struct.mmp_camera*, %struct.mmp_camera** %4, align 8
  %99 = getelementptr inbounds %struct.mmp_camera, %struct.mmp_camera* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @PTR_ERR(i32 %100)
  store i32 %101, i32* %2, align 4
  br label %231

102:                                              ; preds = %90, %78
  br label %103

103:                                              ; preds = %102, %72
  %104 = load %struct.mcam_camera*, %struct.mcam_camera** %5, align 8
  %105 = getelementptr inbounds %struct.mcam_camera, %struct.mcam_camera* %104, i32 0, i32 4
  store i32 0, i32* %105, align 8
  %106 = load i32, i32* @MCAM_ARMADA610, align 4
  %107 = load %struct.mcam_camera*, %struct.mcam_camera** %5, align 8
  %108 = getelementptr inbounds %struct.mcam_camera, %struct.mcam_camera* %107, i32 0, i32 12
  store i32 %106, i32* %108, align 8
  %109 = load i32, i32* @B_DMA_sg, align 4
  %110 = load %struct.mcam_camera*, %struct.mcam_camera** %5, align 8
  %111 = getelementptr inbounds %struct.mcam_camera, %struct.mcam_camera* %110, i32 0, i32 11
  store i32 %109, i32* %111, align 4
  %112 = load %struct.mcam_camera*, %struct.mcam_camera** %5, align 8
  %113 = getelementptr inbounds %struct.mcam_camera, %struct.mcam_camera* %112, i32 0, i32 10
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @strscpy(i32 %114, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %116 = load %struct.mcam_camera*, %struct.mcam_camera** %5, align 8
  %117 = getelementptr inbounds %struct.mcam_camera, %struct.mcam_camera* %116, i32 0, i32 9
  %118 = call i32 @spin_lock_init(i32* %117)
  %119 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %120 = load i32, i32* @IORESOURCE_MEM, align 4
  %121 = call %struct.resource* @platform_get_resource(%struct.platform_device* %119, i32 %120, i32 0)
  store %struct.resource* %121, %struct.resource** %6, align 8
  %122 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %123 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %122, i32 0, i32 0
  %124 = load %struct.resource*, %struct.resource** %6, align 8
  %125 = call i32 @devm_ioremap_resource(%struct.TYPE_10__* %123, %struct.resource* %124)
  %126 = load %struct.mcam_camera*, %struct.mcam_camera** %5, align 8
  %127 = getelementptr inbounds %struct.mcam_camera, %struct.mcam_camera* %126, i32 0, i32 8
  store i32 %125, i32* %127, align 8
  %128 = load %struct.mcam_camera*, %struct.mcam_camera** %5, align 8
  %129 = getelementptr inbounds %struct.mcam_camera, %struct.mcam_camera* %128, i32 0, i32 8
  %130 = load i32, i32* %129, align 8
  %131 = call i64 @IS_ERR(i32 %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %103
  %134 = load %struct.mcam_camera*, %struct.mcam_camera** %5, align 8
  %135 = getelementptr inbounds %struct.mcam_camera, %struct.mcam_camera* %134, i32 0, i32 8
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @PTR_ERR(i32 %136)
  store i32 %137, i32* %2, align 4
  br label %231

138:                                              ; preds = %103
  %139 = load %struct.resource*, %struct.resource** %6, align 8
  %140 = call i32 @resource_size(%struct.resource* %139)
  %141 = load %struct.mcam_camera*, %struct.mcam_camera** %5, align 8
  %142 = getelementptr inbounds %struct.mcam_camera, %struct.mcam_camera* %141, i32 0, i32 7
  store i32 %140, i32* %142, align 4
  %143 = load %struct.mcam_camera*, %struct.mcam_camera** %5, align 8
  %144 = call i32 @mcam_init_clk(%struct.mcam_camera* %143)
  %145 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %146 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @of_fwnode_handle(i32 %148)
  %150 = call %struct.fwnode_handle* @fwnode_graph_get_next_endpoint(i32 %149, i32* null)
  store %struct.fwnode_handle* %150, %struct.fwnode_handle** %7, align 8
  %151 = load %struct.fwnode_handle*, %struct.fwnode_handle** %7, align 8
  %152 = icmp ne %struct.fwnode_handle* %151, null
  br i1 %152, label %156, label %153

153:                                              ; preds = %138
  %154 = load i32, i32* @ENODEV, align 4
  %155 = sub nsw i32 0, %154
  store i32 %155, i32* %2, align 4
  br label %231

156:                                              ; preds = %138
  %157 = load i32, i32* @V4L2_ASYNC_MATCH_FWNODE, align 4
  %158 = load %struct.mcam_camera*, %struct.mcam_camera** %5, align 8
  %159 = getelementptr inbounds %struct.mcam_camera, %struct.mcam_camera* %158, i32 0, i32 5
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %159, i32 0, i32 1
  store i32 %157, i32* %160, align 8
  %161 = load %struct.fwnode_handle*, %struct.fwnode_handle** %7, align 8
  %162 = call %struct.fwnode_handle* @fwnode_graph_get_remote_port_parent(%struct.fwnode_handle* %161)
  %163 = load %struct.mcam_camera*, %struct.mcam_camera** %5, align 8
  %164 = getelementptr inbounds %struct.mcam_camera, %struct.mcam_camera* %163, i32 0, i32 5
  %165 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 0
  store %struct.fwnode_handle* %162, %struct.fwnode_handle** %166, align 8
  %167 = load %struct.fwnode_handle*, %struct.fwnode_handle** %7, align 8
  %168 = call i32 @fwnode_handle_put(%struct.fwnode_handle* %167)
  %169 = load %struct.mcam_camera*, %struct.mcam_camera** %5, align 8
  %170 = call i32 @mccic_register(%struct.mcam_camera* %169)
  store i32 %170, i32* %9, align 4
  %171 = load i32, i32* %9, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %175

173:                                              ; preds = %156
  %174 = load i32, i32* %9, align 4
  store i32 %174, i32* %2, align 4
  br label %231

175:                                              ; preds = %156
  %176 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %177 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = load i32, i32* @of_clk_src_simple_get, align 4
  %181 = load %struct.mcam_camera*, %struct.mcam_camera** %5, align 8
  %182 = getelementptr inbounds %struct.mcam_camera, %struct.mcam_camera* %181, i32 0, i32 6
  %183 = load i32, i32* %182, align 8
  %184 = call i32 @of_clk_add_provider(i32 %179, i32 %180, i32 %183)
  store i32 %184, i32* %9, align 4
  %185 = load i32, i32* %9, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %191

187:                                              ; preds = %175
  %188 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %189 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %188, i32 0, i32 0
  %190 = call i32 @dev_err(%struct.TYPE_10__* %189, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %221

191:                                              ; preds = %175
  %192 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %193 = load i32, i32* @IORESOURCE_IRQ, align 4
  %194 = call %struct.resource* @platform_get_resource(%struct.platform_device* %192, i32 %193, i32 0)
  store %struct.resource* %194, %struct.resource** %6, align 8
  %195 = load %struct.resource*, %struct.resource** %6, align 8
  %196 = icmp eq %struct.resource* %195, null
  br i1 %196, label %197, label %200

197:                                              ; preds = %191
  %198 = load i32, i32* @ENODEV, align 4
  %199 = sub nsw i32 0, %198
  store i32 %199, i32* %9, align 4
  br label %221

200:                                              ; preds = %191
  %201 = load %struct.resource*, %struct.resource** %6, align 8
  %202 = getelementptr inbounds %struct.resource, %struct.resource* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.mmp_camera*, %struct.mmp_camera** %4, align 8
  %205 = getelementptr inbounds %struct.mmp_camera, %struct.mmp_camera* %204, i32 0, i32 0
  store i32 %203, i32* %205, align 8
  %206 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %207 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %206, i32 0, i32 0
  %208 = load %struct.mmp_camera*, %struct.mmp_camera** %4, align 8
  %209 = getelementptr inbounds %struct.mmp_camera, %struct.mmp_camera* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = load i32, i32* @mmpcam_irq, align 4
  %212 = load i32, i32* @IRQF_SHARED, align 4
  %213 = load %struct.mcam_camera*, %struct.mcam_camera** %5, align 8
  %214 = call i32 @devm_request_irq(%struct.TYPE_10__* %207, i32 %210, i32 %211, i32 %212, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), %struct.mcam_camera* %213)
  store i32 %214, i32* %9, align 4
  %215 = load i32, i32* %9, align 4
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %217, label %220

217:                                              ; preds = %200
  %218 = load %struct.mmp_camera*, %struct.mmp_camera** %4, align 8
  %219 = call i32 @mmpcam_add_device(%struct.mmp_camera* %218)
  store i32 0, i32* %2, align 4
  br label %231

220:                                              ; preds = %200
  br label %221

221:                                              ; preds = %220, %197, %187
  %222 = load %struct.mcam_camera*, %struct.mcam_camera** %5, align 8
  %223 = getelementptr inbounds %struct.mcam_camera, %struct.mcam_camera* %222, i32 0, i32 5
  %224 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %224, i32 0, i32 0
  %226 = load %struct.fwnode_handle*, %struct.fwnode_handle** %225, align 8
  %227 = call i32 @fwnode_handle_put(%struct.fwnode_handle* %226)
  %228 = load %struct.mcam_camera*, %struct.mcam_camera** %5, align 8
  %229 = call i32 @mccic_shutdown(%struct.mcam_camera* %228)
  %230 = load i32, i32* %9, align 4
  store i32 %230, i32* %2, align 4
  br label %231

231:                                              ; preds = %221, %217, %173, %153, %133, %97, %16
  %232 = load i32, i32* %2, align 4
  ret i32 %232
}

declare dso_local %struct.mmp_camera* @devm_kzalloc(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @devm_clk_get(%struct.TYPE_10__*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @strscpy(i32, i8*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.TYPE_10__*, %struct.resource*) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @mcam_init_clk(%struct.mcam_camera*) #1

declare dso_local %struct.fwnode_handle* @fwnode_graph_get_next_endpoint(i32, i32*) #1

declare dso_local i32 @of_fwnode_handle(i32) #1

declare dso_local %struct.fwnode_handle* @fwnode_graph_get_remote_port_parent(%struct.fwnode_handle*) #1

declare dso_local i32 @fwnode_handle_put(%struct.fwnode_handle*) #1

declare dso_local i32 @mccic_register(%struct.mcam_camera*) #1

declare dso_local i32 @of_clk_add_provider(i32, i32, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_10__*, i8*) #1

declare dso_local i32 @devm_request_irq(%struct.TYPE_10__*, i32, i32, i32, i8*, %struct.mcam_camera*) #1

declare dso_local i32 @mmpcam_add_device(%struct.mmp_camera*) #1

declare dso_local i32 @mccic_shutdown(%struct.mcam_camera*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
