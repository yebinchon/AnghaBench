; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_isp.c_isp_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_isp.c_isp_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i64* }
%struct.platform_device = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32 }
%struct.isp_device = type { i32, i32, i32, %struct.TYPE_16__, i32, %struct.TYPE_18__*, i64, i64*, i32*, %struct.TYPE_15__, %struct.TYPE_14__, i64, i32, i32, i32, i64, i32 }
%struct.TYPE_16__ = type { i32* }
%struct.TYPE_15__ = type { i8* }
%struct.TYPE_14__ = type { i8* }
%struct.resource = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"could not allocate memory\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"ti,phy-type\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"syscon\00", align 1
@autoidle = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"vdd-csiphy1\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"vdd-csiphy2\00", align 1
@OMAP3_ISP_IOMEM_CSI2A_REGS1 = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@ISP_CLK_CAM_ICK = common dso_local global i64 0, align 8
@OMAP3_ISP_IOMEM_MAIN = common dso_local global i32 0, align 4
@ISP_REVISION = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [22 x i8] c"Revision %d.%d found\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@isp_res_maps = common dso_local global %struct.TYPE_17__* null, align 8
@.str.6 = private unnamed_addr constant [41 x i8] c"No resource map found for ISP rev %d.%d\0A\00", align 1
@OMAP3_ISP_IOMEM_CSIPHY2 = common dso_local global i32 0, align 4
@OMAP3_ISP_IOMEM_LAST = common dso_local global i32 0, align 4
@OMAP3_ISP_IOMEM_HIST = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [27 x i8] c"unable to attach to IOMMU\0A\00", align 1
@isp_isr = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [10 x i8] c"OMAP3 ISP\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"Unable to request IRQ\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@isp_subdev_notifier_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @isp_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isp_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.isp_device*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.isp_device* @kzalloc(i32 120, i32 %10)
  store %struct.isp_device* %11, %struct.isp_device** %4, align 8
  %12 = load %struct.isp_device*, %struct.isp_device** %4, align 8
  %13 = icmp ne %struct.isp_device* %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %1
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = call i32 (%struct.TYPE_18__*, i8*, ...) @dev_err(%struct.TYPE_18__* %16, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %442

20:                                               ; preds = %1
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @of_fwnode_handle(i32 %24)
  %26 = load %struct.isp_device*, %struct.isp_device** %4, align 8
  %27 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %26, i32 0, i32 16
  %28 = call i32 @fwnode_property_read_u32(i32 %25, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32* %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %20
  br label %438

32:                                               ; preds = %20
  %33 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %34 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @syscon_regmap_lookup_by_phandle(i32 %36, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %38 = load %struct.isp_device*, %struct.isp_device** %4, align 8
  %39 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %38, i32 0, i32 15
  store i64 %37, i64* %39, align 8
  %40 = load %struct.isp_device*, %struct.isp_device** %4, align 8
  %41 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %40, i32 0, i32 15
  %42 = load i64, i64* %41, align 8
  %43 = call i64 @IS_ERR(i64 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %32
  %46 = load %struct.isp_device*, %struct.isp_device** %4, align 8
  %47 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %46, i32 0, i32 15
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @PTR_ERR(i64 %48)
  store i32 %49, i32* %6, align 4
  br label %438

50:                                               ; preds = %32
  %51 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %52 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.isp_device*, %struct.isp_device** %4, align 8
  %56 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %55, i32 0, i32 14
  %57 = call i32 @of_property_read_u32_index(i32 %54, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 1, i32* %56)
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %50
  br label %438

61:                                               ; preds = %50
  %62 = load i32, i32* @autoidle, align 4
  %63 = load %struct.isp_device*, %struct.isp_device** %4, align 8
  %64 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %63, i32 0, i32 13
  store i32 %62, i32* %64, align 4
  %65 = load %struct.isp_device*, %struct.isp_device** %4, align 8
  %66 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %65, i32 0, i32 2
  %67 = call i32 @mutex_init(i32* %66)
  %68 = load %struct.isp_device*, %struct.isp_device** %4, align 8
  %69 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %68, i32 0, i32 12
  %70 = call i32 @spin_lock_init(i32* %69)
  %71 = load %struct.isp_device*, %struct.isp_device** %4, align 8
  %72 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %71, i32 0, i32 3
  %73 = call i32 @v4l2_async_notifier_init(%struct.TYPE_16__* %72)
  %74 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %75 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %74, i32 0, i32 0
  %76 = load %struct.isp_device*, %struct.isp_device** %4, align 8
  %77 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %76, i32 0, i32 5
  store %struct.TYPE_18__* %75, %struct.TYPE_18__** %77, align 8
  %78 = load %struct.isp_device*, %struct.isp_device** %4, align 8
  %79 = call i32 @isp_parse_of_endpoints(%struct.isp_device* %78)
  store i32 %79, i32* %6, align 4
  %80 = load i32, i32* %6, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %61
  br label %431

83:                                               ; preds = %61
  %84 = load %struct.isp_device*, %struct.isp_device** %4, align 8
  %85 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %84, i32 0, i32 11
  store i64 0, i64* %85, align 8
  %86 = load %struct.isp_device*, %struct.isp_device** %4, align 8
  %87 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %86, i32 0, i32 5
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %87, align 8
  %89 = call i32 @DMA_BIT_MASK(i32 32)
  %90 = call i32 @dma_coerce_mask_and_coherent(%struct.TYPE_18__* %88, i32 %89)
  store i32 %90, i32* %6, align 4
  %91 = load i32, i32* %6, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %83
  br label %431

94:                                               ; preds = %83
  %95 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %96 = load %struct.isp_device*, %struct.isp_device** %4, align 8
  %97 = call i32 @platform_set_drvdata(%struct.platform_device* %95, %struct.isp_device* %96)
  %98 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %99 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %98, i32 0, i32 0
  %100 = call i8* @devm_regulator_get(%struct.TYPE_18__* %99, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %101 = load %struct.isp_device*, %struct.isp_device** %4, align 8
  %102 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %101, i32 0, i32 10
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 0
  store i8* %100, i8** %103, align 8
  %104 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %105 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %104, i32 0, i32 0
  %106 = call i8* @devm_regulator_get(%struct.TYPE_18__* %105, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %107 = load %struct.isp_device*, %struct.isp_device** %4, align 8
  %108 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %107, i32 0, i32 9
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %108, i32 0, i32 0
  store i8* %106, i8** %109, align 8
  store i32 0, i32* %7, align 4
  br label %110

110:                                              ; preds = %155, %94
  %111 = load i32, i32* %7, align 4
  %112 = icmp slt i32 %111, 2
  br i1 %112, label %113, label %158

113:                                              ; preds = %110
  %114 = load i32, i32* %7, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %113
  %117 = load i32, i32* @OMAP3_ISP_IOMEM_CSI2A_REGS1, align 4
  br label %119

118:                                              ; preds = %113
  br label %119

119:                                              ; preds = %118, %116
  %120 = phi i32 [ %117, %116 ], [ 0, %118 ]
  store i32 %120, i32* %9, align 4
  %121 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %122 = load i32, i32* @IORESOURCE_MEM, align 4
  %123 = load i32, i32* %7, align 4
  %124 = call %struct.resource* @platform_get_resource(%struct.platform_device* %121, i32 %122, i32 %123)
  store %struct.resource* %124, %struct.resource** %5, align 8
  %125 = load %struct.isp_device*, %struct.isp_device** %4, align 8
  %126 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %125, i32 0, i32 5
  %127 = load %struct.TYPE_18__*, %struct.TYPE_18__** %126, align 8
  %128 = load %struct.resource*, %struct.resource** %5, align 8
  %129 = call i64 @devm_ioremap_resource(%struct.TYPE_18__* %127, %struct.resource* %128)
  %130 = load %struct.isp_device*, %struct.isp_device** %4, align 8
  %131 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %130, i32 0, i32 7
  %132 = load i64*, i64** %131, align 8
  %133 = load i32, i32* %9, align 4
  %134 = zext i32 %133 to i64
  %135 = getelementptr inbounds i64, i64* %132, i64 %134
  store i64 %129, i64* %135, align 8
  %136 = load %struct.isp_device*, %struct.isp_device** %4, align 8
  %137 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %136, i32 0, i32 7
  %138 = load i64*, i64** %137, align 8
  %139 = load i32, i32* %9, align 4
  %140 = zext i32 %139 to i64
  %141 = getelementptr inbounds i64, i64* %138, i64 %140
  %142 = load i64, i64* %141, align 8
  %143 = call i64 @IS_ERR(i64 %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %154

145:                                              ; preds = %119
  %146 = load %struct.isp_device*, %struct.isp_device** %4, align 8
  %147 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %146, i32 0, i32 7
  %148 = load i64*, i64** %147, align 8
  %149 = load i32, i32* %9, align 4
  %150 = zext i32 %149 to i64
  %151 = getelementptr inbounds i64, i64* %148, i64 %150
  %152 = load i64, i64* %151, align 8
  %153 = call i32 @PTR_ERR(i64 %152)
  store i32 %153, i32* %2, align 4
  br label %442

154:                                              ; preds = %119
  br label %155

155:                                              ; preds = %154
  %156 = load i32, i32* %7, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %7, align 4
  br label %110

158:                                              ; preds = %110
  %159 = load %struct.isp_device*, %struct.isp_device** %4, align 8
  %160 = call i32 @isp_get_clocks(%struct.isp_device* %159)
  store i32 %160, i32* %6, align 4
  %161 = load i32, i32* %6, align 4
  %162 = icmp slt i32 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %158
  br label %431

164:                                              ; preds = %158
  %165 = load %struct.isp_device*, %struct.isp_device** %4, align 8
  %166 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %165, i32 0, i32 8
  %167 = load i32*, i32** %166, align 8
  %168 = load i64, i64* @ISP_CLK_CAM_ICK, align 8
  %169 = getelementptr inbounds i32, i32* %167, i64 %168
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @clk_enable(i32 %170)
  store i32 %171, i32* %6, align 4
  %172 = load i32, i32* %6, align 4
  %173 = icmp slt i32 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %164
  br label %431

175:                                              ; preds = %164
  %176 = load %struct.isp_device*, %struct.isp_device** %4, align 8
  %177 = load i32, i32* @OMAP3_ISP_IOMEM_MAIN, align 4
  %178 = load i32, i32* @ISP_REVISION, align 4
  %179 = call i32 @isp_reg_readl(%struct.isp_device* %176, i32 %177, i32 %178)
  %180 = load %struct.isp_device*, %struct.isp_device** %4, align 8
  %181 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %180, i32 0, i32 0
  store i32 %179, i32* %181, align 8
  %182 = load %struct.isp_device*, %struct.isp_device** %4, align 8
  %183 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %182, i32 0, i32 5
  %184 = load %struct.TYPE_18__*, %struct.TYPE_18__** %183, align 8
  %185 = load %struct.isp_device*, %struct.isp_device** %4, align 8
  %186 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = and i32 %187, 240
  %189 = ashr i32 %188, 4
  %190 = load %struct.isp_device*, %struct.isp_device** %4, align 8
  %191 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = and i32 %192, 15
  %194 = call i32 @dev_info(%struct.TYPE_18__* %184, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32 %189, i32 %193)
  %195 = load %struct.isp_device*, %struct.isp_device** %4, align 8
  %196 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %195, i32 0, i32 8
  %197 = load i32*, i32** %196, align 8
  %198 = load i64, i64* @ISP_CLK_CAM_ICK, align 8
  %199 = getelementptr inbounds i32, i32* %197, i64 %198
  %200 = load i32, i32* %199, align 4
  %201 = call i32 @clk_disable(i32 %200)
  %202 = load %struct.isp_device*, %struct.isp_device** %4, align 8
  %203 = call i32* @__omap3isp_get(%struct.isp_device* %202, i32 0)
  %204 = icmp eq i32* %203, null
  br i1 %204, label %205, label %208

205:                                              ; preds = %175
  %206 = load i32, i32* @ENODEV, align 4
  %207 = sub nsw i32 0, %206
  store i32 %207, i32* %6, align 4
  br label %431

208:                                              ; preds = %175
  %209 = load %struct.isp_device*, %struct.isp_device** %4, align 8
  %210 = call i32 @isp_reset(%struct.isp_device* %209)
  store i32 %210, i32* %6, align 4
  %211 = load i32, i32* %6, align 4
  %212 = icmp slt i32 %211, 0
  br i1 %212, label %213, label %214

213:                                              ; preds = %208
  br label %426

214:                                              ; preds = %208
  %215 = load %struct.isp_device*, %struct.isp_device** %4, align 8
  %216 = call i32 @isp_xclk_init(%struct.isp_device* %215)
  store i32 %216, i32* %6, align 4
  %217 = load i32, i32* %6, align 4
  %218 = icmp slt i32 %217, 0
  br i1 %218, label %219, label %220

219:                                              ; preds = %214
  br label %426

220:                                              ; preds = %214
  store i32 0, i32* %8, align 4
  br label %221

221:                                              ; preds = %239, %220
  %222 = load i32, i32* %8, align 4
  %223 = load %struct.TYPE_17__*, %struct.TYPE_17__** @isp_res_maps, align 8
  %224 = call i32 @ARRAY_SIZE(%struct.TYPE_17__* %223)
  %225 = icmp slt i32 %222, %224
  br i1 %225, label %226, label %242

226:                                              ; preds = %221
  %227 = load %struct.isp_device*, %struct.isp_device** %4, align 8
  %228 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = load %struct.TYPE_17__*, %struct.TYPE_17__** @isp_res_maps, align 8
  %231 = load i32, i32* %8, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %230, i64 %232
  %234 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = icmp eq i32 %229, %235
  br i1 %236, label %237, label %238

237:                                              ; preds = %226
  br label %242

238:                                              ; preds = %226
  br label %239

239:                                              ; preds = %238
  %240 = load i32, i32* %8, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %8, align 4
  br label %221

242:                                              ; preds = %237, %221
  %243 = load i32, i32* %8, align 4
  %244 = load %struct.TYPE_17__*, %struct.TYPE_17__** @isp_res_maps, align 8
  %245 = call i32 @ARRAY_SIZE(%struct.TYPE_17__* %244)
  %246 = icmp eq i32 %243, %245
  br i1 %246, label %247, label %263

247:                                              ; preds = %242
  %248 = load %struct.isp_device*, %struct.isp_device** %4, align 8
  %249 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %248, i32 0, i32 5
  %250 = load %struct.TYPE_18__*, %struct.TYPE_18__** %249, align 8
  %251 = load %struct.isp_device*, %struct.isp_device** %4, align 8
  %252 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 8
  %254 = and i32 %253, 240
  %255 = ashr i32 %254, 4
  %256 = load %struct.isp_device*, %struct.isp_device** %4, align 8
  %257 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 8
  %259 = and i32 %258, 15
  %260 = call i32 (%struct.TYPE_18__*, i8*, ...) @dev_err(%struct.TYPE_18__* %250, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0), i32 %255, i32 %259)
  %261 = load i32, i32* @ENODEV, align 4
  %262 = sub nsw i32 0, %261
  store i32 %262, i32* %6, align 4
  br label %426

263:                                              ; preds = %242
  store i32 1, i32* %7, align 4
  br label %264

264:                                              ; preds = %291, %263
  %265 = load i32, i32* %7, align 4
  %266 = load i32, i32* @OMAP3_ISP_IOMEM_CSI2A_REGS1, align 4
  %267 = icmp slt i32 %265, %266
  br i1 %267, label %268, label %294

268:                                              ; preds = %264
  %269 = load %struct.isp_device*, %struct.isp_device** %4, align 8
  %270 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %269, i32 0, i32 7
  %271 = load i64*, i64** %270, align 8
  %272 = getelementptr inbounds i64, i64* %271, i64 0
  %273 = load i64, i64* %272, align 8
  %274 = load %struct.TYPE_17__*, %struct.TYPE_17__** @isp_res_maps, align 8
  %275 = load i32, i32* %8, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %274, i64 %276
  %278 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %277, i32 0, i32 1
  %279 = load i64*, i64** %278, align 8
  %280 = load i32, i32* %7, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds i64, i64* %279, i64 %281
  %283 = load i64, i64* %282, align 8
  %284 = add nsw i64 %273, %283
  %285 = load %struct.isp_device*, %struct.isp_device** %4, align 8
  %286 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %285, i32 0, i32 7
  %287 = load i64*, i64** %286, align 8
  %288 = load i32, i32* %7, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds i64, i64* %287, i64 %289
  store i64 %284, i64* %290, align 8
  br label %291

291:                                              ; preds = %268
  %292 = load i32, i32* %7, align 4
  %293 = add nsw i32 %292, 1
  store i32 %293, i32* %7, align 4
  br label %264

294:                                              ; preds = %264
  %295 = load i32, i32* @OMAP3_ISP_IOMEM_CSIPHY2, align 4
  store i32 %295, i32* %7, align 4
  br label %296

296:                                              ; preds = %325, %294
  %297 = load i32, i32* %7, align 4
  %298 = load i32, i32* @OMAP3_ISP_IOMEM_LAST, align 4
  %299 = icmp slt i32 %297, %298
  br i1 %299, label %300, label %328

300:                                              ; preds = %296
  %301 = load %struct.isp_device*, %struct.isp_device** %4, align 8
  %302 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %301, i32 0, i32 7
  %303 = load i64*, i64** %302, align 8
  %304 = load i32, i32* @OMAP3_ISP_IOMEM_CSI2A_REGS1, align 4
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds i64, i64* %303, i64 %305
  %307 = load i64, i64* %306, align 8
  %308 = load %struct.TYPE_17__*, %struct.TYPE_17__** @isp_res_maps, align 8
  %309 = load i32, i32* %8, align 4
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %308, i64 %310
  %312 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %311, i32 0, i32 1
  %313 = load i64*, i64** %312, align 8
  %314 = load i32, i32* %7, align 4
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds i64, i64* %313, i64 %315
  %317 = load i64, i64* %316, align 8
  %318 = add nsw i64 %307, %317
  %319 = load %struct.isp_device*, %struct.isp_device** %4, align 8
  %320 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %319, i32 0, i32 7
  %321 = load i64*, i64** %320, align 8
  %322 = load i32, i32* %7, align 4
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds i64, i64* %321, i64 %323
  store i64 %318, i64* %324, align 8
  br label %325

325:                                              ; preds = %300
  %326 = load i32, i32* %7, align 4
  %327 = add nsw i32 %326, 1
  store i32 %327, i32* %7, align 4
  br label %296

328:                                              ; preds = %296
  %329 = load %struct.resource*, %struct.resource** %5, align 8
  %330 = getelementptr inbounds %struct.resource, %struct.resource* %329, i32 0, i32 0
  %331 = load i64, i64* %330, align 8
  %332 = load %struct.TYPE_17__*, %struct.TYPE_17__** @isp_res_maps, align 8
  %333 = load i32, i32* %8, align 4
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %332, i64 %334
  %336 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %335, i32 0, i32 1
  %337 = load i64*, i64** %336, align 8
  %338 = load i64, i64* @OMAP3_ISP_IOMEM_HIST, align 8
  %339 = getelementptr inbounds i64, i64* %337, i64 %338
  %340 = load i64, i64* %339, align 8
  %341 = add nsw i64 %331, %340
  %342 = load %struct.isp_device*, %struct.isp_device** %4, align 8
  %343 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %342, i32 0, i32 6
  store i64 %341, i64* %343, align 8
  %344 = load %struct.isp_device*, %struct.isp_device** %4, align 8
  %345 = call i32 @isp_attach_iommu(%struct.isp_device* %344)
  store i32 %345, i32* %6, align 4
  %346 = load i32, i32* %6, align 4
  %347 = icmp slt i32 %346, 0
  br i1 %347, label %348, label %352

348:                                              ; preds = %328
  %349 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %350 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %349, i32 0, i32 0
  %351 = call i32 (%struct.TYPE_18__*, i8*, ...) @dev_err(%struct.TYPE_18__* %350, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0))
  br label %426

352:                                              ; preds = %328
  %353 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %354 = call i32 @platform_get_irq(%struct.platform_device* %353, i32 0)
  store i32 %354, i32* %6, align 4
  %355 = load i32, i32* %6, align 4
  %356 = icmp sle i32 %355, 0
  br i1 %356, label %357, label %360

357:                                              ; preds = %352
  %358 = load i32, i32* @ENODEV, align 4
  %359 = sub nsw i32 0, %358
  store i32 %359, i32* %6, align 4
  br label %423

360:                                              ; preds = %352
  %361 = load i32, i32* %6, align 4
  %362 = load %struct.isp_device*, %struct.isp_device** %4, align 8
  %363 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %362, i32 0, i32 1
  store i32 %361, i32* %363, align 4
  %364 = load %struct.isp_device*, %struct.isp_device** %4, align 8
  %365 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %364, i32 0, i32 5
  %366 = load %struct.TYPE_18__*, %struct.TYPE_18__** %365, align 8
  %367 = load %struct.isp_device*, %struct.isp_device** %4, align 8
  %368 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %367, i32 0, i32 1
  %369 = load i32, i32* %368, align 4
  %370 = load i32, i32* @isp_isr, align 4
  %371 = load i32, i32* @IRQF_SHARED, align 4
  %372 = load %struct.isp_device*, %struct.isp_device** %4, align 8
  %373 = call i64 @devm_request_irq(%struct.TYPE_18__* %366, i32 %369, i32 %370, i32 %371, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), %struct.isp_device* %372)
  %374 = icmp ne i64 %373, 0
  br i1 %374, label %375, label %382

375:                                              ; preds = %360
  %376 = load %struct.isp_device*, %struct.isp_device** %4, align 8
  %377 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %376, i32 0, i32 5
  %378 = load %struct.TYPE_18__*, %struct.TYPE_18__** %377, align 8
  %379 = call i32 (%struct.TYPE_18__*, i8*, ...) @dev_err(%struct.TYPE_18__* %378, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0))
  %380 = load i32, i32* @EINVAL, align 4
  %381 = sub nsw i32 0, %380
  store i32 %381, i32* %6, align 4
  br label %423

382:                                              ; preds = %360
  %383 = load %struct.isp_device*, %struct.isp_device** %4, align 8
  %384 = call i32 @isp_initialize_modules(%struct.isp_device* %383)
  store i32 %384, i32* %6, align 4
  %385 = load i32, i32* %6, align 4
  %386 = icmp slt i32 %385, 0
  br i1 %386, label %387, label %388

387:                                              ; preds = %382
  br label %423

388:                                              ; preds = %382
  %389 = load %struct.isp_device*, %struct.isp_device** %4, align 8
  %390 = call i32 @isp_register_entities(%struct.isp_device* %389)
  store i32 %390, i32* %6, align 4
  %391 = load i32, i32* %6, align 4
  %392 = icmp slt i32 %391, 0
  br i1 %392, label %393, label %394

393:                                              ; preds = %388
  br label %420

394:                                              ; preds = %388
  %395 = load %struct.isp_device*, %struct.isp_device** %4, align 8
  %396 = call i32 @isp_create_links(%struct.isp_device* %395)
  store i32 %396, i32* %6, align 4
  %397 = load i32, i32* %6, align 4
  %398 = icmp slt i32 %397, 0
  br i1 %398, label %399, label %400

399:                                              ; preds = %394
  br label %417

400:                                              ; preds = %394
  %401 = load %struct.isp_device*, %struct.isp_device** %4, align 8
  %402 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %401, i32 0, i32 3
  %403 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %402, i32 0, i32 0
  store i32* @isp_subdev_notifier_ops, i32** %403, align 8
  %404 = load %struct.isp_device*, %struct.isp_device** %4, align 8
  %405 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %404, i32 0, i32 4
  %406 = load %struct.isp_device*, %struct.isp_device** %4, align 8
  %407 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %406, i32 0, i32 3
  %408 = call i32 @v4l2_async_notifier_register(i32* %405, %struct.TYPE_16__* %407)
  store i32 %408, i32* %6, align 4
  %409 = load i32, i32* %6, align 4
  %410 = icmp ne i32 %409, 0
  br i1 %410, label %411, label %412

411:                                              ; preds = %400
  br label %417

412:                                              ; preds = %400
  %413 = load %struct.isp_device*, %struct.isp_device** %4, align 8
  %414 = call i32 @isp_core_init(%struct.isp_device* %413, i32 1)
  %415 = load %struct.isp_device*, %struct.isp_device** %4, align 8
  %416 = call i32 @omap3isp_put(%struct.isp_device* %415)
  store i32 0, i32* %2, align 4
  br label %442

417:                                              ; preds = %411, %399
  %418 = load %struct.isp_device*, %struct.isp_device** %4, align 8
  %419 = call i32 @isp_unregister_entities(%struct.isp_device* %418)
  br label %420

420:                                              ; preds = %417, %393
  %421 = load %struct.isp_device*, %struct.isp_device** %4, align 8
  %422 = call i32 @isp_cleanup_modules(%struct.isp_device* %421)
  br label %423

423:                                              ; preds = %420, %387, %375, %357
  %424 = load %struct.isp_device*, %struct.isp_device** %4, align 8
  %425 = call i32 @isp_detach_iommu(%struct.isp_device* %424)
  br label %426

426:                                              ; preds = %423, %348, %247, %219, %213
  %427 = load %struct.isp_device*, %struct.isp_device** %4, align 8
  %428 = call i32 @isp_xclk_cleanup(%struct.isp_device* %427)
  %429 = load %struct.isp_device*, %struct.isp_device** %4, align 8
  %430 = call i32 @__omap3isp_put(%struct.isp_device* %429, i32 0)
  br label %431

431:                                              ; preds = %426, %205, %174, %163, %93, %82
  %432 = load %struct.isp_device*, %struct.isp_device** %4, align 8
  %433 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %432, i32 0, i32 3
  %434 = call i32 @v4l2_async_notifier_cleanup(%struct.TYPE_16__* %433)
  %435 = load %struct.isp_device*, %struct.isp_device** %4, align 8
  %436 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %435, i32 0, i32 2
  %437 = call i32 @mutex_destroy(i32* %436)
  br label %438

438:                                              ; preds = %431, %60, %45, %31
  %439 = load %struct.isp_device*, %struct.isp_device** %4, align 8
  %440 = call i32 @kfree(%struct.isp_device* %439)
  %441 = load i32, i32* %6, align 4
  store i32 %441, i32* %2, align 4
  br label %442

442:                                              ; preds = %438, %412, %145, %14
  %443 = load i32, i32* %2, align 4
  ret i32 %443
}

declare dso_local %struct.isp_device* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_18__*, i8*, ...) #1

declare dso_local i32 @fwnode_property_read_u32(i32, i8*, i32*) #1

declare dso_local i32 @of_fwnode_handle(i32) #1

declare dso_local i64 @syscon_regmap_lookup_by_phandle(i32, i8*) #1

declare dso_local i64 @IS_ERR(i64) #1

declare dso_local i32 @PTR_ERR(i64) #1

declare dso_local i32 @of_property_read_u32_index(i32, i8*, i32, i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @v4l2_async_notifier_init(%struct.TYPE_16__*) #1

declare dso_local i32 @isp_parse_of_endpoints(%struct.isp_device*) #1

declare dso_local i32 @dma_coerce_mask_and_coherent(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.isp_device*) #1

declare dso_local i8* @devm_regulator_get(%struct.TYPE_18__*, i8*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i64 @devm_ioremap_resource(%struct.TYPE_18__*, %struct.resource*) #1

declare dso_local i32 @isp_get_clocks(%struct.isp_device*) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @isp_reg_readl(%struct.isp_device*, i32, i32) #1

declare dso_local i32 @dev_info(%struct.TYPE_18__*, i8*, i32, i32) #1

declare dso_local i32 @clk_disable(i32) #1

declare dso_local i32* @__omap3isp_get(%struct.isp_device*, i32) #1

declare dso_local i32 @isp_reset(%struct.isp_device*) #1

declare dso_local i32 @isp_xclk_init(%struct.isp_device*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_17__*) #1

declare dso_local i32 @isp_attach_iommu(%struct.isp_device*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i64 @devm_request_irq(%struct.TYPE_18__*, i32, i32, i32, i8*, %struct.isp_device*) #1

declare dso_local i32 @isp_initialize_modules(%struct.isp_device*) #1

declare dso_local i32 @isp_register_entities(%struct.isp_device*) #1

declare dso_local i32 @isp_create_links(%struct.isp_device*) #1

declare dso_local i32 @v4l2_async_notifier_register(i32*, %struct.TYPE_16__*) #1

declare dso_local i32 @isp_core_init(%struct.isp_device*, i32) #1

declare dso_local i32 @omap3isp_put(%struct.isp_device*) #1

declare dso_local i32 @isp_unregister_entities(%struct.isp_device*) #1

declare dso_local i32 @isp_cleanup_modules(%struct.isp_device*) #1

declare dso_local i32 @isp_detach_iommu(%struct.isp_device*) #1

declare dso_local i32 @isp_xclk_cleanup(%struct.isp_device*) #1

declare dso_local i32 @__omap3isp_put(%struct.isp_device*, i32) #1

declare dso_local i32 @v4l2_async_notifier_cleanup(%struct.TYPE_16__*) #1

declare dso_local i32 @mutex_destroy(i32*) #1

declare dso_local i32 @kfree(%struct.isp_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
