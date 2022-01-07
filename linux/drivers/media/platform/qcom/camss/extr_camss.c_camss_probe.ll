; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss.c_camss_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss.c_camss_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.camss = type { i64, i32, i32, i32, %struct.TYPE_11__, %struct.TYPE_10__, i8**, %struct.device*, %struct.TYPE_12__, i8*, i8*, i8*, i32 }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_10__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32*, i32, %struct.device* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"qcom,msm8916-camss\00", align 1
@CAMSS_8x16 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"qcom,msm8996-camss\00", align 1
@CAMSS_8x96 = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Qualcomm Camera Subsystem\00", align 1
@camss_media_ops = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"Failed to register V4L2 device: %d\0A\00", align 1
@camss_subdev_notifier_ops = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [43 x i8] c"Failed to register async subdev nodes: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"Failed to register subdev nodes: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"Failed to register media device: %d\0A\00", align 1
@PM_DOMAIN_VFE0 = common dso_local global i64 0, align 8
@PM_DOMAIN_VFE1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @camss_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @camss_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.camss*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.camss* @kzalloc(i32 112, i32 %10)
  store %struct.camss* %11, %struct.camss** %5, align 8
  %12 = load %struct.camss*, %struct.camss** %5, align 8
  %13 = icmp ne %struct.camss* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %296

17:                                               ; preds = %1
  %18 = load %struct.camss*, %struct.camss** %5, align 8
  %19 = getelementptr inbounds %struct.camss, %struct.camss* %18, i32 0, i32 12
  %20 = call i32 @atomic_set(i32* %19, i32 0)
  %21 = load %struct.device*, %struct.device** %4, align 8
  %22 = load %struct.camss*, %struct.camss** %5, align 8
  %23 = getelementptr inbounds %struct.camss, %struct.camss* %22, i32 0, i32 7
  store %struct.device* %21, %struct.device** %23, align 8
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = load %struct.camss*, %struct.camss** %5, align 8
  %26 = call i32 @platform_set_drvdata(%struct.platform_device* %24, %struct.camss* %25)
  %27 = load %struct.device*, %struct.device** %4, align 8
  %28 = getelementptr inbounds %struct.device, %struct.device* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @of_device_is_compatible(i32 %29, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %17
  %33 = load i64, i64* @CAMSS_8x16, align 8
  %34 = load %struct.camss*, %struct.camss** %5, align 8
  %35 = getelementptr inbounds %struct.camss, %struct.camss* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  %36 = load %struct.camss*, %struct.camss** %5, align 8
  %37 = getelementptr inbounds %struct.camss, %struct.camss* %36, i32 0, i32 1
  store i32 2, i32* %37, align 8
  %38 = load %struct.camss*, %struct.camss** %5, align 8
  %39 = getelementptr inbounds %struct.camss, %struct.camss* %38, i32 0, i32 2
  store i32 2, i32* %39, align 4
  %40 = load %struct.camss*, %struct.camss** %5, align 8
  %41 = getelementptr inbounds %struct.camss, %struct.camss* %40, i32 0, i32 3
  store i32 1, i32* %41, align 8
  br label %62

42:                                               ; preds = %17
  %43 = load %struct.device*, %struct.device** %4, align 8
  %44 = getelementptr inbounds %struct.device, %struct.device* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @of_device_is_compatible(i32 %45, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %42
  %49 = load i64, i64* @CAMSS_8x96, align 8
  %50 = load %struct.camss*, %struct.camss** %5, align 8
  %51 = getelementptr inbounds %struct.camss, %struct.camss* %50, i32 0, i32 0
  store i64 %49, i64* %51, align 8
  %52 = load %struct.camss*, %struct.camss** %5, align 8
  %53 = getelementptr inbounds %struct.camss, %struct.camss* %52, i32 0, i32 1
  store i32 3, i32* %53, align 8
  %54 = load %struct.camss*, %struct.camss** %5, align 8
  %55 = getelementptr inbounds %struct.camss, %struct.camss* %54, i32 0, i32 2
  store i32 4, i32* %55, align 4
  %56 = load %struct.camss*, %struct.camss** %5, align 8
  %57 = getelementptr inbounds %struct.camss, %struct.camss* %56, i32 0, i32 3
  store i32 2, i32* %57, align 8
  br label %61

58:                                               ; preds = %42
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %2, align 4
  br label %296

61:                                               ; preds = %48
  br label %62

62:                                               ; preds = %61, %32
  %63 = load %struct.device*, %struct.device** %4, align 8
  %64 = load %struct.camss*, %struct.camss** %5, align 8
  %65 = getelementptr inbounds %struct.camss, %struct.camss* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @GFP_KERNEL, align 4
  %68 = call i8* @devm_kcalloc(%struct.device* %63, i32 %66, i32 1, i32 %67)
  %69 = load %struct.camss*, %struct.camss** %5, align 8
  %70 = getelementptr inbounds %struct.camss, %struct.camss* %69, i32 0, i32 11
  store i8* %68, i8** %70, align 8
  %71 = load %struct.camss*, %struct.camss** %5, align 8
  %72 = getelementptr inbounds %struct.camss, %struct.camss* %71, i32 0, i32 11
  %73 = load i8*, i8** %72, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %78, label %75

75:                                               ; preds = %62
  %76 = load i32, i32* @ENOMEM, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %2, align 4
  br label %296

78:                                               ; preds = %62
  %79 = load %struct.device*, %struct.device** %4, align 8
  %80 = load %struct.camss*, %struct.camss** %5, align 8
  %81 = getelementptr inbounds %struct.camss, %struct.camss* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @GFP_KERNEL, align 4
  %84 = call i8* @devm_kcalloc(%struct.device* %79, i32 %82, i32 1, i32 %83)
  %85 = load %struct.camss*, %struct.camss** %5, align 8
  %86 = getelementptr inbounds %struct.camss, %struct.camss* %85, i32 0, i32 10
  store i8* %84, i8** %86, align 8
  %87 = load %struct.camss*, %struct.camss** %5, align 8
  %88 = getelementptr inbounds %struct.camss, %struct.camss* %87, i32 0, i32 10
  %89 = load i8*, i8** %88, align 8
  %90 = icmp ne i8* %89, null
  br i1 %90, label %94, label %91

91:                                               ; preds = %78
  %92 = load i32, i32* @ENOMEM, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %2, align 4
  br label %296

94:                                               ; preds = %78
  %95 = load %struct.device*, %struct.device** %4, align 8
  %96 = load %struct.camss*, %struct.camss** %5, align 8
  %97 = getelementptr inbounds %struct.camss, %struct.camss* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @GFP_KERNEL, align 4
  %100 = call i8* @devm_kcalloc(%struct.device* %95, i32 %98, i32 1, i32 %99)
  %101 = load %struct.camss*, %struct.camss** %5, align 8
  %102 = getelementptr inbounds %struct.camss, %struct.camss* %101, i32 0, i32 9
  store i8* %100, i8** %102, align 8
  %103 = load %struct.camss*, %struct.camss** %5, align 8
  %104 = getelementptr inbounds %struct.camss, %struct.camss* %103, i32 0, i32 9
  %105 = load i8*, i8** %104, align 8
  %106 = icmp ne i8* %105, null
  br i1 %106, label %110, label %107

107:                                              ; preds = %94
  %108 = load i32, i32* @ENOMEM, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %2, align 4
  br label %296

110:                                              ; preds = %94
  %111 = load %struct.camss*, %struct.camss** %5, align 8
  %112 = getelementptr inbounds %struct.camss, %struct.camss* %111, i32 0, i32 4
  %113 = call i32 @v4l2_async_notifier_init(%struct.TYPE_11__* %112)
  %114 = load %struct.camss*, %struct.camss** %5, align 8
  %115 = call i32 @camss_of_parse_ports(%struct.camss* %114)
  store i32 %115, i32* %6, align 4
  %116 = load i32, i32* %6, align 4
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %110
  %119 = load i32, i32* %6, align 4
  store i32 %119, i32* %2, align 4
  br label %296

120:                                              ; preds = %110
  %121 = load %struct.camss*, %struct.camss** %5, align 8
  %122 = call i32 @camss_init_subdevices(%struct.camss* %121)
  store i32 %122, i32* %7, align 4
  %123 = load i32, i32* %7, align 4
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %120
  br label %291

126:                                              ; preds = %120
  %127 = load %struct.device*, %struct.device** %4, align 8
  %128 = call i32 @dma_set_mask_and_coherent(%struct.device* %127, i32 -1)
  store i32 %128, i32* %7, align 4
  %129 = load i32, i32* %7, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %126
  br label %291

132:                                              ; preds = %126
  %133 = load %struct.camss*, %struct.camss** %5, align 8
  %134 = getelementptr inbounds %struct.camss, %struct.camss* %133, i32 0, i32 7
  %135 = load %struct.device*, %struct.device** %134, align 8
  %136 = load %struct.camss*, %struct.camss** %5, align 8
  %137 = getelementptr inbounds %struct.camss, %struct.camss* %136, i32 0, i32 8
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 2
  store %struct.device* %135, %struct.device** %138, align 8
  %139 = load %struct.camss*, %struct.camss** %5, align 8
  %140 = getelementptr inbounds %struct.camss, %struct.camss* %139, i32 0, i32 8
  %141 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @strscpy(i32 %142, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 4)
  %144 = load %struct.camss*, %struct.camss** %5, align 8
  %145 = getelementptr inbounds %struct.camss, %struct.camss* %144, i32 0, i32 8
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 0, i32 0
  store i32* @camss_media_ops, i32** %146, align 8
  %147 = load %struct.camss*, %struct.camss** %5, align 8
  %148 = getelementptr inbounds %struct.camss, %struct.camss* %147, i32 0, i32 8
  %149 = call i32 @media_device_init(%struct.TYPE_12__* %148)
  %150 = load %struct.camss*, %struct.camss** %5, align 8
  %151 = getelementptr inbounds %struct.camss, %struct.camss* %150, i32 0, i32 8
  %152 = load %struct.camss*, %struct.camss** %5, align 8
  %153 = getelementptr inbounds %struct.camss, %struct.camss* %152, i32 0, i32 5
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %153, i32 0, i32 0
  store %struct.TYPE_12__* %151, %struct.TYPE_12__** %154, align 8
  %155 = load %struct.camss*, %struct.camss** %5, align 8
  %156 = getelementptr inbounds %struct.camss, %struct.camss* %155, i32 0, i32 7
  %157 = load %struct.device*, %struct.device** %156, align 8
  %158 = load %struct.camss*, %struct.camss** %5, align 8
  %159 = getelementptr inbounds %struct.camss, %struct.camss* %158, i32 0, i32 5
  %160 = call i32 @v4l2_device_register(%struct.device* %157, %struct.TYPE_10__* %159)
  store i32 %160, i32* %7, align 4
  %161 = load i32, i32* %7, align 4
  %162 = icmp slt i32 %161, 0
  br i1 %162, label %163, label %167

163:                                              ; preds = %132
  %164 = load %struct.device*, %struct.device** %4, align 8
  %165 = load i32, i32* %7, align 4
  %166 = call i32 @dev_err(%struct.device* %164, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %165)
  br label %291

167:                                              ; preds = %132
  %168 = load %struct.camss*, %struct.camss** %5, align 8
  %169 = call i32 @camss_register_entities(%struct.camss* %168)
  store i32 %169, i32* %7, align 4
  %170 = load i32, i32* %7, align 4
  %171 = icmp slt i32 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %167
  br label %287

173:                                              ; preds = %167
  %174 = load i32, i32* %6, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %192

176:                                              ; preds = %173
  %177 = load %struct.camss*, %struct.camss** %5, align 8
  %178 = getelementptr inbounds %struct.camss, %struct.camss* %177, i32 0, i32 4
  %179 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %178, i32 0, i32 0
  store i32* @camss_subdev_notifier_ops, i32** %179, align 8
  %180 = load %struct.camss*, %struct.camss** %5, align 8
  %181 = getelementptr inbounds %struct.camss, %struct.camss* %180, i32 0, i32 5
  %182 = load %struct.camss*, %struct.camss** %5, align 8
  %183 = getelementptr inbounds %struct.camss, %struct.camss* %182, i32 0, i32 4
  %184 = call i32 @v4l2_async_notifier_register(%struct.TYPE_10__* %181, %struct.TYPE_11__* %183)
  store i32 %184, i32* %7, align 4
  %185 = load i32, i32* %7, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %191

187:                                              ; preds = %176
  %188 = load %struct.device*, %struct.device** %4, align 8
  %189 = load i32, i32* %7, align 4
  %190 = call i32 @dev_err(%struct.device* %188, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i32 %189)
  br label %284

191:                                              ; preds = %176
  br label %213

192:                                              ; preds = %173
  %193 = load %struct.camss*, %struct.camss** %5, align 8
  %194 = getelementptr inbounds %struct.camss, %struct.camss* %193, i32 0, i32 5
  %195 = call i32 @v4l2_device_register_subdev_nodes(%struct.TYPE_10__* %194)
  store i32 %195, i32* %7, align 4
  %196 = load i32, i32* %7, align 4
  %197 = icmp slt i32 %196, 0
  br i1 %197, label %198, label %202

198:                                              ; preds = %192
  %199 = load %struct.device*, %struct.device** %4, align 8
  %200 = load i32, i32* %7, align 4
  %201 = call i32 @dev_err(%struct.device* %199, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i32 %200)
  br label %284

202:                                              ; preds = %192
  %203 = load %struct.camss*, %struct.camss** %5, align 8
  %204 = getelementptr inbounds %struct.camss, %struct.camss* %203, i32 0, i32 8
  %205 = call i32 @media_device_register(%struct.TYPE_12__* %204)
  store i32 %205, i32* %7, align 4
  %206 = load i32, i32* %7, align 4
  %207 = icmp slt i32 %206, 0
  br i1 %207, label %208, label %212

208:                                              ; preds = %202
  %209 = load %struct.device*, %struct.device** %4, align 8
  %210 = load i32, i32* %7, align 4
  %211 = call i32 @dev_err(%struct.device* %209, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i32 %210)
  br label %284

212:                                              ; preds = %202
  br label %213

213:                                              ; preds = %212, %191
  %214 = load %struct.camss*, %struct.camss** %5, align 8
  %215 = getelementptr inbounds %struct.camss, %struct.camss* %214, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  %217 = load i64, i64* @CAMSS_8x96, align 8
  %218 = icmp eq i64 %216, %217
  br i1 %218, label %219, label %281

219:                                              ; preds = %213
  %220 = load %struct.camss*, %struct.camss** %5, align 8
  %221 = getelementptr inbounds %struct.camss, %struct.camss* %220, i32 0, i32 7
  %222 = load %struct.device*, %struct.device** %221, align 8
  %223 = load i64, i64* @PM_DOMAIN_VFE0, align 8
  %224 = call i8* @dev_pm_domain_attach_by_id(%struct.device* %222, i64 %223)
  %225 = load %struct.camss*, %struct.camss** %5, align 8
  %226 = getelementptr inbounds %struct.camss, %struct.camss* %225, i32 0, i32 6
  %227 = load i8**, i8*** %226, align 8
  %228 = load i64, i64* @PM_DOMAIN_VFE0, align 8
  %229 = getelementptr inbounds i8*, i8** %227, i64 %228
  store i8* %224, i8** %229, align 8
  %230 = load %struct.camss*, %struct.camss** %5, align 8
  %231 = getelementptr inbounds %struct.camss, %struct.camss* %230, i32 0, i32 6
  %232 = load i8**, i8*** %231, align 8
  %233 = load i64, i64* @PM_DOMAIN_VFE0, align 8
  %234 = getelementptr inbounds i8*, i8** %232, i64 %233
  %235 = load i8*, i8** %234, align 8
  %236 = call i64 @IS_ERR(i8* %235)
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %246

238:                                              ; preds = %219
  %239 = load %struct.camss*, %struct.camss** %5, align 8
  %240 = getelementptr inbounds %struct.camss, %struct.camss* %239, i32 0, i32 6
  %241 = load i8**, i8*** %240, align 8
  %242 = load i64, i64* @PM_DOMAIN_VFE0, align 8
  %243 = getelementptr inbounds i8*, i8** %241, i64 %242
  %244 = load i8*, i8** %243, align 8
  %245 = call i32 @PTR_ERR(i8* %244)
  store i32 %245, i32* %2, align 4
  br label %296

246:                                              ; preds = %219
  %247 = load %struct.camss*, %struct.camss** %5, align 8
  %248 = getelementptr inbounds %struct.camss, %struct.camss* %247, i32 0, i32 7
  %249 = load %struct.device*, %struct.device** %248, align 8
  %250 = load i64, i64* @PM_DOMAIN_VFE1, align 8
  %251 = call i8* @dev_pm_domain_attach_by_id(%struct.device* %249, i64 %250)
  %252 = load %struct.camss*, %struct.camss** %5, align 8
  %253 = getelementptr inbounds %struct.camss, %struct.camss* %252, i32 0, i32 6
  %254 = load i8**, i8*** %253, align 8
  %255 = load i64, i64* @PM_DOMAIN_VFE1, align 8
  %256 = getelementptr inbounds i8*, i8** %254, i64 %255
  store i8* %251, i8** %256, align 8
  %257 = load %struct.camss*, %struct.camss** %5, align 8
  %258 = getelementptr inbounds %struct.camss, %struct.camss* %257, i32 0, i32 6
  %259 = load i8**, i8*** %258, align 8
  %260 = load i64, i64* @PM_DOMAIN_VFE1, align 8
  %261 = getelementptr inbounds i8*, i8** %259, i64 %260
  %262 = load i8*, i8** %261, align 8
  %263 = call i64 @IS_ERR(i8* %262)
  %264 = icmp ne i64 %263, 0
  br i1 %264, label %265, label %280

265:                                              ; preds = %246
  %266 = load %struct.camss*, %struct.camss** %5, align 8
  %267 = getelementptr inbounds %struct.camss, %struct.camss* %266, i32 0, i32 6
  %268 = load i8**, i8*** %267, align 8
  %269 = load i64, i64* @PM_DOMAIN_VFE0, align 8
  %270 = getelementptr inbounds i8*, i8** %268, i64 %269
  %271 = load i8*, i8** %270, align 8
  %272 = call i32 @dev_pm_domain_detach(i8* %271, i32 1)
  %273 = load %struct.camss*, %struct.camss** %5, align 8
  %274 = getelementptr inbounds %struct.camss, %struct.camss* %273, i32 0, i32 6
  %275 = load i8**, i8*** %274, align 8
  %276 = load i64, i64* @PM_DOMAIN_VFE1, align 8
  %277 = getelementptr inbounds i8*, i8** %275, i64 %276
  %278 = load i8*, i8** %277, align 8
  %279 = call i32 @PTR_ERR(i8* %278)
  store i32 %279, i32* %2, align 4
  br label %296

280:                                              ; preds = %246
  br label %281

281:                                              ; preds = %280, %213
  %282 = load %struct.device*, %struct.device** %4, align 8
  %283 = call i32 @pm_runtime_enable(%struct.device* %282)
  store i32 0, i32* %2, align 4
  br label %296

284:                                              ; preds = %208, %198, %187
  %285 = load %struct.camss*, %struct.camss** %5, align 8
  %286 = call i32 @camss_unregister_entities(%struct.camss* %285)
  br label %287

287:                                              ; preds = %284, %172
  %288 = load %struct.camss*, %struct.camss** %5, align 8
  %289 = getelementptr inbounds %struct.camss, %struct.camss* %288, i32 0, i32 5
  %290 = call i32 @v4l2_device_unregister(%struct.TYPE_10__* %289)
  br label %291

291:                                              ; preds = %287, %163, %131, %125
  %292 = load %struct.camss*, %struct.camss** %5, align 8
  %293 = getelementptr inbounds %struct.camss, %struct.camss* %292, i32 0, i32 4
  %294 = call i32 @v4l2_async_notifier_cleanup(%struct.TYPE_11__* %293)
  %295 = load i32, i32* %7, align 4
  store i32 %295, i32* %2, align 4
  br label %296

296:                                              ; preds = %291, %281, %265, %238, %118, %107, %91, %75, %58, %14
  %297 = load i32, i32* %2, align 4
  ret i32 %297
}

declare dso_local %struct.camss* @kzalloc(i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.camss*) #1

declare dso_local i64 @of_device_is_compatible(i32, i8*) #1

declare dso_local i8* @devm_kcalloc(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @v4l2_async_notifier_init(%struct.TYPE_11__*) #1

declare dso_local i32 @camss_of_parse_ports(%struct.camss*) #1

declare dso_local i32 @camss_init_subdevices(%struct.camss*) #1

declare dso_local i32 @dma_set_mask_and_coherent(%struct.device*, i32) #1

declare dso_local i32 @strscpy(i32, i8*, i32) #1

declare dso_local i32 @media_device_init(%struct.TYPE_12__*) #1

declare dso_local i32 @v4l2_device_register(%struct.device*, %struct.TYPE_10__*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @camss_register_entities(%struct.camss*) #1

declare dso_local i32 @v4l2_async_notifier_register(%struct.TYPE_10__*, %struct.TYPE_11__*) #1

declare dso_local i32 @v4l2_device_register_subdev_nodes(%struct.TYPE_10__*) #1

declare dso_local i32 @media_device_register(%struct.TYPE_12__*) #1

declare dso_local i8* @dev_pm_domain_attach_by_id(%struct.device*, i64) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @dev_pm_domain_detach(i8*, i32) #1

declare dso_local i32 @pm_runtime_enable(%struct.device*) #1

declare dso_local i32 @camss_unregister_entities(%struct.camss*) #1

declare dso_local i32 @v4l2_device_unregister(%struct.TYPE_10__*) #1

declare dso_local i32 @v4l2_async_notifier_cleanup(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
