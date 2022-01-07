; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_lan_hmc.c_i40e_create_lan_hmc_object.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_lan_hmc.c_i40e_create_lan_hmc_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { i32 }
%struct.i40e_hmc_lan_create_obj_info = type { i64, i64, i64, i64, %struct.TYPE_22__*, i32 }
%struct.TYPE_22__ = type { i64, %struct.TYPE_21__, %struct.TYPE_15__* }
%struct.TYPE_21__ = type { i64, %struct.i40e_hmc_sd_entry* }
%struct.i40e_hmc_sd_entry = type { i32, i32, %struct.TYPE_20__ }
%struct.TYPE_20__ = type { %struct.TYPE_19__, %struct.TYPE_17__ }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i64 }

@I40E_ERR_BAD_PTR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"i40e_create_lan_hmc_object: bad info ptr\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"i40e_create_lan_hmc_object: bad hmc_info ptr\0A\00", align 1
@I40E_HMC_INFO_SIGNATURE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [43 x i8] c"i40e_create_lan_hmc_object: bad signature\0A\00", align 1
@I40E_ERR_INVALID_HMC_OBJ_INDEX = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [46 x i8] c"i40e_create_lan_hmc_object: returns error %d\0A\00", align 1
@I40E_ERR_INVALID_HMC_OBJ_COUNT = common dso_local global i64 0, align 8
@I40E_ERR_INVALID_SD_INDEX = common dso_local global i64 0, align 8
@I40E_HMC_DIRECT_BP_SIZE = common dso_local global i64 0, align 8
@I40E_HMC_MAX_BP_COUNT = common dso_local global i64 0, align 8
@I40E_ERR_INVALID_SD_TYPE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.i40e_hw*, %struct.i40e_hmc_lan_create_obj_info*)* @i40e_create_lan_hmc_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @i40e_create_lan_hmc_object(%struct.i40e_hw* %0, %struct.i40e_hmc_lan_create_obj_info* %1) #0 {
  %3 = alloca %struct.i40e_hw*, align 8
  %4 = alloca %struct.i40e_hmc_lan_create_obj_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.i40e_hmc_sd_entry*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.i40e_hw* %0, %struct.i40e_hw** %3, align 8
  store %struct.i40e_hmc_lan_create_obj_info* %1, %struct.i40e_hmc_lan_create_obj_info** %4, align 8
  store i64 0, i64* %5, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  store i32 0, i32* %11, align 4
  %17 = load %struct.i40e_hmc_lan_create_obj_info*, %struct.i40e_hmc_lan_create_obj_info** %4, align 8
  %18 = icmp eq %struct.i40e_hmc_lan_create_obj_info* null, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = load i64, i64* @I40E_ERR_BAD_PTR, align 8
  store i64 %20, i64* %5, align 8
  %21 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %22 = call i32 (%struct.i40e_hw*, i8*, ...) @hw_dbg(%struct.i40e_hw* %21, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %353

23:                                               ; preds = %2
  %24 = load %struct.i40e_hmc_lan_create_obj_info*, %struct.i40e_hmc_lan_create_obj_info** %4, align 8
  %25 = getelementptr inbounds %struct.i40e_hmc_lan_create_obj_info, %struct.i40e_hmc_lan_create_obj_info* %24, i32 0, i32 4
  %26 = load %struct.TYPE_22__*, %struct.TYPE_22__** %25, align 8
  %27 = icmp eq %struct.TYPE_22__* null, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load i64, i64* @I40E_ERR_BAD_PTR, align 8
  store i64 %29, i64* %5, align 8
  %30 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %31 = call i32 (%struct.i40e_hw*, i8*, ...) @hw_dbg(%struct.i40e_hw* %30, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  br label %353

32:                                               ; preds = %23
  %33 = load i64, i64* @I40E_HMC_INFO_SIGNATURE, align 8
  %34 = load %struct.i40e_hmc_lan_create_obj_info*, %struct.i40e_hmc_lan_create_obj_info** %4, align 8
  %35 = getelementptr inbounds %struct.i40e_hmc_lan_create_obj_info, %struct.i40e_hmc_lan_create_obj_info* %34, i32 0, i32 4
  %36 = load %struct.TYPE_22__*, %struct.TYPE_22__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %33, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %32
  %41 = load i64, i64* @I40E_ERR_BAD_PTR, align 8
  store i64 %41, i64* %5, align 8
  %42 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %43 = call i32 (%struct.i40e_hw*, i8*, ...) @hw_dbg(%struct.i40e_hw* %42, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  br label %353

44:                                               ; preds = %32
  %45 = load %struct.i40e_hmc_lan_create_obj_info*, %struct.i40e_hmc_lan_create_obj_info** %4, align 8
  %46 = getelementptr inbounds %struct.i40e_hmc_lan_create_obj_info, %struct.i40e_hmc_lan_create_obj_info* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.i40e_hmc_lan_create_obj_info*, %struct.i40e_hmc_lan_create_obj_info** %4, align 8
  %49 = getelementptr inbounds %struct.i40e_hmc_lan_create_obj_info, %struct.i40e_hmc_lan_create_obj_info* %48, i32 0, i32 4
  %50 = load %struct.TYPE_22__*, %struct.TYPE_22__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %50, i32 0, i32 2
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %51, align 8
  %53 = load %struct.i40e_hmc_lan_create_obj_info*, %struct.i40e_hmc_lan_create_obj_info** %4, align 8
  %54 = getelementptr inbounds %struct.i40e_hmc_lan_create_obj_info, %struct.i40e_hmc_lan_create_obj_info* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp sge i64 %47, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %44
  %61 = load i64, i64* @I40E_ERR_INVALID_HMC_OBJ_INDEX, align 8
  store i64 %61, i64* %5, align 8
  %62 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %63 = load i64, i64* %5, align 8
  %64 = call i32 (%struct.i40e_hw*, i8*, ...) @hw_dbg(%struct.i40e_hw* %62, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i64 %63)
  br label %353

65:                                               ; preds = %44
  %66 = load %struct.i40e_hmc_lan_create_obj_info*, %struct.i40e_hmc_lan_create_obj_info** %4, align 8
  %67 = getelementptr inbounds %struct.i40e_hmc_lan_create_obj_info, %struct.i40e_hmc_lan_create_obj_info* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.i40e_hmc_lan_create_obj_info*, %struct.i40e_hmc_lan_create_obj_info** %4, align 8
  %70 = getelementptr inbounds %struct.i40e_hmc_lan_create_obj_info, %struct.i40e_hmc_lan_create_obj_info* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = add nsw i64 %68, %71
  %73 = load %struct.i40e_hmc_lan_create_obj_info*, %struct.i40e_hmc_lan_create_obj_info** %4, align 8
  %74 = getelementptr inbounds %struct.i40e_hmc_lan_create_obj_info, %struct.i40e_hmc_lan_create_obj_info* %73, i32 0, i32 4
  %75 = load %struct.TYPE_22__*, %struct.TYPE_22__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %75, i32 0, i32 2
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %76, align 8
  %78 = load %struct.i40e_hmc_lan_create_obj_info*, %struct.i40e_hmc_lan_create_obj_info** %4, align 8
  %79 = getelementptr inbounds %struct.i40e_hmc_lan_create_obj_info, %struct.i40e_hmc_lan_create_obj_info* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp sgt i64 %72, %83
  br i1 %84, label %85, label %90

85:                                               ; preds = %65
  %86 = load i64, i64* @I40E_ERR_INVALID_HMC_OBJ_COUNT, align 8
  store i64 %86, i64* %5, align 8
  %87 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %88 = load i64, i64* %5, align 8
  %89 = call i32 (%struct.i40e_hw*, i8*, ...) @hw_dbg(%struct.i40e_hw* %87, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i64 %88)
  br label %353

90:                                               ; preds = %65
  %91 = load %struct.i40e_hmc_lan_create_obj_info*, %struct.i40e_hmc_lan_create_obj_info** %4, align 8
  %92 = getelementptr inbounds %struct.i40e_hmc_lan_create_obj_info, %struct.i40e_hmc_lan_create_obj_info* %91, i32 0, i32 4
  %93 = load %struct.TYPE_22__*, %struct.TYPE_22__** %92, align 8
  %94 = load %struct.i40e_hmc_lan_create_obj_info*, %struct.i40e_hmc_lan_create_obj_info** %4, align 8
  %95 = getelementptr inbounds %struct.i40e_hmc_lan_create_obj_info, %struct.i40e_hmc_lan_create_obj_info* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.i40e_hmc_lan_create_obj_info*, %struct.i40e_hmc_lan_create_obj_info** %4, align 8
  %98 = getelementptr inbounds %struct.i40e_hmc_lan_create_obj_info, %struct.i40e_hmc_lan_create_obj_info* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.i40e_hmc_lan_create_obj_info*, %struct.i40e_hmc_lan_create_obj_info** %4, align 8
  %101 = getelementptr inbounds %struct.i40e_hmc_lan_create_obj_info, %struct.i40e_hmc_lan_create_obj_info* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = call i32 @I40E_FIND_SD_INDEX_LIMIT(%struct.TYPE_22__* %93, i64 %96, i64 %99, i64 %102, i64* %12, i64* %13)
  %104 = load i64, i64* %12, align 8
  %105 = load %struct.i40e_hmc_lan_create_obj_info*, %struct.i40e_hmc_lan_create_obj_info** %4, align 8
  %106 = getelementptr inbounds %struct.i40e_hmc_lan_create_obj_info, %struct.i40e_hmc_lan_create_obj_info* %105, i32 0, i32 4
  %107 = load %struct.TYPE_22__*, %struct.TYPE_22__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = icmp sge i64 %104, %110
  br i1 %111, label %121, label %112

112:                                              ; preds = %90
  %113 = load i64, i64* %13, align 8
  %114 = load %struct.i40e_hmc_lan_create_obj_info*, %struct.i40e_hmc_lan_create_obj_info** %4, align 8
  %115 = getelementptr inbounds %struct.i40e_hmc_lan_create_obj_info, %struct.i40e_hmc_lan_create_obj_info* %114, i32 0, i32 4
  %116 = load %struct.TYPE_22__*, %struct.TYPE_22__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = icmp sgt i64 %113, %119
  br i1 %120, label %121, label %123

121:                                              ; preds = %112, %90
  %122 = load i64, i64* @I40E_ERR_INVALID_SD_INDEX, align 8
  store i64 %122, i64* %5, align 8
  br label %353

123:                                              ; preds = %112
  %124 = load %struct.i40e_hmc_lan_create_obj_info*, %struct.i40e_hmc_lan_create_obj_info** %4, align 8
  %125 = getelementptr inbounds %struct.i40e_hmc_lan_create_obj_info, %struct.i40e_hmc_lan_create_obj_info* %124, i32 0, i32 4
  %126 = load %struct.TYPE_22__*, %struct.TYPE_22__** %125, align 8
  %127 = load %struct.i40e_hmc_lan_create_obj_info*, %struct.i40e_hmc_lan_create_obj_info** %4, align 8
  %128 = getelementptr inbounds %struct.i40e_hmc_lan_create_obj_info, %struct.i40e_hmc_lan_create_obj_info* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.i40e_hmc_lan_create_obj_info*, %struct.i40e_hmc_lan_create_obj_info** %4, align 8
  %131 = getelementptr inbounds %struct.i40e_hmc_lan_create_obj_info, %struct.i40e_hmc_lan_create_obj_info* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.i40e_hmc_lan_create_obj_info*, %struct.i40e_hmc_lan_create_obj_info** %4, align 8
  %134 = getelementptr inbounds %struct.i40e_hmc_lan_create_obj_info, %struct.i40e_hmc_lan_create_obj_info* %133, i32 0, i32 2
  %135 = load i64, i64* %134, align 8
  %136 = call i32 @I40E_FIND_PD_INDEX_LIMIT(%struct.TYPE_22__* %126, i64 %129, i64 %132, i64 %135, i64* %9, i64* %10)
  %137 = load %struct.i40e_hmc_lan_create_obj_info*, %struct.i40e_hmc_lan_create_obj_info** %4, align 8
  %138 = getelementptr inbounds %struct.i40e_hmc_lan_create_obj_info, %struct.i40e_hmc_lan_create_obj_info* %137, i32 0, i32 3
  %139 = load i64, i64* %138, align 8
  %140 = icmp eq i64 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %123
  %142 = load i64, i64* @I40E_HMC_DIRECT_BP_SIZE, align 8
  store i64 %142, i64* %14, align 8
  br label %147

143:                                              ; preds = %123
  %144 = load %struct.i40e_hmc_lan_create_obj_info*, %struct.i40e_hmc_lan_create_obj_info** %4, align 8
  %145 = getelementptr inbounds %struct.i40e_hmc_lan_create_obj_info, %struct.i40e_hmc_lan_create_obj_info* %144, i32 0, i32 3
  %146 = load i64, i64* %145, align 8
  store i64 %146, i64* %14, align 8
  br label %147

147:                                              ; preds = %143, %141
  %148 = load i64, i64* %12, align 8
  store i64 %148, i64* %16, align 8
  br label %149

149:                                              ; preds = %277, %147
  %150 = load i64, i64* %16, align 8
  %151 = load i64, i64* %13, align 8
  %152 = icmp slt i64 %150, %151
  br i1 %152, label %153, label %280

153:                                              ; preds = %149
  %154 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %155 = load %struct.i40e_hmc_lan_create_obj_info*, %struct.i40e_hmc_lan_create_obj_info** %4, align 8
  %156 = getelementptr inbounds %struct.i40e_hmc_lan_create_obj_info, %struct.i40e_hmc_lan_create_obj_info* %155, i32 0, i32 4
  %157 = load %struct.TYPE_22__*, %struct.TYPE_22__** %156, align 8
  %158 = load i64, i64* %16, align 8
  %159 = load %struct.i40e_hmc_lan_create_obj_info*, %struct.i40e_hmc_lan_create_obj_info** %4, align 8
  %160 = getelementptr inbounds %struct.i40e_hmc_lan_create_obj_info, %struct.i40e_hmc_lan_create_obj_info* %159, i32 0, i32 5
  %161 = load i32, i32* %160, align 8
  %162 = load i64, i64* %14, align 8
  %163 = call i64 @i40e_add_sd_table_entry(%struct.i40e_hw* %154, %struct.TYPE_22__* %157, i64 %158, i32 %161, i64 %162)
  store i64 %163, i64* %5, align 8
  %164 = load i64, i64* %5, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %153
  br label %281

167:                                              ; preds = %153
  %168 = load %struct.i40e_hmc_lan_create_obj_info*, %struct.i40e_hmc_lan_create_obj_info** %4, align 8
  %169 = getelementptr inbounds %struct.i40e_hmc_lan_create_obj_info, %struct.i40e_hmc_lan_create_obj_info* %168, i32 0, i32 4
  %170 = load %struct.TYPE_22__*, %struct.TYPE_22__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %171, i32 0, i32 1
  %173 = load %struct.i40e_hmc_sd_entry*, %struct.i40e_hmc_sd_entry** %172, align 8
  %174 = load i64, i64* %16, align 8
  %175 = getelementptr inbounds %struct.i40e_hmc_sd_entry, %struct.i40e_hmc_sd_entry* %173, i64 %174
  store %struct.i40e_hmc_sd_entry* %175, %struct.i40e_hmc_sd_entry** %6, align 8
  %176 = load %struct.i40e_hmc_sd_entry*, %struct.i40e_hmc_sd_entry** %6, align 8
  %177 = getelementptr inbounds %struct.i40e_hmc_sd_entry, %struct.i40e_hmc_sd_entry* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = icmp eq i32 128, %178
  br i1 %179, label %180, label %236

180:                                              ; preds = %167
  %181 = load i64, i64* %9, align 8
  %182 = load i64, i64* %16, align 8
  %183 = load i64, i64* @I40E_HMC_MAX_BP_COUNT, align 8
  %184 = mul nsw i64 %182, %183
  %185 = call i64 @max(i64 %181, i64 %184)
  store i64 %185, i64* %7, align 8
  %186 = load i64, i64* %10, align 8
  %187 = load i64, i64* %16, align 8
  %188 = add nsw i64 %187, 1
  %189 = load i64, i64* @I40E_HMC_MAX_BP_COUNT, align 8
  %190 = mul nsw i64 %188, %189
  %191 = call i64 @min(i64 %186, i64 %190)
  store i64 %191, i64* %8, align 8
  %192 = load i64, i64* %7, align 8
  store i64 %192, i64* %15, align 8
  br label %193

193:                                              ; preds = %208, %180
  %194 = load i64, i64* %15, align 8
  %195 = load i64, i64* %8, align 8
  %196 = icmp slt i64 %194, %195
  br i1 %196, label %197, label %211

197:                                              ; preds = %193
  %198 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %199 = load %struct.i40e_hmc_lan_create_obj_info*, %struct.i40e_hmc_lan_create_obj_info** %4, align 8
  %200 = getelementptr inbounds %struct.i40e_hmc_lan_create_obj_info, %struct.i40e_hmc_lan_create_obj_info* %199, i32 0, i32 4
  %201 = load %struct.TYPE_22__*, %struct.TYPE_22__** %200, align 8
  %202 = load i64, i64* %15, align 8
  %203 = call i64 @i40e_add_pd_table_entry(%struct.i40e_hw* %198, %struct.TYPE_22__* %201, i64 %202, i32* null)
  store i64 %203, i64* %5, align 8
  %204 = load i64, i64* %5, align 8
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %207

206:                                              ; preds = %197
  store i32 1, i32* %11, align 4
  br label %211

207:                                              ; preds = %197
  br label %208

208:                                              ; preds = %207
  %209 = load i64, i64* %15, align 8
  %210 = add nsw i64 %209, 1
  store i64 %210, i64* %15, align 8
  br label %193

211:                                              ; preds = %206, %193
  %212 = load i32, i32* %11, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %235

214:                                              ; preds = %211
  br label %215

215:                                              ; preds = %224, %214
  %216 = load i64, i64* %15, align 8
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %222

218:                                              ; preds = %215
  %219 = load i64, i64* %15, align 8
  %220 = load i64, i64* %7, align 8
  %221 = icmp sgt i64 %219, %220
  br label %222

222:                                              ; preds = %218, %215
  %223 = phi i1 [ false, %215 ], [ %221, %218 ]
  br i1 %223, label %224, label %234

224:                                              ; preds = %222
  %225 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %226 = load %struct.i40e_hmc_lan_create_obj_info*, %struct.i40e_hmc_lan_create_obj_info** %4, align 8
  %227 = getelementptr inbounds %struct.i40e_hmc_lan_create_obj_info, %struct.i40e_hmc_lan_create_obj_info* %226, i32 0, i32 4
  %228 = load %struct.TYPE_22__*, %struct.TYPE_22__** %227, align 8
  %229 = load i64, i64* %15, align 8
  %230 = sub nsw i64 %229, 1
  %231 = call i32 @i40e_remove_pd_bp(%struct.i40e_hw* %225, %struct.TYPE_22__* %228, i64 %230)
  %232 = load i64, i64* %15, align 8
  %233 = add nsw i64 %232, -1
  store i64 %233, i64* %15, align 8
  br label %215

234:                                              ; preds = %222
  br label %235

235:                                              ; preds = %234, %211
  br label %236

236:                                              ; preds = %235, %167
  %237 = load %struct.i40e_hmc_sd_entry*, %struct.i40e_hmc_sd_entry** %6, align 8
  %238 = getelementptr inbounds %struct.i40e_hmc_sd_entry, %struct.i40e_hmc_sd_entry* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %276, label %241

241:                                              ; preds = %236
  %242 = load %struct.i40e_hmc_sd_entry*, %struct.i40e_hmc_sd_entry** %6, align 8
  %243 = getelementptr inbounds %struct.i40e_hmc_sd_entry, %struct.i40e_hmc_sd_entry* %242, i32 0, i32 1
  store i32 1, i32* %243, align 4
  %244 = load %struct.i40e_hmc_sd_entry*, %struct.i40e_hmc_sd_entry** %6, align 8
  %245 = getelementptr inbounds %struct.i40e_hmc_sd_entry, %struct.i40e_hmc_sd_entry* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 4
  switch i32 %246, label %273 [
    i32 128, label %247
    i32 129, label %260
  ]

247:                                              ; preds = %241
  %248 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %249 = load %struct.i40e_hmc_sd_entry*, %struct.i40e_hmc_sd_entry** %6, align 8
  %250 = getelementptr inbounds %struct.i40e_hmc_sd_entry, %struct.i40e_hmc_sd_entry* %249, i32 0, i32 2
  %251 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %250, i32 0, i32 1
  %252 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %251, i32 0, i32 0
  %253 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 4
  %255 = load i64, i64* %16, align 8
  %256 = load %struct.i40e_hmc_sd_entry*, %struct.i40e_hmc_sd_entry** %6, align 8
  %257 = getelementptr inbounds %struct.i40e_hmc_sd_entry, %struct.i40e_hmc_sd_entry* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 4
  %259 = call i32 @I40E_SET_PF_SD_ENTRY(%struct.i40e_hw* %248, i32 %254, i64 %255, i32 %258)
  br label %275

260:                                              ; preds = %241
  %261 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %262 = load %struct.i40e_hmc_sd_entry*, %struct.i40e_hmc_sd_entry** %6, align 8
  %263 = getelementptr inbounds %struct.i40e_hmc_sd_entry, %struct.i40e_hmc_sd_entry* %262, i32 0, i32 2
  %264 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %263, i32 0, i32 0
  %265 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %264, i32 0, i32 0
  %266 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 4
  %268 = load i64, i64* %16, align 8
  %269 = load %struct.i40e_hmc_sd_entry*, %struct.i40e_hmc_sd_entry** %6, align 8
  %270 = getelementptr inbounds %struct.i40e_hmc_sd_entry, %struct.i40e_hmc_sd_entry* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 4
  %272 = call i32 @I40E_SET_PF_SD_ENTRY(%struct.i40e_hw* %261, i32 %267, i64 %268, i32 %271)
  br label %275

273:                                              ; preds = %241
  %274 = load i64, i64* @I40E_ERR_INVALID_SD_TYPE, align 8
  store i64 %274, i64* %5, align 8
  br label %353

275:                                              ; preds = %260, %247
  br label %276

276:                                              ; preds = %275, %236
  br label %277

277:                                              ; preds = %276
  %278 = load i64, i64* %16, align 8
  %279 = add nsw i64 %278, 1
  store i64 %279, i64* %16, align 8
  br label %149

280:                                              ; preds = %149
  br label %353

281:                                              ; preds = %166
  br label %282

282:                                              ; preds = %349, %281
  %283 = load i64, i64* %16, align 8
  %284 = icmp ne i64 %283, 0
  br i1 %284, label %285, label %289

285:                                              ; preds = %282
  %286 = load i64, i64* %16, align 8
  %287 = load i64, i64* %12, align 8
  %288 = icmp sgt i64 %286, %287
  br label %289

289:                                              ; preds = %285, %282
  %290 = phi i1 [ false, %282 ], [ %288, %285 ]
  br i1 %290, label %291, label %352

291:                                              ; preds = %289
  %292 = load %struct.i40e_hmc_lan_create_obj_info*, %struct.i40e_hmc_lan_create_obj_info** %4, align 8
  %293 = getelementptr inbounds %struct.i40e_hmc_lan_create_obj_info, %struct.i40e_hmc_lan_create_obj_info* %292, i32 0, i32 4
  %294 = load %struct.TYPE_22__*, %struct.TYPE_22__** %293, align 8
  %295 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %294, i32 0, i32 1
  %296 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %295, i32 0, i32 1
  %297 = load %struct.i40e_hmc_sd_entry*, %struct.i40e_hmc_sd_entry** %296, align 8
  %298 = load i64, i64* %16, align 8
  %299 = sub nsw i64 %298, 1
  %300 = getelementptr inbounds %struct.i40e_hmc_sd_entry, %struct.i40e_hmc_sd_entry* %297, i64 %299
  store %struct.i40e_hmc_sd_entry* %300, %struct.i40e_hmc_sd_entry** %6, align 8
  %301 = load %struct.i40e_hmc_sd_entry*, %struct.i40e_hmc_sd_entry** %6, align 8
  %302 = getelementptr inbounds %struct.i40e_hmc_sd_entry, %struct.i40e_hmc_sd_entry* %301, i32 0, i32 0
  %303 = load i32, i32* %302, align 4
  switch i32 %303, label %347 [
    i32 128, label %304
    i32 129, label %339
  ]

304:                                              ; preds = %291
  %305 = load i64, i64* %9, align 8
  %306 = load i64, i64* %16, align 8
  %307 = sub nsw i64 %306, 1
  %308 = load i64, i64* @I40E_HMC_MAX_BP_COUNT, align 8
  %309 = mul nsw i64 %307, %308
  %310 = call i64 @max(i64 %305, i64 %309)
  store i64 %310, i64* %7, align 8
  %311 = load i64, i64* %10, align 8
  %312 = load i64, i64* %16, align 8
  %313 = load i64, i64* @I40E_HMC_MAX_BP_COUNT, align 8
  %314 = mul nsw i64 %312, %313
  %315 = call i64 @min(i64 %311, i64 %314)
  store i64 %315, i64* %8, align 8
  %316 = load i64, i64* %7, align 8
  store i64 %316, i64* %15, align 8
  br label %317

317:                                              ; preds = %328, %304
  %318 = load i64, i64* %15, align 8
  %319 = load i64, i64* %8, align 8
  %320 = icmp slt i64 %318, %319
  br i1 %320, label %321, label %331

321:                                              ; preds = %317
  %322 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %323 = load %struct.i40e_hmc_lan_create_obj_info*, %struct.i40e_hmc_lan_create_obj_info** %4, align 8
  %324 = getelementptr inbounds %struct.i40e_hmc_lan_create_obj_info, %struct.i40e_hmc_lan_create_obj_info* %323, i32 0, i32 4
  %325 = load %struct.TYPE_22__*, %struct.TYPE_22__** %324, align 8
  %326 = load i64, i64* %15, align 8
  %327 = call i32 @i40e_remove_pd_bp(%struct.i40e_hw* %322, %struct.TYPE_22__* %325, i64 %326)
  br label %328

328:                                              ; preds = %321
  %329 = load i64, i64* %15, align 8
  %330 = add nsw i64 %329, 1
  store i64 %330, i64* %15, align 8
  br label %317

331:                                              ; preds = %317
  %332 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %333 = load %struct.i40e_hmc_lan_create_obj_info*, %struct.i40e_hmc_lan_create_obj_info** %4, align 8
  %334 = getelementptr inbounds %struct.i40e_hmc_lan_create_obj_info, %struct.i40e_hmc_lan_create_obj_info* %333, i32 0, i32 4
  %335 = load %struct.TYPE_22__*, %struct.TYPE_22__** %334, align 8
  %336 = load i64, i64* %16, align 8
  %337 = sub nsw i64 %336, 1
  %338 = call i32 @i40e_remove_pd_page(%struct.i40e_hw* %332, %struct.TYPE_22__* %335, i64 %337)
  br label %349

339:                                              ; preds = %291
  %340 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %341 = load %struct.i40e_hmc_lan_create_obj_info*, %struct.i40e_hmc_lan_create_obj_info** %4, align 8
  %342 = getelementptr inbounds %struct.i40e_hmc_lan_create_obj_info, %struct.i40e_hmc_lan_create_obj_info* %341, i32 0, i32 4
  %343 = load %struct.TYPE_22__*, %struct.TYPE_22__** %342, align 8
  %344 = load i64, i64* %16, align 8
  %345 = sub nsw i64 %344, 1
  %346 = call i32 @i40e_remove_sd_bp(%struct.i40e_hw* %340, %struct.TYPE_22__* %343, i64 %345)
  br label %349

347:                                              ; preds = %291
  %348 = load i64, i64* @I40E_ERR_INVALID_SD_TYPE, align 8
  store i64 %348, i64* %5, align 8
  br label %349

349:                                              ; preds = %347, %339, %331
  %350 = load i64, i64* %16, align 8
  %351 = add nsw i64 %350, -1
  store i64 %351, i64* %16, align 8
  br label %282

352:                                              ; preds = %289
  br label %353

353:                                              ; preds = %352, %280, %273, %121, %85, %60, %40, %28, %19
  %354 = load i64, i64* %5, align 8
  ret i64 %354
}

declare dso_local i32 @hw_dbg(%struct.i40e_hw*, i8*, ...) #1

declare dso_local i32 @I40E_FIND_SD_INDEX_LIMIT(%struct.TYPE_22__*, i64, i64, i64, i64*, i64*) #1

declare dso_local i32 @I40E_FIND_PD_INDEX_LIMIT(%struct.TYPE_22__*, i64, i64, i64, i64*, i64*) #1

declare dso_local i64 @i40e_add_sd_table_entry(%struct.i40e_hw*, %struct.TYPE_22__*, i64, i32, i64) #1

declare dso_local i64 @max(i64, i64) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i64 @i40e_add_pd_table_entry(%struct.i40e_hw*, %struct.TYPE_22__*, i64, i32*) #1

declare dso_local i32 @i40e_remove_pd_bp(%struct.i40e_hw*, %struct.TYPE_22__*, i64) #1

declare dso_local i32 @I40E_SET_PF_SD_ENTRY(%struct.i40e_hw*, i32, i64, i32) #1

declare dso_local i32 @i40e_remove_pd_page(%struct.i40e_hw*, %struct.TYPE_22__*, i64) #1

declare dso_local i32 @i40e_remove_sd_bp(%struct.i40e_hw*, %struct.TYPE_22__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
