; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_davinci_mdio.c_davinci_mdio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_davinci_mdio.c_davinci_mdio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdio_platform_data = type { i32 }
%struct.platform_device = type { i8*, i32, %struct.device }
%struct.device = type { i64 }
%struct.davinci_mdio_data = type { i32, %struct.TYPE_8__*, i32, %struct.device*, i32, %struct.mdio_platform_data }
%struct.TYPE_8__ = type { %struct.davinci_mdio_data*, %struct.device*, i32, i32, i32, i32, i32 }
%struct.resource = type { i32 }
%struct.phy_device = type { %struct.TYPE_7__*, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i8* }
%struct.TYPE_6__ = type { i32 }
%struct.of_device_id = type { %struct.davinci_mdio_of_param* }
%struct.davinci_mdio_of_param = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"failed to alloc mii bus\0A\00", align 1
@CONFIG_OF = common dso_local global i32 0, align 4
@MII_BUS_ID_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@davinci_mdio_of_mtable = common dso_local global i32 0, align 4
@default_pdata = common dso_local global %struct.mdio_platform_data zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"%s-%x\00", align 1
@davinci_mdio_read = common dso_local global i32 0, align 4
@davinci_mdio_write = common dso_local global i32 0, align 4
@davinci_mdio_reset = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"fck\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"failed to get device clock\0A\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@PHY_MAX_ADDR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"phy[%d]: device %s, driver %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @davinci_mdio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @davinci_mdio_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.mdio_platform_data*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.davinci_mdio_data*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca %struct.phy_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.of_device_id*, align 8
  %13 = alloca %struct.davinci_mdio_of_param*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 2
  %16 = call %struct.mdio_platform_data* @dev_get_platdata(%struct.device* %15)
  store %struct.mdio_platform_data* %16, %struct.mdio_platform_data** %4, align 8
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 2
  store %struct.device* %18, %struct.device** %5, align 8
  store i32 -1, i32* %11, align 4
  %19 = load %struct.device*, %struct.device** %5, align 8
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.davinci_mdio_data* @devm_kzalloc(%struct.device* %19, i32 40, i32 %20)
  store %struct.davinci_mdio_data* %21, %struct.davinci_mdio_data** %6, align 8
  %22 = load %struct.davinci_mdio_data*, %struct.davinci_mdio_data** %6, align 8
  %23 = icmp ne %struct.davinci_mdio_data* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %1
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %272

27:                                               ; preds = %1
  %28 = load %struct.device*, %struct.device** %5, align 8
  %29 = call %struct.TYPE_8__* @devm_mdiobus_alloc(%struct.device* %28)
  %30 = load %struct.davinci_mdio_data*, %struct.davinci_mdio_data** %6, align 8
  %31 = getelementptr inbounds %struct.davinci_mdio_data, %struct.davinci_mdio_data* %30, i32 0, i32 1
  store %struct.TYPE_8__* %29, %struct.TYPE_8__** %31, align 8
  %32 = load %struct.davinci_mdio_data*, %struct.davinci_mdio_data** %6, align 8
  %33 = getelementptr inbounds %struct.davinci_mdio_data, %struct.davinci_mdio_data* %32, i32 0, i32 1
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %33, align 8
  %35 = icmp ne %struct.TYPE_8__* %34, null
  br i1 %35, label %41, label %36

36:                                               ; preds = %27
  %37 = load %struct.device*, %struct.device** %5, align 8
  %38 = call i32 @dev_err(%struct.device* %37, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %272

41:                                               ; preds = %27
  %42 = load i32, i32* @CONFIG_OF, align 4
  %43 = call i64 @IS_ENABLED(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %88

45:                                               ; preds = %41
  %46 = load %struct.device*, %struct.device** %5, align 8
  %47 = getelementptr inbounds %struct.device, %struct.device* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %88

50:                                               ; preds = %45
  %51 = load %struct.davinci_mdio_data*, %struct.davinci_mdio_data** %6, align 8
  %52 = getelementptr inbounds %struct.davinci_mdio_data, %struct.davinci_mdio_data* %51, i32 0, i32 5
  %53 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %54 = call i32 @davinci_mdio_probe_dt(%struct.mdio_platform_data* %52, %struct.platform_device* %53)
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %50
  %58 = load i32, i32* %9, align 4
  store i32 %58, i32* %2, align 4
  br label %272

59:                                               ; preds = %50
  %60 = load %struct.davinci_mdio_data*, %struct.davinci_mdio_data** %6, align 8
  %61 = getelementptr inbounds %struct.davinci_mdio_data, %struct.davinci_mdio_data* %60, i32 0, i32 1
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 6
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @MII_BUS_ID_SIZE, align 4
  %66 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %67 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = call i32 (i32, i32, i8*, i8*, ...) @snprintf(i32 %64, i32 %65, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %68)
  %70 = load i32, i32* @davinci_mdio_of_mtable, align 4
  %71 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %72 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %71, i32 0, i32 2
  %73 = call %struct.of_device_id* @of_match_device(i32 %70, %struct.device* %72)
  store %struct.of_device_id* %73, %struct.of_device_id** %12, align 8
  %74 = load %struct.of_device_id*, %struct.of_device_id** %12, align 8
  %75 = icmp ne %struct.of_device_id* %74, null
  br i1 %75, label %76, label %87

76:                                               ; preds = %59
  %77 = load %struct.of_device_id*, %struct.of_device_id** %12, align 8
  %78 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %77, i32 0, i32 0
  %79 = load %struct.davinci_mdio_of_param*, %struct.davinci_mdio_of_param** %78, align 8
  store %struct.davinci_mdio_of_param* %79, %struct.davinci_mdio_of_param** %13, align 8
  %80 = load %struct.davinci_mdio_of_param*, %struct.davinci_mdio_of_param** %13, align 8
  %81 = icmp ne %struct.davinci_mdio_of_param* %80, null
  br i1 %81, label %82, label %86

82:                                               ; preds = %76
  %83 = load %struct.davinci_mdio_of_param*, %struct.davinci_mdio_of_param** %13, align 8
  %84 = getelementptr inbounds %struct.davinci_mdio_of_param, %struct.davinci_mdio_of_param* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* %11, align 4
  br label %86

86:                                               ; preds = %82, %76
  br label %87

87:                                               ; preds = %86, %59
  br label %113

88:                                               ; preds = %45, %41
  %89 = load %struct.davinci_mdio_data*, %struct.davinci_mdio_data** %6, align 8
  %90 = getelementptr inbounds %struct.davinci_mdio_data, %struct.davinci_mdio_data* %89, i32 0, i32 5
  %91 = load %struct.mdio_platform_data*, %struct.mdio_platform_data** %4, align 8
  %92 = icmp ne %struct.mdio_platform_data* %91, null
  br i1 %92, label %93, label %97

93:                                               ; preds = %88
  %94 = load %struct.mdio_platform_data*, %struct.mdio_platform_data** %4, align 8
  %95 = bitcast %struct.mdio_platform_data* %90 to i8*
  %96 = bitcast %struct.mdio_platform_data* %94 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %95, i8* align 4 %96, i64 4, i1 false)
  br label %99

97:                                               ; preds = %88
  %98 = bitcast %struct.mdio_platform_data* %90 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %98, i8* align 4 bitcast (%struct.mdio_platform_data* @default_pdata to i8*), i64 4, i1 false)
  br label %99

99:                                               ; preds = %97, %93
  %100 = load %struct.davinci_mdio_data*, %struct.davinci_mdio_data** %6, align 8
  %101 = getelementptr inbounds %struct.davinci_mdio_data, %struct.davinci_mdio_data* %100, i32 0, i32 1
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 6
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @MII_BUS_ID_SIZE, align 4
  %106 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %107 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %106, i32 0, i32 0
  %108 = load i8*, i8** %107, align 8
  %109 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %110 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = call i32 (i32, i32, i8*, i8*, ...) @snprintf(i32 %104, i32 %105, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %108, i32 %111)
  br label %113

113:                                              ; preds = %99, %87
  %114 = load %struct.device*, %struct.device** %5, align 8
  %115 = call i32 @dev_name(%struct.device* %114)
  %116 = load %struct.davinci_mdio_data*, %struct.davinci_mdio_data** %6, align 8
  %117 = getelementptr inbounds %struct.davinci_mdio_data, %struct.davinci_mdio_data* %116, i32 0, i32 1
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 5
  store i32 %115, i32* %119, align 4
  %120 = load i32, i32* @davinci_mdio_read, align 4
  %121 = load %struct.davinci_mdio_data*, %struct.davinci_mdio_data** %6, align 8
  %122 = getelementptr inbounds %struct.davinci_mdio_data, %struct.davinci_mdio_data* %121, i32 0, i32 1
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 4
  store i32 %120, i32* %124, align 8
  %125 = load i32, i32* @davinci_mdio_write, align 4
  %126 = load %struct.davinci_mdio_data*, %struct.davinci_mdio_data** %6, align 8
  %127 = getelementptr inbounds %struct.davinci_mdio_data, %struct.davinci_mdio_data* %126, i32 0, i32 1
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 3
  store i32 %125, i32* %129, align 4
  %130 = load i32, i32* @davinci_mdio_reset, align 4
  %131 = load %struct.davinci_mdio_data*, %struct.davinci_mdio_data** %6, align 8
  %132 = getelementptr inbounds %struct.davinci_mdio_data, %struct.davinci_mdio_data* %131, i32 0, i32 1
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 2
  store i32 %130, i32* %134, align 8
  %135 = load %struct.device*, %struct.device** %5, align 8
  %136 = load %struct.davinci_mdio_data*, %struct.davinci_mdio_data** %6, align 8
  %137 = getelementptr inbounds %struct.davinci_mdio_data, %struct.davinci_mdio_data* %136, i32 0, i32 1
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 1
  store %struct.device* %135, %struct.device** %139, align 8
  %140 = load %struct.davinci_mdio_data*, %struct.davinci_mdio_data** %6, align 8
  %141 = load %struct.davinci_mdio_data*, %struct.davinci_mdio_data** %6, align 8
  %142 = getelementptr inbounds %struct.davinci_mdio_data, %struct.davinci_mdio_data* %141, i32 0, i32 1
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 0
  store %struct.davinci_mdio_data* %140, %struct.davinci_mdio_data** %144, align 8
  %145 = load %struct.device*, %struct.device** %5, align 8
  %146 = call i32 @devm_clk_get(%struct.device* %145, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %147 = load %struct.davinci_mdio_data*, %struct.davinci_mdio_data** %6, align 8
  %148 = getelementptr inbounds %struct.davinci_mdio_data, %struct.davinci_mdio_data* %147, i32 0, i32 4
  store i32 %146, i32* %148, align 8
  %149 = load %struct.davinci_mdio_data*, %struct.davinci_mdio_data** %6, align 8
  %150 = getelementptr inbounds %struct.davinci_mdio_data, %struct.davinci_mdio_data* %149, i32 0, i32 4
  %151 = load i32, i32* %150, align 8
  %152 = call i64 @IS_ERR(i32 %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %161

154:                                              ; preds = %113
  %155 = load %struct.device*, %struct.device** %5, align 8
  %156 = call i32 @dev_err(%struct.device* %155, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %157 = load %struct.davinci_mdio_data*, %struct.davinci_mdio_data** %6, align 8
  %158 = getelementptr inbounds %struct.davinci_mdio_data, %struct.davinci_mdio_data* %157, i32 0, i32 4
  %159 = load i32, i32* %158, align 8
  %160 = call i32 @PTR_ERR(i32 %159)
  store i32 %160, i32* %2, align 4
  br label %272

161:                                              ; preds = %113
  %162 = load %struct.device*, %struct.device** %5, align 8
  %163 = load %struct.davinci_mdio_data*, %struct.davinci_mdio_data** %6, align 8
  %164 = call i32 @dev_set_drvdata(%struct.device* %162, %struct.davinci_mdio_data* %163)
  %165 = load %struct.device*, %struct.device** %5, align 8
  %166 = load %struct.davinci_mdio_data*, %struct.davinci_mdio_data** %6, align 8
  %167 = getelementptr inbounds %struct.davinci_mdio_data, %struct.davinci_mdio_data* %166, i32 0, i32 3
  store %struct.device* %165, %struct.device** %167, align 8
  %168 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %169 = load i32, i32* @IORESOURCE_MEM, align 4
  %170 = call %struct.resource* @platform_get_resource(%struct.platform_device* %168, i32 %169, i32 0)
  store %struct.resource* %170, %struct.resource** %7, align 8
  %171 = load %struct.device*, %struct.device** %5, align 8
  %172 = load %struct.resource*, %struct.resource** %7, align 8
  %173 = getelementptr inbounds %struct.resource, %struct.resource* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.resource*, %struct.resource** %7, align 8
  %176 = call i32 @resource_size(%struct.resource* %175)
  %177 = call i32 @devm_ioremap(%struct.device* %171, i32 %174, i32 %176)
  %178 = load %struct.davinci_mdio_data*, %struct.davinci_mdio_data** %6, align 8
  %179 = getelementptr inbounds %struct.davinci_mdio_data, %struct.davinci_mdio_data* %178, i32 0, i32 2
  store i32 %177, i32* %179, align 8
  %180 = load %struct.davinci_mdio_data*, %struct.davinci_mdio_data** %6, align 8
  %181 = getelementptr inbounds %struct.davinci_mdio_data, %struct.davinci_mdio_data* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 8
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %187, label %184

184:                                              ; preds = %161
  %185 = load i32, i32* @ENOMEM, align 4
  %186 = sub nsw i32 0, %185
  store i32 %186, i32* %2, align 4
  br label %272

187:                                              ; preds = %161
  %188 = load %struct.davinci_mdio_data*, %struct.davinci_mdio_data** %6, align 8
  %189 = call i32 @davinci_mdio_init_clk(%struct.davinci_mdio_data* %188)
  %190 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %191 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %190, i32 0, i32 2
  %192 = load i32, i32* %11, align 4
  %193 = call i32 @pm_runtime_set_autosuspend_delay(%struct.device* %191, i32 %192)
  %194 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %195 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %194, i32 0, i32 2
  %196 = call i32 @pm_runtime_use_autosuspend(%struct.device* %195)
  %197 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %198 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %197, i32 0, i32 2
  %199 = call i32 @pm_runtime_enable(%struct.device* %198)
  %200 = load %struct.device*, %struct.device** %5, align 8
  %201 = getelementptr inbounds %struct.device, %struct.device* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %213

204:                                              ; preds = %187
  %205 = load %struct.device*, %struct.device** %5, align 8
  %206 = getelementptr inbounds %struct.device, %struct.device* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = call i64 @of_get_child_count(i64 %207)
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %213

210:                                              ; preds = %204
  %211 = load %struct.davinci_mdio_data*, %struct.davinci_mdio_data** %6, align 8
  %212 = getelementptr inbounds %struct.davinci_mdio_data, %struct.davinci_mdio_data* %211, i32 0, i32 0
  store i32 1, i32* %212, align 8
  br label %213

213:                                              ; preds = %210, %204, %187
  %214 = load %struct.davinci_mdio_data*, %struct.davinci_mdio_data** %6, align 8
  %215 = getelementptr inbounds %struct.davinci_mdio_data, %struct.davinci_mdio_data* %214, i32 0, i32 1
  %216 = load %struct.TYPE_8__*, %struct.TYPE_8__** %215, align 8
  %217 = load %struct.device*, %struct.device** %5, align 8
  %218 = getelementptr inbounds %struct.device, %struct.device* %217, i32 0, i32 0
  %219 = load i64, i64* %218, align 8
  %220 = call i32 @of_mdiobus_register(%struct.TYPE_8__* %216, i64 %219)
  store i32 %220, i32* %9, align 4
  %221 = load i32, i32* %9, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %224

223:                                              ; preds = %213
  br label %264

224:                                              ; preds = %213
  store i32 0, i32* %10, align 4
  br label %225

225:                                              ; preds = %260, %224
  %226 = load i32, i32* %10, align 4
  %227 = load i32, i32* @PHY_MAX_ADDR, align 4
  %228 = icmp slt i32 %226, %227
  br i1 %228, label %229, label %263

229:                                              ; preds = %225
  %230 = load %struct.davinci_mdio_data*, %struct.davinci_mdio_data** %6, align 8
  %231 = getelementptr inbounds %struct.davinci_mdio_data, %struct.davinci_mdio_data* %230, i32 0, i32 1
  %232 = load %struct.TYPE_8__*, %struct.TYPE_8__** %231, align 8
  %233 = load i32, i32* %10, align 4
  %234 = call %struct.phy_device* @mdiobus_get_phy(%struct.TYPE_8__* %232, i32 %233)
  store %struct.phy_device* %234, %struct.phy_device** %8, align 8
  %235 = load %struct.phy_device*, %struct.phy_device** %8, align 8
  %236 = icmp ne %struct.phy_device* %235, null
  br i1 %236, label %237, label %259

237:                                              ; preds = %229
  %238 = load %struct.device*, %struct.device** %5, align 8
  %239 = load %struct.phy_device*, %struct.phy_device** %8, align 8
  %240 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %239, i32 0, i32 1
  %241 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  %243 = load %struct.phy_device*, %struct.phy_device** %8, align 8
  %244 = call i32 @phydev_name(%struct.phy_device* %243)
  %245 = load %struct.phy_device*, %struct.phy_device** %8, align 8
  %246 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %245, i32 0, i32 0
  %247 = load %struct.TYPE_7__*, %struct.TYPE_7__** %246, align 8
  %248 = icmp ne %struct.TYPE_7__* %247, null
  br i1 %248, label %249, label %255

249:                                              ; preds = %237
  %250 = load %struct.phy_device*, %struct.phy_device** %8, align 8
  %251 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %250, i32 0, i32 0
  %252 = load %struct.TYPE_7__*, %struct.TYPE_7__** %251, align 8
  %253 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %252, i32 0, i32 0
  %254 = load i8*, i8** %253, align 8
  br label %256

255:                                              ; preds = %237
  br label %256

256:                                              ; preds = %255, %249
  %257 = phi i8* [ %254, %249 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), %255 ]
  %258 = call i32 @dev_info(%struct.device* %238, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %242, i32 %244, i8* %257)
  br label %259

259:                                              ; preds = %256, %229
  br label %260

260:                                              ; preds = %259
  %261 = load i32, i32* %10, align 4
  %262 = add nsw i32 %261, 1
  store i32 %262, i32* %10, align 4
  br label %225

263:                                              ; preds = %225
  store i32 0, i32* %2, align 4
  br label %272

264:                                              ; preds = %223
  %265 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %266 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %265, i32 0, i32 2
  %267 = call i32 @pm_runtime_dont_use_autosuspend(%struct.device* %266)
  %268 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %269 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %268, i32 0, i32 2
  %270 = call i32 @pm_runtime_disable(%struct.device* %269)
  %271 = load i32, i32* %9, align 4
  store i32 %271, i32* %2, align 4
  br label %272

272:                                              ; preds = %264, %263, %184, %154, %57, %36, %24
  %273 = load i32, i32* %2, align 4
  ret i32 %273
}

declare dso_local %struct.mdio_platform_data* @dev_get_platdata(%struct.device*) #1

declare dso_local %struct.davinci_mdio_data* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.TYPE_8__* @devm_mdiobus_alloc(%struct.device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @davinci_mdio_probe_dt(%struct.mdio_platform_data*, %struct.platform_device*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, ...) #1

declare dso_local %struct.of_device_id* @of_match_device(i32, %struct.device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.davinci_mdio_data*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap(%struct.device*, i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @davinci_mdio_init_clk(%struct.davinci_mdio_data*) #1

declare dso_local i32 @pm_runtime_set_autosuspend_delay(%struct.device*, i32) #1

declare dso_local i32 @pm_runtime_use_autosuspend(%struct.device*) #1

declare dso_local i32 @pm_runtime_enable(%struct.device*) #1

declare dso_local i64 @of_get_child_count(i64) #1

declare dso_local i32 @of_mdiobus_register(%struct.TYPE_8__*, i64) #1

declare dso_local %struct.phy_device* @mdiobus_get_phy(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32, i32, i8*) #1

declare dso_local i32 @phydev_name(%struct.phy_device*) #1

declare dso_local i32 @pm_runtime_dont_use_autosuspend(%struct.device*) #1

declare dso_local i32 @pm_runtime_disable(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
