; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_lan_hmc.c_i40e_delete_lan_hmc_object.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_lan_hmc.c_i40e_delete_lan_hmc_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { i32 }
%struct.i40e_hmc_lan_delete_obj_info = type { i64, i64, i64, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64, %struct.TYPE_15__, %struct.TYPE_11__* }
%struct.TYPE_15__ = type { i64, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.i40e_hmc_pd_table }
%struct.i40e_hmc_pd_table = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_11__ = type { i64 }

@I40E_ERR_BAD_PTR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"i40e_delete_hmc_object: bad info ptr\0A\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"i40e_delete_hmc_object: bad info->hmc_info ptr\0A\00", align 1
@I40E_HMC_INFO_SIGNATURE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [49 x i8] c"i40e_delete_hmc_object: bad hmc_info->signature\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"i40e_delete_hmc_object: bad sd_entry\0A\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"i40e_delete_hmc_object: bad hmc_info->hmc_obj\0A\00", align 1
@I40E_ERR_INVALID_HMC_OBJ_INDEX = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [42 x i8] c"i40e_delete_hmc_object: returns error %d\0A\00", align 1
@I40E_ERR_INVALID_HMC_OBJ_COUNT = common dso_local global i64 0, align 8
@I40E_HMC_PD_CNT_IN_SD = common dso_local global i64 0, align 8
@I40E_ERR_INVALID_SD_INDEX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.i40e_hw*, %struct.i40e_hmc_lan_delete_obj_info*)* @i40e_delete_lan_hmc_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @i40e_delete_lan_hmc_object(%struct.i40e_hw* %0, %struct.i40e_hmc_lan_delete_obj_info* %1) #0 {
  %3 = alloca %struct.i40e_hw*, align 8
  %4 = alloca %struct.i40e_hmc_lan_delete_obj_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.i40e_hmc_pd_table*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.i40e_hw* %0, %struct.i40e_hw** %3, align 8
  store %struct.i40e_hmc_lan_delete_obj_info* %1, %struct.i40e_hmc_lan_delete_obj_info** %4, align 8
  store i64 0, i64* %5, align 8
  %14 = load %struct.i40e_hmc_lan_delete_obj_info*, %struct.i40e_hmc_lan_delete_obj_info** %4, align 8
  %15 = icmp eq %struct.i40e_hmc_lan_delete_obj_info* null, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load i64, i64* @I40E_ERR_BAD_PTR, align 8
  store i64 %17, i64* %5, align 8
  %18 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %19 = call i32 (%struct.i40e_hw*, i8*, ...) @hw_dbg(%struct.i40e_hw* %18, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %273

20:                                               ; preds = %2
  %21 = load %struct.i40e_hmc_lan_delete_obj_info*, %struct.i40e_hmc_lan_delete_obj_info** %4, align 8
  %22 = getelementptr inbounds %struct.i40e_hmc_lan_delete_obj_info, %struct.i40e_hmc_lan_delete_obj_info* %21, i32 0, i32 3
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %24 = icmp eq %struct.TYPE_16__* null, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load i64, i64* @I40E_ERR_BAD_PTR, align 8
  store i64 %26, i64* %5, align 8
  %27 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %28 = call i32 (%struct.i40e_hw*, i8*, ...) @hw_dbg(%struct.i40e_hw* %27, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  br label %273

29:                                               ; preds = %20
  %30 = load i64, i64* @I40E_HMC_INFO_SIGNATURE, align 8
  %31 = load %struct.i40e_hmc_lan_delete_obj_info*, %struct.i40e_hmc_lan_delete_obj_info** %4, align 8
  %32 = getelementptr inbounds %struct.i40e_hmc_lan_delete_obj_info, %struct.i40e_hmc_lan_delete_obj_info* %31, i32 0, i32 3
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %30, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %29
  %38 = load i64, i64* @I40E_ERR_BAD_PTR, align 8
  store i64 %38, i64* %5, align 8
  %39 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %40 = call i32 (%struct.i40e_hw*, i8*, ...) @hw_dbg(%struct.i40e_hw* %39, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0))
  br label %273

41:                                               ; preds = %29
  %42 = load %struct.i40e_hmc_lan_delete_obj_info*, %struct.i40e_hmc_lan_delete_obj_info** %4, align 8
  %43 = getelementptr inbounds %struct.i40e_hmc_lan_delete_obj_info, %struct.i40e_hmc_lan_delete_obj_info* %42, i32 0, i32 3
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %46, align 8
  %48 = icmp eq %struct.TYPE_14__* null, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %41
  %50 = load i64, i64* @I40E_ERR_BAD_PTR, align 8
  store i64 %50, i64* %5, align 8
  %51 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %52 = call i32 (%struct.i40e_hw*, i8*, ...) @hw_dbg(%struct.i40e_hw* %51, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  br label %273

53:                                               ; preds = %41
  %54 = load %struct.i40e_hmc_lan_delete_obj_info*, %struct.i40e_hmc_lan_delete_obj_info** %4, align 8
  %55 = getelementptr inbounds %struct.i40e_hmc_lan_delete_obj_info, %struct.i40e_hmc_lan_delete_obj_info* %54, i32 0, i32 3
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 2
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %57, align 8
  %59 = icmp eq %struct.TYPE_11__* null, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %53
  %61 = load i64, i64* @I40E_ERR_BAD_PTR, align 8
  store i64 %61, i64* %5, align 8
  %62 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %63 = call i32 (%struct.i40e_hw*, i8*, ...) @hw_dbg(%struct.i40e_hw* %62, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0))
  br label %273

64:                                               ; preds = %53
  %65 = load %struct.i40e_hmc_lan_delete_obj_info*, %struct.i40e_hmc_lan_delete_obj_info** %4, align 8
  %66 = getelementptr inbounds %struct.i40e_hmc_lan_delete_obj_info, %struct.i40e_hmc_lan_delete_obj_info* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.i40e_hmc_lan_delete_obj_info*, %struct.i40e_hmc_lan_delete_obj_info** %4, align 8
  %69 = getelementptr inbounds %struct.i40e_hmc_lan_delete_obj_info, %struct.i40e_hmc_lan_delete_obj_info* %68, i32 0, i32 3
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 2
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %71, align 8
  %73 = load %struct.i40e_hmc_lan_delete_obj_info*, %struct.i40e_hmc_lan_delete_obj_info** %4, align 8
  %74 = getelementptr inbounds %struct.i40e_hmc_lan_delete_obj_info, %struct.i40e_hmc_lan_delete_obj_info* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp sge i64 %67, %78
  br i1 %79, label %80, label %85

80:                                               ; preds = %64
  %81 = load i64, i64* @I40E_ERR_INVALID_HMC_OBJ_INDEX, align 8
  store i64 %81, i64* %5, align 8
  %82 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %83 = load i64, i64* %5, align 8
  %84 = call i32 (%struct.i40e_hw*, i8*, ...) @hw_dbg(%struct.i40e_hw* %82, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i64 %83)
  br label %273

85:                                               ; preds = %64
  %86 = load %struct.i40e_hmc_lan_delete_obj_info*, %struct.i40e_hmc_lan_delete_obj_info** %4, align 8
  %87 = getelementptr inbounds %struct.i40e_hmc_lan_delete_obj_info, %struct.i40e_hmc_lan_delete_obj_info* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.i40e_hmc_lan_delete_obj_info*, %struct.i40e_hmc_lan_delete_obj_info** %4, align 8
  %90 = getelementptr inbounds %struct.i40e_hmc_lan_delete_obj_info, %struct.i40e_hmc_lan_delete_obj_info* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = add nsw i64 %88, %91
  %93 = load %struct.i40e_hmc_lan_delete_obj_info*, %struct.i40e_hmc_lan_delete_obj_info** %4, align 8
  %94 = getelementptr inbounds %struct.i40e_hmc_lan_delete_obj_info, %struct.i40e_hmc_lan_delete_obj_info* %93, i32 0, i32 3
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i32 0, i32 2
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %96, align 8
  %98 = load %struct.i40e_hmc_lan_delete_obj_info*, %struct.i40e_hmc_lan_delete_obj_info** %4, align 8
  %99 = getelementptr inbounds %struct.i40e_hmc_lan_delete_obj_info, %struct.i40e_hmc_lan_delete_obj_info* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = icmp sgt i64 %92, %103
  br i1 %104, label %105, label %110

105:                                              ; preds = %85
  %106 = load i64, i64* @I40E_ERR_INVALID_HMC_OBJ_COUNT, align 8
  store i64 %106, i64* %5, align 8
  %107 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %108 = load i64, i64* %5, align 8
  %109 = call i32 (%struct.i40e_hw*, i8*, ...) @hw_dbg(%struct.i40e_hw* %107, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i64 %108)
  br label %273

110:                                              ; preds = %85
  %111 = load %struct.i40e_hmc_lan_delete_obj_info*, %struct.i40e_hmc_lan_delete_obj_info** %4, align 8
  %112 = getelementptr inbounds %struct.i40e_hmc_lan_delete_obj_info, %struct.i40e_hmc_lan_delete_obj_info* %111, i32 0, i32 3
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %112, align 8
  %114 = load %struct.i40e_hmc_lan_delete_obj_info*, %struct.i40e_hmc_lan_delete_obj_info** %4, align 8
  %115 = getelementptr inbounds %struct.i40e_hmc_lan_delete_obj_info, %struct.i40e_hmc_lan_delete_obj_info* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.i40e_hmc_lan_delete_obj_info*, %struct.i40e_hmc_lan_delete_obj_info** %4, align 8
  %118 = getelementptr inbounds %struct.i40e_hmc_lan_delete_obj_info, %struct.i40e_hmc_lan_delete_obj_info* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.i40e_hmc_lan_delete_obj_info*, %struct.i40e_hmc_lan_delete_obj_info** %4, align 8
  %121 = getelementptr inbounds %struct.i40e_hmc_lan_delete_obj_info, %struct.i40e_hmc_lan_delete_obj_info* %120, i32 0, i32 2
  %122 = load i64, i64* %121, align 8
  %123 = call i32 @I40E_FIND_PD_INDEX_LIMIT(%struct.TYPE_16__* %113, i64 %116, i64 %119, i64 %122, i64* %7, i64* %8)
  %124 = load i64, i64* %7, align 8
  store i64 %124, i64* %13, align 8
  br label %125

125:                                              ; preds = %179, %110
  %126 = load i64, i64* %13, align 8
  %127 = load i64, i64* %8, align 8
  %128 = icmp ult i64 %126, %127
  br i1 %128, label %129, label %182

129:                                              ; preds = %125
  %130 = load i64, i64* %13, align 8
  %131 = load i64, i64* @I40E_HMC_PD_CNT_IN_SD, align 8
  %132 = udiv i64 %130, %131
  store i64 %132, i64* %10, align 8
  %133 = load %struct.i40e_hmc_lan_delete_obj_info*, %struct.i40e_hmc_lan_delete_obj_info** %4, align 8
  %134 = getelementptr inbounds %struct.i40e_hmc_lan_delete_obj_info, %struct.i40e_hmc_lan_delete_obj_info* %133, i32 0, i32 3
  %135 = load %struct.TYPE_16__*, %struct.TYPE_16__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %136, i32 0, i32 1
  %138 = load %struct.TYPE_14__*, %struct.TYPE_14__** %137, align 8
  %139 = load i64, i64* %10, align 8
  %140 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %138, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = icmp ne i32 128, %142
  br i1 %143, label %144, label %145

144:                                              ; preds = %129
  br label %179

145:                                              ; preds = %129
  %146 = load i64, i64* %13, align 8
  %147 = load i64, i64* @I40E_HMC_PD_CNT_IN_SD, align 8
  %148 = urem i64 %146, %147
  store i64 %148, i64* %9, align 8
  %149 = load %struct.i40e_hmc_lan_delete_obj_info*, %struct.i40e_hmc_lan_delete_obj_info** %4, align 8
  %150 = getelementptr inbounds %struct.i40e_hmc_lan_delete_obj_info, %struct.i40e_hmc_lan_delete_obj_info* %149, i32 0, i32 3
  %151 = load %struct.TYPE_16__*, %struct.TYPE_16__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %152, i32 0, i32 1
  %154 = load %struct.TYPE_14__*, %struct.TYPE_14__** %153, align 8
  %155 = load i64, i64* %10, align 8
  %156 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %154, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %156, i32 0, i32 2
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %157, i32 0, i32 0
  store %struct.i40e_hmc_pd_table* %158, %struct.i40e_hmc_pd_table** %6, align 8
  %159 = load %struct.i40e_hmc_pd_table*, %struct.i40e_hmc_pd_table** %6, align 8
  %160 = getelementptr inbounds %struct.i40e_hmc_pd_table, %struct.i40e_hmc_pd_table* %159, i32 0, i32 0
  %161 = load %struct.TYPE_13__*, %struct.TYPE_13__** %160, align 8
  %162 = load i64, i64* %9, align 8
  %163 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %161, i64 %162
  %164 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %178

167:                                              ; preds = %145
  %168 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %169 = load %struct.i40e_hmc_lan_delete_obj_info*, %struct.i40e_hmc_lan_delete_obj_info** %4, align 8
  %170 = getelementptr inbounds %struct.i40e_hmc_lan_delete_obj_info, %struct.i40e_hmc_lan_delete_obj_info* %169, i32 0, i32 3
  %171 = load %struct.TYPE_16__*, %struct.TYPE_16__** %170, align 8
  %172 = load i64, i64* %13, align 8
  %173 = call i64 @i40e_remove_pd_bp(%struct.i40e_hw* %168, %struct.TYPE_16__* %171, i64 %172)
  store i64 %173, i64* %5, align 8
  %174 = load i64, i64* %5, align 8
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %167
  br label %273

177:                                              ; preds = %167
  br label %178

178:                                              ; preds = %177, %145
  br label %179

179:                                              ; preds = %178, %144
  %180 = load i64, i64* %13, align 8
  %181 = add i64 %180, 1
  store i64 %181, i64* %13, align 8
  br label %125

182:                                              ; preds = %125
  %183 = load %struct.i40e_hmc_lan_delete_obj_info*, %struct.i40e_hmc_lan_delete_obj_info** %4, align 8
  %184 = getelementptr inbounds %struct.i40e_hmc_lan_delete_obj_info, %struct.i40e_hmc_lan_delete_obj_info* %183, i32 0, i32 3
  %185 = load %struct.TYPE_16__*, %struct.TYPE_16__** %184, align 8
  %186 = load %struct.i40e_hmc_lan_delete_obj_info*, %struct.i40e_hmc_lan_delete_obj_info** %4, align 8
  %187 = getelementptr inbounds %struct.i40e_hmc_lan_delete_obj_info, %struct.i40e_hmc_lan_delete_obj_info* %186, i32 0, i32 1
  %188 = load i64, i64* %187, align 8
  %189 = load %struct.i40e_hmc_lan_delete_obj_info*, %struct.i40e_hmc_lan_delete_obj_info** %4, align 8
  %190 = getelementptr inbounds %struct.i40e_hmc_lan_delete_obj_info, %struct.i40e_hmc_lan_delete_obj_info* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = load %struct.i40e_hmc_lan_delete_obj_info*, %struct.i40e_hmc_lan_delete_obj_info** %4, align 8
  %193 = getelementptr inbounds %struct.i40e_hmc_lan_delete_obj_info, %struct.i40e_hmc_lan_delete_obj_info* %192, i32 0, i32 2
  %194 = load i64, i64* %193, align 8
  %195 = call i32 @I40E_FIND_SD_INDEX_LIMIT(%struct.TYPE_16__* %185, i64 %188, i64 %191, i64 %194, i64* %10, i64* %11)
  %196 = load i64, i64* %10, align 8
  %197 = load %struct.i40e_hmc_lan_delete_obj_info*, %struct.i40e_hmc_lan_delete_obj_info** %4, align 8
  %198 = getelementptr inbounds %struct.i40e_hmc_lan_delete_obj_info, %struct.i40e_hmc_lan_delete_obj_info* %197, i32 0, i32 3
  %199 = load %struct.TYPE_16__*, %struct.TYPE_16__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %199, i32 0, i32 1
  %201 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = icmp uge i64 %196, %202
  br i1 %203, label %213, label %204

204:                                              ; preds = %182
  %205 = load i64, i64* %11, align 8
  %206 = load %struct.i40e_hmc_lan_delete_obj_info*, %struct.i40e_hmc_lan_delete_obj_info** %4, align 8
  %207 = getelementptr inbounds %struct.i40e_hmc_lan_delete_obj_info, %struct.i40e_hmc_lan_delete_obj_info* %206, i32 0, i32 3
  %208 = load %struct.TYPE_16__*, %struct.TYPE_16__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %208, i32 0, i32 1
  %210 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = icmp ugt i64 %205, %211
  br i1 %212, label %213, label %215

213:                                              ; preds = %204, %182
  %214 = load i64, i64* @I40E_ERR_INVALID_SD_INDEX, align 8
  store i64 %214, i64* %5, align 8
  br label %273

215:                                              ; preds = %204
  %216 = load i64, i64* %10, align 8
  store i64 %216, i64* %12, align 8
  br label %217

217:                                              ; preds = %269, %215
  %218 = load i64, i64* %12, align 8
  %219 = load i64, i64* %11, align 8
  %220 = icmp ult i64 %218, %219
  br i1 %220, label %221, label %272

221:                                              ; preds = %217
  %222 = load %struct.i40e_hmc_lan_delete_obj_info*, %struct.i40e_hmc_lan_delete_obj_info** %4, align 8
  %223 = getelementptr inbounds %struct.i40e_hmc_lan_delete_obj_info, %struct.i40e_hmc_lan_delete_obj_info* %222, i32 0, i32 3
  %224 = load %struct.TYPE_16__*, %struct.TYPE_16__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %224, i32 0, i32 1
  %226 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %225, i32 0, i32 1
  %227 = load %struct.TYPE_14__*, %struct.TYPE_14__** %226, align 8
  %228 = load i64, i64* %12, align 8
  %229 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %227, i64 %228
  %230 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %234, label %233

233:                                              ; preds = %221
  br label %269

234:                                              ; preds = %221
  %235 = load %struct.i40e_hmc_lan_delete_obj_info*, %struct.i40e_hmc_lan_delete_obj_info** %4, align 8
  %236 = getelementptr inbounds %struct.i40e_hmc_lan_delete_obj_info, %struct.i40e_hmc_lan_delete_obj_info* %235, i32 0, i32 3
  %237 = load %struct.TYPE_16__*, %struct.TYPE_16__** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %237, i32 0, i32 1
  %239 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %238, i32 0, i32 1
  %240 = load %struct.TYPE_14__*, %struct.TYPE_14__** %239, align 8
  %241 = load i64, i64* %12, align 8
  %242 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %240, i64 %241
  %243 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 8
  switch i32 %244, label %267 [
    i32 129, label %245
    i32 128, label %256
  ]

245:                                              ; preds = %234
  %246 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %247 = load %struct.i40e_hmc_lan_delete_obj_info*, %struct.i40e_hmc_lan_delete_obj_info** %4, align 8
  %248 = getelementptr inbounds %struct.i40e_hmc_lan_delete_obj_info, %struct.i40e_hmc_lan_delete_obj_info* %247, i32 0, i32 3
  %249 = load %struct.TYPE_16__*, %struct.TYPE_16__** %248, align 8
  %250 = load i64, i64* %12, align 8
  %251 = call i64 @i40e_remove_sd_bp(%struct.i40e_hw* %246, %struct.TYPE_16__* %249, i64 %250)
  store i64 %251, i64* %5, align 8
  %252 = load i64, i64* %5, align 8
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %254, label %255

254:                                              ; preds = %245
  br label %273

255:                                              ; preds = %245
  br label %268

256:                                              ; preds = %234
  %257 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %258 = load %struct.i40e_hmc_lan_delete_obj_info*, %struct.i40e_hmc_lan_delete_obj_info** %4, align 8
  %259 = getelementptr inbounds %struct.i40e_hmc_lan_delete_obj_info, %struct.i40e_hmc_lan_delete_obj_info* %258, i32 0, i32 3
  %260 = load %struct.TYPE_16__*, %struct.TYPE_16__** %259, align 8
  %261 = load i64, i64* %12, align 8
  %262 = call i64 @i40e_remove_pd_page(%struct.i40e_hw* %257, %struct.TYPE_16__* %260, i64 %261)
  store i64 %262, i64* %5, align 8
  %263 = load i64, i64* %5, align 8
  %264 = icmp ne i64 %263, 0
  br i1 %264, label %265, label %266

265:                                              ; preds = %256
  br label %273

266:                                              ; preds = %256
  br label %268

267:                                              ; preds = %234
  br label %268

268:                                              ; preds = %267, %266, %255
  br label %269

269:                                              ; preds = %268, %233
  %270 = load i64, i64* %12, align 8
  %271 = add i64 %270, 1
  store i64 %271, i64* %12, align 8
  br label %217

272:                                              ; preds = %217
  br label %273

273:                                              ; preds = %272, %265, %254, %213, %176, %105, %80, %60, %49, %37, %25, %16
  %274 = load i64, i64* %5, align 8
  ret i64 %274
}

declare dso_local i32 @hw_dbg(%struct.i40e_hw*, i8*, ...) #1

declare dso_local i32 @I40E_FIND_PD_INDEX_LIMIT(%struct.TYPE_16__*, i64, i64, i64, i64*, i64*) #1

declare dso_local i64 @i40e_remove_pd_bp(%struct.i40e_hw*, %struct.TYPE_16__*, i64) #1

declare dso_local i32 @I40E_FIND_SD_INDEX_LIMIT(%struct.TYPE_16__*, i64, i64, i64, i64*, i64*) #1

declare dso_local i64 @i40e_remove_sd_bp(%struct.i40e_hw*, %struct.TYPE_16__*, i64) #1

declare dso_local i64 @i40e_remove_pd_page(%struct.i40e_hw*, %struct.TYPE_16__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
