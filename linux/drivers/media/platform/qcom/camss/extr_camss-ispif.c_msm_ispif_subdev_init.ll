; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-ispif.c_msm_ispif_subdev_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-ispif.c_msm_ispif_subdev_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ispif_device = type { i32, i64, i64, i32, i32, i64, i32, %struct.camss_clock*, %struct.camss_clock*, i32, i32, i8*, i8*, %struct.TYPE_3__* }
%struct.camss_clock = type { i64, i32*, i8* }
%struct.TYPE_3__ = type { i32, i8*, i8*, %struct.ispif_device* }
%struct.resources_ispif = type { i32*, i32*, i32, i32* }
%struct.device = type { i32 }
%struct.platform_device = type { i32 }
%struct.resource = type { i32 }
%struct.TYPE_4__ = type { i64 }

@CAMSS_8x16 = common dso_local global i64 0, align 8
@CAMSS_8x96 = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ispif_formats_8x16 = common dso_local global i8* null, align 8
@ispif_formats_8x96 = common dso_local global i8* null, align 8
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"could not map memory\0A\00", align 1
@IORESOURCE_IRQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"missing IRQ\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%s_%s\00", align 1
@MSM_ISPIF_NAME = common dso_local global i8* null, align 8
@ispif_isr_8x16 = common dso_local global i32 0, align 4
@IRQF_TRIGGER_RISING = common dso_local global i32 0, align 4
@ispif_isr_8x96 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"request_irq failed: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @msm_ispif_subdev_init(%struct.ispif_device* %0, %struct.resources_ispif* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ispif_device*, align 8
  %5 = alloca %struct.resources_ispif*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.platform_device*, align 8
  %8 = alloca %struct.resource*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.camss_clock*, align 8
  %12 = alloca %struct.camss_clock*, align 8
  store %struct.ispif_device* %0, %struct.ispif_device** %4, align 8
  store %struct.resources_ispif* %1, %struct.resources_ispif** %5, align 8
  %13 = load %struct.ispif_device*, %struct.ispif_device** %4, align 8
  %14 = call %struct.device* @to_device(%struct.ispif_device* %13)
  store %struct.device* %14, %struct.device** %6, align 8
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = call %struct.platform_device* @to_platform_device(%struct.device* %15)
  store %struct.platform_device* %16, %struct.platform_device** %7, align 8
  %17 = load %struct.ispif_device*, %struct.ispif_device** %4, align 8
  %18 = call %struct.TYPE_4__* @to_camss(%struct.ispif_device* %17)
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @CAMSS_8x16, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load %struct.ispif_device*, %struct.ispif_device** %4, align 8
  %25 = getelementptr inbounds %struct.ispif_device, %struct.ispif_device* %24, i32 0, i32 0
  store i32 2, i32* %25, align 8
  br label %40

26:                                               ; preds = %2
  %27 = load %struct.ispif_device*, %struct.ispif_device** %4, align 8
  %28 = call %struct.TYPE_4__* @to_camss(%struct.ispif_device* %27)
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @CAMSS_8x96, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %26
  %34 = load %struct.ispif_device*, %struct.ispif_device** %4, align 8
  %35 = getelementptr inbounds %struct.ispif_device, %struct.ispif_device* %34, i32 0, i32 0
  store i32 4, i32* %35, align 8
  br label %39

36:                                               ; preds = %26
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %438

39:                                               ; preds = %33
  br label %40

40:                                               ; preds = %39, %23
  %41 = load %struct.device*, %struct.device** %6, align 8
  %42 = load %struct.ispif_device*, %struct.ispif_device** %4, align 8
  %43 = getelementptr inbounds %struct.ispif_device, %struct.ispif_device* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @GFP_KERNEL, align 4
  %46 = call i8* @devm_kcalloc(%struct.device* %41, i32 %44, i32 32, i32 %45)
  %47 = bitcast i8* %46 to %struct.TYPE_3__*
  %48 = load %struct.ispif_device*, %struct.ispif_device** %4, align 8
  %49 = getelementptr inbounds %struct.ispif_device, %struct.ispif_device* %48, i32 0, i32 13
  store %struct.TYPE_3__* %47, %struct.TYPE_3__** %49, align 8
  %50 = load %struct.ispif_device*, %struct.ispif_device** %4, align 8
  %51 = getelementptr inbounds %struct.ispif_device, %struct.ispif_device* %50, i32 0, i32 13
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = icmp ne %struct.TYPE_3__* %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %40
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  br label %438

57:                                               ; preds = %40
  store i32 0, i32* %9, align 4
  br label %58

58:                                               ; preds = %135, %57
  %59 = load i32, i32* %9, align 4
  %60 = load %struct.ispif_device*, %struct.ispif_device** %4, align 8
  %61 = getelementptr inbounds %struct.ispif_device, %struct.ispif_device* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp slt i32 %59, %62
  br i1 %63, label %64, label %138

64:                                               ; preds = %58
  %65 = load %struct.ispif_device*, %struct.ispif_device** %4, align 8
  %66 = load %struct.ispif_device*, %struct.ispif_device** %4, align 8
  %67 = getelementptr inbounds %struct.ispif_device, %struct.ispif_device* %66, i32 0, i32 13
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = load i32, i32* %9, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 3
  store %struct.ispif_device* %65, %struct.ispif_device** %72, align 8
  %73 = load i32, i32* %9, align 4
  %74 = load %struct.ispif_device*, %struct.ispif_device** %4, align 8
  %75 = getelementptr inbounds %struct.ispif_device, %struct.ispif_device* %74, i32 0, i32 13
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %75, align 8
  %77 = load i32, i32* %9, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  store i32 %73, i32* %80, align 8
  %81 = load %struct.ispif_device*, %struct.ispif_device** %4, align 8
  %82 = call %struct.TYPE_4__* @to_camss(%struct.ispif_device* %81)
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @CAMSS_8x16, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %105

87:                                               ; preds = %64
  %88 = load i8*, i8** @ispif_formats_8x16, align 8
  %89 = load %struct.ispif_device*, %struct.ispif_device** %4, align 8
  %90 = getelementptr inbounds %struct.ispif_device, %struct.ispif_device* %89, i32 0, i32 13
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %90, align 8
  %92 = load i32, i32* %9, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 2
  store i8* %88, i8** %95, align 8
  %96 = load i8*, i8** @ispif_formats_8x16, align 8
  %97 = call i8* @ARRAY_SIZE(i8* %96)
  %98 = load %struct.ispif_device*, %struct.ispif_device** %4, align 8
  %99 = getelementptr inbounds %struct.ispif_device, %struct.ispif_device* %98, i32 0, i32 13
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %99, align 8
  %101 = load i32, i32* %9, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 1
  store i8* %97, i8** %104, align 8
  br label %134

105:                                              ; preds = %64
  %106 = load %struct.ispif_device*, %struct.ispif_device** %4, align 8
  %107 = call %struct.TYPE_4__* @to_camss(%struct.ispif_device* %106)
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @CAMSS_8x96, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %130

112:                                              ; preds = %105
  %113 = load i8*, i8** @ispif_formats_8x96, align 8
  %114 = load %struct.ispif_device*, %struct.ispif_device** %4, align 8
  %115 = getelementptr inbounds %struct.ispif_device, %struct.ispif_device* %114, i32 0, i32 13
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %115, align 8
  %117 = load i32, i32* %9, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 2
  store i8* %113, i8** %120, align 8
  %121 = load i8*, i8** @ispif_formats_8x96, align 8
  %122 = call i8* @ARRAY_SIZE(i8* %121)
  %123 = load %struct.ispif_device*, %struct.ispif_device** %4, align 8
  %124 = getelementptr inbounds %struct.ispif_device, %struct.ispif_device* %123, i32 0, i32 13
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %124, align 8
  %126 = load i32, i32* %9, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 1
  store i8* %122, i8** %129, align 8
  br label %133

130:                                              ; preds = %105
  %131 = load i32, i32* @EINVAL, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %3, align 4
  br label %438

133:                                              ; preds = %112
  br label %134

134:                                              ; preds = %133, %87
  br label %135

135:                                              ; preds = %134
  %136 = load i32, i32* %9, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %9, align 4
  br label %58

138:                                              ; preds = %58
  %139 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %140 = load i32, i32* @IORESOURCE_MEM, align 4
  %141 = load %struct.resources_ispif*, %struct.resources_ispif** %5, align 8
  %142 = getelementptr inbounds %struct.resources_ispif, %struct.resources_ispif* %141, i32 0, i32 3
  %143 = load i32*, i32** %142, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 0
  %145 = load i32, i32* %144, align 4
  %146 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %139, i32 %140, i32 %145)
  store %struct.resource* %146, %struct.resource** %8, align 8
  %147 = load %struct.device*, %struct.device** %6, align 8
  %148 = load %struct.resource*, %struct.resource** %8, align 8
  %149 = call i8* @devm_ioremap_resource(%struct.device* %147, %struct.resource* %148)
  %150 = load %struct.ispif_device*, %struct.ispif_device** %4, align 8
  %151 = getelementptr inbounds %struct.ispif_device, %struct.ispif_device* %150, i32 0, i32 12
  store i8* %149, i8** %151, align 8
  %152 = load %struct.ispif_device*, %struct.ispif_device** %4, align 8
  %153 = getelementptr inbounds %struct.ispif_device, %struct.ispif_device* %152, i32 0, i32 12
  %154 = load i8*, i8** %153, align 8
  %155 = call i64 @IS_ERR(i8* %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %164

157:                                              ; preds = %138
  %158 = load %struct.device*, %struct.device** %6, align 8
  %159 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %158, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %160 = load %struct.ispif_device*, %struct.ispif_device** %4, align 8
  %161 = getelementptr inbounds %struct.ispif_device, %struct.ispif_device* %160, i32 0, i32 12
  %162 = load i8*, i8** %161, align 8
  %163 = call i32 @PTR_ERR(i8* %162)
  store i32 %163, i32* %3, align 4
  br label %438

164:                                              ; preds = %138
  %165 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %166 = load i32, i32* @IORESOURCE_MEM, align 4
  %167 = load %struct.resources_ispif*, %struct.resources_ispif** %5, align 8
  %168 = getelementptr inbounds %struct.resources_ispif, %struct.resources_ispif* %167, i32 0, i32 3
  %169 = load i32*, i32** %168, align 8
  %170 = getelementptr inbounds i32, i32* %169, i64 1
  %171 = load i32, i32* %170, align 4
  %172 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %165, i32 %166, i32 %171)
  store %struct.resource* %172, %struct.resource** %8, align 8
  %173 = load %struct.device*, %struct.device** %6, align 8
  %174 = load %struct.resource*, %struct.resource** %8, align 8
  %175 = call i8* @devm_ioremap_resource(%struct.device* %173, %struct.resource* %174)
  %176 = load %struct.ispif_device*, %struct.ispif_device** %4, align 8
  %177 = getelementptr inbounds %struct.ispif_device, %struct.ispif_device* %176, i32 0, i32 11
  store i8* %175, i8** %177, align 8
  %178 = load %struct.ispif_device*, %struct.ispif_device** %4, align 8
  %179 = getelementptr inbounds %struct.ispif_device, %struct.ispif_device* %178, i32 0, i32 11
  %180 = load i8*, i8** %179, align 8
  %181 = call i64 @IS_ERR(i8* %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %190

183:                                              ; preds = %164
  %184 = load %struct.device*, %struct.device** %6, align 8
  %185 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %184, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %186 = load %struct.ispif_device*, %struct.ispif_device** %4, align 8
  %187 = getelementptr inbounds %struct.ispif_device, %struct.ispif_device* %186, i32 0, i32 11
  %188 = load i8*, i8** %187, align 8
  %189 = call i32 @PTR_ERR(i8* %188)
  store i32 %189, i32* %3, align 4
  br label %438

190:                                              ; preds = %164
  %191 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %192 = load i32, i32* @IORESOURCE_IRQ, align 4
  %193 = load %struct.resources_ispif*, %struct.resources_ispif** %5, align 8
  %194 = getelementptr inbounds %struct.resources_ispif, %struct.resources_ispif* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 8
  %196 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %191, i32 %192, i32 %195)
  store %struct.resource* %196, %struct.resource** %8, align 8
  %197 = load %struct.resource*, %struct.resource** %8, align 8
  %198 = icmp ne %struct.resource* %197, null
  br i1 %198, label %204, label %199

199:                                              ; preds = %190
  %200 = load %struct.device*, %struct.device** %6, align 8
  %201 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %200, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %202 = load i32, i32* @EINVAL, align 4
  %203 = sub nsw i32 0, %202
  store i32 %203, i32* %3, align 4
  br label %438

204:                                              ; preds = %190
  %205 = load %struct.resource*, %struct.resource** %8, align 8
  %206 = getelementptr inbounds %struct.resource, %struct.resource* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = load %struct.ispif_device*, %struct.ispif_device** %4, align 8
  %209 = getelementptr inbounds %struct.ispif_device, %struct.ispif_device* %208, i32 0, i32 10
  store i32 %207, i32* %209, align 4
  %210 = load %struct.ispif_device*, %struct.ispif_device** %4, align 8
  %211 = getelementptr inbounds %struct.ispif_device, %struct.ispif_device* %210, i32 0, i32 9
  %212 = load i32, i32* %211, align 8
  %213 = load %struct.device*, %struct.device** %6, align 8
  %214 = call i8* @dev_name(%struct.device* %213)
  %215 = load i8*, i8** @MSM_ISPIF_NAME, align 8
  %216 = call i32 @snprintf(i32 %212, i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %214, i8* %215)
  %217 = load %struct.ispif_device*, %struct.ispif_device** %4, align 8
  %218 = call %struct.TYPE_4__* @to_camss(%struct.ispif_device* %217)
  %219 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %218, i32 0, i32 0
  %220 = load i64, i64* %219, align 8
  %221 = load i64, i64* @CAMSS_8x16, align 8
  %222 = icmp eq i64 %220, %221
  br i1 %222, label %223, label %235

223:                                              ; preds = %204
  %224 = load %struct.device*, %struct.device** %6, align 8
  %225 = load %struct.ispif_device*, %struct.ispif_device** %4, align 8
  %226 = getelementptr inbounds %struct.ispif_device, %struct.ispif_device* %225, i32 0, i32 10
  %227 = load i32, i32* %226, align 4
  %228 = load i32, i32* @ispif_isr_8x16, align 4
  %229 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %230 = load %struct.ispif_device*, %struct.ispif_device** %4, align 8
  %231 = getelementptr inbounds %struct.ispif_device, %struct.ispif_device* %230, i32 0, i32 9
  %232 = load i32, i32* %231, align 8
  %233 = load %struct.ispif_device*, %struct.ispif_device** %4, align 8
  %234 = call i32 @devm_request_irq(%struct.device* %224, i32 %227, i32 %228, i32 %229, i32 %232, %struct.ispif_device* %233)
  store i32 %234, i32* %10, align 4
  br label %258

235:                                              ; preds = %204
  %236 = load %struct.ispif_device*, %struct.ispif_device** %4, align 8
  %237 = call %struct.TYPE_4__* @to_camss(%struct.ispif_device* %236)
  %238 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %237, i32 0, i32 0
  %239 = load i64, i64* %238, align 8
  %240 = load i64, i64* @CAMSS_8x96, align 8
  %241 = icmp eq i64 %239, %240
  br i1 %241, label %242, label %254

242:                                              ; preds = %235
  %243 = load %struct.device*, %struct.device** %6, align 8
  %244 = load %struct.ispif_device*, %struct.ispif_device** %4, align 8
  %245 = getelementptr inbounds %struct.ispif_device, %struct.ispif_device* %244, i32 0, i32 10
  %246 = load i32, i32* %245, align 4
  %247 = load i32, i32* @ispif_isr_8x96, align 4
  %248 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %249 = load %struct.ispif_device*, %struct.ispif_device** %4, align 8
  %250 = getelementptr inbounds %struct.ispif_device, %struct.ispif_device* %249, i32 0, i32 9
  %251 = load i32, i32* %250, align 8
  %252 = load %struct.ispif_device*, %struct.ispif_device** %4, align 8
  %253 = call i32 @devm_request_irq(%struct.device* %243, i32 %246, i32 %247, i32 %248, i32 %251, %struct.ispif_device* %252)
  store i32 %253, i32* %10, align 4
  br label %257

254:                                              ; preds = %235
  %255 = load i32, i32* @EINVAL, align 4
  %256 = sub nsw i32 0, %255
  store i32 %256, i32* %10, align 4
  br label %257

257:                                              ; preds = %254, %242
  br label %258

258:                                              ; preds = %257, %223
  %259 = load i32, i32* %10, align 4
  %260 = icmp slt i32 %259, 0
  br i1 %260, label %261, label %266

261:                                              ; preds = %258
  %262 = load %struct.device*, %struct.device** %6, align 8
  %263 = load i32, i32* %10, align 4
  %264 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %262, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %263)
  %265 = load i32, i32* %10, align 4
  store i32 %265, i32* %3, align 4
  br label %438

266:                                              ; preds = %258
  %267 = load %struct.ispif_device*, %struct.ispif_device** %4, align 8
  %268 = getelementptr inbounds %struct.ispif_device, %struct.ispif_device* %267, i32 0, i32 1
  store i64 0, i64* %268, align 8
  br label %269

269:                                              ; preds = %279, %266
  %270 = load %struct.resources_ispif*, %struct.resources_ispif** %5, align 8
  %271 = getelementptr inbounds %struct.resources_ispif, %struct.resources_ispif* %270, i32 0, i32 1
  %272 = load i32*, i32** %271, align 8
  %273 = load %struct.ispif_device*, %struct.ispif_device** %4, align 8
  %274 = getelementptr inbounds %struct.ispif_device, %struct.ispif_device* %273, i32 0, i32 1
  %275 = load i64, i64* %274, align 8
  %276 = getelementptr inbounds i32, i32* %272, i64 %275
  %277 = load i32, i32* %276, align 4
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %284

279:                                              ; preds = %269
  %280 = load %struct.ispif_device*, %struct.ispif_device** %4, align 8
  %281 = getelementptr inbounds %struct.ispif_device, %struct.ispif_device* %280, i32 0, i32 1
  %282 = load i64, i64* %281, align 8
  %283 = add i64 %282, 1
  store i64 %283, i64* %281, align 8
  br label %269

284:                                              ; preds = %269
  %285 = load %struct.device*, %struct.device** %6, align 8
  %286 = load %struct.ispif_device*, %struct.ispif_device** %4, align 8
  %287 = getelementptr inbounds %struct.ispif_device, %struct.ispif_device* %286, i32 0, i32 1
  %288 = load i64, i64* %287, align 8
  %289 = trunc i64 %288 to i32
  %290 = load i32, i32* @GFP_KERNEL, align 4
  %291 = call i8* @devm_kcalloc(%struct.device* %285, i32 %289, i32 24, i32 %290)
  %292 = bitcast i8* %291 to %struct.camss_clock*
  %293 = load %struct.ispif_device*, %struct.ispif_device** %4, align 8
  %294 = getelementptr inbounds %struct.ispif_device, %struct.ispif_device* %293, i32 0, i32 8
  store %struct.camss_clock* %292, %struct.camss_clock** %294, align 8
  %295 = load %struct.ispif_device*, %struct.ispif_device** %4, align 8
  %296 = getelementptr inbounds %struct.ispif_device, %struct.ispif_device* %295, i32 0, i32 8
  %297 = load %struct.camss_clock*, %struct.camss_clock** %296, align 8
  %298 = icmp ne %struct.camss_clock* %297, null
  br i1 %298, label %302, label %299

299:                                              ; preds = %284
  %300 = load i32, i32* @ENOMEM, align 4
  %301 = sub nsw i32 0, %300
  store i32 %301, i32* %3, align 4
  br label %438

302:                                              ; preds = %284
  store i32 0, i32* %9, align 4
  br label %303

303:                                              ; preds = %343, %302
  %304 = load i32, i32* %9, align 4
  %305 = sext i32 %304 to i64
  %306 = load %struct.ispif_device*, %struct.ispif_device** %4, align 8
  %307 = getelementptr inbounds %struct.ispif_device, %struct.ispif_device* %306, i32 0, i32 1
  %308 = load i64, i64* %307, align 8
  %309 = icmp ult i64 %305, %308
  br i1 %309, label %310, label %346

310:                                              ; preds = %303
  %311 = load %struct.ispif_device*, %struct.ispif_device** %4, align 8
  %312 = getelementptr inbounds %struct.ispif_device, %struct.ispif_device* %311, i32 0, i32 8
  %313 = load %struct.camss_clock*, %struct.camss_clock** %312, align 8
  %314 = load i32, i32* %9, align 4
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds %struct.camss_clock, %struct.camss_clock* %313, i64 %315
  store %struct.camss_clock* %316, %struct.camss_clock** %11, align 8
  %317 = load %struct.device*, %struct.device** %6, align 8
  %318 = load %struct.resources_ispif*, %struct.resources_ispif** %5, align 8
  %319 = getelementptr inbounds %struct.resources_ispif, %struct.resources_ispif* %318, i32 0, i32 1
  %320 = load i32*, i32** %319, align 8
  %321 = load i32, i32* %9, align 4
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds i32, i32* %320, i64 %322
  %324 = load i32, i32* %323, align 4
  %325 = call i8* @devm_clk_get(%struct.device* %317, i32 %324)
  %326 = load %struct.camss_clock*, %struct.camss_clock** %11, align 8
  %327 = getelementptr inbounds %struct.camss_clock, %struct.camss_clock* %326, i32 0, i32 2
  store i8* %325, i8** %327, align 8
  %328 = load %struct.camss_clock*, %struct.camss_clock** %11, align 8
  %329 = getelementptr inbounds %struct.camss_clock, %struct.camss_clock* %328, i32 0, i32 2
  %330 = load i8*, i8** %329, align 8
  %331 = call i64 @IS_ERR(i8* %330)
  %332 = icmp ne i64 %331, 0
  br i1 %332, label %333, label %338

333:                                              ; preds = %310
  %334 = load %struct.camss_clock*, %struct.camss_clock** %11, align 8
  %335 = getelementptr inbounds %struct.camss_clock, %struct.camss_clock* %334, i32 0, i32 2
  %336 = load i8*, i8** %335, align 8
  %337 = call i32 @PTR_ERR(i8* %336)
  store i32 %337, i32* %3, align 4
  br label %438

338:                                              ; preds = %310
  %339 = load %struct.camss_clock*, %struct.camss_clock** %11, align 8
  %340 = getelementptr inbounds %struct.camss_clock, %struct.camss_clock* %339, i32 0, i32 1
  store i32* null, i32** %340, align 8
  %341 = load %struct.camss_clock*, %struct.camss_clock** %11, align 8
  %342 = getelementptr inbounds %struct.camss_clock, %struct.camss_clock* %341, i32 0, i32 0
  store i64 0, i64* %342, align 8
  br label %343

343:                                              ; preds = %338
  %344 = load i32, i32* %9, align 4
  %345 = add nsw i32 %344, 1
  store i32 %345, i32* %9, align 4
  br label %303

346:                                              ; preds = %303
  %347 = load %struct.ispif_device*, %struct.ispif_device** %4, align 8
  %348 = getelementptr inbounds %struct.ispif_device, %struct.ispif_device* %347, i32 0, i32 2
  store i64 0, i64* %348, align 8
  br label %349

349:                                              ; preds = %359, %346
  %350 = load %struct.resources_ispif*, %struct.resources_ispif** %5, align 8
  %351 = getelementptr inbounds %struct.resources_ispif, %struct.resources_ispif* %350, i32 0, i32 0
  %352 = load i32*, i32** %351, align 8
  %353 = load %struct.ispif_device*, %struct.ispif_device** %4, align 8
  %354 = getelementptr inbounds %struct.ispif_device, %struct.ispif_device* %353, i32 0, i32 2
  %355 = load i64, i64* %354, align 8
  %356 = getelementptr inbounds i32, i32* %352, i64 %355
  %357 = load i32, i32* %356, align 4
  %358 = icmp ne i32 %357, 0
  br i1 %358, label %359, label %364

359:                                              ; preds = %349
  %360 = load %struct.ispif_device*, %struct.ispif_device** %4, align 8
  %361 = getelementptr inbounds %struct.ispif_device, %struct.ispif_device* %360, i32 0, i32 2
  %362 = load i64, i64* %361, align 8
  %363 = add i64 %362, 1
  store i64 %363, i64* %361, align 8
  br label %349

364:                                              ; preds = %349
  %365 = load %struct.device*, %struct.device** %6, align 8
  %366 = load %struct.ispif_device*, %struct.ispif_device** %4, align 8
  %367 = getelementptr inbounds %struct.ispif_device, %struct.ispif_device* %366, i32 0, i32 2
  %368 = load i64, i64* %367, align 8
  %369 = trunc i64 %368 to i32
  %370 = load i32, i32* @GFP_KERNEL, align 4
  %371 = call i8* @devm_kcalloc(%struct.device* %365, i32 %369, i32 24, i32 %370)
  %372 = bitcast i8* %371 to %struct.camss_clock*
  %373 = load %struct.ispif_device*, %struct.ispif_device** %4, align 8
  %374 = getelementptr inbounds %struct.ispif_device, %struct.ispif_device* %373, i32 0, i32 7
  store %struct.camss_clock* %372, %struct.camss_clock** %374, align 8
  %375 = load %struct.ispif_device*, %struct.ispif_device** %4, align 8
  %376 = getelementptr inbounds %struct.ispif_device, %struct.ispif_device* %375, i32 0, i32 7
  %377 = load %struct.camss_clock*, %struct.camss_clock** %376, align 8
  %378 = icmp ne %struct.camss_clock* %377, null
  br i1 %378, label %382, label %379

379:                                              ; preds = %364
  %380 = load i32, i32* @ENOMEM, align 4
  %381 = sub nsw i32 0, %380
  store i32 %381, i32* %3, align 4
  br label %438

382:                                              ; preds = %364
  store i32 0, i32* %9, align 4
  br label %383

383:                                              ; preds = %423, %382
  %384 = load i32, i32* %9, align 4
  %385 = sext i32 %384 to i64
  %386 = load %struct.ispif_device*, %struct.ispif_device** %4, align 8
  %387 = getelementptr inbounds %struct.ispif_device, %struct.ispif_device* %386, i32 0, i32 2
  %388 = load i64, i64* %387, align 8
  %389 = icmp ult i64 %385, %388
  br i1 %389, label %390, label %426

390:                                              ; preds = %383
  %391 = load %struct.ispif_device*, %struct.ispif_device** %4, align 8
  %392 = getelementptr inbounds %struct.ispif_device, %struct.ispif_device* %391, i32 0, i32 7
  %393 = load %struct.camss_clock*, %struct.camss_clock** %392, align 8
  %394 = load i32, i32* %9, align 4
  %395 = sext i32 %394 to i64
  %396 = getelementptr inbounds %struct.camss_clock, %struct.camss_clock* %393, i64 %395
  store %struct.camss_clock* %396, %struct.camss_clock** %12, align 8
  %397 = load %struct.device*, %struct.device** %6, align 8
  %398 = load %struct.resources_ispif*, %struct.resources_ispif** %5, align 8
  %399 = getelementptr inbounds %struct.resources_ispif, %struct.resources_ispif* %398, i32 0, i32 0
  %400 = load i32*, i32** %399, align 8
  %401 = load i32, i32* %9, align 4
  %402 = sext i32 %401 to i64
  %403 = getelementptr inbounds i32, i32* %400, i64 %402
  %404 = load i32, i32* %403, align 4
  %405 = call i8* @devm_clk_get(%struct.device* %397, i32 %404)
  %406 = load %struct.camss_clock*, %struct.camss_clock** %12, align 8
  %407 = getelementptr inbounds %struct.camss_clock, %struct.camss_clock* %406, i32 0, i32 2
  store i8* %405, i8** %407, align 8
  %408 = load %struct.camss_clock*, %struct.camss_clock** %12, align 8
  %409 = getelementptr inbounds %struct.camss_clock, %struct.camss_clock* %408, i32 0, i32 2
  %410 = load i8*, i8** %409, align 8
  %411 = call i64 @IS_ERR(i8* %410)
  %412 = icmp ne i64 %411, 0
  br i1 %412, label %413, label %418

413:                                              ; preds = %390
  %414 = load %struct.camss_clock*, %struct.camss_clock** %12, align 8
  %415 = getelementptr inbounds %struct.camss_clock, %struct.camss_clock* %414, i32 0, i32 2
  %416 = load i8*, i8** %415, align 8
  %417 = call i32 @PTR_ERR(i8* %416)
  store i32 %417, i32* %3, align 4
  br label %438

418:                                              ; preds = %390
  %419 = load %struct.camss_clock*, %struct.camss_clock** %12, align 8
  %420 = getelementptr inbounds %struct.camss_clock, %struct.camss_clock* %419, i32 0, i32 1
  store i32* null, i32** %420, align 8
  %421 = load %struct.camss_clock*, %struct.camss_clock** %12, align 8
  %422 = getelementptr inbounds %struct.camss_clock, %struct.camss_clock* %421, i32 0, i32 0
  store i64 0, i64* %422, align 8
  br label %423

423:                                              ; preds = %418
  %424 = load i32, i32* %9, align 4
  %425 = add nsw i32 %424, 1
  store i32 %425, i32* %9, align 4
  br label %383

426:                                              ; preds = %383
  %427 = load %struct.ispif_device*, %struct.ispif_device** %4, align 8
  %428 = getelementptr inbounds %struct.ispif_device, %struct.ispif_device* %427, i32 0, i32 6
  %429 = call i32 @mutex_init(i32* %428)
  %430 = load %struct.ispif_device*, %struct.ispif_device** %4, align 8
  %431 = getelementptr inbounds %struct.ispif_device, %struct.ispif_device* %430, i32 0, i32 5
  store i64 0, i64* %431, align 8
  %432 = load %struct.ispif_device*, %struct.ispif_device** %4, align 8
  %433 = getelementptr inbounds %struct.ispif_device, %struct.ispif_device* %432, i32 0, i32 4
  %434 = call i32 @mutex_init(i32* %433)
  %435 = load %struct.ispif_device*, %struct.ispif_device** %4, align 8
  %436 = getelementptr inbounds %struct.ispif_device, %struct.ispif_device* %435, i32 0, i32 3
  %437 = call i32 @init_completion(i32* %436)
  store i32 0, i32* %3, align 4
  br label %438

438:                                              ; preds = %426, %413, %379, %333, %299, %261, %199, %183, %157, %130, %54, %36
  %439 = load i32, i32* %3, align 4
  ret i32 %439
}

declare dso_local %struct.device* @to_device(%struct.ispif_device*) #1

declare dso_local %struct.platform_device* @to_platform_device(%struct.device*) #1

declare dso_local %struct.TYPE_4__* @to_camss(%struct.ispif_device*) #1

declare dso_local i8* @devm_kcalloc(%struct.device*, i32, i32, i32) #1

declare dso_local i8* @ARRAY_SIZE(i8*) #1

declare dso_local %struct.resource* @platform_get_resource_byname(%struct.platform_device*, i32, i32) #1

declare dso_local i8* @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i8*) #1

declare dso_local i8* @dev_name(%struct.device*) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i32, i32, i32, i32, %struct.ispif_device*) #1

declare dso_local i8* @devm_clk_get(%struct.device*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
