; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/maps/extr_physmap-core.c_physmap_flash_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/maps/extr_physmap-core.c_physmap_flash_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i64 }
%struct.physmap_flash_info = type { i32, i32, i32, i32, %struct.TYPE_23__*, i32, %struct.TYPE_23__**, %struct.TYPE_22__*, i64, %struct.TYPE_20__*, i64 }
%struct.TYPE_23__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { %struct.TYPE_24__* }
%struct.TYPE_22__ = type { i64, i32, i32, i32, i32, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32 }
%struct.resource = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"addr\00", align 1
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"addr-gpios only supported for nmaps == 1\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"physmap platform flash device: %pR\0A\00", align 1
@rom_probe_types = common dso_local global i64* null, align 8
@.str.3 = private unnamed_addr constant [18 x i8] c"map_probe failed\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @physmap_flash_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @physmap_flash_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.physmap_flash_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.resource*, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store i32 0, i32* %5, align 4
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %22, label %14

14:                                               ; preds = %1
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = call i32 @dev_get_platdata(%struct.TYPE_24__* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %457

22:                                               ; preds = %14, %1
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 0
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call i8* @devm_kzalloc(%struct.TYPE_24__* %24, i32 72, i32 %25)
  %27 = bitcast i8* %26 to %struct.physmap_flash_info*
  store %struct.physmap_flash_info* %27, %struct.physmap_flash_info** %4, align 8
  %28 = load %struct.physmap_flash_info*, %struct.physmap_flash_info** %4, align 8
  %29 = icmp ne %struct.physmap_flash_info* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %22
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %457

33:                                               ; preds = %22
  br label %34

34:                                               ; preds = %42, %33
  %35 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %36 = load i32, i32* @IORESOURCE_MEM, align 4
  %37 = load %struct.physmap_flash_info*, %struct.physmap_flash_info** %4, align 8
  %38 = getelementptr inbounds %struct.physmap_flash_info, %struct.physmap_flash_info* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call %struct.resource* @platform_get_resource(%struct.platform_device* %35, i32 %36, i32 %39)
  %41 = icmp ne %struct.resource* %40, null
  br i1 %41, label %42, label %47

42:                                               ; preds = %34
  %43 = load %struct.physmap_flash_info*, %struct.physmap_flash_info** %4, align 8
  %44 = getelementptr inbounds %struct.physmap_flash_info, %struct.physmap_flash_info* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 8
  br label %34

47:                                               ; preds = %34
  %48 = load %struct.physmap_flash_info*, %struct.physmap_flash_info** %4, align 8
  %49 = getelementptr inbounds %struct.physmap_flash_info, %struct.physmap_flash_info* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %47
  %53 = load i32, i32* @ENODEV, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %2, align 4
  br label %457

55:                                               ; preds = %47
  %56 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %57 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %56, i32 0, i32 0
  %58 = load %struct.physmap_flash_info*, %struct.physmap_flash_info** %4, align 8
  %59 = getelementptr inbounds %struct.physmap_flash_info, %struct.physmap_flash_info* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = sext i32 %60 to i64
  %62 = mul i64 32, %61
  %63 = trunc i64 %62 to i32
  %64 = load i32, i32* @GFP_KERNEL, align 4
  %65 = call i8* @devm_kzalloc(%struct.TYPE_24__* %57, i32 %63, i32 %64)
  %66 = bitcast i8* %65 to %struct.TYPE_22__*
  %67 = load %struct.physmap_flash_info*, %struct.physmap_flash_info** %4, align 8
  %68 = getelementptr inbounds %struct.physmap_flash_info, %struct.physmap_flash_info* %67, i32 0, i32 7
  store %struct.TYPE_22__* %66, %struct.TYPE_22__** %68, align 8
  %69 = load %struct.physmap_flash_info*, %struct.physmap_flash_info** %4, align 8
  %70 = getelementptr inbounds %struct.physmap_flash_info, %struct.physmap_flash_info* %69, i32 0, i32 7
  %71 = load %struct.TYPE_22__*, %struct.TYPE_22__** %70, align 8
  %72 = icmp ne %struct.TYPE_22__* %71, null
  br i1 %72, label %76, label %73

73:                                               ; preds = %55
  %74 = load i32, i32* @ENOMEM, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %2, align 4
  br label %457

76:                                               ; preds = %55
  %77 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %78 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %77, i32 0, i32 0
  %79 = load %struct.physmap_flash_info*, %struct.physmap_flash_info** %4, align 8
  %80 = getelementptr inbounds %struct.physmap_flash_info, %struct.physmap_flash_info* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = sext i32 %81 to i64
  %83 = mul i64 8, %82
  %84 = trunc i64 %83 to i32
  %85 = load i32, i32* @GFP_KERNEL, align 4
  %86 = call i8* @devm_kzalloc(%struct.TYPE_24__* %78, i32 %84, i32 %85)
  %87 = bitcast i8* %86 to %struct.TYPE_23__**
  %88 = load %struct.physmap_flash_info*, %struct.physmap_flash_info** %4, align 8
  %89 = getelementptr inbounds %struct.physmap_flash_info, %struct.physmap_flash_info* %88, i32 0, i32 6
  store %struct.TYPE_23__** %87, %struct.TYPE_23__*** %89, align 8
  %90 = load %struct.physmap_flash_info*, %struct.physmap_flash_info** %4, align 8
  %91 = getelementptr inbounds %struct.physmap_flash_info, %struct.physmap_flash_info* %90, i32 0, i32 6
  %92 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %91, align 8
  %93 = icmp ne %struct.TYPE_23__** %92, null
  br i1 %93, label %97, label %94

94:                                               ; preds = %76
  %95 = load i32, i32* @ENOMEM, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %2, align 4
  br label %457

97:                                               ; preds = %76
  %98 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %99 = load %struct.physmap_flash_info*, %struct.physmap_flash_info** %4, align 8
  %100 = call i32 @platform_set_drvdata(%struct.platform_device* %98, %struct.physmap_flash_info* %99)
  %101 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %102 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %101, i32 0, i32 0
  %103 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %104 = call %struct.TYPE_20__* @devm_gpiod_get_array_optional(%struct.TYPE_24__* %102, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %103)
  %105 = load %struct.physmap_flash_info*, %struct.physmap_flash_info** %4, align 8
  %106 = getelementptr inbounds %struct.physmap_flash_info, %struct.physmap_flash_info* %105, i32 0, i32 9
  store %struct.TYPE_20__* %104, %struct.TYPE_20__** %106, align 8
  %107 = load %struct.physmap_flash_info*, %struct.physmap_flash_info** %4, align 8
  %108 = getelementptr inbounds %struct.physmap_flash_info, %struct.physmap_flash_info* %107, i32 0, i32 9
  %109 = load %struct.TYPE_20__*, %struct.TYPE_20__** %108, align 8
  %110 = call i64 @IS_ERR(%struct.TYPE_20__* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %97
  %113 = load %struct.physmap_flash_info*, %struct.physmap_flash_info** %4, align 8
  %114 = getelementptr inbounds %struct.physmap_flash_info, %struct.physmap_flash_info* %113, i32 0, i32 9
  %115 = load %struct.TYPE_20__*, %struct.TYPE_20__** %114, align 8
  %116 = call i32 @PTR_ERR(%struct.TYPE_20__* %115)
  store i32 %116, i32* %2, align 4
  br label %457

117:                                              ; preds = %97
  %118 = load %struct.physmap_flash_info*, %struct.physmap_flash_info** %4, align 8
  %119 = getelementptr inbounds %struct.physmap_flash_info, %struct.physmap_flash_info* %118, i32 0, i32 9
  %120 = load %struct.TYPE_20__*, %struct.TYPE_20__** %119, align 8
  %121 = icmp ne %struct.TYPE_20__* %120, null
  br i1 %121, label %122, label %133

122:                                              ; preds = %117
  %123 = load %struct.physmap_flash_info*, %struct.physmap_flash_info** %4, align 8
  %124 = getelementptr inbounds %struct.physmap_flash_info, %struct.physmap_flash_info* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = icmp sgt i32 %125, 1
  br i1 %126, label %127, label %133

127:                                              ; preds = %122
  %128 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %129 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %128, i32 0, i32 0
  %130 = call i32 @dev_err(%struct.TYPE_24__* %129, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %131 = load i32, i32* @EINVAL, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %2, align 4
  br label %457

133:                                              ; preds = %122, %117
  %134 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %135 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %133
  %140 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %141 = call i32 @physmap_flash_of_init(%struct.platform_device* %140)
  store i32 %141, i32* %5, align 4
  br label %145

142:                                              ; preds = %133
  %143 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %144 = call i32 @physmap_flash_pdata_init(%struct.platform_device* %143)
  store i32 %144, i32* %5, align 4
  br label %145

145:                                              ; preds = %142, %139
  %146 = load i32, i32* %5, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %145
  %149 = load i32, i32* %5, align 4
  store i32 %149, i32* %2, align 4
  br label %457

150:                                              ; preds = %145
  store i32 0, i32* %6, align 4
  br label %151

151:                                              ; preds = %383, %150
  %152 = load i32, i32* %6, align 4
  %153 = load %struct.physmap_flash_info*, %struct.physmap_flash_info** %4, align 8
  %154 = getelementptr inbounds %struct.physmap_flash_info, %struct.physmap_flash_info* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = icmp slt i32 %152, %155
  br i1 %156, label %157, label %386

157:                                              ; preds = %151
  %158 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %159 = load i32, i32* @IORESOURCE_MEM, align 4
  %160 = load i32, i32* %6, align 4
  %161 = call %struct.resource* @platform_get_resource(%struct.platform_device* %158, i32 %159, i32 %160)
  store %struct.resource* %161, %struct.resource** %7, align 8
  %162 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %163 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %162, i32 0, i32 0
  %164 = load %struct.resource*, %struct.resource** %7, align 8
  %165 = call %struct.TYPE_20__* @devm_ioremap_resource(%struct.TYPE_24__* %163, %struct.resource* %164)
  %166 = load %struct.physmap_flash_info*, %struct.physmap_flash_info** %4, align 8
  %167 = getelementptr inbounds %struct.physmap_flash_info, %struct.physmap_flash_info* %166, i32 0, i32 7
  %168 = load %struct.TYPE_22__*, %struct.TYPE_22__** %167, align 8
  %169 = load i32, i32* %6, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %168, i64 %170
  %172 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %171, i32 0, i32 5
  store %struct.TYPE_20__* %165, %struct.TYPE_20__** %172, align 8
  %173 = load %struct.physmap_flash_info*, %struct.physmap_flash_info** %4, align 8
  %174 = getelementptr inbounds %struct.physmap_flash_info, %struct.physmap_flash_info* %173, i32 0, i32 7
  %175 = load %struct.TYPE_22__*, %struct.TYPE_22__** %174, align 8
  %176 = load i32, i32* %6, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %175, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %178, i32 0, i32 5
  %180 = load %struct.TYPE_20__*, %struct.TYPE_20__** %179, align 8
  %181 = call i64 @IS_ERR(%struct.TYPE_20__* %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %193

183:                                              ; preds = %157
  %184 = load %struct.physmap_flash_info*, %struct.physmap_flash_info** %4, align 8
  %185 = getelementptr inbounds %struct.physmap_flash_info, %struct.physmap_flash_info* %184, i32 0, i32 7
  %186 = load %struct.TYPE_22__*, %struct.TYPE_22__** %185, align 8
  %187 = load i32, i32* %6, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %186, i64 %188
  %190 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %189, i32 0, i32 5
  %191 = load %struct.TYPE_20__*, %struct.TYPE_20__** %190, align 8
  %192 = call i32 @PTR_ERR(%struct.TYPE_20__* %191)
  store i32 %192, i32* %5, align 4
  br label %453

193:                                              ; preds = %157
  %194 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %195 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %194, i32 0, i32 0
  %196 = load %struct.resource*, %struct.resource** %7, align 8
  %197 = call i32 @dev_notice(%struct.TYPE_24__* %195, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), %struct.resource* %196)
  %198 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %199 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %198, i32 0, i32 0
  %200 = call i32 @dev_name(%struct.TYPE_24__* %199)
  %201 = load %struct.physmap_flash_info*, %struct.physmap_flash_info** %4, align 8
  %202 = getelementptr inbounds %struct.physmap_flash_info, %struct.physmap_flash_info* %201, i32 0, i32 7
  %203 = load %struct.TYPE_22__*, %struct.TYPE_22__** %202, align 8
  %204 = load i32, i32* %6, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %203, i64 %205
  %207 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %206, i32 0, i32 4
  store i32 %200, i32* %207, align 4
  %208 = load %struct.physmap_flash_info*, %struct.physmap_flash_info** %4, align 8
  %209 = getelementptr inbounds %struct.physmap_flash_info, %struct.physmap_flash_info* %208, i32 0, i32 7
  %210 = load %struct.TYPE_22__*, %struct.TYPE_22__** %209, align 8
  %211 = load i32, i32* %6, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %210, i64 %212
  %214 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %213, i32 0, i32 3
  %215 = load i32, i32* %214, align 8
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %228, label %217

217:                                              ; preds = %193
  %218 = load %struct.resource*, %struct.resource** %7, align 8
  %219 = getelementptr inbounds %struct.resource, %struct.resource* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  %221 = load %struct.physmap_flash_info*, %struct.physmap_flash_info** %4, align 8
  %222 = getelementptr inbounds %struct.physmap_flash_info, %struct.physmap_flash_info* %221, i32 0, i32 7
  %223 = load %struct.TYPE_22__*, %struct.TYPE_22__** %222, align 8
  %224 = load i32, i32* %6, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %223, i64 %225
  %227 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %226, i32 0, i32 3
  store i32 %220, i32* %227, align 8
  br label %228

228:                                              ; preds = %217, %193
  %229 = load %struct.resource*, %struct.resource** %7, align 8
  %230 = call i32 @resource_size(%struct.resource* %229)
  %231 = call i64 @get_bitmask_order(i32 %230)
  %232 = sub nsw i64 %231, 1
  %233 = load %struct.physmap_flash_info*, %struct.physmap_flash_info** %4, align 8
  %234 = getelementptr inbounds %struct.physmap_flash_info, %struct.physmap_flash_info* %233, i32 0, i32 10
  store i64 %232, i64* %234, align 8
  %235 = load %struct.physmap_flash_info*, %struct.physmap_flash_info** %4, align 8
  %236 = getelementptr inbounds %struct.physmap_flash_info, %struct.physmap_flash_info* %235, i32 0, i32 10
  %237 = load i64, i64* %236, align 8
  %238 = load %struct.physmap_flash_info*, %struct.physmap_flash_info** %4, align 8
  %239 = getelementptr inbounds %struct.physmap_flash_info, %struct.physmap_flash_info* %238, i32 0, i32 9
  %240 = load %struct.TYPE_20__*, %struct.TYPE_20__** %239, align 8
  %241 = icmp ne %struct.TYPE_20__* %240, null
  br i1 %241, label %242, label %248

242:                                              ; preds = %228
  %243 = load %struct.physmap_flash_info*, %struct.physmap_flash_info** %4, align 8
  %244 = getelementptr inbounds %struct.physmap_flash_info, %struct.physmap_flash_info* %243, i32 0, i32 9
  %245 = load %struct.TYPE_20__*, %struct.TYPE_20__** %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 4
  br label %249

248:                                              ; preds = %228
  br label %249

249:                                              ; preds = %248, %242
  %250 = phi i32 [ %247, %242 ], [ 0, %248 ]
  %251 = sext i32 %250 to i64
  %252 = add nsw i64 %237, %251
  %253 = call i32 @BIT(i64 %252)
  %254 = load %struct.physmap_flash_info*, %struct.physmap_flash_info** %4, align 8
  %255 = getelementptr inbounds %struct.physmap_flash_info, %struct.physmap_flash_info* %254, i32 0, i32 7
  %256 = load %struct.TYPE_22__*, %struct.TYPE_22__** %255, align 8
  %257 = load i32, i32* %6, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %256, i64 %258
  %260 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %259, i32 0, i32 2
  store i32 %253, i32* %260, align 4
  %261 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %262 = ptrtoint %struct.platform_device* %261 to i64
  %263 = load %struct.physmap_flash_info*, %struct.physmap_flash_info** %4, align 8
  %264 = getelementptr inbounds %struct.physmap_flash_info, %struct.physmap_flash_info* %263, i32 0, i32 7
  %265 = load %struct.TYPE_22__*, %struct.TYPE_22__** %264, align 8
  %266 = load i32, i32* %6, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %265, i64 %267
  %269 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %268, i32 0, i32 0
  store i64 %262, i64* %269, align 8
  %270 = load %struct.physmap_flash_info*, %struct.physmap_flash_info** %4, align 8
  %271 = getelementptr inbounds %struct.physmap_flash_info, %struct.physmap_flash_info* %270, i32 0, i32 9
  %272 = load %struct.TYPE_20__*, %struct.TYPE_20__** %271, align 8
  %273 = icmp ne %struct.TYPE_20__* %272, null
  br i1 %273, label %274, label %286

274:                                              ; preds = %249
  %275 = load %struct.physmap_flash_info*, %struct.physmap_flash_info** %4, align 8
  %276 = getelementptr inbounds %struct.physmap_flash_info, %struct.physmap_flash_info* %275, i32 0, i32 7
  %277 = load %struct.TYPE_22__*, %struct.TYPE_22__** %276, align 8
  %278 = load i32, i32* %6, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %277, i64 %279
  %281 = call i32 @physmap_addr_gpios_map_init(%struct.TYPE_22__* %280)
  store i32 %281, i32* %5, align 4
  %282 = load i32, i32* %5, align 4
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %285

284:                                              ; preds = %274
  br label %453

285:                                              ; preds = %274
  br label %286

286:                                              ; preds = %285, %249
  %287 = load %struct.physmap_flash_info*, %struct.physmap_flash_info** %4, align 8
  %288 = getelementptr inbounds %struct.physmap_flash_info, %struct.physmap_flash_info* %287, i32 0, i32 7
  %289 = load %struct.TYPE_22__*, %struct.TYPE_22__** %288, align 8
  %290 = load i32, i32* %6, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %289, i64 %291
  %293 = call i32 @simple_map_init(%struct.TYPE_22__* %292)
  %294 = load %struct.physmap_flash_info*, %struct.physmap_flash_info** %4, align 8
  %295 = getelementptr inbounds %struct.physmap_flash_info, %struct.physmap_flash_info* %294, i32 0, i32 8
  %296 = load i64, i64* %295, align 8
  %297 = icmp ne i64 %296, 0
  br i1 %297, label %298, label %316

298:                                              ; preds = %286
  %299 = load %struct.physmap_flash_info*, %struct.physmap_flash_info** %4, align 8
  %300 = getelementptr inbounds %struct.physmap_flash_info, %struct.physmap_flash_info* %299, i32 0, i32 8
  %301 = load i64, i64* %300, align 8
  %302 = load %struct.physmap_flash_info*, %struct.physmap_flash_info** %4, align 8
  %303 = getelementptr inbounds %struct.physmap_flash_info, %struct.physmap_flash_info* %302, i32 0, i32 7
  %304 = load %struct.TYPE_22__*, %struct.TYPE_22__** %303, align 8
  %305 = load i32, i32* %6, align 4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %304, i64 %306
  %308 = call i8* @do_map_probe(i64 %301, %struct.TYPE_22__* %307)
  %309 = bitcast i8* %308 to %struct.TYPE_23__*
  %310 = load %struct.physmap_flash_info*, %struct.physmap_flash_info** %4, align 8
  %311 = getelementptr inbounds %struct.physmap_flash_info, %struct.physmap_flash_info* %310, i32 0, i32 6
  %312 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %311, align 8
  %313 = load i32, i32* %6, align 4
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %312, i64 %314
  store %struct.TYPE_23__* %309, %struct.TYPE_23__** %315, align 8
  br label %356

316:                                              ; preds = %286
  store i32 0, i32* %8, align 4
  br label %317

317:                                              ; preds = %352, %316
  %318 = load i32, i32* %8, align 4
  %319 = load i64*, i64** @rom_probe_types, align 8
  %320 = call i32 @ARRAY_SIZE(i64* %319)
  %321 = icmp slt i32 %318, %320
  br i1 %321, label %322, label %355

322:                                              ; preds = %317
  %323 = load i64*, i64** @rom_probe_types, align 8
  %324 = load i32, i32* %8, align 4
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds i64, i64* %323, i64 %325
  %327 = load i64, i64* %326, align 8
  %328 = load %struct.physmap_flash_info*, %struct.physmap_flash_info** %4, align 8
  %329 = getelementptr inbounds %struct.physmap_flash_info, %struct.physmap_flash_info* %328, i32 0, i32 7
  %330 = load %struct.TYPE_22__*, %struct.TYPE_22__** %329, align 8
  %331 = load i32, i32* %6, align 4
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %330, i64 %332
  %334 = call i8* @do_map_probe(i64 %327, %struct.TYPE_22__* %333)
  %335 = bitcast i8* %334 to %struct.TYPE_23__*
  %336 = load %struct.physmap_flash_info*, %struct.physmap_flash_info** %4, align 8
  %337 = getelementptr inbounds %struct.physmap_flash_info, %struct.physmap_flash_info* %336, i32 0, i32 6
  %338 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %337, align 8
  %339 = load i32, i32* %6, align 4
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %338, i64 %340
  store %struct.TYPE_23__* %335, %struct.TYPE_23__** %341, align 8
  %342 = load %struct.physmap_flash_info*, %struct.physmap_flash_info** %4, align 8
  %343 = getelementptr inbounds %struct.physmap_flash_info, %struct.physmap_flash_info* %342, i32 0, i32 6
  %344 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %343, align 8
  %345 = load i32, i32* %6, align 4
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %344, i64 %346
  %348 = load %struct.TYPE_23__*, %struct.TYPE_23__** %347, align 8
  %349 = icmp ne %struct.TYPE_23__* %348, null
  br i1 %349, label %350, label %351

350:                                              ; preds = %322
  br label %355

351:                                              ; preds = %322
  br label %352

352:                                              ; preds = %351
  %353 = load i32, i32* %8, align 4
  %354 = add nsw i32 %353, 1
  store i32 %354, i32* %8, align 4
  br label %317

355:                                              ; preds = %350, %317
  br label %356

356:                                              ; preds = %355, %298
  %357 = load %struct.physmap_flash_info*, %struct.physmap_flash_info** %4, align 8
  %358 = getelementptr inbounds %struct.physmap_flash_info, %struct.physmap_flash_info* %357, i32 0, i32 6
  %359 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %358, align 8
  %360 = load i32, i32* %6, align 4
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %359, i64 %361
  %363 = load %struct.TYPE_23__*, %struct.TYPE_23__** %362, align 8
  %364 = icmp ne %struct.TYPE_23__* %363, null
  br i1 %364, label %371, label %365

365:                                              ; preds = %356
  %366 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %367 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %366, i32 0, i32 0
  %368 = call i32 @dev_err(%struct.TYPE_24__* %367, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %369 = load i32, i32* @ENXIO, align 4
  %370 = sub nsw i32 0, %369
  store i32 %370, i32* %5, align 4
  br label %453

371:                                              ; preds = %356
  %372 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %373 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %372, i32 0, i32 0
  %374 = load %struct.physmap_flash_info*, %struct.physmap_flash_info** %4, align 8
  %375 = getelementptr inbounds %struct.physmap_flash_info, %struct.physmap_flash_info* %374, i32 0, i32 6
  %376 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %375, align 8
  %377 = load i32, i32* %6, align 4
  %378 = sext i32 %377 to i64
  %379 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %376, i64 %378
  %380 = load %struct.TYPE_23__*, %struct.TYPE_23__** %379, align 8
  %381 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %380, i32 0, i32 0
  %382 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %381, i32 0, i32 0
  store %struct.TYPE_24__* %373, %struct.TYPE_24__** %382, align 8
  br label %383

383:                                              ; preds = %371
  %384 = load i32, i32* %6, align 4
  %385 = add nsw i32 %384, 1
  store i32 %385, i32* %6, align 4
  br label %151

386:                                              ; preds = %151
  %387 = load %struct.physmap_flash_info*, %struct.physmap_flash_info** %4, align 8
  %388 = getelementptr inbounds %struct.physmap_flash_info, %struct.physmap_flash_info* %387, i32 0, i32 0
  %389 = load i32, i32* %388, align 8
  %390 = icmp eq i32 %389, 1
  br i1 %390, label %391, label %399

391:                                              ; preds = %386
  %392 = load %struct.physmap_flash_info*, %struct.physmap_flash_info** %4, align 8
  %393 = getelementptr inbounds %struct.physmap_flash_info, %struct.physmap_flash_info* %392, i32 0, i32 6
  %394 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %393, align 8
  %395 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %394, i64 0
  %396 = load %struct.TYPE_23__*, %struct.TYPE_23__** %395, align 8
  %397 = load %struct.physmap_flash_info*, %struct.physmap_flash_info** %4, align 8
  %398 = getelementptr inbounds %struct.physmap_flash_info, %struct.physmap_flash_info* %397, i32 0, i32 4
  store %struct.TYPE_23__* %396, %struct.TYPE_23__** %398, align 8
  br label %420

399:                                              ; preds = %386
  %400 = load %struct.physmap_flash_info*, %struct.physmap_flash_info** %4, align 8
  %401 = getelementptr inbounds %struct.physmap_flash_info, %struct.physmap_flash_info* %400, i32 0, i32 6
  %402 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %401, align 8
  %403 = load %struct.physmap_flash_info*, %struct.physmap_flash_info** %4, align 8
  %404 = getelementptr inbounds %struct.physmap_flash_info, %struct.physmap_flash_info* %403, i32 0, i32 0
  %405 = load i32, i32* %404, align 8
  %406 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %407 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %406, i32 0, i32 0
  %408 = call i32 @dev_name(%struct.TYPE_24__* %407)
  %409 = call %struct.TYPE_23__* @mtd_concat_create(%struct.TYPE_23__** %402, i32 %405, i32 %408)
  %410 = load %struct.physmap_flash_info*, %struct.physmap_flash_info** %4, align 8
  %411 = getelementptr inbounds %struct.physmap_flash_info, %struct.physmap_flash_info* %410, i32 0, i32 4
  store %struct.TYPE_23__* %409, %struct.TYPE_23__** %411, align 8
  %412 = load %struct.physmap_flash_info*, %struct.physmap_flash_info** %4, align 8
  %413 = getelementptr inbounds %struct.physmap_flash_info, %struct.physmap_flash_info* %412, i32 0, i32 4
  %414 = load %struct.TYPE_23__*, %struct.TYPE_23__** %413, align 8
  %415 = icmp ne %struct.TYPE_23__* %414, null
  br i1 %415, label %419, label %416

416:                                              ; preds = %399
  %417 = load i32, i32* @ENXIO, align 4
  %418 = sub nsw i32 0, %417
  store i32 %418, i32* %5, align 4
  br label %419

419:                                              ; preds = %416, %399
  br label %420

420:                                              ; preds = %419, %391
  %421 = load i32, i32* %5, align 4
  %422 = icmp ne i32 %421, 0
  br i1 %422, label %423, label %424

423:                                              ; preds = %420
  br label %453

424:                                              ; preds = %420
  %425 = load %struct.physmap_flash_info*, %struct.physmap_flash_info** %4, align 8
  %426 = getelementptr inbounds %struct.physmap_flash_info, %struct.physmap_flash_info* %425, i32 0, i32 5
  %427 = call i32 @spin_lock_init(i32* %426)
  %428 = load %struct.physmap_flash_info*, %struct.physmap_flash_info** %4, align 8
  %429 = getelementptr inbounds %struct.physmap_flash_info, %struct.physmap_flash_info* %428, i32 0, i32 4
  %430 = load %struct.TYPE_23__*, %struct.TYPE_23__** %429, align 8
  %431 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %432 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %431, i32 0, i32 0
  %433 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %432, i32 0, i32 0
  %434 = load i64, i64* %433, align 8
  %435 = call i32 @mtd_set_of_node(%struct.TYPE_23__* %430, i64 %434)
  %436 = load %struct.physmap_flash_info*, %struct.physmap_flash_info** %4, align 8
  %437 = getelementptr inbounds %struct.physmap_flash_info, %struct.physmap_flash_info* %436, i32 0, i32 4
  %438 = load %struct.TYPE_23__*, %struct.TYPE_23__** %437, align 8
  %439 = load %struct.physmap_flash_info*, %struct.physmap_flash_info** %4, align 8
  %440 = getelementptr inbounds %struct.physmap_flash_info, %struct.physmap_flash_info* %439, i32 0, i32 3
  %441 = load i32, i32* %440, align 4
  %442 = load %struct.physmap_flash_info*, %struct.physmap_flash_info** %4, align 8
  %443 = getelementptr inbounds %struct.physmap_flash_info, %struct.physmap_flash_info* %442, i32 0, i32 2
  %444 = load i32, i32* %443, align 8
  %445 = load %struct.physmap_flash_info*, %struct.physmap_flash_info** %4, align 8
  %446 = getelementptr inbounds %struct.physmap_flash_info, %struct.physmap_flash_info* %445, i32 0, i32 1
  %447 = load i32, i32* %446, align 4
  %448 = call i32 @mtd_device_parse_register(%struct.TYPE_23__* %438, i32 %441, i32* null, i32 %444, i32 %447)
  store i32 %448, i32* %5, align 4
  %449 = load i32, i32* %5, align 4
  %450 = icmp ne i32 %449, 0
  br i1 %450, label %451, label %452

451:                                              ; preds = %424
  br label %453

452:                                              ; preds = %424
  store i32 0, i32* %2, align 4
  br label %457

453:                                              ; preds = %451, %423, %365, %284, %183
  %454 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %455 = call i32 @physmap_flash_remove(%struct.platform_device* %454)
  %456 = load i32, i32* %5, align 4
  store i32 %456, i32* %2, align 4
  br label %457

457:                                              ; preds = %453, %452, %148, %127, %112, %94, %73, %52, %30, %19
  %458 = load i32, i32* %2, align 4
  ret i32 %458
}

declare dso_local i32 @dev_get_platdata(%struct.TYPE_24__*) #1

declare dso_local i8* @devm_kzalloc(%struct.TYPE_24__*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.physmap_flash_info*) #1

declare dso_local %struct.TYPE_20__* @devm_gpiod_get_array_optional(%struct.TYPE_24__*, i8*, i32) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_20__*) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_20__*) #1

declare dso_local i32 @dev_err(%struct.TYPE_24__*, i8*) #1

declare dso_local i32 @physmap_flash_of_init(%struct.platform_device*) #1

declare dso_local i32 @physmap_flash_pdata_init(%struct.platform_device*) #1

declare dso_local %struct.TYPE_20__* @devm_ioremap_resource(%struct.TYPE_24__*, %struct.resource*) #1

declare dso_local i32 @dev_notice(%struct.TYPE_24__*, i8*, %struct.resource*) #1

declare dso_local i32 @dev_name(%struct.TYPE_24__*) #1

declare dso_local i64 @get_bitmask_order(i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @BIT(i64) #1

declare dso_local i32 @physmap_addr_gpios_map_init(%struct.TYPE_22__*) #1

declare dso_local i32 @simple_map_init(%struct.TYPE_22__*) #1

declare dso_local i8* @do_map_probe(i64, %struct.TYPE_22__*) #1

declare dso_local i32 @ARRAY_SIZE(i64*) #1

declare dso_local %struct.TYPE_23__* @mtd_concat_create(%struct.TYPE_23__**, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mtd_set_of_node(%struct.TYPE_23__*, i64) #1

declare dso_local i32 @mtd_device_parse_register(%struct.TYPE_23__*, i32, i32*, i32, i32) #1

declare dso_local i32 @physmap_flash_remove(%struct.platform_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
