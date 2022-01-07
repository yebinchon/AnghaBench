; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_memory.c_map_device_va.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_memory.c_map_device_va.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_ctx = type { i64, i32, i32, i32, i32, i32, %struct.hl_device* }
%struct.hl_device = type { i32, %struct.TYPE_6__*, %struct.hl_vm }
%struct.TYPE_6__ = type { i32 (%struct.hl_device*, i32)* }
%struct.hl_vm = type { i32, i32 }
%struct.hl_mem_in = type { i32, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64, i32 }
%struct.TYPE_4__ = type { i64, i32 }
%struct.hl_vm_phys_pg_pack = type { i32, i64, i32, i64, i64 }
%struct.hl_userptr = type { i32 }
%struct.hl_vm_hash_node = type { i32*, i32, i64 }

@HL_MEM_USERPTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"failed to get userptr from va\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"unable to init page pack for vaddr 0x%llx\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"no match for handle %u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@HL_MEM_SHARED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [47 x i8] c"Failed to map memory, handle %u is not shared\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"no available va block for handle %u\0A\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"mapping page pack failed for handle %u\0A\00", align 1
@.str.6 = private unnamed_addr constant [56 x i8] c"release va block failed for handle 0x%x, vaddr: 0x%llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hl_ctx*, %struct.hl_mem_in*, i64*)* @map_device_va to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @map_device_va(%struct.hl_ctx* %0, %struct.hl_mem_in* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hl_ctx*, align 8
  %6 = alloca %struct.hl_mem_in*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.hl_device*, align 8
  %9 = alloca %struct.hl_vm*, align 8
  %10 = alloca %struct.hl_vm_phys_pg_pack*, align 8
  %11 = alloca %struct.hl_userptr*, align 8
  %12 = alloca %struct.hl_vm_hash_node*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.hl_ctx* %0, %struct.hl_ctx** %5, align 8
  store %struct.hl_mem_in* %1, %struct.hl_mem_in** %6, align 8
  store i64* %2, i64** %7, align 8
  %19 = load %struct.hl_ctx*, %struct.hl_ctx** %5, align 8
  %20 = getelementptr inbounds %struct.hl_ctx, %struct.hl_ctx* %19, i32 0, i32 6
  %21 = load %struct.hl_device*, %struct.hl_device** %20, align 8
  store %struct.hl_device* %21, %struct.hl_device** %8, align 8
  %22 = load %struct.hl_device*, %struct.hl_device** %8, align 8
  %23 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %22, i32 0, i32 2
  store %struct.hl_vm* %23, %struct.hl_vm** %9, align 8
  store %struct.hl_userptr* null, %struct.hl_userptr** %11, align 8
  store i32 0, i32* %16, align 4
  %24 = load %struct.hl_mem_in*, %struct.hl_mem_in** %6, align 8
  %25 = getelementptr inbounds %struct.hl_mem_in, %struct.hl_mem_in* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @HL_MEM_USERPTR, align 4
  %28 = and i32 %26, %27
  store i32 %28, i32* %18, align 4
  %29 = load i64*, i64** %7, align 8
  store i64 0, i64* %29, align 8
  %30 = load i32, i32* %18, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %66

32:                                               ; preds = %3
  %33 = load %struct.hl_device*, %struct.hl_device** %8, align 8
  %34 = load %struct.hl_mem_in*, %struct.hl_mem_in** %6, align 8
  %35 = call i32 @get_userptr_from_host_va(%struct.hl_device* %33, %struct.hl_mem_in* %34, %struct.hl_userptr** %11)
  store i32 %35, i32* %17, align 4
  %36 = load i32, i32* %17, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %32
  %39 = load %struct.hl_device*, %struct.hl_device** %8, align 8
  %40 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 (i32, i8*, ...) @dev_err(i32 %41, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %43 = load i32, i32* %17, align 4
  store i32 %43, i32* %4, align 4
  br label %283

44:                                               ; preds = %32
  %45 = load %struct.hl_ctx*, %struct.hl_ctx** %5, align 8
  %46 = load %struct.hl_userptr*, %struct.hl_userptr** %11, align 8
  %47 = call i32 @init_phys_pg_pack_from_userptr(%struct.hl_ctx* %45, %struct.hl_userptr* %46, %struct.hl_vm_phys_pg_pack** %10)
  store i32 %47, i32* %17, align 4
  %48 = load i32, i32* %17, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %44
  %51 = load %struct.hl_device*, %struct.hl_device** %8, align 8
  %52 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.hl_mem_in*, %struct.hl_mem_in** %6, align 8
  %55 = getelementptr inbounds %struct.hl_mem_in, %struct.hl_mem_in* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call i32 (i32, i8*, ...) @dev_err(i32 %53, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  br label %274

59:                                               ; preds = %44
  %60 = load %struct.hl_userptr*, %struct.hl_userptr** %11, align 8
  %61 = bitcast %struct.hl_userptr* %60 to i32*
  store i32* %61, i32** %13, align 8
  %62 = load %struct.hl_mem_in*, %struct.hl_mem_in** %6, align 8
  %63 = getelementptr inbounds %struct.hl_mem_in, %struct.hl_mem_in* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  store i64 %65, i64* %15, align 8
  br label %105

66:                                               ; preds = %3
  %67 = load %struct.hl_mem_in*, %struct.hl_mem_in** %6, align 8
  %68 = getelementptr inbounds %struct.hl_mem_in, %struct.hl_mem_in* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @lower_32_bits(i32 %70)
  store i32 %71, i32* %16, align 4
  %72 = load %struct.hl_vm*, %struct.hl_vm** %9, align 8
  %73 = getelementptr inbounds %struct.hl_vm, %struct.hl_vm* %72, i32 0, i32 0
  %74 = call i32 @spin_lock(i32* %73)
  %75 = load %struct.hl_vm*, %struct.hl_vm** %9, align 8
  %76 = getelementptr inbounds %struct.hl_vm, %struct.hl_vm* %75, i32 0, i32 1
  %77 = load i32, i32* %16, align 4
  %78 = call %struct.hl_vm_phys_pg_pack* @idr_find(i32* %76, i32 %77)
  store %struct.hl_vm_phys_pg_pack* %78, %struct.hl_vm_phys_pg_pack** %10, align 8
  %79 = load %struct.hl_vm_phys_pg_pack*, %struct.hl_vm_phys_pg_pack** %10, align 8
  %80 = icmp ne %struct.hl_vm_phys_pg_pack* %79, null
  br i1 %80, label %92, label %81

81:                                               ; preds = %66
  %82 = load %struct.hl_vm*, %struct.hl_vm** %9, align 8
  %83 = getelementptr inbounds %struct.hl_vm, %struct.hl_vm* %82, i32 0, i32 0
  %84 = call i32 @spin_unlock(i32* %83)
  %85 = load %struct.hl_device*, %struct.hl_device** %8, align 8
  %86 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* %16, align 4
  %89 = call i32 (i32, i8*, ...) @dev_err(i32 %87, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %88)
  %90 = load i32, i32* @EINVAL, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %4, align 4
  br label %283

92:                                               ; preds = %66
  %93 = load %struct.hl_vm_phys_pg_pack*, %struct.hl_vm_phys_pg_pack** %10, align 8
  %94 = getelementptr inbounds %struct.hl_vm_phys_pg_pack, %struct.hl_vm_phys_pg_pack* %93, i32 0, i32 2
  %95 = call i32 @atomic_inc(i32* %94)
  %96 = load %struct.hl_vm*, %struct.hl_vm** %9, align 8
  %97 = getelementptr inbounds %struct.hl_vm, %struct.hl_vm* %96, i32 0, i32 0
  %98 = call i32 @spin_unlock(i32* %97)
  %99 = load %struct.hl_vm_phys_pg_pack*, %struct.hl_vm_phys_pg_pack** %10, align 8
  %100 = bitcast %struct.hl_vm_phys_pg_pack* %99 to i32*
  store i32* %100, i32** %13, align 8
  %101 = load %struct.hl_mem_in*, %struct.hl_mem_in** %6, align 8
  %102 = getelementptr inbounds %struct.hl_mem_in, %struct.hl_mem_in* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  store i64 %104, i64* %15, align 8
  br label %105

105:                                              ; preds = %92, %59
  %106 = load i32, i32* %18, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %131, label %108

108:                                              ; preds = %105
  %109 = load %struct.hl_vm_phys_pg_pack*, %struct.hl_vm_phys_pg_pack** %10, align 8
  %110 = getelementptr inbounds %struct.hl_vm_phys_pg_pack, %struct.hl_vm_phys_pg_pack* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @HL_MEM_SHARED, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %131, label %115

115:                                              ; preds = %108
  %116 = load %struct.hl_vm_phys_pg_pack*, %struct.hl_vm_phys_pg_pack** %10, align 8
  %117 = getelementptr inbounds %struct.hl_vm_phys_pg_pack, %struct.hl_vm_phys_pg_pack* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.hl_ctx*, %struct.hl_ctx** %5, align 8
  %120 = getelementptr inbounds %struct.hl_ctx, %struct.hl_ctx* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %118, %121
  br i1 %122, label %123, label %131

123:                                              ; preds = %115
  %124 = load %struct.hl_device*, %struct.hl_device** %8, align 8
  %125 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* %16, align 4
  %128 = call i32 (i32, i8*, ...) @dev_err(i32 %126, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i32 %127)
  %129 = load i32, i32* @EPERM, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %17, align 4
  br label %263

131:                                              ; preds = %115, %108, %105
  %132 = load i32, i32* @GFP_KERNEL, align 4
  %133 = call %struct.hl_vm_hash_node* @kzalloc(i32 24, i32 %132)
  store %struct.hl_vm_hash_node* %133, %struct.hl_vm_hash_node** %12, align 8
  %134 = load %struct.hl_vm_hash_node*, %struct.hl_vm_hash_node** %12, align 8
  %135 = icmp ne %struct.hl_vm_hash_node* %134, null
  br i1 %135, label %139, label %136

136:                                              ; preds = %131
  %137 = load i32, i32* @ENOMEM, align 4
  %138 = sub nsw i32 0, %137
  store i32 %138, i32* %17, align 4
  br label %262

139:                                              ; preds = %131
  %140 = load %struct.hl_device*, %struct.hl_device** %8, align 8
  %141 = load i32, i32* %18, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %139
  %144 = load %struct.hl_ctx*, %struct.hl_ctx** %5, align 8
  %145 = getelementptr inbounds %struct.hl_ctx, %struct.hl_ctx* %144, i32 0, i32 2
  br label %149

146:                                              ; preds = %139
  %147 = load %struct.hl_ctx*, %struct.hl_ctx** %5, align 8
  %148 = getelementptr inbounds %struct.hl_ctx, %struct.hl_ctx* %147, i32 0, i32 1
  br label %149

149:                                              ; preds = %146, %143
  %150 = phi i32* [ %145, %143 ], [ %148, %146 ]
  %151 = load %struct.hl_vm_phys_pg_pack*, %struct.hl_vm_phys_pg_pack** %10, align 8
  %152 = getelementptr inbounds %struct.hl_vm_phys_pg_pack, %struct.hl_vm_phys_pg_pack* %151, i32 0, i32 3
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* %15, align 8
  %155 = load i32, i32* %18, align 4
  %156 = call i64 @get_va_block(%struct.hl_device* %140, i32* %150, i64 %153, i64 %154, i32 %155)
  store i64 %156, i64* %14, align 8
  %157 = load i64, i64* %14, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %167, label %159

159:                                              ; preds = %149
  %160 = load %struct.hl_device*, %struct.hl_device** %8, align 8
  %161 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = load i32, i32* %16, align 4
  %164 = call i32 (i32, i8*, ...) @dev_err(i32 %162, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %163)
  %165 = load i32, i32* @ENOMEM, align 4
  %166 = sub nsw i32 0, %165
  store i32 %166, i32* %17, align 4
  br label %259

167:                                              ; preds = %149
  %168 = load %struct.hl_ctx*, %struct.hl_ctx** %5, align 8
  %169 = getelementptr inbounds %struct.hl_ctx, %struct.hl_ctx* %168, i32 0, i32 5
  %170 = call i32 @mutex_lock(i32* %169)
  %171 = load %struct.hl_ctx*, %struct.hl_ctx** %5, align 8
  %172 = load i64, i64* %14, align 8
  %173 = load %struct.hl_vm_phys_pg_pack*, %struct.hl_vm_phys_pg_pack** %10, align 8
  %174 = call i32 @map_phys_page_pack(%struct.hl_ctx* %171, i64 %172, %struct.hl_vm_phys_pg_pack* %173)
  store i32 %174, i32* %17, align 4
  %175 = load i32, i32* %17, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %186

177:                                              ; preds = %167
  %178 = load %struct.hl_ctx*, %struct.hl_ctx** %5, align 8
  %179 = getelementptr inbounds %struct.hl_ctx, %struct.hl_ctx* %178, i32 0, i32 5
  %180 = call i32 @mutex_unlock(i32* %179)
  %181 = load %struct.hl_device*, %struct.hl_device** %8, align 8
  %182 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = load i32, i32* %16, align 4
  %185 = call i32 (i32, i8*, ...) @dev_err(i32 %183, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i32 %184)
  br label %230

186:                                              ; preds = %167
  %187 = load %struct.hl_device*, %struct.hl_device** %8, align 8
  %188 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %187, i32 0, i32 1
  %189 = load %struct.TYPE_6__*, %struct.TYPE_6__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %189, i32 0, i32 0
  %191 = load i32 (%struct.hl_device*, i32)*, i32 (%struct.hl_device*, i32)** %190, align 8
  %192 = load %struct.hl_device*, %struct.hl_device** %8, align 8
  %193 = call i32 %191(%struct.hl_device* %192, i32 0)
  %194 = load %struct.hl_ctx*, %struct.hl_ctx** %5, align 8
  %195 = getelementptr inbounds %struct.hl_ctx, %struct.hl_ctx* %194, i32 0, i32 5
  %196 = call i32 @mutex_unlock(i32* %195)
  %197 = load %struct.hl_vm_phys_pg_pack*, %struct.hl_vm_phys_pg_pack** %10, align 8
  %198 = getelementptr inbounds %struct.hl_vm_phys_pg_pack, %struct.hl_vm_phys_pg_pack* %197, i32 0, i32 4
  %199 = load i64, i64* %198, align 8
  %200 = load i64, i64* %14, align 8
  %201 = add nsw i64 %200, %199
  store i64 %201, i64* %14, align 8
  %202 = load i32*, i32** %13, align 8
  %203 = load %struct.hl_vm_hash_node*, %struct.hl_vm_hash_node** %12, align 8
  %204 = getelementptr inbounds %struct.hl_vm_hash_node, %struct.hl_vm_hash_node* %203, i32 0, i32 0
  store i32* %202, i32** %204, align 8
  %205 = load i64, i64* %14, align 8
  %206 = load %struct.hl_vm_hash_node*, %struct.hl_vm_hash_node** %12, align 8
  %207 = getelementptr inbounds %struct.hl_vm_hash_node, %struct.hl_vm_hash_node* %206, i32 0, i32 2
  store i64 %205, i64* %207, align 8
  %208 = load %struct.hl_ctx*, %struct.hl_ctx** %5, align 8
  %209 = getelementptr inbounds %struct.hl_ctx, %struct.hl_ctx* %208, i32 0, i32 3
  %210 = call i32 @mutex_lock(i32* %209)
  %211 = load %struct.hl_ctx*, %struct.hl_ctx** %5, align 8
  %212 = getelementptr inbounds %struct.hl_ctx, %struct.hl_ctx* %211, i32 0, i32 4
  %213 = load i32, i32* %212, align 4
  %214 = load %struct.hl_vm_hash_node*, %struct.hl_vm_hash_node** %12, align 8
  %215 = getelementptr inbounds %struct.hl_vm_hash_node, %struct.hl_vm_hash_node* %214, i32 0, i32 1
  %216 = load i64, i64* %14, align 8
  %217 = call i32 @hash_add(i32 %213, i32* %215, i64 %216)
  %218 = load %struct.hl_ctx*, %struct.hl_ctx** %5, align 8
  %219 = getelementptr inbounds %struct.hl_ctx, %struct.hl_ctx* %218, i32 0, i32 3
  %220 = call i32 @mutex_unlock(i32* %219)
  %221 = load i64, i64* %14, align 8
  %222 = load i64*, i64** %7, align 8
  store i64 %221, i64* %222, align 8
  %223 = load i32, i32* %18, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %229

225:                                              ; preds = %186
  %226 = load %struct.hl_device*, %struct.hl_device** %8, align 8
  %227 = load %struct.hl_vm_phys_pg_pack*, %struct.hl_vm_phys_pg_pack** %10, align 8
  %228 = call i32 @free_phys_pg_pack(%struct.hl_device* %226, %struct.hl_vm_phys_pg_pack* %227)
  br label %229

229:                                              ; preds = %225, %186
  store i32 0, i32* %4, align 4
  br label %283

230:                                              ; preds = %177
  %231 = load %struct.hl_device*, %struct.hl_device** %8, align 8
  %232 = load i32, i32* %18, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %237

234:                                              ; preds = %230
  %235 = load %struct.hl_ctx*, %struct.hl_ctx** %5, align 8
  %236 = getelementptr inbounds %struct.hl_ctx, %struct.hl_ctx* %235, i32 0, i32 2
  br label %240

237:                                              ; preds = %230
  %238 = load %struct.hl_ctx*, %struct.hl_ctx** %5, align 8
  %239 = getelementptr inbounds %struct.hl_ctx, %struct.hl_ctx* %238, i32 0, i32 1
  br label %240

240:                                              ; preds = %237, %234
  %241 = phi i32* [ %236, %234 ], [ %239, %237 ]
  %242 = load i64, i64* %14, align 8
  %243 = load i64, i64* %14, align 8
  %244 = load %struct.hl_vm_phys_pg_pack*, %struct.hl_vm_phys_pg_pack** %10, align 8
  %245 = getelementptr inbounds %struct.hl_vm_phys_pg_pack, %struct.hl_vm_phys_pg_pack* %244, i32 0, i32 3
  %246 = load i64, i64* %245, align 8
  %247 = add nsw i64 %243, %246
  %248 = sub nsw i64 %247, 1
  %249 = call i64 @add_va_block(%struct.hl_device* %231, i32* %241, i64 %242, i64 %248)
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %258

251:                                              ; preds = %240
  %252 = load %struct.hl_device*, %struct.hl_device** %8, align 8
  %253 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 8
  %255 = load i32, i32* %16, align 4
  %256 = load i64, i64* %14, align 8
  %257 = call i32 @dev_warn(i32 %254, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.6, i64 0, i64 0), i32 %255, i64 %256)
  br label %258

258:                                              ; preds = %251, %240
  br label %259

259:                                              ; preds = %258, %159
  %260 = load %struct.hl_vm_hash_node*, %struct.hl_vm_hash_node** %12, align 8
  %261 = call i32 @kfree(%struct.hl_vm_hash_node* %260)
  br label %262

262:                                              ; preds = %259, %136
  br label %263

263:                                              ; preds = %262, %123
  %264 = load %struct.hl_vm_phys_pg_pack*, %struct.hl_vm_phys_pg_pack** %10, align 8
  %265 = getelementptr inbounds %struct.hl_vm_phys_pg_pack, %struct.hl_vm_phys_pg_pack* %264, i32 0, i32 2
  %266 = call i32 @atomic_dec(i32* %265)
  %267 = load i32, i32* %18, align 4
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %273

269:                                              ; preds = %263
  %270 = load %struct.hl_device*, %struct.hl_device** %8, align 8
  %271 = load %struct.hl_vm_phys_pg_pack*, %struct.hl_vm_phys_pg_pack** %10, align 8
  %272 = call i32 @free_phys_pg_pack(%struct.hl_device* %270, %struct.hl_vm_phys_pg_pack* %271)
  br label %273

273:                                              ; preds = %269, %263
  br label %274

274:                                              ; preds = %273, %50
  %275 = load i32, i32* %18, align 4
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %281

277:                                              ; preds = %274
  %278 = load %struct.hl_device*, %struct.hl_device** %8, align 8
  %279 = load %struct.hl_userptr*, %struct.hl_userptr** %11, align 8
  %280 = call i32 @free_userptr(%struct.hl_device* %278, %struct.hl_userptr* %279)
  br label %281

281:                                              ; preds = %277, %274
  %282 = load i32, i32* %17, align 4
  store i32 %282, i32* %4, align 4
  br label %283

283:                                              ; preds = %281, %229, %81, %38
  %284 = load i32, i32* %4, align 4
  ret i32 %284
}

declare dso_local i32 @get_userptr_from_host_va(%struct.hl_device*, %struct.hl_mem_in*, %struct.hl_userptr**) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @init_phys_pg_pack_from_userptr(%struct.hl_ctx*, %struct.hl_userptr*, %struct.hl_vm_phys_pg_pack**) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.hl_vm_phys_pg_pack* @idr_find(i32*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local %struct.hl_vm_hash_node* @kzalloc(i32, i32) #1

declare dso_local i64 @get_va_block(%struct.hl_device*, i32*, i64, i64, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @map_phys_page_pack(%struct.hl_ctx*, i64, %struct.hl_vm_phys_pg_pack*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @hash_add(i32, i32*, i64) #1

declare dso_local i32 @free_phys_pg_pack(%struct.hl_device*, %struct.hl_vm_phys_pg_pack*) #1

declare dso_local i64 @add_va_block(%struct.hl_device*, i32*, i64, i64) #1

declare dso_local i32 @dev_warn(i32, i8*, i32, i64) #1

declare dso_local i32 @kfree(%struct.hl_vm_hash_node*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @free_userptr(%struct.hl_device*, %struct.hl_userptr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
