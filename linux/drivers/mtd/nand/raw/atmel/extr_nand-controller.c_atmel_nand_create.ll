; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/atmel/extr_nand-controller.c_atmel_nand_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/atmel/extr_nand-controller.c_atmel_nand_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_nand = type { i32, i32, %struct.TYPE_6__*, %struct.gpio_desc* }
%struct.TYPE_6__ = type { %struct.gpio_desc*, %struct.TYPE_5__, %struct.TYPE_4__, i64 }
%struct.TYPE_5__ = type { %struct.gpio_desc*, i32, i64 }
%struct.TYPE_4__ = type { %struct.gpio_desc*, i32 }
%struct.gpio_desc = type { i32 }
%struct.atmel_nand_controller = type { i32 }
%struct.device_node = type { i32 }
%struct.resource = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Missing or invalid reg property\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@cs = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Failed to allocate NAND object\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"det\00", align 1
@GPIOD_IN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"nand-det\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [39 x i8] c"Failed to get detect gpio (err = %ld)\0A\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"Invalid reg property (err = %d)\0A\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"atmel,rb\00", align 1
@ATMEL_NFC_MAX_RB_ID = common dso_local global i64 0, align 8
@ATMEL_NAND_NATIVE_RB = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"nand-rb\00", align 1
@.str.10 = private unnamed_addr constant [36 x i8] c"Failed to get R/B gpio (err = %ld)\0A\00", align 1
@ATMEL_NAND_GPIO_RB = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [3 x i8] c"cs\00", align 1
@GPIOD_OUT_HIGH = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [8 x i8] c"nand-cs\00", align 1
@.str.13 = private unnamed_addr constant [35 x i8] c"Failed to get CS gpio (err = %ld)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.atmel_nand* (%struct.atmel_nand_controller*, %struct.device_node*, i32)* @atmel_nand_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.atmel_nand* @atmel_nand_create(%struct.atmel_nand_controller* %0, %struct.device_node* %1, i32 %2) #0 {
  %4 = alloca %struct.atmel_nand*, align 8
  %5 = alloca %struct.atmel_nand_controller*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.atmel_nand*, align 8
  %9 = alloca %struct.gpio_desc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.resource, align 4
  %14 = alloca i64, align 8
  store %struct.atmel_nand_controller* %0, %struct.atmel_nand_controller** %5, align 8
  store %struct.device_node* %1, %struct.device_node** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.device_node*, %struct.device_node** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  %18 = mul i64 %17, 8
  %19 = trunc i64 %18 to i32
  %20 = call i32 @of_property_count_elems_of_size(%struct.device_node* %15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %19)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp slt i32 %21, 1
  br i1 %22, label %23, label %31

23:                                               ; preds = %3
  %24 = load %struct.atmel_nand_controller*, %struct.atmel_nand_controller** %5, align 8
  %25 = getelementptr inbounds %struct.atmel_nand_controller, %struct.atmel_nand_controller* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 (i32, i8*, ...) @dev_err(i32 %26, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  %30 = call %struct.atmel_nand* @ERR_PTR(i32 %29)
  store %struct.atmel_nand* %30, %struct.atmel_nand** %4, align 8
  br label %307

31:                                               ; preds = %3
  %32 = load %struct.atmel_nand_controller*, %struct.atmel_nand_controller** %5, align 8
  %33 = getelementptr inbounds %struct.atmel_nand_controller, %struct.atmel_nand_controller* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.atmel_nand*, %struct.atmel_nand** %8, align 8
  %36 = load i32, i32* @cs, align 4
  %37 = load i32, i32* %10, align 4
  %38 = call i32 @struct_size(%struct.atmel_nand* %35, i32 %36, i32 %37)
  %39 = load i32, i32* @GFP_KERNEL, align 4
  %40 = call %struct.atmel_nand* @devm_kzalloc(i32 %34, i32 %38, i32 %39)
  store %struct.atmel_nand* %40, %struct.atmel_nand** %8, align 8
  %41 = load %struct.atmel_nand*, %struct.atmel_nand** %8, align 8
  %42 = icmp ne %struct.atmel_nand* %41, null
  br i1 %42, label %51, label %43

43:                                               ; preds = %31
  %44 = load %struct.atmel_nand_controller*, %struct.atmel_nand_controller** %5, align 8
  %45 = getelementptr inbounds %struct.atmel_nand_controller, %struct.atmel_nand_controller* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 (i32, i8*, ...) @dev_err(i32 %46, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  %50 = call %struct.atmel_nand* @ERR_PTR(i32 %49)
  store %struct.atmel_nand* %50, %struct.atmel_nand** %4, align 8
  br label %307

51:                                               ; preds = %31
  %52 = load i32, i32* %10, align 4
  %53 = load %struct.atmel_nand*, %struct.atmel_nand** %8, align 8
  %54 = getelementptr inbounds %struct.atmel_nand, %struct.atmel_nand* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load %struct.atmel_nand_controller*, %struct.atmel_nand_controller** %5, align 8
  %56 = getelementptr inbounds %struct.atmel_nand_controller, %struct.atmel_nand_controller* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.device_node*, %struct.device_node** %6, align 8
  %59 = getelementptr inbounds %struct.device_node, %struct.device_node* %58, i32 0, i32 0
  %60 = load i32, i32* @GPIOD_IN, align 4
  %61 = call %struct.gpio_desc* @devm_fwnode_get_index_gpiod_from_child(i32 %57, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 0, i32* %59, i32 %60, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  store %struct.gpio_desc* %61, %struct.gpio_desc** %9, align 8
  %62 = load %struct.gpio_desc*, %struct.gpio_desc** %9, align 8
  %63 = call i64 @IS_ERR(%struct.gpio_desc* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %80

65:                                               ; preds = %51
  %66 = load %struct.gpio_desc*, %struct.gpio_desc** %9, align 8
  %67 = call i32 @PTR_ERR(%struct.gpio_desc* %66)
  %68 = load i32, i32* @ENOENT, align 4
  %69 = sub nsw i32 0, %68
  %70 = icmp ne i32 %67, %69
  br i1 %70, label %71, label %80

71:                                               ; preds = %65
  %72 = load %struct.atmel_nand_controller*, %struct.atmel_nand_controller** %5, align 8
  %73 = getelementptr inbounds %struct.atmel_nand_controller, %struct.atmel_nand_controller* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.gpio_desc*, %struct.gpio_desc** %9, align 8
  %76 = call i32 @PTR_ERR(%struct.gpio_desc* %75)
  %77 = call i32 (i32, i8*, ...) @dev_err(i32 %74, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i32 %76)
  %78 = load %struct.gpio_desc*, %struct.gpio_desc** %9, align 8
  %79 = call %struct.atmel_nand* @ERR_CAST(%struct.gpio_desc* %78)
  store %struct.atmel_nand* %79, %struct.atmel_nand** %4, align 8
  br label %307

80:                                               ; preds = %65, %51
  %81 = load %struct.gpio_desc*, %struct.gpio_desc** %9, align 8
  %82 = call i64 @IS_ERR(%struct.gpio_desc* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %88, label %84

84:                                               ; preds = %80
  %85 = load %struct.gpio_desc*, %struct.gpio_desc** %9, align 8
  %86 = load %struct.atmel_nand*, %struct.atmel_nand** %8, align 8
  %87 = getelementptr inbounds %struct.atmel_nand, %struct.atmel_nand* %86, i32 0, i32 3
  store %struct.gpio_desc* %85, %struct.gpio_desc** %87, align 8
  br label %88

88:                                               ; preds = %84, %80
  store i32 0, i32* %12, align 4
  br label %89

89:                                               ; preds = %298, %88
  %90 = load i32, i32* %12, align 4
  %91 = load i32, i32* %10, align 4
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %93, label %301

93:                                               ; preds = %89
  %94 = load %struct.device_node*, %struct.device_node** %6, align 8
  %95 = call i32 @of_address_to_resource(%struct.device_node* %94, i32 0, %struct.resource* %13)
  store i32 %95, i32* %11, align 4
  %96 = load i32, i32* %11, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %106

98:                                               ; preds = %93
  %99 = load %struct.atmel_nand_controller*, %struct.atmel_nand_controller** %5, align 8
  %100 = getelementptr inbounds %struct.atmel_nand_controller, %struct.atmel_nand_controller* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %11, align 4
  %103 = call i32 (i32, i8*, ...) @dev_err(i32 %101, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i32 %102)
  %104 = load i32, i32* %11, align 4
  %105 = call %struct.atmel_nand* @ERR_PTR(i32 %104)
  store %struct.atmel_nand* %105, %struct.atmel_nand** %4, align 8
  br label %307

106:                                              ; preds = %93
  %107 = load %struct.device_node*, %struct.device_node** %6, align 8
  %108 = load i32, i32* %12, align 4
  %109 = load i32, i32* %7, align 4
  %110 = mul nsw i32 %108, %109
  %111 = call i32 @of_property_read_u32_index(%struct.device_node* %107, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %110, i64* %14)
  store i32 %111, i32* %11, align 4
  %112 = load i32, i32* %11, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %122

114:                                              ; preds = %106
  %115 = load %struct.atmel_nand_controller*, %struct.atmel_nand_controller** %5, align 8
  %116 = getelementptr inbounds %struct.atmel_nand_controller, %struct.atmel_nand_controller* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* %11, align 4
  %119 = call i32 (i32, i8*, ...) @dev_err(i32 %117, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i32 %118)
  %120 = load i32, i32* %11, align 4
  %121 = call %struct.atmel_nand* @ERR_PTR(i32 %120)
  store %struct.atmel_nand* %121, %struct.atmel_nand** %4, align 8
  br label %307

122:                                              ; preds = %106
  %123 = load i64, i64* %14, align 8
  %124 = load %struct.atmel_nand*, %struct.atmel_nand** %8, align 8
  %125 = getelementptr inbounds %struct.atmel_nand, %struct.atmel_nand* %124, i32 0, i32 2
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %125, align 8
  %127 = load i32, i32* %12, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 3
  store i64 %123, i64* %130, align 8
  %131 = getelementptr inbounds %struct.resource, %struct.resource* %13, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.atmel_nand*, %struct.atmel_nand** %8, align 8
  %134 = getelementptr inbounds %struct.atmel_nand, %struct.atmel_nand* %133, i32 0, i32 2
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %134, align 8
  %136 = load i32, i32* %12, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 2
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 1
  store i32 %132, i32* %140, align 8
  %141 = load %struct.atmel_nand_controller*, %struct.atmel_nand_controller** %5, align 8
  %142 = getelementptr inbounds %struct.atmel_nand_controller, %struct.atmel_nand_controller* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = call %struct.gpio_desc* @devm_ioremap_resource(i32 %143, %struct.resource* %13)
  %145 = load %struct.atmel_nand*, %struct.atmel_nand** %8, align 8
  %146 = getelementptr inbounds %struct.atmel_nand, %struct.atmel_nand* %145, i32 0, i32 2
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** %146, align 8
  %148 = load i32, i32* %12, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 2
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 0
  store %struct.gpio_desc* %144, %struct.gpio_desc** %152, align 8
  %153 = load %struct.atmel_nand*, %struct.atmel_nand** %8, align 8
  %154 = getelementptr inbounds %struct.atmel_nand, %struct.atmel_nand* %153, i32 0, i32 2
  %155 = load %struct.TYPE_6__*, %struct.TYPE_6__** %154, align 8
  %156 = load i32, i32* %12, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 2
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 0
  %161 = load %struct.gpio_desc*, %struct.gpio_desc** %160, align 8
  %162 = call i64 @IS_ERR(%struct.gpio_desc* %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %175

164:                                              ; preds = %122
  %165 = load %struct.atmel_nand*, %struct.atmel_nand** %8, align 8
  %166 = getelementptr inbounds %struct.atmel_nand, %struct.atmel_nand* %165, i32 0, i32 2
  %167 = load %struct.TYPE_6__*, %struct.TYPE_6__** %166, align 8
  %168 = load i32, i32* %12, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i32 0, i32 2
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i32 0, i32 0
  %173 = load %struct.gpio_desc*, %struct.gpio_desc** %172, align 8
  %174 = call %struct.atmel_nand* @ERR_CAST(%struct.gpio_desc* %173)
  store %struct.atmel_nand* %174, %struct.atmel_nand** %4, align 8
  br label %307

175:                                              ; preds = %122
  %176 = load %struct.device_node*, %struct.device_node** %6, align 8
  %177 = call i32 @of_property_read_u32(%struct.device_node* %176, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i64* %14)
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %206, label %179

179:                                              ; preds = %175
  %180 = load i64, i64* %14, align 8
  %181 = load i64, i64* @ATMEL_NFC_MAX_RB_ID, align 8
  %182 = icmp sgt i64 %180, %181
  br i1 %182, label %183, label %187

183:                                              ; preds = %179
  %184 = load i32, i32* @EINVAL, align 4
  %185 = sub nsw i32 0, %184
  %186 = call %struct.atmel_nand* @ERR_PTR(i32 %185)
  store %struct.atmel_nand* %186, %struct.atmel_nand** %4, align 8
  br label %307

187:                                              ; preds = %179
  %188 = load i32, i32* @ATMEL_NAND_NATIVE_RB, align 4
  %189 = load %struct.atmel_nand*, %struct.atmel_nand** %8, align 8
  %190 = getelementptr inbounds %struct.atmel_nand, %struct.atmel_nand* %189, i32 0, i32 2
  %191 = load %struct.TYPE_6__*, %struct.TYPE_6__** %190, align 8
  %192 = load i32, i32* %12, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %191, i64 %193
  %195 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %195, i32 0, i32 1
  store i32 %188, i32* %196, align 8
  %197 = load i64, i64* %14, align 8
  %198 = load %struct.atmel_nand*, %struct.atmel_nand** %8, align 8
  %199 = getelementptr inbounds %struct.atmel_nand, %struct.atmel_nand* %198, i32 0, i32 2
  %200 = load %struct.TYPE_6__*, %struct.TYPE_6__** %199, align 8
  %201 = load i32, i32* %12, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %200, i64 %202
  %204 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %203, i32 0, i32 1
  %205 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %204, i32 0, i32 2
  store i64 %197, i64* %205, align 8
  br label %257

206:                                              ; preds = %175
  %207 = load %struct.atmel_nand_controller*, %struct.atmel_nand_controller** %5, align 8
  %208 = getelementptr inbounds %struct.atmel_nand_controller, %struct.atmel_nand_controller* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = load i32, i32* %12, align 4
  %211 = load %struct.device_node*, %struct.device_node** %6, align 8
  %212 = getelementptr inbounds %struct.device_node, %struct.device_node* %211, i32 0, i32 0
  %213 = load i32, i32* @GPIOD_IN, align 4
  %214 = call %struct.gpio_desc* @devm_fwnode_get_index_gpiod_from_child(i32 %209, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i32 %210, i32* %212, i32 %213, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  store %struct.gpio_desc* %214, %struct.gpio_desc** %9, align 8
  %215 = load %struct.gpio_desc*, %struct.gpio_desc** %9, align 8
  %216 = call i64 @IS_ERR(%struct.gpio_desc* %215)
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %233

218:                                              ; preds = %206
  %219 = load %struct.gpio_desc*, %struct.gpio_desc** %9, align 8
  %220 = call i32 @PTR_ERR(%struct.gpio_desc* %219)
  %221 = load i32, i32* @ENOENT, align 4
  %222 = sub nsw i32 0, %221
  %223 = icmp ne i32 %220, %222
  br i1 %223, label %224, label %233

224:                                              ; preds = %218
  %225 = load %struct.atmel_nand_controller*, %struct.atmel_nand_controller** %5, align 8
  %226 = getelementptr inbounds %struct.atmel_nand_controller, %struct.atmel_nand_controller* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 4
  %228 = load %struct.gpio_desc*, %struct.gpio_desc** %9, align 8
  %229 = call i32 @PTR_ERR(%struct.gpio_desc* %228)
  %230 = call i32 (i32, i8*, ...) @dev_err(i32 %227, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10, i64 0, i64 0), i32 %229)
  %231 = load %struct.gpio_desc*, %struct.gpio_desc** %9, align 8
  %232 = call %struct.atmel_nand* @ERR_CAST(%struct.gpio_desc* %231)
  store %struct.atmel_nand* %232, %struct.atmel_nand** %4, align 8
  br label %307

233:                                              ; preds = %218, %206
  %234 = load %struct.gpio_desc*, %struct.gpio_desc** %9, align 8
  %235 = call i64 @IS_ERR(%struct.gpio_desc* %234)
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %256, label %237

237:                                              ; preds = %233
  %238 = load i32, i32* @ATMEL_NAND_GPIO_RB, align 4
  %239 = load %struct.atmel_nand*, %struct.atmel_nand** %8, align 8
  %240 = getelementptr inbounds %struct.atmel_nand, %struct.atmel_nand* %239, i32 0, i32 2
  %241 = load %struct.TYPE_6__*, %struct.TYPE_6__** %240, align 8
  %242 = load i32, i32* %12, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %241, i64 %243
  %245 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %244, i32 0, i32 1
  %246 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %245, i32 0, i32 1
  store i32 %238, i32* %246, align 8
  %247 = load %struct.gpio_desc*, %struct.gpio_desc** %9, align 8
  %248 = load %struct.atmel_nand*, %struct.atmel_nand** %8, align 8
  %249 = getelementptr inbounds %struct.atmel_nand, %struct.atmel_nand* %248, i32 0, i32 2
  %250 = load %struct.TYPE_6__*, %struct.TYPE_6__** %249, align 8
  %251 = load i32, i32* %12, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %250, i64 %252
  %254 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %253, i32 0, i32 1
  %255 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %254, i32 0, i32 0
  store %struct.gpio_desc* %247, %struct.gpio_desc** %255, align 8
  br label %256

256:                                              ; preds = %237, %233
  br label %257

257:                                              ; preds = %256, %187
  %258 = load %struct.atmel_nand_controller*, %struct.atmel_nand_controller** %5, align 8
  %259 = getelementptr inbounds %struct.atmel_nand_controller, %struct.atmel_nand_controller* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 4
  %261 = load i32, i32* %12, align 4
  %262 = load %struct.device_node*, %struct.device_node** %6, align 8
  %263 = getelementptr inbounds %struct.device_node, %struct.device_node* %262, i32 0, i32 0
  %264 = load i32, i32* @GPIOD_OUT_HIGH, align 4
  %265 = call %struct.gpio_desc* @devm_fwnode_get_index_gpiod_from_child(i32 %260, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i32 %261, i32* %263, i32 %264, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0))
  store %struct.gpio_desc* %265, %struct.gpio_desc** %9, align 8
  %266 = load %struct.gpio_desc*, %struct.gpio_desc** %9, align 8
  %267 = call i64 @IS_ERR(%struct.gpio_desc* %266)
  %268 = icmp ne i64 %267, 0
  br i1 %268, label %269, label %284

269:                                              ; preds = %257
  %270 = load %struct.gpio_desc*, %struct.gpio_desc** %9, align 8
  %271 = call i32 @PTR_ERR(%struct.gpio_desc* %270)
  %272 = load i32, i32* @ENOENT, align 4
  %273 = sub nsw i32 0, %272
  %274 = icmp ne i32 %271, %273
  br i1 %274, label %275, label %284

275:                                              ; preds = %269
  %276 = load %struct.atmel_nand_controller*, %struct.atmel_nand_controller** %5, align 8
  %277 = getelementptr inbounds %struct.atmel_nand_controller, %struct.atmel_nand_controller* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 4
  %279 = load %struct.gpio_desc*, %struct.gpio_desc** %9, align 8
  %280 = call i32 @PTR_ERR(%struct.gpio_desc* %279)
  %281 = call i32 (i32, i8*, ...) @dev_err(i32 %278, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.13, i64 0, i64 0), i32 %280)
  %282 = load %struct.gpio_desc*, %struct.gpio_desc** %9, align 8
  %283 = call %struct.atmel_nand* @ERR_CAST(%struct.gpio_desc* %282)
  store %struct.atmel_nand* %283, %struct.atmel_nand** %4, align 8
  br label %307

284:                                              ; preds = %269, %257
  %285 = load %struct.gpio_desc*, %struct.gpio_desc** %9, align 8
  %286 = call i64 @IS_ERR(%struct.gpio_desc* %285)
  %287 = icmp ne i64 %286, 0
  br i1 %287, label %297, label %288

288:                                              ; preds = %284
  %289 = load %struct.gpio_desc*, %struct.gpio_desc** %9, align 8
  %290 = load %struct.atmel_nand*, %struct.atmel_nand** %8, align 8
  %291 = getelementptr inbounds %struct.atmel_nand, %struct.atmel_nand* %290, i32 0, i32 2
  %292 = load %struct.TYPE_6__*, %struct.TYPE_6__** %291, align 8
  %293 = load i32, i32* %12, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %292, i64 %294
  %296 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %295, i32 0, i32 0
  store %struct.gpio_desc* %289, %struct.gpio_desc** %296, align 8
  br label %297

297:                                              ; preds = %288, %284
  br label %298

298:                                              ; preds = %297
  %299 = load i32, i32* %12, align 4
  %300 = add nsw i32 %299, 1
  store i32 %300, i32* %12, align 4
  br label %89

301:                                              ; preds = %89
  %302 = load %struct.atmel_nand*, %struct.atmel_nand** %8, align 8
  %303 = getelementptr inbounds %struct.atmel_nand, %struct.atmel_nand* %302, i32 0, i32 1
  %304 = load %struct.device_node*, %struct.device_node** %6, align 8
  %305 = call i32 @nand_set_flash_node(i32* %303, %struct.device_node* %304)
  %306 = load %struct.atmel_nand*, %struct.atmel_nand** %8, align 8
  store %struct.atmel_nand* %306, %struct.atmel_nand** %4, align 8
  br label %307

307:                                              ; preds = %301, %275, %224, %183, %164, %114, %98, %71, %43, %23
  %308 = load %struct.atmel_nand*, %struct.atmel_nand** %4, align 8
  ret %struct.atmel_nand* %308
}

declare dso_local i32 @of_property_count_elems_of_size(%struct.device_node*, i8*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local %struct.atmel_nand* @ERR_PTR(i32) #1

declare dso_local %struct.atmel_nand* @devm_kzalloc(i32, i32, i32) #1

declare dso_local i32 @struct_size(%struct.atmel_nand*, i32, i32) #1

declare dso_local %struct.gpio_desc* @devm_fwnode_get_index_gpiod_from_child(i32, i8*, i32, i32*, i32, i8*) #1

declare dso_local i64 @IS_ERR(%struct.gpio_desc*) #1

declare dso_local i32 @PTR_ERR(%struct.gpio_desc*) #1

declare dso_local %struct.atmel_nand* @ERR_CAST(%struct.gpio_desc*) #1

declare dso_local i32 @of_address_to_resource(%struct.device_node*, i32, %struct.resource*) #1

declare dso_local i32 @of_property_read_u32_index(%struct.device_node*, i8*, i32, i64*) #1

declare dso_local %struct.gpio_desc* @devm_ioremap_resource(i32, %struct.resource*) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i64*) #1

declare dso_local i32 @nand_set_flash_node(i32*, %struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
