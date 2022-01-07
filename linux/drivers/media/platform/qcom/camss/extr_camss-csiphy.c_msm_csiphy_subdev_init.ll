; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-csiphy.c_msm_csiphy_subdev_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-csiphy.c_msm_csiphy_subdev_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.camss = type { i64, %struct.device* }
%struct.device = type { i32 }
%struct.csiphy_device = type { i64, %struct.camss_clock*, i32, i32, %struct.TYPE_5__*, i32, i8*, i8*, i8*, i8*, %struct.TYPE_4__, %struct.camss* }
%struct.camss_clock = type { i64, i64*, i32, i8* }
%struct.TYPE_4__ = type { i64 }
%struct.resources = type { i64**, i32*, i32*, i32* }
%struct.platform_device = type { i32 }
%struct.resource = type { i32 }

@CAMSS_8x16 = common dso_local global i64 0, align 8
@csiphy_ops_2ph_1_0 = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@csiphy_formats_8x16 = common dso_local global i8* null, align 8
@CAMSS_8x96 = common dso_local global i64 0, align 8
@csiphy_ops_3ph_1_0 = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@csiphy_formats_8x96 = common dso_local global i8* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"could not map memory\0A\00", align 1
@IORESOURCE_IRQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"missing IRQ\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"%s_%s%d\00", align 1
@MSM_CSIPHY_NAME = common dso_local global i8* null, align 8
@IRQF_TRIGGER_RISING = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"request_irq failed: %d\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @msm_csiphy_subdev_init(%struct.camss* %0, %struct.csiphy_device* %1, %struct.resources* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.camss*, align 8
  %7 = alloca %struct.csiphy_device*, align 8
  %8 = alloca %struct.resources*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.device*, align 8
  %11 = alloca %struct.platform_device*, align 8
  %12 = alloca %struct.resource*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.camss_clock*, align 8
  store %struct.camss* %0, %struct.camss** %6, align 8
  store %struct.csiphy_device* %1, %struct.csiphy_device** %7, align 8
  store %struct.resources* %2, %struct.resources** %8, align 8
  store i32 %3, i32* %9, align 4
  %17 = load %struct.camss*, %struct.camss** %6, align 8
  %18 = getelementptr inbounds %struct.camss, %struct.camss* %17, i32 0, i32 1
  %19 = load %struct.device*, %struct.device** %18, align 8
  store %struct.device* %19, %struct.device** %10, align 8
  %20 = load %struct.device*, %struct.device** %10, align 8
  %21 = call %struct.platform_device* @to_platform_device(%struct.device* %20)
  store %struct.platform_device* %21, %struct.platform_device** %11, align 8
  %22 = load %struct.camss*, %struct.camss** %6, align 8
  %23 = load %struct.csiphy_device*, %struct.csiphy_device** %7, align 8
  %24 = getelementptr inbounds %struct.csiphy_device, %struct.csiphy_device* %23, i32 0, i32 11
  store %struct.camss* %22, %struct.camss** %24, align 8
  %25 = load i32, i32* %9, align 4
  %26 = load %struct.csiphy_device*, %struct.csiphy_device** %7, align 8
  %27 = getelementptr inbounds %struct.csiphy_device, %struct.csiphy_device* %26, i32 0, i32 5
  store i32 %25, i32* %27, align 8
  %28 = load %struct.csiphy_device*, %struct.csiphy_device** %7, align 8
  %29 = getelementptr inbounds %struct.csiphy_device, %struct.csiphy_device* %28, i32 0, i32 10
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  store i64 0, i64* %30, align 8
  %31 = load %struct.camss*, %struct.camss** %6, align 8
  %32 = getelementptr inbounds %struct.camss, %struct.camss* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @CAMSS_8x16, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %46

36:                                               ; preds = %4
  %37 = load %struct.csiphy_device*, %struct.csiphy_device** %7, align 8
  %38 = getelementptr inbounds %struct.csiphy_device, %struct.csiphy_device* %37, i32 0, i32 4
  store %struct.TYPE_5__* @csiphy_ops_2ph_1_0, %struct.TYPE_5__** %38, align 8
  %39 = load i8*, i8** @csiphy_formats_8x16, align 8
  %40 = load %struct.csiphy_device*, %struct.csiphy_device** %7, align 8
  %41 = getelementptr inbounds %struct.csiphy_device, %struct.csiphy_device* %40, i32 0, i32 9
  store i8* %39, i8** %41, align 8
  %42 = load i8*, i8** @csiphy_formats_8x16, align 8
  %43 = call i8* @ARRAY_SIZE(i8* %42)
  %44 = load %struct.csiphy_device*, %struct.csiphy_device** %7, align 8
  %45 = getelementptr inbounds %struct.csiphy_device, %struct.csiphy_device* %44, i32 0, i32 8
  store i8* %43, i8** %45, align 8
  br label %66

46:                                               ; preds = %4
  %47 = load %struct.camss*, %struct.camss** %6, align 8
  %48 = getelementptr inbounds %struct.camss, %struct.camss* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @CAMSS_8x96, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %62

52:                                               ; preds = %46
  %53 = load %struct.csiphy_device*, %struct.csiphy_device** %7, align 8
  %54 = getelementptr inbounds %struct.csiphy_device, %struct.csiphy_device* %53, i32 0, i32 4
  store %struct.TYPE_5__* @csiphy_ops_3ph_1_0, %struct.TYPE_5__** %54, align 8
  %55 = load i8*, i8** @csiphy_formats_8x96, align 8
  %56 = load %struct.csiphy_device*, %struct.csiphy_device** %7, align 8
  %57 = getelementptr inbounds %struct.csiphy_device, %struct.csiphy_device* %56, i32 0, i32 9
  store i8* %55, i8** %57, align 8
  %58 = load i8*, i8** @csiphy_formats_8x96, align 8
  %59 = call i8* @ARRAY_SIZE(i8* %58)
  %60 = load %struct.csiphy_device*, %struct.csiphy_device** %7, align 8
  %61 = getelementptr inbounds %struct.csiphy_device, %struct.csiphy_device* %60, i32 0, i32 8
  store i8* %59, i8** %61, align 8
  br label %65

62:                                               ; preds = %46
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %5, align 4
  br label %337

65:                                               ; preds = %52
  br label %66

66:                                               ; preds = %65, %36
  %67 = load %struct.platform_device*, %struct.platform_device** %11, align 8
  %68 = load i32, i32* @IORESOURCE_MEM, align 4
  %69 = load %struct.resources*, %struct.resources** %8, align 8
  %70 = getelementptr inbounds %struct.resources, %struct.resources* %69, i32 0, i32 3
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 0
  %73 = load i32, i32* %72, align 4
  %74 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %67, i32 %68, i32 %73)
  store %struct.resource* %74, %struct.resource** %12, align 8
  %75 = load %struct.device*, %struct.device** %10, align 8
  %76 = load %struct.resource*, %struct.resource** %12, align 8
  %77 = call i8* @devm_ioremap_resource(%struct.device* %75, %struct.resource* %76)
  %78 = load %struct.csiphy_device*, %struct.csiphy_device** %7, align 8
  %79 = getelementptr inbounds %struct.csiphy_device, %struct.csiphy_device* %78, i32 0, i32 7
  store i8* %77, i8** %79, align 8
  %80 = load %struct.csiphy_device*, %struct.csiphy_device** %7, align 8
  %81 = getelementptr inbounds %struct.csiphy_device, %struct.csiphy_device* %80, i32 0, i32 7
  %82 = load i8*, i8** %81, align 8
  %83 = call i64 @IS_ERR(i8* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %66
  %86 = load %struct.device*, %struct.device** %10, align 8
  %87 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %86, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %88 = load %struct.csiphy_device*, %struct.csiphy_device** %7, align 8
  %89 = getelementptr inbounds %struct.csiphy_device, %struct.csiphy_device* %88, i32 0, i32 7
  %90 = load i8*, i8** %89, align 8
  %91 = call i32 @PTR_ERR(i8* %90)
  store i32 %91, i32* %5, align 4
  br label %337

92:                                               ; preds = %66
  %93 = load %struct.platform_device*, %struct.platform_device** %11, align 8
  %94 = load i32, i32* @IORESOURCE_MEM, align 4
  %95 = load %struct.resources*, %struct.resources** %8, align 8
  %96 = getelementptr inbounds %struct.resources, %struct.resources* %95, i32 0, i32 3
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 1
  %99 = load i32, i32* %98, align 4
  %100 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %93, i32 %94, i32 %99)
  store %struct.resource* %100, %struct.resource** %12, align 8
  %101 = load %struct.device*, %struct.device** %10, align 8
  %102 = load %struct.resource*, %struct.resource** %12, align 8
  %103 = call i8* @devm_ioremap_resource(%struct.device* %101, %struct.resource* %102)
  %104 = load %struct.csiphy_device*, %struct.csiphy_device** %7, align 8
  %105 = getelementptr inbounds %struct.csiphy_device, %struct.csiphy_device* %104, i32 0, i32 6
  store i8* %103, i8** %105, align 8
  %106 = load %struct.csiphy_device*, %struct.csiphy_device** %7, align 8
  %107 = getelementptr inbounds %struct.csiphy_device, %struct.csiphy_device* %106, i32 0, i32 6
  %108 = load i8*, i8** %107, align 8
  %109 = call i64 @IS_ERR(i8* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %118

111:                                              ; preds = %92
  %112 = load %struct.device*, %struct.device** %10, align 8
  %113 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %112, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %114 = load %struct.csiphy_device*, %struct.csiphy_device** %7, align 8
  %115 = getelementptr inbounds %struct.csiphy_device, %struct.csiphy_device* %114, i32 0, i32 6
  %116 = load i8*, i8** %115, align 8
  %117 = call i32 @PTR_ERR(i8* %116)
  store i32 %117, i32* %5, align 4
  br label %337

118:                                              ; preds = %92
  %119 = load %struct.platform_device*, %struct.platform_device** %11, align 8
  %120 = load i32, i32* @IORESOURCE_IRQ, align 4
  %121 = load %struct.resources*, %struct.resources** %8, align 8
  %122 = getelementptr inbounds %struct.resources, %struct.resources* %121, i32 0, i32 2
  %123 = load i32*, i32** %122, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 0
  %125 = load i32, i32* %124, align 4
  %126 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %119, i32 %120, i32 %125)
  store %struct.resource* %126, %struct.resource** %12, align 8
  %127 = load %struct.resource*, %struct.resource** %12, align 8
  %128 = icmp ne %struct.resource* %127, null
  br i1 %128, label %134, label %129

129:                                              ; preds = %118
  %130 = load %struct.device*, %struct.device** %10, align 8
  %131 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %130, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %132 = load i32, i32* @EINVAL, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %5, align 4
  br label %337

134:                                              ; preds = %118
  %135 = load %struct.resource*, %struct.resource** %12, align 8
  %136 = getelementptr inbounds %struct.resource, %struct.resource* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.csiphy_device*, %struct.csiphy_device** %7, align 8
  %139 = getelementptr inbounds %struct.csiphy_device, %struct.csiphy_device* %138, i32 0, i32 2
  store i32 %137, i32* %139, align 8
  %140 = load %struct.csiphy_device*, %struct.csiphy_device** %7, align 8
  %141 = getelementptr inbounds %struct.csiphy_device, %struct.csiphy_device* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.device*, %struct.device** %10, align 8
  %144 = call i8* @dev_name(%struct.device* %143)
  %145 = load i8*, i8** @MSM_CSIPHY_NAME, align 8
  %146 = load %struct.csiphy_device*, %struct.csiphy_device** %7, align 8
  %147 = getelementptr inbounds %struct.csiphy_device, %struct.csiphy_device* %146, i32 0, i32 5
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @snprintf(i32 %142, i32 4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %144, i8* %145, i32 %148)
  %150 = load %struct.device*, %struct.device** %10, align 8
  %151 = load %struct.csiphy_device*, %struct.csiphy_device** %7, align 8
  %152 = getelementptr inbounds %struct.csiphy_device, %struct.csiphy_device* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.csiphy_device*, %struct.csiphy_device** %7, align 8
  %155 = getelementptr inbounds %struct.csiphy_device, %struct.csiphy_device* %154, i32 0, i32 4
  %156 = load %struct.TYPE_5__*, %struct.TYPE_5__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %160 = load %struct.csiphy_device*, %struct.csiphy_device** %7, align 8
  %161 = getelementptr inbounds %struct.csiphy_device, %struct.csiphy_device* %160, i32 0, i32 3
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.csiphy_device*, %struct.csiphy_device** %7, align 8
  %164 = call i32 @devm_request_irq(%struct.device* %150, i32 %153, i32 %158, i32 %159, i32 %162, %struct.csiphy_device* %163)
  store i32 %164, i32* %15, align 4
  %165 = load i32, i32* %15, align 4
  %166 = icmp slt i32 %165, 0
  br i1 %166, label %167, label %172

167:                                              ; preds = %134
  %168 = load %struct.device*, %struct.device** %10, align 8
  %169 = load i32, i32* %15, align 4
  %170 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %168, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %169)
  %171 = load i32, i32* %15, align 4
  store i32 %171, i32* %5, align 4
  br label %337

172:                                              ; preds = %134
  %173 = load %struct.csiphy_device*, %struct.csiphy_device** %7, align 8
  %174 = getelementptr inbounds %struct.csiphy_device, %struct.csiphy_device* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 8
  %176 = call i32 @disable_irq(i32 %175)
  %177 = load %struct.csiphy_device*, %struct.csiphy_device** %7, align 8
  %178 = getelementptr inbounds %struct.csiphy_device, %struct.csiphy_device* %177, i32 0, i32 0
  store i64 0, i64* %178, align 8
  br label %179

179:                                              ; preds = %189, %172
  %180 = load %struct.resources*, %struct.resources** %8, align 8
  %181 = getelementptr inbounds %struct.resources, %struct.resources* %180, i32 0, i32 1
  %182 = load i32*, i32** %181, align 8
  %183 = load %struct.csiphy_device*, %struct.csiphy_device** %7, align 8
  %184 = getelementptr inbounds %struct.csiphy_device, %struct.csiphy_device* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = getelementptr inbounds i32, i32* %182, i64 %185
  %187 = load i32, i32* %186, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %194

189:                                              ; preds = %179
  %190 = load %struct.csiphy_device*, %struct.csiphy_device** %7, align 8
  %191 = getelementptr inbounds %struct.csiphy_device, %struct.csiphy_device* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = add i64 %192, 1
  store i64 %193, i64* %191, align 8
  br label %179

194:                                              ; preds = %179
  %195 = load %struct.device*, %struct.device** %10, align 8
  %196 = load %struct.csiphy_device*, %struct.csiphy_device** %7, align 8
  %197 = getelementptr inbounds %struct.csiphy_device, %struct.csiphy_device* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = load i32, i32* @GFP_KERNEL, align 4
  %200 = call i8* @devm_kcalloc(%struct.device* %195, i64 %198, i32 32, i32 %199)
  %201 = bitcast i8* %200 to %struct.camss_clock*
  %202 = load %struct.csiphy_device*, %struct.csiphy_device** %7, align 8
  %203 = getelementptr inbounds %struct.csiphy_device, %struct.csiphy_device* %202, i32 0, i32 1
  store %struct.camss_clock* %201, %struct.camss_clock** %203, align 8
  %204 = load %struct.csiphy_device*, %struct.csiphy_device** %7, align 8
  %205 = getelementptr inbounds %struct.csiphy_device, %struct.csiphy_device* %204, i32 0, i32 1
  %206 = load %struct.camss_clock*, %struct.camss_clock** %205, align 8
  %207 = icmp ne %struct.camss_clock* %206, null
  br i1 %207, label %211, label %208

208:                                              ; preds = %194
  %209 = load i32, i32* @ENOMEM, align 4
  %210 = sub nsw i32 0, %209
  store i32 %210, i32* %5, align 4
  br label %337

211:                                              ; preds = %194
  store i32 0, i32* %13, align 4
  br label %212

212:                                              ; preds = %333, %211
  %213 = load i32, i32* %13, align 4
  %214 = sext i32 %213 to i64
  %215 = load %struct.csiphy_device*, %struct.csiphy_device** %7, align 8
  %216 = getelementptr inbounds %struct.csiphy_device, %struct.csiphy_device* %215, i32 0, i32 0
  %217 = load i64, i64* %216, align 8
  %218 = icmp ult i64 %214, %217
  br i1 %218, label %219, label %336

219:                                              ; preds = %212
  %220 = load %struct.csiphy_device*, %struct.csiphy_device** %7, align 8
  %221 = getelementptr inbounds %struct.csiphy_device, %struct.csiphy_device* %220, i32 0, i32 1
  %222 = load %struct.camss_clock*, %struct.camss_clock** %221, align 8
  %223 = load i32, i32* %13, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds %struct.camss_clock, %struct.camss_clock* %222, i64 %224
  store %struct.camss_clock* %225, %struct.camss_clock** %16, align 8
  %226 = load %struct.device*, %struct.device** %10, align 8
  %227 = load %struct.resources*, %struct.resources** %8, align 8
  %228 = getelementptr inbounds %struct.resources, %struct.resources* %227, i32 0, i32 1
  %229 = load i32*, i32** %228, align 8
  %230 = load i32, i32* %13, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i32, i32* %229, i64 %231
  %233 = load i32, i32* %232, align 4
  %234 = call i8* @devm_clk_get(%struct.device* %226, i32 %233)
  %235 = load %struct.camss_clock*, %struct.camss_clock** %16, align 8
  %236 = getelementptr inbounds %struct.camss_clock, %struct.camss_clock* %235, i32 0, i32 3
  store i8* %234, i8** %236, align 8
  %237 = load %struct.camss_clock*, %struct.camss_clock** %16, align 8
  %238 = getelementptr inbounds %struct.camss_clock, %struct.camss_clock* %237, i32 0, i32 3
  %239 = load i8*, i8** %238, align 8
  %240 = call i64 @IS_ERR(i8* %239)
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %247

242:                                              ; preds = %219
  %243 = load %struct.camss_clock*, %struct.camss_clock** %16, align 8
  %244 = getelementptr inbounds %struct.camss_clock, %struct.camss_clock* %243, i32 0, i32 3
  %245 = load i8*, i8** %244, align 8
  %246 = call i32 @PTR_ERR(i8* %245)
  store i32 %246, i32* %5, align 4
  br label %337

247:                                              ; preds = %219
  %248 = load %struct.resources*, %struct.resources** %8, align 8
  %249 = getelementptr inbounds %struct.resources, %struct.resources* %248, i32 0, i32 1
  %250 = load i32*, i32** %249, align 8
  %251 = load i32, i32* %13, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds i32, i32* %250, i64 %252
  %254 = load i32, i32* %253, align 4
  %255 = load %struct.camss_clock*, %struct.camss_clock** %16, align 8
  %256 = getelementptr inbounds %struct.camss_clock, %struct.camss_clock* %255, i32 0, i32 2
  store i32 %254, i32* %256, align 8
  %257 = load %struct.camss_clock*, %struct.camss_clock** %16, align 8
  %258 = getelementptr inbounds %struct.camss_clock, %struct.camss_clock* %257, i32 0, i32 0
  store i64 0, i64* %258, align 8
  br label %259

259:                                              ; preds = %273, %247
  %260 = load %struct.resources*, %struct.resources** %8, align 8
  %261 = getelementptr inbounds %struct.resources, %struct.resources* %260, i32 0, i32 0
  %262 = load i64**, i64*** %261, align 8
  %263 = load i32, i32* %13, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds i64*, i64** %262, i64 %264
  %266 = load i64*, i64** %265, align 8
  %267 = load %struct.camss_clock*, %struct.camss_clock** %16, align 8
  %268 = getelementptr inbounds %struct.camss_clock, %struct.camss_clock* %267, i32 0, i32 0
  %269 = load i64, i64* %268, align 8
  %270 = getelementptr inbounds i64, i64* %266, i64 %269
  %271 = load i64, i64* %270, align 8
  %272 = icmp ne i64 %271, 0
  br i1 %272, label %273, label %278

273:                                              ; preds = %259
  %274 = load %struct.camss_clock*, %struct.camss_clock** %16, align 8
  %275 = getelementptr inbounds %struct.camss_clock, %struct.camss_clock* %274, i32 0, i32 0
  %276 = load i64, i64* %275, align 8
  %277 = add i64 %276, 1
  store i64 %277, i64* %275, align 8
  br label %259

278:                                              ; preds = %259
  %279 = load %struct.camss_clock*, %struct.camss_clock** %16, align 8
  %280 = getelementptr inbounds %struct.camss_clock, %struct.camss_clock* %279, i32 0, i32 0
  %281 = load i64, i64* %280, align 8
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %286, label %283

283:                                              ; preds = %278
  %284 = load %struct.camss_clock*, %struct.camss_clock** %16, align 8
  %285 = getelementptr inbounds %struct.camss_clock, %struct.camss_clock* %284, i32 0, i32 1
  store i64* null, i64** %285, align 8
  br label %333

286:                                              ; preds = %278
  %287 = load %struct.device*, %struct.device** %10, align 8
  %288 = load %struct.camss_clock*, %struct.camss_clock** %16, align 8
  %289 = getelementptr inbounds %struct.camss_clock, %struct.camss_clock* %288, i32 0, i32 0
  %290 = load i64, i64* %289, align 8
  %291 = load i32, i32* @GFP_KERNEL, align 4
  %292 = call i8* @devm_kcalloc(%struct.device* %287, i64 %290, i32 8, i32 %291)
  %293 = bitcast i8* %292 to i64*
  %294 = load %struct.camss_clock*, %struct.camss_clock** %16, align 8
  %295 = getelementptr inbounds %struct.camss_clock, %struct.camss_clock* %294, i32 0, i32 1
  store i64* %293, i64** %295, align 8
  %296 = load %struct.camss_clock*, %struct.camss_clock** %16, align 8
  %297 = getelementptr inbounds %struct.camss_clock, %struct.camss_clock* %296, i32 0, i32 1
  %298 = load i64*, i64** %297, align 8
  %299 = icmp ne i64* %298, null
  br i1 %299, label %303, label %300

300:                                              ; preds = %286
  %301 = load i32, i32* @ENOMEM, align 4
  %302 = sub nsw i32 0, %301
  store i32 %302, i32* %5, align 4
  br label %337

303:                                              ; preds = %286
  store i32 0, i32* %14, align 4
  br label %304

304:                                              ; preds = %329, %303
  %305 = load i32, i32* %14, align 4
  %306 = sext i32 %305 to i64
  %307 = load %struct.camss_clock*, %struct.camss_clock** %16, align 8
  %308 = getelementptr inbounds %struct.camss_clock, %struct.camss_clock* %307, i32 0, i32 0
  %309 = load i64, i64* %308, align 8
  %310 = icmp ult i64 %306, %309
  br i1 %310, label %311, label %332

311:                                              ; preds = %304
  %312 = load %struct.resources*, %struct.resources** %8, align 8
  %313 = getelementptr inbounds %struct.resources, %struct.resources* %312, i32 0, i32 0
  %314 = load i64**, i64*** %313, align 8
  %315 = load i32, i32* %13, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds i64*, i64** %314, i64 %316
  %318 = load i64*, i64** %317, align 8
  %319 = load i32, i32* %14, align 4
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds i64, i64* %318, i64 %320
  %322 = load i64, i64* %321, align 8
  %323 = load %struct.camss_clock*, %struct.camss_clock** %16, align 8
  %324 = getelementptr inbounds %struct.camss_clock, %struct.camss_clock* %323, i32 0, i32 1
  %325 = load i64*, i64** %324, align 8
  %326 = load i32, i32* %14, align 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds i64, i64* %325, i64 %327
  store i64 %322, i64* %328, align 8
  br label %329

329:                                              ; preds = %311
  %330 = load i32, i32* %14, align 4
  %331 = add nsw i32 %330, 1
  store i32 %331, i32* %14, align 4
  br label %304

332:                                              ; preds = %304
  br label %333

333:                                              ; preds = %332, %283
  %334 = load i32, i32* %13, align 4
  %335 = add nsw i32 %334, 1
  store i32 %335, i32* %13, align 4
  br label %212

336:                                              ; preds = %212
  store i32 0, i32* %5, align 4
  br label %337

337:                                              ; preds = %336, %300, %242, %208, %167, %129, %111, %85, %62
  %338 = load i32, i32* %5, align 4
  ret i32 %338
}

declare dso_local %struct.platform_device* @to_platform_device(%struct.device*) #1

declare dso_local i8* @ARRAY_SIZE(i8*) #1

declare dso_local %struct.resource* @platform_get_resource_byname(%struct.platform_device*, i32, i32) #1

declare dso_local i8* @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i8*, i32) #1

declare dso_local i8* @dev_name(%struct.device*) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i32, i32, i32, i32, %struct.csiphy_device*) #1

declare dso_local i32 @disable_irq(i32) #1

declare dso_local i8* @devm_kcalloc(%struct.device*, i64, i32, i32) #1

declare dso_local i8* @devm_clk_get(%struct.device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
