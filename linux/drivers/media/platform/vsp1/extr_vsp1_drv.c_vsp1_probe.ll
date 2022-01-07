; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_drv.c_vsp1_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_drv.c_vsp1_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.platform_device = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }
%struct.vsp1_device = type { i32, %struct.TYPE_14__*, %struct.TYPE_15__*, %struct.TYPE_15__*, i32, i32, i32, i32 }
%struct.device_node = type { i32 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@IORESOURCE_IRQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"missing IRQ\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@vsp1_irq_handler = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"failed to request IRQ\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"renesas,fcp\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"FCP not found (%ld)\0A\00", align 1
@VI6_IP_VERSION = common dso_local global i32 0, align 4
@vsp1_device_infos = common dso_local global %struct.TYPE_14__* null, align 8
@VI6_IP_VERSION_MODEL_MASK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"unsupported IP version 0x%08x\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [19 x i8] c"IP version 0x%08x\0A\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"failed to create entities\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @vsp1_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vsp1_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.vsp1_device*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.vsp1_device* @devm_kzalloc(%struct.TYPE_15__* %11, i32 48, i32 %12)
  store %struct.vsp1_device* %13, %struct.vsp1_device** %4, align 8
  %14 = load %struct.vsp1_device*, %struct.vsp1_device** %4, align 8
  %15 = icmp eq %struct.vsp1_device* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %216

19:                                               ; preds = %1
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  %22 = load %struct.vsp1_device*, %struct.vsp1_device** %4, align 8
  %23 = getelementptr inbounds %struct.vsp1_device, %struct.vsp1_device* %22, i32 0, i32 2
  store %struct.TYPE_15__* %21, %struct.TYPE_15__** %23, align 8
  %24 = load %struct.vsp1_device*, %struct.vsp1_device** %4, align 8
  %25 = getelementptr inbounds %struct.vsp1_device, %struct.vsp1_device* %24, i32 0, i32 7
  %26 = call i32 @INIT_LIST_HEAD(i32* %25)
  %27 = load %struct.vsp1_device*, %struct.vsp1_device** %4, align 8
  %28 = getelementptr inbounds %struct.vsp1_device, %struct.vsp1_device* %27, i32 0, i32 6
  %29 = call i32 @INIT_LIST_HEAD(i32* %28)
  %30 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %31 = load %struct.vsp1_device*, %struct.vsp1_device** %4, align 8
  %32 = call i32 @platform_set_drvdata(%struct.platform_device* %30, %struct.vsp1_device* %31)
  %33 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %34 = load i32, i32* @IORESOURCE_MEM, align 4
  %35 = call %struct.resource* @platform_get_resource(%struct.platform_device* %33, i32 %34, i32 0)
  store %struct.resource* %35, %struct.resource** %7, align 8
  %36 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %37 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %36, i32 0, i32 0
  %38 = load %struct.resource*, %struct.resource** %7, align 8
  %39 = call i32 @devm_ioremap_resource(%struct.TYPE_15__* %37, %struct.resource* %38)
  %40 = load %struct.vsp1_device*, %struct.vsp1_device** %4, align 8
  %41 = getelementptr inbounds %struct.vsp1_device, %struct.vsp1_device* %40, i32 0, i32 5
  store i32 %39, i32* %41, align 4
  %42 = load %struct.vsp1_device*, %struct.vsp1_device** %4, align 8
  %43 = getelementptr inbounds %struct.vsp1_device, %struct.vsp1_device* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @IS_ERR(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %19
  %48 = load %struct.vsp1_device*, %struct.vsp1_device** %4, align 8
  %49 = getelementptr inbounds %struct.vsp1_device, %struct.vsp1_device* %48, i32 0, i32 5
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @PTR_ERR(i32 %50)
  store i32 %51, i32* %2, align 4
  br label %216

52:                                               ; preds = %19
  %53 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %54 = load i32, i32* @IORESOURCE_IRQ, align 4
  %55 = call %struct.resource* @platform_get_resource(%struct.platform_device* %53, i32 %54, i32 0)
  store %struct.resource* %55, %struct.resource** %6, align 8
  %56 = load %struct.resource*, %struct.resource** %6, align 8
  %57 = icmp ne %struct.resource* %56, null
  br i1 %57, label %64, label %58

58:                                               ; preds = %52
  %59 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %60 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %59, i32 0, i32 0
  %61 = call i32 (%struct.TYPE_15__*, i8*, ...) @dev_err(%struct.TYPE_15__* %60, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %2, align 4
  br label %216

64:                                               ; preds = %52
  %65 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %66 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %65, i32 0, i32 0
  %67 = load %struct.resource*, %struct.resource** %6, align 8
  %68 = getelementptr inbounds %struct.resource, %struct.resource* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @vsp1_irq_handler, align 4
  %71 = load i32, i32* @IRQF_SHARED, align 4
  %72 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %73 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %72, i32 0, i32 0
  %74 = call i32 @dev_name(%struct.TYPE_15__* %73)
  %75 = load %struct.vsp1_device*, %struct.vsp1_device** %4, align 8
  %76 = call i32 @devm_request_irq(%struct.TYPE_15__* %66, i32 %69, i32 %70, i32 %71, i32 %74, %struct.vsp1_device* %75)
  store i32 %76, i32* %9, align 4
  %77 = load i32, i32* %9, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %64
  %80 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %81 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %80, i32 0, i32 0
  %82 = call i32 (%struct.TYPE_15__*, i8*, ...) @dev_err(%struct.TYPE_15__* %81, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %83 = load i32, i32* %9, align 4
  store i32 %83, i32* %2, align 4
  br label %216

84:                                               ; preds = %64
  %85 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %86 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call %struct.device_node* @of_parse_phandle(i32 %88, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 0)
  store %struct.device_node* %89, %struct.device_node** %5, align 8
  %90 = load %struct.device_node*, %struct.device_node** %5, align 8
  %91 = icmp ne %struct.device_node* %90, null
  br i1 %91, label %92, label %123

92:                                               ; preds = %84
  %93 = load %struct.device_node*, %struct.device_node** %5, align 8
  %94 = call i32 @rcar_fcp_get(%struct.device_node* %93)
  %95 = load %struct.vsp1_device*, %struct.vsp1_device** %4, align 8
  %96 = getelementptr inbounds %struct.vsp1_device, %struct.vsp1_device* %95, i32 0, i32 4
  store i32 %94, i32* %96, align 8
  %97 = load %struct.device_node*, %struct.device_node** %5, align 8
  %98 = call i32 @of_node_put(%struct.device_node* %97)
  %99 = load %struct.vsp1_device*, %struct.vsp1_device** %4, align 8
  %100 = getelementptr inbounds %struct.vsp1_device, %struct.vsp1_device* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 8
  %102 = call i64 @IS_ERR(i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %116

104:                                              ; preds = %92
  %105 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %106 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %105, i32 0, i32 0
  %107 = load %struct.vsp1_device*, %struct.vsp1_device** %4, align 8
  %108 = getelementptr inbounds %struct.vsp1_device, %struct.vsp1_device* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @PTR_ERR(i32 %109)
  %111 = call i32 @dev_dbg(%struct.TYPE_15__* %106, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %110)
  %112 = load %struct.vsp1_device*, %struct.vsp1_device** %4, align 8
  %113 = getelementptr inbounds %struct.vsp1_device, %struct.vsp1_device* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @PTR_ERR(i32 %114)
  store i32 %115, i32* %2, align 4
  br label %216

116:                                              ; preds = %92
  %117 = load %struct.vsp1_device*, %struct.vsp1_device** %4, align 8
  %118 = getelementptr inbounds %struct.vsp1_device, %struct.vsp1_device* %117, i32 0, i32 4
  %119 = load i32, i32* %118, align 8
  %120 = call %struct.TYPE_15__* @rcar_fcp_get_device(i32 %119)
  %121 = load %struct.vsp1_device*, %struct.vsp1_device** %4, align 8
  %122 = getelementptr inbounds %struct.vsp1_device, %struct.vsp1_device* %121, i32 0, i32 3
  store %struct.TYPE_15__* %120, %struct.TYPE_15__** %122, align 8
  br label %129

123:                                              ; preds = %84
  %124 = load %struct.vsp1_device*, %struct.vsp1_device** %4, align 8
  %125 = getelementptr inbounds %struct.vsp1_device, %struct.vsp1_device* %124, i32 0, i32 2
  %126 = load %struct.TYPE_15__*, %struct.TYPE_15__** %125, align 8
  %127 = load %struct.vsp1_device*, %struct.vsp1_device** %4, align 8
  %128 = getelementptr inbounds %struct.vsp1_device, %struct.vsp1_device* %127, i32 0, i32 3
  store %struct.TYPE_15__* %126, %struct.TYPE_15__** %128, align 8
  br label %129

129:                                              ; preds = %123, %116
  %130 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %131 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %130, i32 0, i32 0
  %132 = call i32 @pm_runtime_enable(%struct.TYPE_15__* %131)
  %133 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %134 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %133, i32 0, i32 0
  %135 = call i32 @pm_runtime_get_sync(%struct.TYPE_15__* %134)
  store i32 %135, i32* %9, align 4
  %136 = load i32, i32* %9, align 4
  %137 = icmp slt i32 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %129
  br label %207

139:                                              ; preds = %129
  %140 = load %struct.vsp1_device*, %struct.vsp1_device** %4, align 8
  %141 = load i32, i32* @VI6_IP_VERSION, align 4
  %142 = call i32 @vsp1_read(%struct.vsp1_device* %140, i32 %141)
  %143 = load %struct.vsp1_device*, %struct.vsp1_device** %4, align 8
  %144 = getelementptr inbounds %struct.vsp1_device, %struct.vsp1_device* %143, i32 0, i32 0
  store i32 %142, i32* %144, align 8
  %145 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %146 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %145, i32 0, i32 0
  %147 = call i32 @pm_runtime_put_sync(%struct.TYPE_15__* %146)
  store i32 0, i32* %8, align 4
  br label %148

148:                                              ; preds = %174, %139
  %149 = load i32, i32* %8, align 4
  %150 = load %struct.TYPE_14__*, %struct.TYPE_14__** @vsp1_device_infos, align 8
  %151 = call i32 @ARRAY_SIZE(%struct.TYPE_14__* %150)
  %152 = icmp ult i32 %149, %151
  br i1 %152, label %153, label %177

153:                                              ; preds = %148
  %154 = load %struct.vsp1_device*, %struct.vsp1_device** %4, align 8
  %155 = getelementptr inbounds %struct.vsp1_device, %struct.vsp1_device* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* @VI6_IP_VERSION_MODEL_MASK, align 4
  %158 = and i32 %156, %157
  %159 = load %struct.TYPE_14__*, %struct.TYPE_14__** @vsp1_device_infos, align 8
  %160 = load i32, i32* %8, align 4
  %161 = zext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %159, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = icmp eq i32 %158, %164
  br i1 %165, label %166, label %173

166:                                              ; preds = %153
  %167 = load %struct.TYPE_14__*, %struct.TYPE_14__** @vsp1_device_infos, align 8
  %168 = load i32, i32* %8, align 4
  %169 = zext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %167, i64 %169
  %171 = load %struct.vsp1_device*, %struct.vsp1_device** %4, align 8
  %172 = getelementptr inbounds %struct.vsp1_device, %struct.vsp1_device* %171, i32 0, i32 1
  store %struct.TYPE_14__* %170, %struct.TYPE_14__** %172, align 8
  br label %177

173:                                              ; preds = %153
  br label %174

174:                                              ; preds = %173
  %175 = load i32, i32* %8, align 4
  %176 = add i32 %175, 1
  store i32 %176, i32* %8, align 4
  br label %148

177:                                              ; preds = %166, %148
  %178 = load %struct.vsp1_device*, %struct.vsp1_device** %4, align 8
  %179 = getelementptr inbounds %struct.vsp1_device, %struct.vsp1_device* %178, i32 0, i32 1
  %180 = load %struct.TYPE_14__*, %struct.TYPE_14__** %179, align 8
  %181 = icmp ne %struct.TYPE_14__* %180, null
  br i1 %181, label %191, label %182

182:                                              ; preds = %177
  %183 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %184 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %183, i32 0, i32 0
  %185 = load %struct.vsp1_device*, %struct.vsp1_device** %4, align 8
  %186 = getelementptr inbounds %struct.vsp1_device, %struct.vsp1_device* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = call i32 (%struct.TYPE_15__*, i8*, ...) @dev_err(%struct.TYPE_15__* %184, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %187)
  %189 = load i32, i32* @ENXIO, align 4
  %190 = sub nsw i32 0, %189
  store i32 %190, i32* %9, align 4
  br label %207

191:                                              ; preds = %177
  %192 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %193 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %192, i32 0, i32 0
  %194 = load %struct.vsp1_device*, %struct.vsp1_device** %4, align 8
  %195 = getelementptr inbounds %struct.vsp1_device, %struct.vsp1_device* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = call i32 @dev_dbg(%struct.TYPE_15__* %193, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32 %196)
  %198 = load %struct.vsp1_device*, %struct.vsp1_device** %4, align 8
  %199 = call i32 @vsp1_create_entities(%struct.vsp1_device* %198)
  store i32 %199, i32* %9, align 4
  %200 = load i32, i32* %9, align 4
  %201 = icmp slt i32 %200, 0
  br i1 %201, label %202, label %206

202:                                              ; preds = %191
  %203 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %204 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %203, i32 0, i32 0
  %205 = call i32 (%struct.TYPE_15__*, i8*, ...) @dev_err(%struct.TYPE_15__* %204, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0))
  br label %207

206:                                              ; preds = %191
  br label %207

207:                                              ; preds = %206, %202, %182, %138
  %208 = load i32, i32* %9, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %214

210:                                              ; preds = %207
  %211 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %212 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %211, i32 0, i32 0
  %213 = call i32 @pm_runtime_disable(%struct.TYPE_15__* %212)
  br label %214

214:                                              ; preds = %210, %207
  %215 = load i32, i32* %9, align 4
  store i32 %215, i32* %2, align 4
  br label %216

216:                                              ; preds = %214, %104, %79, %58, %47, %16
  %217 = load i32, i32* %2, align 4
  ret i32 %217
}

declare dso_local %struct.vsp1_device* @devm_kzalloc(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.vsp1_device*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.TYPE_15__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_15__*, i8*, ...) #1

declare dso_local i32 @devm_request_irq(%struct.TYPE_15__*, i32, i32, i32, i32, %struct.vsp1_device*) #1

declare dso_local i32 @dev_name(%struct.TYPE_15__*) #1

declare dso_local %struct.device_node* @of_parse_phandle(i32, i8*, i32) #1

declare dso_local i32 @rcar_fcp_get(%struct.device_node*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_15__*, i8*, i32) #1

declare dso_local %struct.TYPE_15__* @rcar_fcp_get_device(i32) #1

declare dso_local i32 @pm_runtime_enable(%struct.TYPE_15__*) #1

declare dso_local i32 @pm_runtime_get_sync(%struct.TYPE_15__*) #1

declare dso_local i32 @vsp1_read(%struct.vsp1_device*, i32) #1

declare dso_local i32 @pm_runtime_put_sync(%struct.TYPE_15__*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_14__*) #1

declare dso_local i32 @vsp1_create_entities(%struct.vsp1_device*) #1

declare dso_local i32 @pm_runtime_disable(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
