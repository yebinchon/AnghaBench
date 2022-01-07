; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/softing/extr_softing_main.c_softing_pdev_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/softing/extr_softing_main.c_softing_pdev_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.softing_platform_data = type { i32, i32, i32 }
%struct.softing = type { i32, %struct.net_device**, %struct.softing_platform_data*, %struct.platform_device*, %struct.TYPE_10__, %struct.TYPE_9__, i32, i32, i32, %struct.TYPE_8__ }
%struct.net_device = type { i32 }
%struct.TYPE_10__ = type { i32*, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.softing_priv = type { i32 }
%struct.resource = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"no platform data\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"%u nets??\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"dpram ioremap failed\0A\00", align 1
@IORESOURCE_IRQ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"failed to boot\0A\00", align 1
@softing_pdev_group = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"sysfs failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"failed to make can[%i]\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"failed to register can[%i]\0A\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"%s ready.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @softing_pdev_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @softing_pdev_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.softing_platform_data*, align 8
  %5 = alloca %struct.softing*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.softing_priv*, align 8
  %8 = alloca %struct.resource*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = call %struct.softing_platform_data* @dev_get_platdata(%struct.TYPE_11__* %12)
  store %struct.softing_platform_data* %13, %struct.softing_platform_data** %4, align 8
  %14 = load %struct.softing_platform_data*, %struct.softing_platform_data** %4, align 8
  %15 = icmp ne %struct.softing_platform_data* %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %1
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  %19 = call i32 (%struct.TYPE_11__*, i8*, ...) @dev_warn(%struct.TYPE_11__* %18, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %276

22:                                               ; preds = %1
  %23 = load %struct.softing_platform_data*, %struct.softing_platform_data** %4, align 8
  %24 = getelementptr inbounds %struct.softing_platform_data, %struct.softing_platform_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.softing*, %struct.softing** %5, align 8
  %27 = getelementptr inbounds %struct.softing, %struct.softing* %26, i32 0, i32 1
  %28 = load %struct.net_device**, %struct.net_device*** %27, align 8
  %29 = call i32 @ARRAY_SIZE(%struct.net_device** %28)
  %30 = icmp sgt i32 %25, %29
  br i1 %30, label %31, label %40

31:                                               ; preds = %22
  %32 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %33 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %32, i32 0, i32 0
  %34 = load %struct.softing_platform_data*, %struct.softing_platform_data** %4, align 8
  %35 = getelementptr inbounds %struct.softing_platform_data, %struct.softing_platform_data* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 (%struct.TYPE_11__*, i8*, ...) @dev_warn(%struct.TYPE_11__* %33, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %276

40:                                               ; preds = %22
  %41 = load i32, i32* @GFP_KERNEL, align 4
  %42 = call %struct.softing* @kzalloc(i32 72, i32 %41)
  store %struct.softing* %42, %struct.softing** %5, align 8
  %43 = load %struct.softing*, %struct.softing** %5, align 8
  %44 = icmp ne %struct.softing* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %40
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %2, align 4
  br label %276

48:                                               ; preds = %40
  %49 = load %struct.softing_platform_data*, %struct.softing_platform_data** %4, align 8
  %50 = load %struct.softing*, %struct.softing** %5, align 8
  %51 = getelementptr inbounds %struct.softing, %struct.softing* %50, i32 0, i32 2
  store %struct.softing_platform_data* %49, %struct.softing_platform_data** %51, align 8
  %52 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %53 = load %struct.softing*, %struct.softing** %5, align 8
  %54 = getelementptr inbounds %struct.softing, %struct.softing* %53, i32 0, i32 3
  store %struct.platform_device* %52, %struct.platform_device** %54, align 8
  %55 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %56 = load %struct.softing*, %struct.softing** %5, align 8
  %57 = call i32 @platform_set_drvdata(%struct.platform_device* %55, %struct.softing* %56)
  %58 = load %struct.softing*, %struct.softing** %5, align 8
  %59 = getelementptr inbounds %struct.softing, %struct.softing* %58, i32 0, i32 9
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = call i32 @mutex_init(i32* %60)
  %62 = load %struct.softing*, %struct.softing** %5, align 8
  %63 = getelementptr inbounds %struct.softing, %struct.softing* %62, i32 0, i32 8
  %64 = call i32 @spin_lock_init(i32* %63)
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %9, align 4
  %67 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %68 = load i32, i32* @IORESOURCE_MEM, align 4
  %69 = call %struct.resource* @platform_get_resource(%struct.platform_device* %67, i32 %68, i32 0)
  store %struct.resource* %69, %struct.resource** %8, align 8
  %70 = load %struct.resource*, %struct.resource** %8, align 8
  %71 = icmp ne %struct.resource* %70, null
  br i1 %71, label %73, label %72

72:                                               ; preds = %48
  br label %272

73:                                               ; preds = %48
  %74 = load %struct.resource*, %struct.resource** %8, align 8
  %75 = getelementptr inbounds %struct.resource, %struct.resource* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.softing*, %struct.softing** %5, align 8
  %78 = getelementptr inbounds %struct.softing, %struct.softing* %77, i32 0, i32 7
  store i32 %76, i32* %78, align 8
  %79 = load %struct.resource*, %struct.resource** %8, align 8
  %80 = call i32 @resource_size(%struct.resource* %79)
  %81 = load %struct.softing*, %struct.softing** %5, align 8
  %82 = getelementptr inbounds %struct.softing, %struct.softing* %81, i32 0, i32 6
  store i32 %80, i32* %82, align 4
  %83 = load %struct.softing*, %struct.softing** %5, align 8
  %84 = getelementptr inbounds %struct.softing, %struct.softing* %83, i32 0, i32 7
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.softing*, %struct.softing** %5, align 8
  %87 = getelementptr inbounds %struct.softing, %struct.softing* %86, i32 0, i32 6
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @ioremap_nocache(i32 %85, i32 %88)
  %90 = load %struct.softing*, %struct.softing** %5, align 8
  %91 = getelementptr inbounds %struct.softing, %struct.softing* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 8
  %92 = load %struct.softing*, %struct.softing** %5, align 8
  %93 = getelementptr inbounds %struct.softing, %struct.softing* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %102, label %96

96:                                               ; preds = %73
  %97 = load %struct.softing*, %struct.softing** %5, align 8
  %98 = getelementptr inbounds %struct.softing, %struct.softing* %97, i32 0, i32 3
  %99 = load %struct.platform_device*, %struct.platform_device** %98, align 8
  %100 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %99, i32 0, i32 0
  %101 = call i32 (%struct.TYPE_11__*, i8*, ...) @dev_alert(%struct.TYPE_11__* %100, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %271

102:                                              ; preds = %73
  %103 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %104 = load i32, i32* @IORESOURCE_IRQ, align 4
  %105 = call %struct.resource* @platform_get_resource(%struct.platform_device* %103, i32 %104, i32 0)
  store %struct.resource* %105, %struct.resource** %8, align 8
  %106 = load %struct.resource*, %struct.resource** %8, align 8
  %107 = icmp ne %struct.resource* %106, null
  br i1 %107, label %108, label %115

108:                                              ; preds = %102
  %109 = load %struct.resource*, %struct.resource** %8, align 8
  %110 = getelementptr inbounds %struct.resource, %struct.resource* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.softing*, %struct.softing** %5, align 8
  %113 = getelementptr inbounds %struct.softing, %struct.softing* %112, i32 0, i32 5
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 0
  store i32 %111, i32* %114, align 8
  br label %115

115:                                              ; preds = %108, %102
  %116 = load %struct.softing*, %struct.softing** %5, align 8
  %117 = call i32 @softing_card_boot(%struct.softing* %116)
  store i32 %117, i32* %9, align 4
  %118 = load i32, i32* %9, align 4
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %115
  %121 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %122 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %121, i32 0, i32 0
  %123 = call i32 (%struct.TYPE_11__*, i8*, ...) @dev_alert(%struct.TYPE_11__* %122, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  br label %266

124:                                              ; preds = %115
  %125 = load %struct.softing*, %struct.softing** %5, align 8
  %126 = getelementptr inbounds %struct.softing, %struct.softing* %125, i32 0, i32 2
  %127 = load %struct.softing_platform_data*, %struct.softing_platform_data** %126, align 8
  %128 = getelementptr inbounds %struct.softing_platform_data, %struct.softing_platform_data* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.softing*, %struct.softing** %5, align 8
  %131 = getelementptr inbounds %struct.softing, %struct.softing* %130, i32 0, i32 4
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 1
  store i32 %129, i32* %132, align 8
  %133 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %134 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 0
  %136 = call i32 @sysfs_create_group(i32* %135, i32* @softing_pdev_group)
  store i32 %136, i32* %9, align 4
  %137 = load i32, i32* %9, align 4
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %139, label %145

139:                                              ; preds = %124
  %140 = load %struct.softing*, %struct.softing** %5, align 8
  %141 = getelementptr inbounds %struct.softing, %struct.softing* %140, i32 0, i32 3
  %142 = load %struct.platform_device*, %struct.platform_device** %141, align 8
  %143 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %142, i32 0, i32 0
  %144 = call i32 (%struct.TYPE_11__*, i8*, ...) @dev_alert(%struct.TYPE_11__* %143, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  br label %263

145:                                              ; preds = %124
  store i32 0, i32* %10, align 4
  br label %146

146:                                              ; preds = %214, %145
  %147 = load i32, i32* %10, align 4
  %148 = load %struct.softing*, %struct.softing** %5, align 8
  %149 = getelementptr inbounds %struct.softing, %struct.softing* %148, i32 0, i32 1
  %150 = load %struct.net_device**, %struct.net_device*** %149, align 8
  %151 = call i32 @ARRAY_SIZE(%struct.net_device** %150)
  %152 = icmp slt i32 %147, %151
  br i1 %152, label %153, label %217

153:                                              ; preds = %146
  %154 = load %struct.softing*, %struct.softing** %5, align 8
  %155 = load %struct.softing*, %struct.softing** %5, align 8
  %156 = getelementptr inbounds %struct.softing, %struct.softing* %155, i32 0, i32 4
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 0
  %158 = load i32*, i32** %157, align 8
  %159 = load i32, i32* %10, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %158, i64 %160
  %162 = load i32, i32* %161, align 4
  %163 = call %struct.net_device* @softing_netdev_create(%struct.softing* %154, i32 %162)
  store %struct.net_device* %163, %struct.net_device** %6, align 8
  %164 = load %struct.softing*, %struct.softing** %5, align 8
  %165 = getelementptr inbounds %struct.softing, %struct.softing* %164, i32 0, i32 1
  %166 = load %struct.net_device**, %struct.net_device*** %165, align 8
  %167 = load i32, i32* %10, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.net_device*, %struct.net_device** %166, i64 %168
  store %struct.net_device* %163, %struct.net_device** %169, align 8
  %170 = load %struct.net_device*, %struct.net_device** %6, align 8
  %171 = icmp ne %struct.net_device* %170, null
  br i1 %171, label %179, label %172

172:                                              ; preds = %153
  %173 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %174 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %173, i32 0, i32 0
  %175 = load i32, i32* %10, align 4
  %176 = call i32 (%struct.TYPE_11__*, i8*, ...) @dev_alert(%struct.TYPE_11__* %174, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 %175)
  %177 = load i32, i32* @ENOMEM, align 4
  %178 = sub nsw i32 0, %177
  store i32 %178, i32* %9, align 4
  br label %228

179:                                              ; preds = %153
  %180 = load i32, i32* %10, align 4
  %181 = load %struct.net_device*, %struct.net_device** %6, align 8
  %182 = getelementptr inbounds %struct.net_device, %struct.net_device* %181, i32 0, i32 0
  store i32 %180, i32* %182, align 4
  %183 = load %struct.softing*, %struct.softing** %5, align 8
  %184 = getelementptr inbounds %struct.softing, %struct.softing* %183, i32 0, i32 1
  %185 = load %struct.net_device**, %struct.net_device*** %184, align 8
  %186 = load i32, i32* %10, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.net_device*, %struct.net_device** %185, i64 %187
  %189 = load %struct.net_device*, %struct.net_device** %188, align 8
  %190 = call %struct.softing_priv* @netdev_priv(%struct.net_device* %189)
  store %struct.softing_priv* %190, %struct.softing_priv** %7, align 8
  %191 = load i32, i32* %10, align 4
  %192 = load %struct.softing_priv*, %struct.softing_priv** %7, align 8
  %193 = getelementptr inbounds %struct.softing_priv, %struct.softing_priv* %192, i32 0, i32 0
  store i32 %191, i32* %193, align 4
  %194 = load %struct.net_device*, %struct.net_device** %6, align 8
  %195 = call i32 @softing_netdev_register(%struct.net_device* %194)
  store i32 %195, i32* %9, align 4
  %196 = load i32, i32* %9, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %213

198:                                              ; preds = %179
  %199 = load %struct.net_device*, %struct.net_device** %6, align 8
  %200 = call i32 @free_candev(%struct.net_device* %199)
  %201 = load %struct.softing*, %struct.softing** %5, align 8
  %202 = getelementptr inbounds %struct.softing, %struct.softing* %201, i32 0, i32 1
  %203 = load %struct.net_device**, %struct.net_device*** %202, align 8
  %204 = load i32, i32* %10, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds %struct.net_device*, %struct.net_device** %203, i64 %205
  store %struct.net_device* null, %struct.net_device** %206, align 8
  %207 = load %struct.softing*, %struct.softing** %5, align 8
  %208 = getelementptr inbounds %struct.softing, %struct.softing* %207, i32 0, i32 3
  %209 = load %struct.platform_device*, %struct.platform_device** %208, align 8
  %210 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %209, i32 0, i32 0
  %211 = load i32, i32* %10, align 4
  %212 = call i32 (%struct.TYPE_11__*, i8*, ...) @dev_alert(%struct.TYPE_11__* %210, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i32 %211)
  br label %228

213:                                              ; preds = %179
  br label %214

214:                                              ; preds = %213
  %215 = load i32, i32* %10, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %10, align 4
  br label %146

217:                                              ; preds = %146
  %218 = load %struct.softing*, %struct.softing** %5, align 8
  %219 = getelementptr inbounds %struct.softing, %struct.softing* %218, i32 0, i32 3
  %220 = load %struct.platform_device*, %struct.platform_device** %219, align 8
  %221 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %220, i32 0, i32 0
  %222 = load %struct.softing*, %struct.softing** %5, align 8
  %223 = getelementptr inbounds %struct.softing, %struct.softing* %222, i32 0, i32 2
  %224 = load %struct.softing_platform_data*, %struct.softing_platform_data** %223, align 8
  %225 = getelementptr inbounds %struct.softing_platform_data, %struct.softing_platform_data* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 4
  %227 = call i32 @dev_info(%struct.TYPE_11__* %221, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i32 %226)
  store i32 0, i32* %2, align 4
  br label %276

228:                                              ; preds = %198, %172
  store i32 0, i32* %10, align 4
  br label %229

229:                                              ; preds = %255, %228
  %230 = load i32, i32* %10, align 4
  %231 = load %struct.softing*, %struct.softing** %5, align 8
  %232 = getelementptr inbounds %struct.softing, %struct.softing* %231, i32 0, i32 1
  %233 = load %struct.net_device**, %struct.net_device*** %232, align 8
  %234 = call i32 @ARRAY_SIZE(%struct.net_device** %233)
  %235 = icmp slt i32 %230, %234
  br i1 %235, label %236, label %258

236:                                              ; preds = %229
  %237 = load %struct.softing*, %struct.softing** %5, align 8
  %238 = getelementptr inbounds %struct.softing, %struct.softing* %237, i32 0, i32 1
  %239 = load %struct.net_device**, %struct.net_device*** %238, align 8
  %240 = load i32, i32* %10, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds %struct.net_device*, %struct.net_device** %239, i64 %241
  %243 = load %struct.net_device*, %struct.net_device** %242, align 8
  %244 = icmp ne %struct.net_device* %243, null
  br i1 %244, label %246, label %245

245:                                              ; preds = %236
  br label %255

246:                                              ; preds = %236
  %247 = load %struct.softing*, %struct.softing** %5, align 8
  %248 = getelementptr inbounds %struct.softing, %struct.softing* %247, i32 0, i32 1
  %249 = load %struct.net_device**, %struct.net_device*** %248, align 8
  %250 = load i32, i32* %10, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds %struct.net_device*, %struct.net_device** %249, i64 %251
  %253 = load %struct.net_device*, %struct.net_device** %252, align 8
  %254 = call i32 @softing_netdev_cleanup(%struct.net_device* %253)
  br label %255

255:                                              ; preds = %246, %245
  %256 = load i32, i32* %10, align 4
  %257 = add nsw i32 %256, 1
  store i32 %257, i32* %10, align 4
  br label %229

258:                                              ; preds = %229
  %259 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %260 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %259, i32 0, i32 0
  %261 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %260, i32 0, i32 0
  %262 = call i32 @sysfs_remove_group(i32* %261, i32* @softing_pdev_group)
  br label %263

263:                                              ; preds = %258, %139
  %264 = load %struct.softing*, %struct.softing** %5, align 8
  %265 = call i32 @softing_card_shutdown(%struct.softing* %264)
  br label %266

266:                                              ; preds = %263, %120
  %267 = load %struct.softing*, %struct.softing** %5, align 8
  %268 = getelementptr inbounds %struct.softing, %struct.softing* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  %270 = call i32 @iounmap(i32 %269)
  br label %271

271:                                              ; preds = %266, %96
  br label %272

272:                                              ; preds = %271, %72
  %273 = load %struct.softing*, %struct.softing** %5, align 8
  %274 = call i32 @kfree(%struct.softing* %273)
  %275 = load i32, i32* %9, align 4
  store i32 %275, i32* %2, align 4
  br label %276

276:                                              ; preds = %272, %217, %45, %31, %16
  %277 = load i32, i32* %2, align 4
  ret i32 %277
}

declare dso_local %struct.softing_platform_data* @dev_get_platdata(%struct.TYPE_11__*) #1

declare dso_local i32 @dev_warn(%struct.TYPE_11__*, i8*, ...) #1

declare dso_local i32 @ARRAY_SIZE(%struct.net_device**) #1

declare dso_local %struct.softing* @kzalloc(i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.softing*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @ioremap_nocache(i32, i32) #1

declare dso_local i32 @dev_alert(%struct.TYPE_11__*, i8*, ...) #1

declare dso_local i32 @softing_card_boot(%struct.softing*) #1

declare dso_local i32 @sysfs_create_group(i32*, i32*) #1

declare dso_local %struct.net_device* @softing_netdev_create(%struct.softing*, i32) #1

declare dso_local %struct.softing_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @softing_netdev_register(%struct.net_device*) #1

declare dso_local i32 @free_candev(%struct.net_device*) #1

declare dso_local i32 @dev_info(%struct.TYPE_11__*, i8*, i32) #1

declare dso_local i32 @softing_netdev_cleanup(%struct.net_device*) #1

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

declare dso_local i32 @softing_card_shutdown(%struct.softing*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @kfree(%struct.softing*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
