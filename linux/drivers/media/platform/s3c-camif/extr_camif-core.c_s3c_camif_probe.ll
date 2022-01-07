; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s3c-camif/extr_camif-core.c_s3c_camif_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s3c-camif/extr_camif-core.c_s3c_camif_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.s3c_camif_plat_data* }
%struct.s3c_camif_plat_data = type { i32 (...)*, i32 (...)*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.s3c_camif_drvdata = type { i32 }
%struct.camif_dev = type { i32, i32, i32, i32*, %struct.s3c_camif_plat_data, i32, i32, %struct.device*, i32, i32 }
%struct.resource = type { i32 }
%struct.TYPE_4__ = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"wrong platform data\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@CLK_CAM = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"sensor clock frequency: %lu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @s3c_camif_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c_camif_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.s3c_camif_plat_data*, align 8
  %6 = alloca %struct.s3c_camif_drvdata*, align 8
  %7 = alloca %struct.camif_dev*, align 8
  %8 = alloca %struct.resource*, align 8
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %4, align 8
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = getelementptr inbounds %struct.device, %struct.device* %12, i32 0, i32 0
  %14 = load %struct.s3c_camif_plat_data*, %struct.s3c_camif_plat_data** %13, align 8
  store %struct.s3c_camif_plat_data* %14, %struct.s3c_camif_plat_data** %5, align 8
  store i32 0, i32* %9, align 4
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.camif_dev* @devm_kzalloc(%struct.device* %15, i32 72, i32 %16)
  store %struct.camif_dev* %17, %struct.camif_dev** %7, align 8
  %18 = load %struct.camif_dev*, %struct.camif_dev** %7, align 8
  %19 = icmp ne %struct.camif_dev* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %227

23:                                               ; preds = %1
  %24 = load %struct.camif_dev*, %struct.camif_dev** %7, align 8
  %25 = getelementptr inbounds %struct.camif_dev, %struct.camif_dev* %24, i32 0, i32 9
  %26 = call i32 @spin_lock_init(i32* %25)
  %27 = load %struct.camif_dev*, %struct.camif_dev** %7, align 8
  %28 = getelementptr inbounds %struct.camif_dev, %struct.camif_dev* %27, i32 0, i32 8
  %29 = call i32 @mutex_init(i32* %28)
  %30 = load %struct.device*, %struct.device** %4, align 8
  %31 = load %struct.camif_dev*, %struct.camif_dev** %7, align 8
  %32 = getelementptr inbounds %struct.camif_dev, %struct.camif_dev* %31, i32 0, i32 7
  store %struct.device* %30, %struct.device** %32, align 8
  %33 = load %struct.s3c_camif_plat_data*, %struct.s3c_camif_plat_data** %5, align 8
  %34 = icmp ne %struct.s3c_camif_plat_data* %33, null
  br i1 %34, label %35, label %45

35:                                               ; preds = %23
  %36 = load %struct.s3c_camif_plat_data*, %struct.s3c_camif_plat_data** %5, align 8
  %37 = getelementptr inbounds %struct.s3c_camif_plat_data, %struct.s3c_camif_plat_data* %36, i32 0, i32 0
  %38 = load i32 (...)*, i32 (...)** %37, align 8
  %39 = icmp ne i32 (...)* %38, null
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = load %struct.s3c_camif_plat_data*, %struct.s3c_camif_plat_data** %5, align 8
  %42 = getelementptr inbounds %struct.s3c_camif_plat_data, %struct.s3c_camif_plat_data* %41, i32 0, i32 1
  %43 = load i32 (...)*, i32 (...)** %42, align 8
  %44 = icmp ne i32 (...)* %43, null
  br i1 %44, label %50, label %45

45:                                               ; preds = %40, %35, %23
  %46 = load %struct.device*, %struct.device** %4, align 8
  %47 = call i32 @dev_err(%struct.device* %46, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %2, align 4
  br label %227

50:                                               ; preds = %40
  %51 = load %struct.camif_dev*, %struct.camif_dev** %7, align 8
  %52 = getelementptr inbounds %struct.camif_dev, %struct.camif_dev* %51, i32 0, i32 4
  %53 = load %struct.s3c_camif_plat_data*, %struct.s3c_camif_plat_data** %5, align 8
  %54 = bitcast %struct.s3c_camif_plat_data* %52 to i8*
  %55 = bitcast %struct.s3c_camif_plat_data* %53 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %54, i8* align 8 %55, i64 24, i1 false)
  %56 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %57 = call %struct.TYPE_4__* @platform_get_device_id(%struct.platform_device* %56)
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = inttoptr i64 %59 to i8*
  %61 = bitcast i8* %60 to %struct.s3c_camif_drvdata*
  store %struct.s3c_camif_drvdata* %61, %struct.s3c_camif_drvdata** %6, align 8
  %62 = load %struct.s3c_camif_drvdata*, %struct.s3c_camif_drvdata** %6, align 8
  %63 = getelementptr inbounds %struct.s3c_camif_drvdata, %struct.s3c_camif_drvdata* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.camif_dev*, %struct.camif_dev** %7, align 8
  %66 = getelementptr inbounds %struct.camif_dev, %struct.camif_dev* %65, i32 0, i32 6
  store i32 %64, i32* %66, align 4
  %67 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %68 = load i32, i32* @IORESOURCE_MEM, align 4
  %69 = call %struct.resource* @platform_get_resource(%struct.platform_device* %67, i32 %68, i32 0)
  store %struct.resource* %69, %struct.resource** %8, align 8
  %70 = load %struct.device*, %struct.device** %4, align 8
  %71 = load %struct.resource*, %struct.resource** %8, align 8
  %72 = call i32 @devm_ioremap_resource(%struct.device* %70, %struct.resource* %71)
  %73 = load %struct.camif_dev*, %struct.camif_dev** %7, align 8
  %74 = getelementptr inbounds %struct.camif_dev, %struct.camif_dev* %73, i32 0, i32 5
  store i32 %72, i32* %74, align 8
  %75 = load %struct.camif_dev*, %struct.camif_dev** %7, align 8
  %76 = getelementptr inbounds %struct.camif_dev, %struct.camif_dev* %75, i32 0, i32 5
  %77 = load i32, i32* %76, align 8
  %78 = call i64 @IS_ERR(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %50
  %81 = load %struct.camif_dev*, %struct.camif_dev** %7, align 8
  %82 = getelementptr inbounds %struct.camif_dev, %struct.camif_dev* %81, i32 0, i32 5
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @PTR_ERR(i32 %83)
  store i32 %84, i32* %2, align 4
  br label %227

85:                                               ; preds = %50
  %86 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %87 = load %struct.camif_dev*, %struct.camif_dev** %7, align 8
  %88 = call i32 @camif_request_irqs(%struct.platform_device* %86, %struct.camif_dev* %87)
  store i32 %88, i32* %9, align 4
  %89 = load i32, i32* %9, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %85
  %92 = load i32, i32* %9, align 4
  store i32 %92, i32* %2, align 4
  br label %227

93:                                               ; preds = %85
  %94 = load %struct.s3c_camif_plat_data*, %struct.s3c_camif_plat_data** %5, align 8
  %95 = getelementptr inbounds %struct.s3c_camif_plat_data, %struct.s3c_camif_plat_data* %94, i32 0, i32 0
  %96 = load i32 (...)*, i32 (...)** %95, align 8
  %97 = call i32 (...) %96()
  store i32 %97, i32* %9, align 4
  %98 = load i32, i32* %9, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %93
  %101 = load i32, i32* %9, align 4
  store i32 %101, i32* %2, align 4
  br label %227

102:                                              ; preds = %93
  %103 = load %struct.camif_dev*, %struct.camif_dev** %7, align 8
  %104 = call i32 @s3c_camif_create_subdev(%struct.camif_dev* %103)
  store i32 %104, i32* %9, align 4
  %105 = load i32, i32* %9, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %102
  br label %221

108:                                              ; preds = %102
  %109 = load %struct.camif_dev*, %struct.camif_dev** %7, align 8
  %110 = call i32 @camif_clk_get(%struct.camif_dev* %109)
  store i32 %110, i32* %9, align 4
  %111 = load i32, i32* %9, align 4
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %108
  br label %218

114:                                              ; preds = %108
  %115 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %116 = load %struct.camif_dev*, %struct.camif_dev** %7, align 8
  %117 = call i32 @platform_set_drvdata(%struct.platform_device* %115, %struct.camif_dev* %116)
  %118 = load %struct.camif_dev*, %struct.camif_dev** %7, align 8
  %119 = getelementptr inbounds %struct.camif_dev, %struct.camif_dev* %118, i32 0, i32 3
  %120 = load i32*, i32** %119, align 8
  %121 = load i64, i64* @CLK_CAM, align 8
  %122 = getelementptr inbounds i32, i32* %120, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.camif_dev*, %struct.camif_dev** %7, align 8
  %125 = getelementptr inbounds %struct.camif_dev, %struct.camif_dev* %124, i32 0, i32 4
  %126 = getelementptr inbounds %struct.s3c_camif_plat_data, %struct.s3c_camif_plat_data* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @clk_set_rate(i32 %123, i32 %128)
  %130 = load %struct.device*, %struct.device** %4, align 8
  %131 = load %struct.camif_dev*, %struct.camif_dev** %7, align 8
  %132 = getelementptr inbounds %struct.camif_dev, %struct.camif_dev* %131, i32 0, i32 3
  %133 = load i32*, i32** %132, align 8
  %134 = load i64, i64* @CLK_CAM, align 8
  %135 = getelementptr inbounds i32, i32* %133, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @clk_get_rate(i32 %136)
  %138 = call i32 @dev_info(%struct.device* %130, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %137)
  %139 = load %struct.camif_dev*, %struct.camif_dev** %7, align 8
  %140 = call i32 @s3c_camif_set_defaults(%struct.camif_dev* %139)
  %141 = load %struct.device*, %struct.device** %4, align 8
  %142 = call i32 @pm_runtime_enable(%struct.device* %141)
  %143 = load %struct.device*, %struct.device** %4, align 8
  %144 = call i32 @pm_runtime_get_sync(%struct.device* %143)
  store i32 %144, i32* %9, align 4
  %145 = load i32, i32* %9, align 4
  %146 = icmp slt i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %114
  br label %215

148:                                              ; preds = %114
  %149 = load %struct.camif_dev*, %struct.camif_dev** %7, align 8
  %150 = call i32 @camif_media_dev_init(%struct.camif_dev* %149)
  store i32 %150, i32* %9, align 4
  %151 = load i32, i32* %9, align 4
  %152 = icmp slt i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %148
  br label %210

154:                                              ; preds = %148
  %155 = load %struct.camif_dev*, %struct.camif_dev** %7, align 8
  %156 = call i32 @camif_register_sensor(%struct.camif_dev* %155)
  store i32 %156, i32* %9, align 4
  %157 = load i32, i32* %9, align 4
  %158 = icmp slt i32 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %154
  br label %198

160:                                              ; preds = %154
  %161 = load %struct.camif_dev*, %struct.camif_dev** %7, align 8
  %162 = getelementptr inbounds %struct.camif_dev, %struct.camif_dev* %161, i32 0, i32 1
  %163 = load %struct.camif_dev*, %struct.camif_dev** %7, align 8
  %164 = getelementptr inbounds %struct.camif_dev, %struct.camif_dev* %163, i32 0, i32 2
  %165 = call i32 @v4l2_device_register_subdev(i32* %162, i32* %164)
  store i32 %165, i32* %9, align 4
  %166 = load i32, i32* %9, align 4
  %167 = icmp slt i32 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %160
  br label %198

169:                                              ; preds = %160
  %170 = load %struct.camif_dev*, %struct.camif_dev** %7, align 8
  %171 = getelementptr inbounds %struct.camif_dev, %struct.camif_dev* %170, i32 0, i32 1
  %172 = call i32 @v4l2_device_register_subdev_nodes(i32* %171)
  store i32 %172, i32* %9, align 4
  %173 = load i32, i32* %9, align 4
  %174 = icmp slt i32 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %169
  br label %198

176:                                              ; preds = %169
  %177 = load %struct.camif_dev*, %struct.camif_dev** %7, align 8
  %178 = call i32 @camif_register_video_nodes(%struct.camif_dev* %177)
  store i32 %178, i32* %9, align 4
  %179 = load i32, i32* %9, align 4
  %180 = icmp slt i32 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %176
  br label %198

182:                                              ; preds = %176
  %183 = load %struct.camif_dev*, %struct.camif_dev** %7, align 8
  %184 = call i32 @camif_create_media_links(%struct.camif_dev* %183)
  store i32 %184, i32* %9, align 4
  %185 = load i32, i32* %9, align 4
  %186 = icmp slt i32 %185, 0
  br i1 %186, label %187, label %188

187:                                              ; preds = %182
  br label %198

188:                                              ; preds = %182
  %189 = load %struct.camif_dev*, %struct.camif_dev** %7, align 8
  %190 = getelementptr inbounds %struct.camif_dev, %struct.camif_dev* %189, i32 0, i32 0
  %191 = call i32 @media_device_register(i32* %190)
  store i32 %191, i32* %9, align 4
  %192 = load i32, i32* %9, align 4
  %193 = icmp slt i32 %192, 0
  br i1 %193, label %194, label %195

194:                                              ; preds = %188
  br label %198

195:                                              ; preds = %188
  %196 = load %struct.device*, %struct.device** %4, align 8
  %197 = call i32 @pm_runtime_put(%struct.device* %196)
  store i32 0, i32* %2, align 4
  br label %227

198:                                              ; preds = %194, %187, %181, %175, %168, %159
  %199 = load %struct.camif_dev*, %struct.camif_dev** %7, align 8
  %200 = getelementptr inbounds %struct.camif_dev, %struct.camif_dev* %199, i32 0, i32 1
  %201 = call i32 @v4l2_device_unregister(i32* %200)
  %202 = load %struct.camif_dev*, %struct.camif_dev** %7, align 8
  %203 = getelementptr inbounds %struct.camif_dev, %struct.camif_dev* %202, i32 0, i32 0
  %204 = call i32 @media_device_unregister(i32* %203)
  %205 = load %struct.camif_dev*, %struct.camif_dev** %7, align 8
  %206 = getelementptr inbounds %struct.camif_dev, %struct.camif_dev* %205, i32 0, i32 0
  %207 = call i32 @media_device_cleanup(i32* %206)
  %208 = load %struct.camif_dev*, %struct.camif_dev** %7, align 8
  %209 = call i32 @camif_unregister_media_entities(%struct.camif_dev* %208)
  br label %210

210:                                              ; preds = %198, %153
  %211 = load %struct.device*, %struct.device** %4, align 8
  %212 = call i32 @pm_runtime_put(%struct.device* %211)
  %213 = load %struct.device*, %struct.device** %4, align 8
  %214 = call i32 @pm_runtime_disable(%struct.device* %213)
  br label %215

215:                                              ; preds = %210, %147
  %216 = load %struct.camif_dev*, %struct.camif_dev** %7, align 8
  %217 = call i32 @camif_clk_put(%struct.camif_dev* %216)
  br label %218

218:                                              ; preds = %215, %113
  %219 = load %struct.camif_dev*, %struct.camif_dev** %7, align 8
  %220 = call i32 @s3c_camif_unregister_subdev(%struct.camif_dev* %219)
  br label %221

221:                                              ; preds = %218, %107
  %222 = load %struct.s3c_camif_plat_data*, %struct.s3c_camif_plat_data** %5, align 8
  %223 = getelementptr inbounds %struct.s3c_camif_plat_data, %struct.s3c_camif_plat_data* %222, i32 0, i32 1
  %224 = load i32 (...)*, i32 (...)** %223, align 8
  %225 = call i32 (...) %224()
  %226 = load i32, i32* %9, align 4
  store i32 %226, i32* %2, align 4
  br label %227

227:                                              ; preds = %221, %195, %100, %91, %80, %45, %20
  %228 = load i32, i32* %2, align 4
  ret i32 %228
}

declare dso_local %struct.camif_dev* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.TYPE_4__* @platform_get_device_id(%struct.platform_device*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @camif_request_irqs(%struct.platform_device*, %struct.camif_dev*) #1

declare dso_local i32 @s3c_camif_create_subdev(%struct.camif_dev*) #1

declare dso_local i32 @camif_clk_get(%struct.camif_dev*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.camif_dev*) #1

declare dso_local i32 @clk_set_rate(i32, i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32) #1

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @s3c_camif_set_defaults(%struct.camif_dev*) #1

declare dso_local i32 @pm_runtime_enable(%struct.device*) #1

declare dso_local i32 @pm_runtime_get_sync(%struct.device*) #1

declare dso_local i32 @camif_media_dev_init(%struct.camif_dev*) #1

declare dso_local i32 @camif_register_sensor(%struct.camif_dev*) #1

declare dso_local i32 @v4l2_device_register_subdev(i32*, i32*) #1

declare dso_local i32 @v4l2_device_register_subdev_nodes(i32*) #1

declare dso_local i32 @camif_register_video_nodes(%struct.camif_dev*) #1

declare dso_local i32 @camif_create_media_links(%struct.camif_dev*) #1

declare dso_local i32 @media_device_register(i32*) #1

declare dso_local i32 @pm_runtime_put(%struct.device*) #1

declare dso_local i32 @v4l2_device_unregister(i32*) #1

declare dso_local i32 @media_device_unregister(i32*) #1

declare dso_local i32 @media_device_cleanup(i32*) #1

declare dso_local i32 @camif_unregister_media_entities(%struct.camif_dev*) #1

declare dso_local i32 @pm_runtime_disable(%struct.device*) #1

declare dso_local i32 @camif_clk_put(%struct.camif_dev*) #1

declare dso_local i32 @s3c_camif_unregister_subdev(%struct.camif_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
