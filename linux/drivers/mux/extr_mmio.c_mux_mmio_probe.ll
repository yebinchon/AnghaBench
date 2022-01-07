; ModuleID = '/home/carl/AnghaBench/linux/drivers/mux/extr_mmio.c_mux_mmio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mux/extr_mmio.c_mux_mmio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32, %struct.device_node* }
%struct.device_node = type { i32 }
%struct.regmap_field = type { i32*, %struct.mux_control* }
%struct.mux_control = type { i32, i32 }
%struct.mux_chip = type { i32*, %struct.mux_control* }
%struct.regmap = type { i32*, %struct.mux_control* }
%struct.reg_field = type { i32, i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"mmio-mux\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"failed to get regmap: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"mux-reg-masks\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [47 x i8] c"mux-reg-masks property missing or invalid: %d\0A\00", align 1
@MUX_IDLE_AS_IS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [56 x i8] c"bitfield %d: failed to read mux-reg-masks property: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"bitfield %d: invalid mask 0x%x\0A\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"bitfield %d: failed allocate: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"idle-states\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"bitfield: %d: out of range idle state %d\0A\00", align 1
@mux_mmio_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mux_mmio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mux_mmio_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.regmap_field**, align 8
  %7 = alloca %struct.mux_chip*, align 8
  %8 = alloca %struct.regmap*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.mux_control*, align 8
  %13 = alloca %struct.reg_field, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca { i64, i32 }, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 0
  store %struct.device* %20, %struct.device** %4, align 8
  %21 = load %struct.device*, %struct.device** %4, align 8
  %22 = getelementptr inbounds %struct.device, %struct.device* %21, i32 0, i32 1
  %23 = load %struct.device_node*, %struct.device_node** %22, align 8
  store %struct.device_node* %23, %struct.device_node** %5, align 8
  %24 = load %struct.device_node*, %struct.device_node** %5, align 8
  %25 = call i64 @of_device_is_compatible(%struct.device_node* %24, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %1
  %28 = load %struct.device_node*, %struct.device_node** %5, align 8
  %29 = getelementptr inbounds %struct.device_node, %struct.device_node* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call %struct.regmap_field* @syscon_node_to_regmap(i32 %30)
  %32 = bitcast %struct.regmap_field* %31 to %struct.regmap*
  store %struct.regmap* %32, %struct.regmap** %8, align 8
  br label %48

33:                                               ; preds = %1
  %34 = load %struct.device*, %struct.device** %4, align 8
  %35 = getelementptr inbounds %struct.device, %struct.device* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i64 @dev_get_regmap(i32 %36, i32* null)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = inttoptr i64 %37 to %struct.regmap_field*
  br label %45

41:                                               ; preds = %33
  %42 = load i32, i32* @ENODEV, align 4
  %43 = sub nsw i32 0, %42
  %44 = call %struct.regmap_field* @ERR_PTR(i32 %43)
  br label %45

45:                                               ; preds = %41, %39
  %46 = phi %struct.regmap_field* [ %40, %39 ], [ %44, %41 ]
  %47 = bitcast %struct.regmap_field* %46 to %struct.regmap*
  store %struct.regmap* %47, %struct.regmap** %8, align 8
  br label %48

48:                                               ; preds = %45, %27
  %49 = load %struct.regmap*, %struct.regmap** %8, align 8
  %50 = bitcast %struct.regmap* %49 to %struct.regmap_field*
  %51 = call i64 @IS_ERR(%struct.regmap_field* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %48
  %54 = load %struct.regmap*, %struct.regmap** %8, align 8
  %55 = bitcast %struct.regmap* %54 to %struct.regmap_field*
  %56 = call i32 @PTR_ERR(%struct.regmap_field* %55)
  store i32 %56, i32* %10, align 4
  %57 = load %struct.device*, %struct.device** %4, align 8
  %58 = load i32, i32* %10, align 4
  %59 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %57, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* %10, align 4
  store i32 %60, i32* %2, align 4
  br label %244

61:                                               ; preds = %48
  %62 = load %struct.device_node*, %struct.device_node** %5, align 8
  %63 = call i32 @of_property_count_u32_elems(%struct.device_node* %62, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  store i32 %63, i32* %10, align 4
  %64 = load i32, i32* %10, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %61
  %67 = load i32, i32* %10, align 4
  %68 = srem i32 %67, 2
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %66, %61
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %10, align 4
  br label %73

73:                                               ; preds = %70, %66
  %74 = load i32, i32* %10, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %73
  %77 = load %struct.device*, %struct.device** %4, align 8
  %78 = load i32, i32* %10, align 4
  %79 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %77, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i32 %78)
  %80 = load i32, i32* %10, align 4
  store i32 %80, i32* %2, align 4
  br label %244

81:                                               ; preds = %73
  %82 = load i32, i32* %10, align 4
  %83 = sdiv i32 %82, 2
  store i32 %83, i32* %9, align 4
  %84 = load %struct.device*, %struct.device** %4, align 8
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* %9, align 4
  %87 = sext i32 %86 to i64
  %88 = mul i64 %87, 8
  %89 = trunc i64 %88 to i32
  %90 = call %struct.regmap_field* @devm_mux_chip_alloc(%struct.device* %84, i32 %85, i32 %89)
  %91 = bitcast %struct.regmap_field* %90 to %struct.mux_chip*
  store %struct.mux_chip* %91, %struct.mux_chip** %7, align 8
  %92 = load %struct.mux_chip*, %struct.mux_chip** %7, align 8
  %93 = bitcast %struct.mux_chip* %92 to %struct.regmap_field*
  %94 = call i64 @IS_ERR(%struct.regmap_field* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %81
  %97 = load %struct.mux_chip*, %struct.mux_chip** %7, align 8
  %98 = bitcast %struct.mux_chip* %97 to %struct.regmap_field*
  %99 = call i32 @PTR_ERR(%struct.regmap_field* %98)
  store i32 %99, i32* %2, align 4
  br label %244

100:                                              ; preds = %81
  %101 = load %struct.mux_chip*, %struct.mux_chip** %7, align 8
  %102 = bitcast %struct.mux_chip* %101 to %struct.regmap_field*
  %103 = call %struct.regmap_field** @mux_chip_priv(%struct.regmap_field* %102)
  store %struct.regmap_field** %103, %struct.regmap_field*** %6, align 8
  store i32 0, i32* %11, align 4
  br label %104

104:                                              ; preds = %234, %100
  %105 = load i32, i32* %11, align 4
  %106 = load i32, i32* %9, align 4
  %107 = icmp slt i32 %105, %106
  br i1 %107, label %108, label %237

108:                                              ; preds = %104
  %109 = load %struct.mux_chip*, %struct.mux_chip** %7, align 8
  %110 = getelementptr inbounds %struct.mux_chip, %struct.mux_chip* %109, i32 0, i32 1
  %111 = load %struct.mux_control*, %struct.mux_control** %110, align 8
  %112 = load i32, i32* %11, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.mux_control, %struct.mux_control* %111, i64 %113
  store %struct.mux_control* %114, %struct.mux_control** %12, align 8
  %115 = load i32, i32* @MUX_IDLE_AS_IS, align 4
  store i32 %115, i32* %14, align 4
  %116 = load %struct.device_node*, %struct.device_node** %5, align 8
  %117 = load i32, i32* %11, align 4
  %118 = mul nsw i32 2, %117
  %119 = call i32 @of_property_read_u32_index(%struct.device_node* %116, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %118, i32* %15)
  store i32 %119, i32* %10, align 4
  %120 = load i32, i32* %10, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %128, label %122

122:                                              ; preds = %108
  %123 = load %struct.device_node*, %struct.device_node** %5, align 8
  %124 = load i32, i32* %11, align 4
  %125 = mul nsw i32 2, %124
  %126 = add nsw i32 %125, 1
  %127 = call i32 @of_property_read_u32_index(%struct.device_node* %123, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %126, i32* %16)
  store i32 %127, i32* %10, align 4
  br label %128

128:                                              ; preds = %122, %108
  %129 = load i32, i32* %10, align 4
  %130 = icmp slt i32 %129, 0
  br i1 %130, label %131, label %137

131:                                              ; preds = %128
  %132 = load %struct.device*, %struct.device** %4, align 8
  %133 = load i32, i32* %11, align 4
  %134 = load i32, i32* %10, align 4
  %135 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %132, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.4, i64 0, i64 0), i32 %133, i32 %134)
  %136 = load i32, i32* %10, align 4
  store i32 %136, i32* %2, align 4
  br label %244

137:                                              ; preds = %128
  %138 = load i32, i32* %15, align 4
  %139 = getelementptr inbounds %struct.reg_field, %struct.reg_field* %13, i32 0, i32 0
  store i32 %138, i32* %139, align 4
  %140 = load i32, i32* %16, align 4
  %141 = call i32 @fls(i32 %140)
  %142 = sub nsw i32 %141, 1
  %143 = getelementptr inbounds %struct.reg_field, %struct.reg_field* %13, i32 0, i32 1
  store i32 %142, i32* %143, align 4
  %144 = load i32, i32* %16, align 4
  %145 = call i32 @ffs(i32 %144)
  %146 = sub nsw i32 %145, 1
  %147 = getelementptr inbounds %struct.reg_field, %struct.reg_field* %13, i32 0, i32 2
  store i32 %146, i32* %147, align 4
  %148 = load i32, i32* %16, align 4
  %149 = getelementptr inbounds %struct.reg_field, %struct.reg_field* %13, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = getelementptr inbounds %struct.reg_field, %struct.reg_field* %13, i32 0, i32 2
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @GENMASK(i32 %150, i32 %152)
  %154 = icmp ne i32 %148, %153
  br i1 %154, label %155, label %162

155:                                              ; preds = %137
  %156 = load %struct.device*, %struct.device** %4, align 8
  %157 = load i32, i32* %11, align 4
  %158 = load i32, i32* %16, align 4
  %159 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %156, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 %157, i32 %158)
  %160 = load i32, i32* @EINVAL, align 4
  %161 = sub nsw i32 0, %160
  store i32 %161, i32* %2, align 4
  br label %244

162:                                              ; preds = %137
  %163 = load %struct.device*, %struct.device** %4, align 8
  %164 = load %struct.regmap*, %struct.regmap** %8, align 8
  %165 = bitcast %struct.regmap* %164 to %struct.regmap_field*
  %166 = bitcast { i64, i32 }* %18 to i8*
  %167 = bitcast %struct.reg_field* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %166, i8* align 4 %167, i64 12, i1 false)
  %168 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %18, i32 0, i32 0
  %169 = load i64, i64* %168, align 4
  %170 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %18, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = call %struct.regmap_field* @devm_regmap_field_alloc(%struct.device* %163, %struct.regmap_field* %165, i64 %169, i32 %171)
  %173 = load %struct.regmap_field**, %struct.regmap_field*** %6, align 8
  %174 = load i32, i32* %11, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.regmap_field*, %struct.regmap_field** %173, i64 %175
  store %struct.regmap_field* %172, %struct.regmap_field** %176, align 8
  %177 = load %struct.regmap_field**, %struct.regmap_field*** %6, align 8
  %178 = load i32, i32* %11, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.regmap_field*, %struct.regmap_field** %177, i64 %179
  %181 = load %struct.regmap_field*, %struct.regmap_field** %180, align 8
  %182 = call i64 @IS_ERR(%struct.regmap_field* %181)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %196

184:                                              ; preds = %162
  %185 = load %struct.regmap_field**, %struct.regmap_field*** %6, align 8
  %186 = load i32, i32* %11, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.regmap_field*, %struct.regmap_field** %185, i64 %187
  %189 = load %struct.regmap_field*, %struct.regmap_field** %188, align 8
  %190 = call i32 @PTR_ERR(%struct.regmap_field* %189)
  store i32 %190, i32* %10, align 4
  %191 = load %struct.device*, %struct.device** %4, align 8
  %192 = load i32, i32* %11, align 4
  %193 = load i32, i32* %10, align 4
  %194 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %191, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i32 %192, i32 %193)
  %195 = load i32, i32* %10, align 4
  store i32 %195, i32* %2, align 4
  br label %244

196:                                              ; preds = %162
  %197 = getelementptr inbounds %struct.reg_field, %struct.reg_field* %13, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = add nsw i32 1, %198
  %200 = getelementptr inbounds %struct.reg_field, %struct.reg_field* %13, i32 0, i32 2
  %201 = load i32, i32* %200, align 4
  %202 = sub nsw i32 %199, %201
  store i32 %202, i32* %17, align 4
  %203 = load i32, i32* %17, align 4
  %204 = shl i32 1, %203
  %205 = load %struct.mux_control*, %struct.mux_control** %12, align 8
  %206 = getelementptr inbounds %struct.mux_control, %struct.mux_control* %205, i32 0, i32 0
  store i32 %204, i32* %206, align 4
  %207 = load %struct.device_node*, %struct.device_node** %5, align 8
  %208 = load i32, i32* %11, align 4
  %209 = call i32 @of_property_read_u32_index(%struct.device_node* %207, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i32 %208, i32* %14)
  %210 = load i32, i32* %14, align 4
  %211 = load i32, i32* @MUX_IDLE_AS_IS, align 4
  %212 = icmp ne i32 %210, %211
  br i1 %212, label %213, label %233

213:                                              ; preds = %196
  %214 = load i32, i32* %14, align 4
  %215 = icmp slt i32 %214, 0
  br i1 %215, label %222, label %216

216:                                              ; preds = %213
  %217 = load i32, i32* %14, align 4
  %218 = load %struct.mux_control*, %struct.mux_control** %12, align 8
  %219 = getelementptr inbounds %struct.mux_control, %struct.mux_control* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  %221 = icmp sge i32 %217, %220
  br i1 %221, label %222, label %229

222:                                              ; preds = %216, %213
  %223 = load %struct.device*, %struct.device** %4, align 8
  %224 = load i32, i32* %11, align 4
  %225 = load i32, i32* %14, align 4
  %226 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %223, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0), i32 %224, i32 %225)
  %227 = load i32, i32* @EINVAL, align 4
  %228 = sub nsw i32 0, %227
  store i32 %228, i32* %2, align 4
  br label %244

229:                                              ; preds = %216
  %230 = load i32, i32* %14, align 4
  %231 = load %struct.mux_control*, %struct.mux_control** %12, align 8
  %232 = getelementptr inbounds %struct.mux_control, %struct.mux_control* %231, i32 0, i32 1
  store i32 %230, i32* %232, align 4
  br label %233

233:                                              ; preds = %229, %196
  br label %234

234:                                              ; preds = %233
  %235 = load i32, i32* %11, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %11, align 4
  br label %104

237:                                              ; preds = %104
  %238 = load %struct.mux_chip*, %struct.mux_chip** %7, align 8
  %239 = getelementptr inbounds %struct.mux_chip, %struct.mux_chip* %238, i32 0, i32 0
  store i32* @mux_mmio_ops, i32** %239, align 8
  %240 = load %struct.device*, %struct.device** %4, align 8
  %241 = load %struct.mux_chip*, %struct.mux_chip** %7, align 8
  %242 = bitcast %struct.mux_chip* %241 to %struct.regmap_field*
  %243 = call i32 @devm_mux_chip_register(%struct.device* %240, %struct.regmap_field* %242)
  store i32 %243, i32* %2, align 4
  br label %244

244:                                              ; preds = %237, %222, %184, %155, %131, %96, %76, %53
  %245 = load i32, i32* %2, align 4
  ret i32 %245
}

declare dso_local i64 @of_device_is_compatible(%struct.device_node*, i8*) #1

declare dso_local %struct.regmap_field* @syscon_node_to_regmap(i32) #1

declare dso_local i64 @dev_get_regmap(i32, i32*) #1

declare dso_local %struct.regmap_field* @ERR_PTR(i32) #1

declare dso_local i64 @IS_ERR(%struct.regmap_field*) #1

declare dso_local i32 @PTR_ERR(%struct.regmap_field*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, ...) #1

declare dso_local i32 @of_property_count_u32_elems(%struct.device_node*, i8*) #1

declare dso_local %struct.regmap_field* @devm_mux_chip_alloc(%struct.device*, i32, i32) #1

declare dso_local %struct.regmap_field** @mux_chip_priv(%struct.regmap_field*) #1

declare dso_local i32 @of_property_read_u32_index(%struct.device_node*, i8*, i32, i32*) #1

declare dso_local i32 @fls(i32) #1

declare dso_local i32 @ffs(i32) #1

declare dso_local i32 @GENMASK(i32, i32) #1

declare dso_local %struct.regmap_field* @devm_regmap_field_alloc(%struct.device*, %struct.regmap_field*, i64, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @devm_mux_chip_register(%struct.device*, %struct.regmap_field*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
