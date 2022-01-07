; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_mipi-csis.c_s5pcsis_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_mipi-csis.c_s5pcsis_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.of_device_id = type { %struct.csis_drvdata* }
%struct.csis_drvdata = type { i32 }
%struct.resource = type { i32 }
%struct.csis_state = type { i64, i64, i64, i32, i32*, %struct.TYPE_11__, i64, i32, i32, i32, %struct.TYPE_14__*, %struct.TYPE_10__, %struct.TYPE_12__*, %struct.TYPE_15__*, i32, i32, i32, %struct.platform_device*, i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_13__, i32, i32, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_15__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@s5pcsis_of_match = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Unsupported number of data lanes: %d (max. %d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"csis\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@CSIS_NUM_SUPPLIES = common dso_local global i32 0, align 4
@csis_supply_name = common dso_local global i32* null, align 8
@CSIS_CLK_MUX = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"No clock frequency specified!\0A\00", align 1
@s5pcsis_irq_handler = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"Interrupt request failed\0A\00", align 1
@s5pcsis_subdev_ops = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"%s.%d\00", align 1
@CSIS_SUBDEV_NAME = common dso_local global i8* null, align 8
@V4L2_SUBDEV_FL_HAS_DEVNODE = common dso_local global i32 0, align 4
@s5pcsis_formats = common dso_local global %struct.TYPE_12__* null, align 8
@S5PCSIS_DEF_PIX_WIDTH = common dso_local global i32 0, align 4
@S5PCSIS_DEF_PIX_HEIGHT = common dso_local global i32 0, align 4
@MEDIA_ENT_F_IO_V4L = common dso_local global i32 0, align 4
@MEDIA_PAD_FL_SINK = common dso_local global i32 0, align 4
@CSIS_PAD_SINK = common dso_local global i64 0, align 8
@MEDIA_PAD_FL_SOURCE = common dso_local global i32 0, align 4
@CSIS_PAD_SOURCE = common dso_local global i64 0, align 8
@CSIS_PADS_NUM = common dso_local global i32 0, align 4
@s5pcsis_events = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [46 x i8] c"lanes: %d, hs_settle: %d, wclk: %d, freq: %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @s5pcsis_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5pcsis_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.of_device_id*, align 8
  %5 = alloca %struct.csis_drvdata*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca %struct.csis_state*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %6, align 8
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %9, align 4
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.csis_state* @devm_kzalloc(%struct.device* %15, i32 152, i32 %16)
  store %struct.csis_state* %17, %struct.csis_state** %8, align 8
  %18 = load %struct.csis_state*, %struct.csis_state** %8, align 8
  %19 = icmp ne %struct.csis_state* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %354

23:                                               ; preds = %1
  %24 = load %struct.csis_state*, %struct.csis_state** %8, align 8
  %25 = getelementptr inbounds %struct.csis_state, %struct.csis_state* %24, i32 0, i32 19
  %26 = call i32 @mutex_init(i32* %25)
  %27 = load %struct.csis_state*, %struct.csis_state** %8, align 8
  %28 = getelementptr inbounds %struct.csis_state, %struct.csis_state* %27, i32 0, i32 18
  %29 = call i32 @spin_lock_init(i32* %28)
  %30 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %31 = load %struct.csis_state*, %struct.csis_state** %8, align 8
  %32 = getelementptr inbounds %struct.csis_state, %struct.csis_state* %31, i32 0, i32 17
  store %struct.platform_device* %30, %struct.platform_device** %32, align 8
  %33 = load i32, i32* @s5pcsis_of_match, align 4
  %34 = load %struct.device*, %struct.device** %6, align 8
  %35 = getelementptr inbounds %struct.device, %struct.device* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call %struct.of_device_id* @of_match_node(i32 %33, i32 %36)
  store %struct.of_device_id* %37, %struct.of_device_id** %4, align 8
  %38 = load %struct.of_device_id*, %struct.of_device_id** %4, align 8
  %39 = icmp eq %struct.of_device_id* %38, null
  %40 = zext i1 %39 to i32
  %41 = call i64 @WARN_ON(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %23
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %354

46:                                               ; preds = %23
  %47 = load %struct.of_device_id*, %struct.of_device_id** %4, align 8
  %48 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %47, i32 0, i32 0
  %49 = load %struct.csis_drvdata*, %struct.csis_drvdata** %48, align 8
  store %struct.csis_drvdata* %49, %struct.csis_drvdata** %5, align 8
  %50 = load %struct.csis_drvdata*, %struct.csis_drvdata** %5, align 8
  %51 = getelementptr inbounds %struct.csis_drvdata, %struct.csis_drvdata* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.csis_state*, %struct.csis_state** %8, align 8
  %54 = getelementptr inbounds %struct.csis_state, %struct.csis_state* %53, i32 0, i32 16
  store i32 %52, i32* %54, align 8
  %55 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %56 = load %struct.csis_state*, %struct.csis_state** %8, align 8
  %57 = call i32 @s5pcsis_parse_dt(%struct.platform_device* %55, %struct.csis_state* %56)
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %9, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %46
  %61 = load i32, i32* %9, align 4
  store i32 %61, i32* %2, align 4
  br label %354

62:                                               ; preds = %46
  %63 = load %struct.csis_state*, %struct.csis_state** %8, align 8
  %64 = getelementptr inbounds %struct.csis_state, %struct.csis_state* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %75, label %67

67:                                               ; preds = %62
  %68 = load %struct.csis_state*, %struct.csis_state** %8, align 8
  %69 = getelementptr inbounds %struct.csis_state, %struct.csis_state* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.csis_state*, %struct.csis_state** %8, align 8
  %72 = getelementptr inbounds %struct.csis_state, %struct.csis_state* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp sgt i64 %70, %73
  br i1 %74, label %75, label %86

75:                                               ; preds = %67, %62
  %76 = load %struct.device*, %struct.device** %6, align 8
  %77 = load %struct.csis_state*, %struct.csis_state** %8, align 8
  %78 = getelementptr inbounds %struct.csis_state, %struct.csis_state* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.csis_state*, %struct.csis_state** %8, align 8
  %81 = getelementptr inbounds %struct.csis_state, %struct.csis_state* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %76, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i64 %79, i64 %82)
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %2, align 4
  br label %354

86:                                               ; preds = %67
  %87 = load %struct.device*, %struct.device** %6, align 8
  %88 = call i32 @devm_phy_get(%struct.device* %87, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %89 = load %struct.csis_state*, %struct.csis_state** %8, align 8
  %90 = getelementptr inbounds %struct.csis_state, %struct.csis_state* %89, i32 0, i32 15
  store i32 %88, i32* %90, align 4
  %91 = load %struct.csis_state*, %struct.csis_state** %8, align 8
  %92 = getelementptr inbounds %struct.csis_state, %struct.csis_state* %91, i32 0, i32 15
  %93 = load i32, i32* %92, align 4
  %94 = call i64 @IS_ERR(i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %86
  %97 = load %struct.csis_state*, %struct.csis_state** %8, align 8
  %98 = getelementptr inbounds %struct.csis_state, %struct.csis_state* %97, i32 0, i32 15
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @PTR_ERR(i32 %99)
  store i32 %100, i32* %2, align 4
  br label %354

101:                                              ; preds = %86
  %102 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %103 = load i32, i32* @IORESOURCE_MEM, align 4
  %104 = call %struct.resource* @platform_get_resource(%struct.platform_device* %102, i32 %103, i32 0)
  store %struct.resource* %104, %struct.resource** %7, align 8
  %105 = load %struct.device*, %struct.device** %6, align 8
  %106 = load %struct.resource*, %struct.resource** %7, align 8
  %107 = call i32 @devm_ioremap_resource(%struct.device* %105, %struct.resource* %106)
  %108 = load %struct.csis_state*, %struct.csis_state** %8, align 8
  %109 = getelementptr inbounds %struct.csis_state, %struct.csis_state* %108, i32 0, i32 14
  store i32 %107, i32* %109, align 8
  %110 = load %struct.csis_state*, %struct.csis_state** %8, align 8
  %111 = getelementptr inbounds %struct.csis_state, %struct.csis_state* %110, i32 0, i32 14
  %112 = load i32, i32* %111, align 8
  %113 = call i64 @IS_ERR(i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %101
  %116 = load %struct.csis_state*, %struct.csis_state** %8, align 8
  %117 = getelementptr inbounds %struct.csis_state, %struct.csis_state* %116, i32 0, i32 14
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @PTR_ERR(i32 %118)
  store i32 %119, i32* %2, align 4
  br label %354

120:                                              ; preds = %101
  %121 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %122 = call i64 @platform_get_irq(%struct.platform_device* %121, i32 0)
  %123 = load %struct.csis_state*, %struct.csis_state** %8, align 8
  %124 = getelementptr inbounds %struct.csis_state, %struct.csis_state* %123, i32 0, i32 2
  store i64 %122, i64* %124, align 8
  %125 = load %struct.csis_state*, %struct.csis_state** %8, align 8
  %126 = getelementptr inbounds %struct.csis_state, %struct.csis_state* %125, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  %128 = icmp slt i64 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %120
  %130 = load %struct.csis_state*, %struct.csis_state** %8, align 8
  %131 = getelementptr inbounds %struct.csis_state, %struct.csis_state* %130, i32 0, i32 2
  %132 = load i64, i64* %131, align 8
  %133 = trunc i64 %132 to i32
  store i32 %133, i32* %2, align 4
  br label %354

134:                                              ; preds = %120
  store i32 0, i32* %10, align 4
  br label %135

135:                                              ; preds = %152, %134
  %136 = load i32, i32* %10, align 4
  %137 = load i32, i32* @CSIS_NUM_SUPPLIES, align 4
  %138 = icmp slt i32 %136, %137
  br i1 %138, label %139, label %155

139:                                              ; preds = %135
  %140 = load i32*, i32** @csis_supply_name, align 8
  %141 = load i32, i32* %10, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.csis_state*, %struct.csis_state** %8, align 8
  %146 = getelementptr inbounds %struct.csis_state, %struct.csis_state* %145, i32 0, i32 13
  %147 = load %struct.TYPE_15__*, %struct.TYPE_15__** %146, align 8
  %148 = load i32, i32* %10, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %150, i32 0, i32 0
  store i32 %144, i32* %151, align 4
  br label %152

152:                                              ; preds = %139
  %153 = load i32, i32* %10, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %10, align 4
  br label %135

155:                                              ; preds = %135
  %156 = load %struct.device*, %struct.device** %6, align 8
  %157 = load i32, i32* @CSIS_NUM_SUPPLIES, align 4
  %158 = load %struct.csis_state*, %struct.csis_state** %8, align 8
  %159 = getelementptr inbounds %struct.csis_state, %struct.csis_state* %158, i32 0, i32 13
  %160 = load %struct.TYPE_15__*, %struct.TYPE_15__** %159, align 8
  %161 = call i32 @devm_regulator_bulk_get(%struct.device* %156, i32 %157, %struct.TYPE_15__* %160)
  store i32 %161, i32* %9, align 4
  %162 = load i32, i32* %9, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %166

164:                                              ; preds = %155
  %165 = load i32, i32* %9, align 4
  store i32 %165, i32* %2, align 4
  br label %354

166:                                              ; preds = %155
  %167 = load %struct.csis_state*, %struct.csis_state** %8, align 8
  %168 = call i32 @s5pcsis_clk_get(%struct.csis_state* %167)
  store i32 %168, i32* %9, align 4
  %169 = load i32, i32* %9, align 4
  %170 = icmp slt i32 %169, 0
  br i1 %170, label %171, label %173

171:                                              ; preds = %166
  %172 = load i32, i32* %9, align 4
  store i32 %172, i32* %2, align 4
  br label %354

173:                                              ; preds = %166
  %174 = load %struct.csis_state*, %struct.csis_state** %8, align 8
  %175 = getelementptr inbounds %struct.csis_state, %struct.csis_state* %174, i32 0, i32 6
  %176 = load i64, i64* %175, align 8
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %189

178:                                              ; preds = %173
  %179 = load %struct.csis_state*, %struct.csis_state** %8, align 8
  %180 = getelementptr inbounds %struct.csis_state, %struct.csis_state* %179, i32 0, i32 4
  %181 = load i32*, i32** %180, align 8
  %182 = load i64, i64* @CSIS_CLK_MUX, align 8
  %183 = getelementptr inbounds i32, i32* %181, i64 %182
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.csis_state*, %struct.csis_state** %8, align 8
  %186 = getelementptr inbounds %struct.csis_state, %struct.csis_state* %185, i32 0, i32 6
  %187 = load i64, i64* %186, align 8
  %188 = call i32 @clk_set_rate(i32 %184, i64 %187)
  store i32 %188, i32* %9, align 4
  br label %192

189:                                              ; preds = %173
  %190 = load %struct.device*, %struct.device** %6, align 8
  %191 = call i32 @dev_WARN(%struct.device* %190, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %192

192:                                              ; preds = %189, %178
  %193 = load i32, i32* %9, align 4
  %194 = icmp slt i32 %193, 0
  br i1 %194, label %195, label %196

195:                                              ; preds = %192
  br label %350

196:                                              ; preds = %192
  %197 = load %struct.csis_state*, %struct.csis_state** %8, align 8
  %198 = getelementptr inbounds %struct.csis_state, %struct.csis_state* %197, i32 0, i32 4
  %199 = load i32*, i32** %198, align 8
  %200 = load i64, i64* @CSIS_CLK_MUX, align 8
  %201 = getelementptr inbounds i32, i32* %199, i64 %200
  %202 = load i32, i32* %201, align 4
  %203 = call i32 @clk_enable(i32 %202)
  store i32 %203, i32* %9, align 4
  %204 = load i32, i32* %9, align 4
  %205 = icmp slt i32 %204, 0
  br i1 %205, label %206, label %207

206:                                              ; preds = %196
  br label %350

207:                                              ; preds = %196
  %208 = load %struct.device*, %struct.device** %6, align 8
  %209 = load %struct.csis_state*, %struct.csis_state** %8, align 8
  %210 = getelementptr inbounds %struct.csis_state, %struct.csis_state* %209, i32 0, i32 2
  %211 = load i64, i64* %210, align 8
  %212 = trunc i64 %211 to i32
  %213 = load i32, i32* @s5pcsis_irq_handler, align 4
  %214 = load %struct.device*, %struct.device** %6, align 8
  %215 = call i32 @dev_name(%struct.device* %214)
  %216 = load %struct.csis_state*, %struct.csis_state** %8, align 8
  %217 = call i32 @devm_request_irq(%struct.device* %208, i32 %212, i32 %213, i32 0, i32 %215, %struct.csis_state* %216)
  store i32 %217, i32* %9, align 4
  %218 = load i32, i32* %9, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %223

220:                                              ; preds = %207
  %221 = load %struct.device*, %struct.device** %6, align 8
  %222 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %221, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  br label %342

223:                                              ; preds = %207
  %224 = load %struct.csis_state*, %struct.csis_state** %8, align 8
  %225 = getelementptr inbounds %struct.csis_state, %struct.csis_state* %224, i32 0, i32 5
  %226 = call i32 @v4l2_subdev_init(%struct.TYPE_11__* %225, i32* @s5pcsis_subdev_ops)
  %227 = load i32, i32* @THIS_MODULE, align 4
  %228 = load %struct.csis_state*, %struct.csis_state** %8, align 8
  %229 = getelementptr inbounds %struct.csis_state, %struct.csis_state* %228, i32 0, i32 5
  %230 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %229, i32 0, i32 3
  store i32 %227, i32* %230, align 4
  %231 = load %struct.csis_state*, %struct.csis_state** %8, align 8
  %232 = getelementptr inbounds %struct.csis_state, %struct.csis_state* %231, i32 0, i32 5
  %233 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %232, i32 0, i32 2
  %234 = load i32, i32* %233, align 8
  %235 = load i8*, i8** @CSIS_SUBDEV_NAME, align 8
  %236 = load %struct.csis_state*, %struct.csis_state** %8, align 8
  %237 = getelementptr inbounds %struct.csis_state, %struct.csis_state* %236, i32 0, i32 3
  %238 = load i32, i32* %237, align 8
  %239 = call i32 @snprintf(i32 %234, i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* %235, i32 %238)
  %240 = load i32, i32* @V4L2_SUBDEV_FL_HAS_DEVNODE, align 4
  %241 = load %struct.csis_state*, %struct.csis_state** %8, align 8
  %242 = getelementptr inbounds %struct.csis_state, %struct.csis_state* %241, i32 0, i32 5
  %243 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 4
  %245 = or i32 %244, %240
  store i32 %245, i32* %243, align 4
  %246 = load %struct.TYPE_12__*, %struct.TYPE_12__** @s5pcsis_formats, align 8
  %247 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %246, i64 0
  %248 = load %struct.csis_state*, %struct.csis_state** %8, align 8
  %249 = getelementptr inbounds %struct.csis_state, %struct.csis_state* %248, i32 0, i32 12
  store %struct.TYPE_12__* %247, %struct.TYPE_12__** %249, align 8
  %250 = load %struct.TYPE_12__*, %struct.TYPE_12__** @s5pcsis_formats, align 8
  %251 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %250, i64 0
  %252 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 4
  %254 = load %struct.csis_state*, %struct.csis_state** %8, align 8
  %255 = getelementptr inbounds %struct.csis_state, %struct.csis_state* %254, i32 0, i32 11
  %256 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %255, i32 0, i32 2
  store i32 %253, i32* %256, align 8
  %257 = load i32, i32* @S5PCSIS_DEF_PIX_WIDTH, align 4
  %258 = load %struct.csis_state*, %struct.csis_state** %8, align 8
  %259 = getelementptr inbounds %struct.csis_state, %struct.csis_state* %258, i32 0, i32 11
  %260 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %259, i32 0, i32 1
  store i32 %257, i32* %260, align 4
  %261 = load i32, i32* @S5PCSIS_DEF_PIX_HEIGHT, align 4
  %262 = load %struct.csis_state*, %struct.csis_state** %8, align 8
  %263 = getelementptr inbounds %struct.csis_state, %struct.csis_state* %262, i32 0, i32 11
  %264 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %263, i32 0, i32 0
  store i32 %261, i32* %264, align 8
  %265 = load i32, i32* @MEDIA_ENT_F_IO_V4L, align 4
  %266 = load %struct.csis_state*, %struct.csis_state** %8, align 8
  %267 = getelementptr inbounds %struct.csis_state, %struct.csis_state* %266, i32 0, i32 5
  %268 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %267, i32 0, i32 0
  %269 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %268, i32 0, i32 0
  store i32 %265, i32* %269, align 8
  %270 = load i32, i32* @MEDIA_PAD_FL_SINK, align 4
  %271 = load %struct.csis_state*, %struct.csis_state** %8, align 8
  %272 = getelementptr inbounds %struct.csis_state, %struct.csis_state* %271, i32 0, i32 10
  %273 = load %struct.TYPE_14__*, %struct.TYPE_14__** %272, align 8
  %274 = load i64, i64* @CSIS_PAD_SINK, align 8
  %275 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %273, i64 %274
  %276 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %275, i32 0, i32 0
  store i32 %270, i32* %276, align 4
  %277 = load i32, i32* @MEDIA_PAD_FL_SOURCE, align 4
  %278 = load %struct.csis_state*, %struct.csis_state** %8, align 8
  %279 = getelementptr inbounds %struct.csis_state, %struct.csis_state* %278, i32 0, i32 10
  %280 = load %struct.TYPE_14__*, %struct.TYPE_14__** %279, align 8
  %281 = load i64, i64* @CSIS_PAD_SOURCE, align 8
  %282 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %280, i64 %281
  %283 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %282, i32 0, i32 0
  store i32 %277, i32* %283, align 4
  %284 = load %struct.csis_state*, %struct.csis_state** %8, align 8
  %285 = getelementptr inbounds %struct.csis_state, %struct.csis_state* %284, i32 0, i32 5
  %286 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %285, i32 0, i32 0
  %287 = load i32, i32* @CSIS_PADS_NUM, align 4
  %288 = load %struct.csis_state*, %struct.csis_state** %8, align 8
  %289 = getelementptr inbounds %struct.csis_state, %struct.csis_state* %288, i32 0, i32 10
  %290 = load %struct.TYPE_14__*, %struct.TYPE_14__** %289, align 8
  %291 = call i32 @media_entity_pads_init(%struct.TYPE_13__* %286, i32 %287, %struct.TYPE_14__* %290)
  store i32 %291, i32* %9, align 4
  %292 = load i32, i32* %9, align 4
  %293 = icmp slt i32 %292, 0
  br i1 %293, label %294, label %295

294:                                              ; preds = %223
  br label %342

295:                                              ; preds = %223
  %296 = load %struct.csis_state*, %struct.csis_state** %8, align 8
  %297 = getelementptr inbounds %struct.csis_state, %struct.csis_state* %296, i32 0, i32 5
  %298 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %299 = call i32 @v4l2_set_subdevdata(%struct.TYPE_11__* %297, %struct.platform_device* %298)
  %300 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %301 = load %struct.csis_state*, %struct.csis_state** %8, align 8
  %302 = getelementptr inbounds %struct.csis_state, %struct.csis_state* %301, i32 0, i32 5
  %303 = call i32 @platform_set_drvdata(%struct.platform_device* %300, %struct.TYPE_11__* %302)
  %304 = load %struct.csis_state*, %struct.csis_state** %8, align 8
  %305 = getelementptr inbounds %struct.csis_state, %struct.csis_state* %304, i32 0, i32 9
  %306 = load i32, i32* %305, align 8
  %307 = load i32, i32* @s5pcsis_events, align 4
  %308 = call i32 @memcpy(i32 %306, i32 %307, i32 4)
  %309 = load %struct.device*, %struct.device** %6, align 8
  %310 = call i32 @pm_runtime_enable(%struct.device* %309)
  %311 = load %struct.device*, %struct.device** %6, align 8
  %312 = call i32 @pm_runtime_enabled(%struct.device* %311)
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %321, label %314

314:                                              ; preds = %295
  %315 = load %struct.device*, %struct.device** %6, align 8
  %316 = call i32 @s5pcsis_pm_resume(%struct.device* %315, i32 1)
  store i32 %316, i32* %9, align 4
  %317 = load i32, i32* %9, align 4
  %318 = icmp slt i32 %317, 0
  br i1 %318, label %319, label %320

319:                                              ; preds = %314
  br label %337

320:                                              ; preds = %314
  br label %321

321:                                              ; preds = %320, %295
  %322 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %323 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %322, i32 0, i32 0
  %324 = load %struct.csis_state*, %struct.csis_state** %8, align 8
  %325 = getelementptr inbounds %struct.csis_state, %struct.csis_state* %324, i32 0, i32 0
  %326 = load i64, i64* %325, align 8
  %327 = load %struct.csis_state*, %struct.csis_state** %8, align 8
  %328 = getelementptr inbounds %struct.csis_state, %struct.csis_state* %327, i32 0, i32 8
  %329 = load i32, i32* %328, align 4
  %330 = load %struct.csis_state*, %struct.csis_state** %8, align 8
  %331 = getelementptr inbounds %struct.csis_state, %struct.csis_state* %330, i32 0, i32 7
  %332 = load i32, i32* %331, align 8
  %333 = load %struct.csis_state*, %struct.csis_state** %8, align 8
  %334 = getelementptr inbounds %struct.csis_state, %struct.csis_state* %333, i32 0, i32 6
  %335 = load i64, i64* %334, align 8
  %336 = call i32 @dev_info(%struct.device* %323, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0), i64 %326, i32 %329, i32 %332, i64 %335)
  store i32 0, i32* %2, align 4
  br label %354

337:                                              ; preds = %319
  %338 = load %struct.csis_state*, %struct.csis_state** %8, align 8
  %339 = getelementptr inbounds %struct.csis_state, %struct.csis_state* %338, i32 0, i32 5
  %340 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %339, i32 0, i32 0
  %341 = call i32 @media_entity_cleanup(%struct.TYPE_13__* %340)
  br label %342

342:                                              ; preds = %337, %294, %220
  %343 = load %struct.csis_state*, %struct.csis_state** %8, align 8
  %344 = getelementptr inbounds %struct.csis_state, %struct.csis_state* %343, i32 0, i32 4
  %345 = load i32*, i32** %344, align 8
  %346 = load i64, i64* @CSIS_CLK_MUX, align 8
  %347 = getelementptr inbounds i32, i32* %345, i64 %346
  %348 = load i32, i32* %347, align 4
  %349 = call i32 @clk_disable(i32 %348)
  br label %350

350:                                              ; preds = %342, %206, %195
  %351 = load %struct.csis_state*, %struct.csis_state** %8, align 8
  %352 = call i32 @s5pcsis_clk_put(%struct.csis_state* %351)
  %353 = load i32, i32* %9, align 4
  store i32 %353, i32* %2, align 4
  br label %354

354:                                              ; preds = %350, %321, %171, %164, %129, %115, %96, %75, %60, %43, %20
  %355 = load i32, i32* %2, align 4
  ret i32 %355
}

declare dso_local %struct.csis_state* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local %struct.of_device_id* @of_match_node(i32, i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @s5pcsis_parse_dt(%struct.platform_device*, %struct.csis_state*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @devm_phy_get(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_regulator_bulk_get(%struct.device*, i32, %struct.TYPE_15__*) #1

declare dso_local i32 @s5pcsis_clk_get(%struct.csis_state*) #1

declare dso_local i32 @clk_set_rate(i32, i64) #1

declare dso_local i32 @dev_WARN(%struct.device*, i8*) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i32, i32, i32, i32, %struct.csis_state*) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @v4l2_subdev_init(%struct.TYPE_11__*, i32*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i32) #1

declare dso_local i32 @media_entity_pads_init(%struct.TYPE_13__*, i32, %struct.TYPE_14__*) #1

declare dso_local i32 @v4l2_set_subdevdata(%struct.TYPE_11__*, %struct.platform_device*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.TYPE_11__*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @pm_runtime_enable(%struct.device*) #1

declare dso_local i32 @pm_runtime_enabled(%struct.device*) #1

declare dso_local i32 @s5pcsis_pm_resume(%struct.device*, i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i64, i32, i32, i64) #1

declare dso_local i32 @media_entity_cleanup(%struct.TYPE_13__*) #1

declare dso_local i32 @clk_disable(i32) #1

declare dso_local i32 @s5pcsis_clk_put(%struct.csis_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
