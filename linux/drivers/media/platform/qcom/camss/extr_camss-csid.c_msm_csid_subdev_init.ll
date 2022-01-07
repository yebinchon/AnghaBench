; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-csid.c_msm_csid_subdev_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-csid.c_msm_csid_subdev_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.camss = type { i64, %struct.device* }
%struct.device = type { i32 }
%struct.csid_device = type { i64, i32, i32, %struct.camss_clock*, i32, i32, i32, i32, i8*, i8*, %struct.camss* }
%struct.camss_clock = type { i64, i64*, i32, i32 }
%struct.resources = type { i32*, i64**, i32*, i32*, i32* }
%struct.platform_device = type { i32 }
%struct.resource = type { i32 }

@CAMSS_8x16 = common dso_local global i64 0, align 8
@csid_formats_8x16 = common dso_local global i8* null, align 8
@CAMSS_8x96 = common dso_local global i64 0, align 8
@csid_formats_8x96 = common dso_local global i8* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"could not map memory\0A\00", align 1
@IORESOURCE_IRQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"missing IRQ\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"%s_%s%d\00", align 1
@MSM_CSID_NAME = common dso_local global i8* null, align 8
@csid_isr = common dso_local global i32 0, align 4
@IRQF_TRIGGER_RISING = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"request_irq failed: %d\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"could not get regulator\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @msm_csid_subdev_init(%struct.camss* %0, %struct.csid_device* %1, %struct.resources* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.camss*, align 8
  %7 = alloca %struct.csid_device*, align 8
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
  store %struct.csid_device* %1, %struct.csid_device** %7, align 8
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
  %23 = load %struct.csid_device*, %struct.csid_device** %7, align 8
  %24 = getelementptr inbounds %struct.csid_device, %struct.csid_device* %23, i32 0, i32 10
  store %struct.camss* %22, %struct.camss** %24, align 8
  %25 = load i32, i32* %9, align 4
  %26 = load %struct.csid_device*, %struct.csid_device** %7, align 8
  %27 = getelementptr inbounds %struct.csid_device, %struct.csid_device* %26, i32 0, i32 6
  store i32 %25, i32* %27, align 8
  %28 = load %struct.camss*, %struct.camss** %6, align 8
  %29 = getelementptr inbounds %struct.camss, %struct.camss* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @CAMSS_8x16, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %4
  %34 = load i8*, i8** @csid_formats_8x16, align 8
  %35 = load %struct.csid_device*, %struct.csid_device** %7, align 8
  %36 = getelementptr inbounds %struct.csid_device, %struct.csid_device* %35, i32 0, i32 9
  store i8* %34, i8** %36, align 8
  %37 = load i8*, i8** @csid_formats_8x16, align 8
  %38 = call i8* @ARRAY_SIZE(i8* %37)
  %39 = load %struct.csid_device*, %struct.csid_device** %7, align 8
  %40 = getelementptr inbounds %struct.csid_device, %struct.csid_device* %39, i32 0, i32 8
  store i8* %38, i8** %40, align 8
  br label %59

41:                                               ; preds = %4
  %42 = load %struct.camss*, %struct.camss** %6, align 8
  %43 = getelementptr inbounds %struct.camss, %struct.camss* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @CAMSS_8x96, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %55

47:                                               ; preds = %41
  %48 = load i8*, i8** @csid_formats_8x96, align 8
  %49 = load %struct.csid_device*, %struct.csid_device** %7, align 8
  %50 = getelementptr inbounds %struct.csid_device, %struct.csid_device* %49, i32 0, i32 9
  store i8* %48, i8** %50, align 8
  %51 = load i8*, i8** @csid_formats_8x96, align 8
  %52 = call i8* @ARRAY_SIZE(i8* %51)
  %53 = load %struct.csid_device*, %struct.csid_device** %7, align 8
  %54 = getelementptr inbounds %struct.csid_device, %struct.csid_device* %53, i32 0, i32 8
  store i8* %52, i8** %54, align 8
  br label %58

55:                                               ; preds = %41
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %5, align 4
  br label %325

58:                                               ; preds = %47
  br label %59

59:                                               ; preds = %58, %33
  %60 = load %struct.platform_device*, %struct.platform_device** %11, align 8
  %61 = load i32, i32* @IORESOURCE_MEM, align 4
  %62 = load %struct.resources*, %struct.resources** %8, align 8
  %63 = getelementptr inbounds %struct.resources, %struct.resources* %62, i32 0, i32 4
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  %66 = load i32, i32* %65, align 4
  %67 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %60, i32 %61, i32 %66)
  store %struct.resource* %67, %struct.resource** %12, align 8
  %68 = load %struct.device*, %struct.device** %10, align 8
  %69 = load %struct.resource*, %struct.resource** %12, align 8
  %70 = call i32 @devm_ioremap_resource(%struct.device* %68, %struct.resource* %69)
  %71 = load %struct.csid_device*, %struct.csid_device** %7, align 8
  %72 = getelementptr inbounds %struct.csid_device, %struct.csid_device* %71, i32 0, i32 7
  store i32 %70, i32* %72, align 4
  %73 = load %struct.csid_device*, %struct.csid_device** %7, align 8
  %74 = getelementptr inbounds %struct.csid_device, %struct.csid_device* %73, i32 0, i32 7
  %75 = load i32, i32* %74, align 4
  %76 = call i64 @IS_ERR(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %59
  %79 = load %struct.device*, %struct.device** %10, align 8
  %80 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %79, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %81 = load %struct.csid_device*, %struct.csid_device** %7, align 8
  %82 = getelementptr inbounds %struct.csid_device, %struct.csid_device* %81, i32 0, i32 7
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @PTR_ERR(i32 %83)
  store i32 %84, i32* %5, align 4
  br label %325

85:                                               ; preds = %59
  %86 = load %struct.platform_device*, %struct.platform_device** %11, align 8
  %87 = load i32, i32* @IORESOURCE_IRQ, align 4
  %88 = load %struct.resources*, %struct.resources** %8, align 8
  %89 = getelementptr inbounds %struct.resources, %struct.resources* %88, i32 0, i32 3
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 0
  %92 = load i32, i32* %91, align 4
  %93 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %86, i32 %87, i32 %92)
  store %struct.resource* %93, %struct.resource** %12, align 8
  %94 = load %struct.resource*, %struct.resource** %12, align 8
  %95 = icmp ne %struct.resource* %94, null
  br i1 %95, label %101, label %96

96:                                               ; preds = %85
  %97 = load %struct.device*, %struct.device** %10, align 8
  %98 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %97, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %99 = load i32, i32* @EINVAL, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %5, align 4
  br label %325

101:                                              ; preds = %85
  %102 = load %struct.resource*, %struct.resource** %12, align 8
  %103 = getelementptr inbounds %struct.resource, %struct.resource* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.csid_device*, %struct.csid_device** %7, align 8
  %106 = getelementptr inbounds %struct.csid_device, %struct.csid_device* %105, i32 0, i32 4
  store i32 %104, i32* %106, align 8
  %107 = load %struct.csid_device*, %struct.csid_device** %7, align 8
  %108 = getelementptr inbounds %struct.csid_device, %struct.csid_device* %107, i32 0, i32 5
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.device*, %struct.device** %10, align 8
  %111 = call i8* @dev_name(%struct.device* %110)
  %112 = load i8*, i8** @MSM_CSID_NAME, align 8
  %113 = load %struct.csid_device*, %struct.csid_device** %7, align 8
  %114 = getelementptr inbounds %struct.csid_device, %struct.csid_device* %113, i32 0, i32 6
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @snprintf(i32 %109, i32 4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %111, i8* %112, i32 %115)
  %117 = load %struct.device*, %struct.device** %10, align 8
  %118 = load %struct.csid_device*, %struct.csid_device** %7, align 8
  %119 = getelementptr inbounds %struct.csid_device, %struct.csid_device* %118, i32 0, i32 4
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @csid_isr, align 4
  %122 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %123 = load %struct.csid_device*, %struct.csid_device** %7, align 8
  %124 = getelementptr inbounds %struct.csid_device, %struct.csid_device* %123, i32 0, i32 5
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.csid_device*, %struct.csid_device** %7, align 8
  %127 = call i32 @devm_request_irq(%struct.device* %117, i32 %120, i32 %121, i32 %122, i32 %125, %struct.csid_device* %126)
  store i32 %127, i32* %15, align 4
  %128 = load i32, i32* %15, align 4
  %129 = icmp slt i32 %128, 0
  br i1 %129, label %130, label %135

130:                                              ; preds = %101
  %131 = load %struct.device*, %struct.device** %10, align 8
  %132 = load i32, i32* %15, align 4
  %133 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %131, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %132)
  %134 = load i32, i32* %15, align 4
  store i32 %134, i32* %5, align 4
  br label %325

135:                                              ; preds = %101
  %136 = load %struct.csid_device*, %struct.csid_device** %7, align 8
  %137 = getelementptr inbounds %struct.csid_device, %struct.csid_device* %136, i32 0, i32 4
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @disable_irq(i32 %138)
  %140 = load %struct.csid_device*, %struct.csid_device** %7, align 8
  %141 = getelementptr inbounds %struct.csid_device, %struct.csid_device* %140, i32 0, i32 0
  store i64 0, i64* %141, align 8
  br label %142

142:                                              ; preds = %152, %135
  %143 = load %struct.resources*, %struct.resources** %8, align 8
  %144 = getelementptr inbounds %struct.resources, %struct.resources* %143, i32 0, i32 2
  %145 = load i32*, i32** %144, align 8
  %146 = load %struct.csid_device*, %struct.csid_device** %7, align 8
  %147 = getelementptr inbounds %struct.csid_device, %struct.csid_device* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = getelementptr inbounds i32, i32* %145, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %157

152:                                              ; preds = %142
  %153 = load %struct.csid_device*, %struct.csid_device** %7, align 8
  %154 = getelementptr inbounds %struct.csid_device, %struct.csid_device* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = add i64 %155, 1
  store i64 %156, i64* %154, align 8
  br label %142

157:                                              ; preds = %142
  %158 = load %struct.device*, %struct.device** %10, align 8
  %159 = load %struct.csid_device*, %struct.csid_device** %7, align 8
  %160 = getelementptr inbounds %struct.csid_device, %struct.csid_device* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = load i32, i32* @GFP_KERNEL, align 4
  %163 = call i8* @devm_kcalloc(%struct.device* %158, i64 %161, i32 24, i32 %162)
  %164 = bitcast i8* %163 to %struct.camss_clock*
  %165 = load %struct.csid_device*, %struct.csid_device** %7, align 8
  %166 = getelementptr inbounds %struct.csid_device, %struct.csid_device* %165, i32 0, i32 3
  store %struct.camss_clock* %164, %struct.camss_clock** %166, align 8
  %167 = load %struct.csid_device*, %struct.csid_device** %7, align 8
  %168 = getelementptr inbounds %struct.csid_device, %struct.csid_device* %167, i32 0, i32 3
  %169 = load %struct.camss_clock*, %struct.camss_clock** %168, align 8
  %170 = icmp ne %struct.camss_clock* %169, null
  br i1 %170, label %174, label %171

171:                                              ; preds = %157
  %172 = load i32, i32* @ENOMEM, align 4
  %173 = sub nsw i32 0, %172
  store i32 %173, i32* %5, align 4
  br label %325

174:                                              ; preds = %157
  store i32 0, i32* %13, align 4
  br label %175

175:                                              ; preds = %296, %174
  %176 = load i32, i32* %13, align 4
  %177 = sext i32 %176 to i64
  %178 = load %struct.csid_device*, %struct.csid_device** %7, align 8
  %179 = getelementptr inbounds %struct.csid_device, %struct.csid_device* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = icmp ult i64 %177, %180
  br i1 %181, label %182, label %299

182:                                              ; preds = %175
  %183 = load %struct.csid_device*, %struct.csid_device** %7, align 8
  %184 = getelementptr inbounds %struct.csid_device, %struct.csid_device* %183, i32 0, i32 3
  %185 = load %struct.camss_clock*, %struct.camss_clock** %184, align 8
  %186 = load i32, i32* %13, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.camss_clock, %struct.camss_clock* %185, i64 %187
  store %struct.camss_clock* %188, %struct.camss_clock** %16, align 8
  %189 = load %struct.device*, %struct.device** %10, align 8
  %190 = load %struct.resources*, %struct.resources** %8, align 8
  %191 = getelementptr inbounds %struct.resources, %struct.resources* %190, i32 0, i32 2
  %192 = load i32*, i32** %191, align 8
  %193 = load i32, i32* %13, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %192, i64 %194
  %196 = load i32, i32* %195, align 4
  %197 = call i32 @devm_clk_get(%struct.device* %189, i32 %196)
  %198 = load %struct.camss_clock*, %struct.camss_clock** %16, align 8
  %199 = getelementptr inbounds %struct.camss_clock, %struct.camss_clock* %198, i32 0, i32 3
  store i32 %197, i32* %199, align 4
  %200 = load %struct.camss_clock*, %struct.camss_clock** %16, align 8
  %201 = getelementptr inbounds %struct.camss_clock, %struct.camss_clock* %200, i32 0, i32 3
  %202 = load i32, i32* %201, align 4
  %203 = call i64 @IS_ERR(i32 %202)
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %210

205:                                              ; preds = %182
  %206 = load %struct.camss_clock*, %struct.camss_clock** %16, align 8
  %207 = getelementptr inbounds %struct.camss_clock, %struct.camss_clock* %206, i32 0, i32 3
  %208 = load i32, i32* %207, align 4
  %209 = call i32 @PTR_ERR(i32 %208)
  store i32 %209, i32* %5, align 4
  br label %325

210:                                              ; preds = %182
  %211 = load %struct.resources*, %struct.resources** %8, align 8
  %212 = getelementptr inbounds %struct.resources, %struct.resources* %211, i32 0, i32 2
  %213 = load i32*, i32** %212, align 8
  %214 = load i32, i32* %13, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i32, i32* %213, i64 %215
  %217 = load i32, i32* %216, align 4
  %218 = load %struct.camss_clock*, %struct.camss_clock** %16, align 8
  %219 = getelementptr inbounds %struct.camss_clock, %struct.camss_clock* %218, i32 0, i32 2
  store i32 %217, i32* %219, align 8
  %220 = load %struct.camss_clock*, %struct.camss_clock** %16, align 8
  %221 = getelementptr inbounds %struct.camss_clock, %struct.camss_clock* %220, i32 0, i32 0
  store i64 0, i64* %221, align 8
  br label %222

222:                                              ; preds = %236, %210
  %223 = load %struct.resources*, %struct.resources** %8, align 8
  %224 = getelementptr inbounds %struct.resources, %struct.resources* %223, i32 0, i32 1
  %225 = load i64**, i64*** %224, align 8
  %226 = load i32, i32* %13, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i64*, i64** %225, i64 %227
  %229 = load i64*, i64** %228, align 8
  %230 = load %struct.camss_clock*, %struct.camss_clock** %16, align 8
  %231 = getelementptr inbounds %struct.camss_clock, %struct.camss_clock* %230, i32 0, i32 0
  %232 = load i64, i64* %231, align 8
  %233 = getelementptr inbounds i64, i64* %229, i64 %232
  %234 = load i64, i64* %233, align 8
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %241

236:                                              ; preds = %222
  %237 = load %struct.camss_clock*, %struct.camss_clock** %16, align 8
  %238 = getelementptr inbounds %struct.camss_clock, %struct.camss_clock* %237, i32 0, i32 0
  %239 = load i64, i64* %238, align 8
  %240 = add i64 %239, 1
  store i64 %240, i64* %238, align 8
  br label %222

241:                                              ; preds = %222
  %242 = load %struct.camss_clock*, %struct.camss_clock** %16, align 8
  %243 = getelementptr inbounds %struct.camss_clock, %struct.camss_clock* %242, i32 0, i32 0
  %244 = load i64, i64* %243, align 8
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %249, label %246

246:                                              ; preds = %241
  %247 = load %struct.camss_clock*, %struct.camss_clock** %16, align 8
  %248 = getelementptr inbounds %struct.camss_clock, %struct.camss_clock* %247, i32 0, i32 1
  store i64* null, i64** %248, align 8
  br label %296

249:                                              ; preds = %241
  %250 = load %struct.device*, %struct.device** %10, align 8
  %251 = load %struct.camss_clock*, %struct.camss_clock** %16, align 8
  %252 = getelementptr inbounds %struct.camss_clock, %struct.camss_clock* %251, i32 0, i32 0
  %253 = load i64, i64* %252, align 8
  %254 = load i32, i32* @GFP_KERNEL, align 4
  %255 = call i8* @devm_kcalloc(%struct.device* %250, i64 %253, i32 8, i32 %254)
  %256 = bitcast i8* %255 to i64*
  %257 = load %struct.camss_clock*, %struct.camss_clock** %16, align 8
  %258 = getelementptr inbounds %struct.camss_clock, %struct.camss_clock* %257, i32 0, i32 1
  store i64* %256, i64** %258, align 8
  %259 = load %struct.camss_clock*, %struct.camss_clock** %16, align 8
  %260 = getelementptr inbounds %struct.camss_clock, %struct.camss_clock* %259, i32 0, i32 1
  %261 = load i64*, i64** %260, align 8
  %262 = icmp ne i64* %261, null
  br i1 %262, label %266, label %263

263:                                              ; preds = %249
  %264 = load i32, i32* @ENOMEM, align 4
  %265 = sub nsw i32 0, %264
  store i32 %265, i32* %5, align 4
  br label %325

266:                                              ; preds = %249
  store i32 0, i32* %14, align 4
  br label %267

267:                                              ; preds = %292, %266
  %268 = load i32, i32* %14, align 4
  %269 = sext i32 %268 to i64
  %270 = load %struct.camss_clock*, %struct.camss_clock** %16, align 8
  %271 = getelementptr inbounds %struct.camss_clock, %struct.camss_clock* %270, i32 0, i32 0
  %272 = load i64, i64* %271, align 8
  %273 = icmp ult i64 %269, %272
  br i1 %273, label %274, label %295

274:                                              ; preds = %267
  %275 = load %struct.resources*, %struct.resources** %8, align 8
  %276 = getelementptr inbounds %struct.resources, %struct.resources* %275, i32 0, i32 1
  %277 = load i64**, i64*** %276, align 8
  %278 = load i32, i32* %13, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds i64*, i64** %277, i64 %279
  %281 = load i64*, i64** %280, align 8
  %282 = load i32, i32* %14, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds i64, i64* %281, i64 %283
  %285 = load i64, i64* %284, align 8
  %286 = load %struct.camss_clock*, %struct.camss_clock** %16, align 8
  %287 = getelementptr inbounds %struct.camss_clock, %struct.camss_clock* %286, i32 0, i32 1
  %288 = load i64*, i64** %287, align 8
  %289 = load i32, i32* %14, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds i64, i64* %288, i64 %290
  store i64 %285, i64* %291, align 8
  br label %292

292:                                              ; preds = %274
  %293 = load i32, i32* %14, align 4
  %294 = add nsw i32 %293, 1
  store i32 %294, i32* %14, align 4
  br label %267

295:                                              ; preds = %267
  br label %296

296:                                              ; preds = %295, %246
  %297 = load i32, i32* %13, align 4
  %298 = add nsw i32 %297, 1
  store i32 %298, i32* %13, align 4
  br label %175

299:                                              ; preds = %175
  %300 = load %struct.device*, %struct.device** %10, align 8
  %301 = load %struct.resources*, %struct.resources** %8, align 8
  %302 = getelementptr inbounds %struct.resources, %struct.resources* %301, i32 0, i32 0
  %303 = load i32*, i32** %302, align 8
  %304 = getelementptr inbounds i32, i32* %303, i64 0
  %305 = load i32, i32* %304, align 4
  %306 = call i32 @devm_regulator_get(%struct.device* %300, i32 %305)
  %307 = load %struct.csid_device*, %struct.csid_device** %7, align 8
  %308 = getelementptr inbounds %struct.csid_device, %struct.csid_device* %307, i32 0, i32 2
  store i32 %306, i32* %308, align 4
  %309 = load %struct.csid_device*, %struct.csid_device** %7, align 8
  %310 = getelementptr inbounds %struct.csid_device, %struct.csid_device* %309, i32 0, i32 2
  %311 = load i32, i32* %310, align 4
  %312 = call i64 @IS_ERR(i32 %311)
  %313 = icmp ne i64 %312, 0
  br i1 %313, label %314, label %321

314:                                              ; preds = %299
  %315 = load %struct.device*, %struct.device** %10, align 8
  %316 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %315, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %317 = load %struct.csid_device*, %struct.csid_device** %7, align 8
  %318 = getelementptr inbounds %struct.csid_device, %struct.csid_device* %317, i32 0, i32 2
  %319 = load i32, i32* %318, align 4
  %320 = call i32 @PTR_ERR(i32 %319)
  store i32 %320, i32* %5, align 4
  br label %325

321:                                              ; preds = %299
  %322 = load %struct.csid_device*, %struct.csid_device** %7, align 8
  %323 = getelementptr inbounds %struct.csid_device, %struct.csid_device* %322, i32 0, i32 1
  %324 = call i32 @init_completion(i32* %323)
  store i32 0, i32* %5, align 4
  br label %325

325:                                              ; preds = %321, %314, %263, %205, %171, %130, %96, %78, %55
  %326 = load i32, i32* %5, align 4
  ret i32 %326
}

declare dso_local %struct.platform_device* @to_platform_device(%struct.device*) #1

declare dso_local i8* @ARRAY_SIZE(i8*) #1

declare dso_local %struct.resource* @platform_get_resource_byname(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i8*, i32) #1

declare dso_local i8* @dev_name(%struct.device*) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i32, i32, i32, i32, %struct.csid_device*) #1

declare dso_local i32 @disable_irq(i32) #1

declare dso_local i8* @devm_kcalloc(%struct.device*, i64, i32, i32) #1

declare dso_local i32 @devm_clk_get(%struct.device*, i32) #1

declare dso_local i32 @devm_regulator_get(%struct.device*, i32) #1

declare dso_local i32 @init_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
