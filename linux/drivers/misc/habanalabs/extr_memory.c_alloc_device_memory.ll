; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_memory.c_alloc_device_memory.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_memory.c_alloc_device_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_ctx = type { i32, i32, %struct.hl_device* }
%struct.hl_device = type { i32, i32, %struct.TYPE_3__, %struct.hl_vm }
%struct.TYPE_3__ = type { i32 }
%struct.hl_vm = type { i32, i32, i32, i32 }
%struct.hl_mem_in = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.hl_vm_phys_pg_pack = type { i32, i32, i32, i32, i32, i32*, i32, i32, i32 }

@HL_MEM_CONTIGUOUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"failed to allocate %llu huge contiguous pages\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@VM_TYPE_PHYS_PACK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"Failed to allocate device memory (out of memory)\0A\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Failed to get handle for page\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hl_ctx*, %struct.hl_mem_in*, i32*)* @alloc_device_memory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_device_memory(%struct.hl_ctx* %0, %struct.hl_mem_in* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hl_ctx*, align 8
  %6 = alloca %struct.hl_mem_in*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.hl_device*, align 8
  %9 = alloca %struct.hl_vm*, align 8
  %10 = alloca %struct.hl_vm_phys_pg_pack*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.hl_ctx* %0, %struct.hl_ctx** %5, align 8
  store %struct.hl_mem_in* %1, %struct.hl_mem_in** %6, align 8
  store i32* %2, i32** %7, align 8
  %21 = load %struct.hl_ctx*, %struct.hl_ctx** %5, align 8
  %22 = getelementptr inbounds %struct.hl_ctx, %struct.hl_ctx* %21, i32 0, i32 2
  %23 = load %struct.hl_device*, %struct.hl_device** %22, align 8
  store %struct.hl_device* %23, %struct.hl_device** %8, align 8
  %24 = load %struct.hl_device*, %struct.hl_device** %8, align 8
  %25 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %24, i32 0, i32 3
  store %struct.hl_vm* %25, %struct.hl_vm** %9, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %15, align 4
  %26 = load %struct.hl_device*, %struct.hl_device** %8, align 8
  %27 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %16, align 4
  %30 = load i32, i32* %16, align 4
  %31 = call i32 @__ffs(i32 %30)
  store i32 %31, i32* %17, align 4
  %32 = load %struct.hl_mem_in*, %struct.hl_mem_in** %6, align 8
  %33 = getelementptr inbounds %struct.hl_mem_in, %struct.hl_mem_in* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %16, align 4
  %37 = sub nsw i32 %36, 1
  %38 = add nsw i32 %35, %37
  %39 = load i32, i32* %17, align 4
  %40 = ashr i32 %38, %39
  store i32 %40, i32* %13, align 4
  %41 = load i32, i32* %13, align 4
  %42 = load i32, i32* %17, align 4
  %43 = shl i32 %41, %42
  store i32 %43, i32* %12, align 4
  %44 = load %struct.hl_mem_in*, %struct.hl_mem_in** %6, align 8
  %45 = getelementptr inbounds %struct.hl_mem_in, %struct.hl_mem_in* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @HL_MEM_CONTIGUOUS, align 4
  %48 = and i32 %46, %47
  store i32 %48, i32* %20, align 4
  %49 = load i32, i32* %20, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %68

51:                                               ; preds = %3
  %52 = load %struct.hl_vm*, %struct.hl_vm** %9, align 8
  %53 = getelementptr inbounds %struct.hl_vm, %struct.hl_vm* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %12, align 4
  %56 = call i32 @gen_pool_alloc(i32 %54, i32 %55)
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* %11, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %67, label %59

59:                                               ; preds = %51
  %60 = load %struct.hl_device*, %struct.hl_device** %8, align 8
  %61 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %13, align 4
  %64 = call i32 (i32, i8*, ...) @dev_err(i32 %62, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %63)
  %65 = load i32, i32* @ENOMEM, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %4, align 4
  br label %278

67:                                               ; preds = %51
  br label %68

68:                                               ; preds = %67, %3
  %69 = load i32, i32* @GFP_KERNEL, align 4
  %70 = call %struct.hl_vm_phys_pg_pack* @kzalloc(i32 48, i32 %69)
  store %struct.hl_vm_phys_pg_pack* %70, %struct.hl_vm_phys_pg_pack** %10, align 8
  %71 = load %struct.hl_vm_phys_pg_pack*, %struct.hl_vm_phys_pg_pack** %10, align 8
  %72 = icmp ne %struct.hl_vm_phys_pg_pack* %71, null
  br i1 %72, label %76, label %73

73:                                               ; preds = %68
  %74 = load i32, i32* @ENOMEM, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %19, align 4
  br label %266

76:                                               ; preds = %68
  %77 = load i32, i32* @VM_TYPE_PHYS_PACK, align 4
  %78 = load %struct.hl_vm_phys_pg_pack*, %struct.hl_vm_phys_pg_pack** %10, align 8
  %79 = getelementptr inbounds %struct.hl_vm_phys_pg_pack, %struct.hl_vm_phys_pg_pack* %78, i32 0, i32 8
  store i32 %77, i32* %79, align 8
  %80 = load %struct.hl_ctx*, %struct.hl_ctx** %5, align 8
  %81 = getelementptr inbounds %struct.hl_ctx, %struct.hl_ctx* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.hl_vm_phys_pg_pack*, %struct.hl_vm_phys_pg_pack** %10, align 8
  %84 = getelementptr inbounds %struct.hl_vm_phys_pg_pack, %struct.hl_vm_phys_pg_pack* %83, i32 0, i32 7
  store i32 %82, i32* %84, align 4
  %85 = load i32, i32* %13, align 4
  %86 = load %struct.hl_vm_phys_pg_pack*, %struct.hl_vm_phys_pg_pack** %10, align 8
  %87 = getelementptr inbounds %struct.hl_vm_phys_pg_pack, %struct.hl_vm_phys_pg_pack* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 8
  %88 = load i32, i32* %16, align 4
  %89 = load %struct.hl_vm_phys_pg_pack*, %struct.hl_vm_phys_pg_pack** %10, align 8
  %90 = getelementptr inbounds %struct.hl_vm_phys_pg_pack, %struct.hl_vm_phys_pg_pack* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 4
  %91 = load i32, i32* %12, align 4
  %92 = load %struct.hl_vm_phys_pg_pack*, %struct.hl_vm_phys_pg_pack** %10, align 8
  %93 = getelementptr inbounds %struct.hl_vm_phys_pg_pack, %struct.hl_vm_phys_pg_pack* %92, i32 0, i32 2
  store i32 %91, i32* %93, align 8
  %94 = load %struct.hl_mem_in*, %struct.hl_mem_in** %6, align 8
  %95 = getelementptr inbounds %struct.hl_mem_in, %struct.hl_mem_in* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.hl_vm_phys_pg_pack*, %struct.hl_vm_phys_pg_pack** %10, align 8
  %98 = getelementptr inbounds %struct.hl_vm_phys_pg_pack, %struct.hl_vm_phys_pg_pack* %97, i32 0, i32 3
  store i32 %96, i32* %98, align 4
  %99 = load i32, i32* %20, align 4
  %100 = load %struct.hl_vm_phys_pg_pack*, %struct.hl_vm_phys_pg_pack** %10, align 8
  %101 = getelementptr inbounds %struct.hl_vm_phys_pg_pack, %struct.hl_vm_phys_pg_pack* %100, i32 0, i32 4
  store i32 %99, i32* %101, align 8
  %102 = load i32, i32* %13, align 4
  %103 = load i32, i32* @GFP_KERNEL, align 4
  %104 = call i32* @kvmalloc_array(i32 %102, i32 4, i32 %103)
  %105 = load %struct.hl_vm_phys_pg_pack*, %struct.hl_vm_phys_pg_pack** %10, align 8
  %106 = getelementptr inbounds %struct.hl_vm_phys_pg_pack, %struct.hl_vm_phys_pg_pack* %105, i32 0, i32 5
  store i32* %104, i32** %106, align 8
  %107 = load %struct.hl_vm_phys_pg_pack*, %struct.hl_vm_phys_pg_pack** %10, align 8
  %108 = getelementptr inbounds %struct.hl_vm_phys_pg_pack, %struct.hl_vm_phys_pg_pack* %107, i32 0, i32 5
  %109 = load i32*, i32** %108, align 8
  %110 = icmp ne i32* %109, null
  br i1 %110, label %114, label %111

111:                                              ; preds = %76
  %112 = load i32, i32* @ENOMEM, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %19, align 4
  br label %263

114:                                              ; preds = %76
  %115 = load %struct.hl_vm_phys_pg_pack*, %struct.hl_vm_phys_pg_pack** %10, align 8
  %116 = getelementptr inbounds %struct.hl_vm_phys_pg_pack, %struct.hl_vm_phys_pg_pack* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 8
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %140

119:                                              ; preds = %114
  store i32 0, i32* %14, align 4
  br label %120

120:                                              ; preds = %136, %119
  %121 = load i32, i32* %14, align 4
  %122 = load i32, i32* %13, align 4
  %123 = icmp slt i32 %121, %122
  br i1 %123, label %124, label %139

124:                                              ; preds = %120
  %125 = load i32, i32* %11, align 4
  %126 = load i32, i32* %14, align 4
  %127 = load i32, i32* %16, align 4
  %128 = mul nsw i32 %126, %127
  %129 = add nsw i32 %125, %128
  %130 = load %struct.hl_vm_phys_pg_pack*, %struct.hl_vm_phys_pg_pack** %10, align 8
  %131 = getelementptr inbounds %struct.hl_vm_phys_pg_pack, %struct.hl_vm_phys_pg_pack* %130, i32 0, i32 5
  %132 = load i32*, i32** %131, align 8
  %133 = load i32, i32* %14, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  store i32 %129, i32* %135, align 4
  br label %136

136:                                              ; preds = %124
  %137 = load i32, i32* %14, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %14, align 4
  br label %120

139:                                              ; preds = %120
  br label %179

140:                                              ; preds = %114
  store i32 0, i32* %14, align 4
  br label %141

141:                                              ; preds = %175, %140
  %142 = load i32, i32* %14, align 4
  %143 = load i32, i32* %13, align 4
  %144 = icmp slt i32 %142, %143
  br i1 %144, label %145, label %178

145:                                              ; preds = %141
  %146 = load %struct.hl_vm*, %struct.hl_vm** %9, align 8
  %147 = getelementptr inbounds %struct.hl_vm, %struct.hl_vm* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* %16, align 4
  %150 = call i32 @gen_pool_alloc(i32 %148, i32 %149)
  %151 = load %struct.hl_vm_phys_pg_pack*, %struct.hl_vm_phys_pg_pack** %10, align 8
  %152 = getelementptr inbounds %struct.hl_vm_phys_pg_pack, %struct.hl_vm_phys_pg_pack* %151, i32 0, i32 5
  %153 = load i32*, i32** %152, align 8
  %154 = load i32, i32* %14, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %153, i64 %155
  store i32 %150, i32* %156, align 4
  %157 = load %struct.hl_vm_phys_pg_pack*, %struct.hl_vm_phys_pg_pack** %10, align 8
  %158 = getelementptr inbounds %struct.hl_vm_phys_pg_pack, %struct.hl_vm_phys_pg_pack* %157, i32 0, i32 5
  %159 = load i32*, i32** %158, align 8
  %160 = load i32, i32* %14, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %159, i64 %161
  %163 = load i32, i32* %162, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %172, label %165

165:                                              ; preds = %145
  %166 = load %struct.hl_device*, %struct.hl_device** %8, align 8
  %167 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = call i32 (i32, i8*, ...) @dev_err(i32 %168, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  %170 = load i32, i32* @ENOMEM, align 4
  %171 = sub nsw i32 0, %170
  store i32 %171, i32* %19, align 4
  br label %231

172:                                              ; preds = %145
  %173 = load i32, i32* %15, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %15, align 4
  br label %175

175:                                              ; preds = %172
  %176 = load i32, i32* %14, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %14, align 4
  br label %141

178:                                              ; preds = %141
  br label %179

179:                                              ; preds = %178, %139
  %180 = load %struct.hl_vm*, %struct.hl_vm** %9, align 8
  %181 = getelementptr inbounds %struct.hl_vm, %struct.hl_vm* %180, i32 0, i32 2
  %182 = call i32 @spin_lock(i32* %181)
  %183 = load %struct.hl_vm*, %struct.hl_vm** %9, align 8
  %184 = getelementptr inbounds %struct.hl_vm, %struct.hl_vm* %183, i32 0, i32 3
  %185 = load %struct.hl_vm_phys_pg_pack*, %struct.hl_vm_phys_pg_pack** %10, align 8
  %186 = load i32, i32* @GFP_ATOMIC, align 4
  %187 = call i32 @idr_alloc(i32* %184, %struct.hl_vm_phys_pg_pack* %185, i32 1, i32 0, i32 %186)
  store i32 %187, i32* %18, align 4
  %188 = load %struct.hl_vm*, %struct.hl_vm** %9, align 8
  %189 = getelementptr inbounds %struct.hl_vm, %struct.hl_vm* %188, i32 0, i32 2
  %190 = call i32 @spin_unlock(i32* %189)
  %191 = load i32, i32* %18, align 4
  %192 = icmp slt i32 %191, 0
  br i1 %192, label %193, label %200

193:                                              ; preds = %179
  %194 = load %struct.hl_device*, %struct.hl_device** %8, align 8
  %195 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = call i32 (i32, i8*, ...) @dev_err(i32 %196, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %198 = load i32, i32* @EFAULT, align 4
  %199 = sub nsw i32 0, %198
  store i32 %199, i32* %19, align 4
  br label %230

200:                                              ; preds = %179
  store i32 0, i32* %14, align 4
  br label %201

201:                                              ; preds = %209, %200
  %202 = load i32, i32* %14, align 4
  %203 = load i32, i32* %13, align 4
  %204 = icmp slt i32 %202, %203
  br i1 %204, label %205, label %212

205:                                              ; preds = %201
  %206 = load %struct.hl_vm*, %struct.hl_vm** %9, align 8
  %207 = getelementptr inbounds %struct.hl_vm, %struct.hl_vm* %206, i32 0, i32 1
  %208 = call i32 @kref_get(i32* %207)
  br label %209

209:                                              ; preds = %205
  %210 = load i32, i32* %14, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %14, align 4
  br label %201

212:                                              ; preds = %201
  %213 = load i32, i32* %18, align 4
  %214 = load %struct.hl_vm_phys_pg_pack*, %struct.hl_vm_phys_pg_pack** %10, align 8
  %215 = getelementptr inbounds %struct.hl_vm_phys_pg_pack, %struct.hl_vm_phys_pg_pack* %214, i32 0, i32 6
  store i32 %213, i32* %215, align 8
  %216 = load %struct.hl_vm_phys_pg_pack*, %struct.hl_vm_phys_pg_pack** %10, align 8
  %217 = getelementptr inbounds %struct.hl_vm_phys_pg_pack, %struct.hl_vm_phys_pg_pack* %216, i32 0, i32 2
  %218 = load i32, i32* %217, align 8
  %219 = load %struct.hl_ctx*, %struct.hl_ctx** %5, align 8
  %220 = getelementptr inbounds %struct.hl_ctx, %struct.hl_ctx* %219, i32 0, i32 0
  %221 = call i32 @atomic64_add(i32 %218, i32* %220)
  %222 = load %struct.hl_vm_phys_pg_pack*, %struct.hl_vm_phys_pg_pack** %10, align 8
  %223 = getelementptr inbounds %struct.hl_vm_phys_pg_pack, %struct.hl_vm_phys_pg_pack* %222, i32 0, i32 2
  %224 = load i32, i32* %223, align 8
  %225 = load %struct.hl_device*, %struct.hl_device** %8, align 8
  %226 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %225, i32 0, i32 0
  %227 = call i32 @atomic64_add(i32 %224, i32* %226)
  %228 = load i32, i32* %18, align 4
  %229 = load i32*, i32** %7, align 8
  store i32 %228, i32* %229, align 4
  store i32 0, i32* %4, align 4
  br label %278

230:                                              ; preds = %193
  br label %231

231:                                              ; preds = %230, %165
  %232 = load %struct.hl_vm_phys_pg_pack*, %struct.hl_vm_phys_pg_pack** %10, align 8
  %233 = getelementptr inbounds %struct.hl_vm_phys_pg_pack, %struct.hl_vm_phys_pg_pack* %232, i32 0, i32 4
  %234 = load i32, i32* %233, align 8
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %258, label %236

236:                                              ; preds = %231
  store i32 0, i32* %14, align 4
  br label %237

237:                                              ; preds = %254, %236
  %238 = load i32, i32* %14, align 4
  %239 = load i32, i32* %15, align 4
  %240 = icmp slt i32 %238, %239
  br i1 %240, label %241, label %257

241:                                              ; preds = %237
  %242 = load %struct.hl_vm*, %struct.hl_vm** %9, align 8
  %243 = getelementptr inbounds %struct.hl_vm, %struct.hl_vm* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 4
  %245 = load %struct.hl_vm_phys_pg_pack*, %struct.hl_vm_phys_pg_pack** %10, align 8
  %246 = getelementptr inbounds %struct.hl_vm_phys_pg_pack, %struct.hl_vm_phys_pg_pack* %245, i32 0, i32 5
  %247 = load i32*, i32** %246, align 8
  %248 = load i32, i32* %14, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds i32, i32* %247, i64 %249
  %251 = load i32, i32* %250, align 4
  %252 = load i32, i32* %16, align 4
  %253 = call i32 @gen_pool_free(i32 %244, i32 %251, i32 %252)
  br label %254

254:                                              ; preds = %241
  %255 = load i32, i32* %14, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, i32* %14, align 4
  br label %237

257:                                              ; preds = %237
  br label %258

258:                                              ; preds = %257, %231
  %259 = load %struct.hl_vm_phys_pg_pack*, %struct.hl_vm_phys_pg_pack** %10, align 8
  %260 = getelementptr inbounds %struct.hl_vm_phys_pg_pack, %struct.hl_vm_phys_pg_pack* %259, i32 0, i32 5
  %261 = load i32*, i32** %260, align 8
  %262 = call i32 @kvfree(i32* %261)
  br label %263

263:                                              ; preds = %258, %111
  %264 = load %struct.hl_vm_phys_pg_pack*, %struct.hl_vm_phys_pg_pack** %10, align 8
  %265 = call i32 @kfree(%struct.hl_vm_phys_pg_pack* %264)
  br label %266

266:                                              ; preds = %263, %73
  %267 = load i32, i32* %20, align 4
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %276

269:                                              ; preds = %266
  %270 = load %struct.hl_vm*, %struct.hl_vm** %9, align 8
  %271 = getelementptr inbounds %struct.hl_vm, %struct.hl_vm* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 4
  %273 = load i32, i32* %11, align 4
  %274 = load i32, i32* %12, align 4
  %275 = call i32 @gen_pool_free(i32 %272, i32 %273, i32 %274)
  br label %276

276:                                              ; preds = %269, %266
  %277 = load i32, i32* %19, align 4
  store i32 %277, i32* %4, align 4
  br label %278

278:                                              ; preds = %276, %212, %59
  %279 = load i32, i32* %4, align 4
  ret i32 %279
}

declare dso_local i32 @__ffs(i32) #1

declare dso_local i32 @gen_pool_alloc(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local %struct.hl_vm_phys_pg_pack* @kzalloc(i32, i32) #1

declare dso_local i32* @kvmalloc_array(i32, i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @idr_alloc(i32*, %struct.hl_vm_phys_pg_pack*, i32, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @kref_get(i32*) #1

declare dso_local i32 @atomic64_add(i32, i32*) #1

declare dso_local i32 @gen_pool_free(i32, i32, i32) #1

declare dso_local i32 @kvfree(i32*) #1

declare dso_local i32 @kfree(%struct.hl_vm_phys_pg_pack*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
