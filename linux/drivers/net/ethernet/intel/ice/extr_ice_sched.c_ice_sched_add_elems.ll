; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_sched.c_ice_sched_add_elems.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_sched.c_ice_sched_add_elems.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_port_info = type { %struct.ice_sched_node***, %struct.ice_hw* }
%struct.ice_hw = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.ice_sched_node = type { i64, %struct.ice_sched_node*, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.ice_aqc_add_elem = type { %struct.TYPE_14__*, %struct.TYPE_8__ }
%struct.TYPE_14__ = type { i32, %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_11__, %struct.TYPE_10__, i64, i32 }
%struct.TYPE_11__ = type { i8*, i8* }
%struct.TYPE_10__ = type { i8*, i8* }
%struct.TYPE_8__ = type { i8*, i32 }

@generic = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ICE_ERR_NO_MEMORY = common dso_local global i32 0, align 4
@ICE_AQC_ELEM_TYPE_SE_GENERIC = common dso_local global i32 0, align 4
@ICE_AQC_ELEM_VALID_GENERIC = common dso_local global i32 0, align 4
@ICE_AQC_ELEM_VALID_CIR = common dso_local global i32 0, align 4
@ICE_AQC_ELEM_VALID_EIR = common dso_local global i32 0, align 4
@ICE_SCHED_DFLT_RL_PROF_ID = common dso_local global i32 0, align 4
@ICE_SCHED_DFLT_BW_WT = common dso_local global i32 0, align 4
@ICE_DBG_SCHED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"add node failed FW Error %d\0A\00", align 1
@ICE_ERR_CFG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"add nodes in SW DB failed status =%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Node is missing for teid =%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ice_port_info*, %struct.ice_sched_node*, %struct.ice_sched_node*, i64, i32, i32*, i32*)* @ice_sched_add_elems to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ice_sched_add_elems(%struct.ice_port_info* %0, %struct.ice_sched_node* %1, %struct.ice_sched_node* %2, i64 %3, i32 %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.ice_port_info*, align 8
  %10 = alloca %struct.ice_sched_node*, align 8
  %11 = alloca %struct.ice_sched_node*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.ice_sched_node*, align 8
  %17 = alloca %struct.ice_sched_node*, align 8
  %18 = alloca %struct.ice_aqc_add_elem*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.ice_hw*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  store %struct.ice_port_info* %0, %struct.ice_port_info** %9, align 8
  store %struct.ice_sched_node* %1, %struct.ice_sched_node** %10, align 8
  store %struct.ice_sched_node* %2, %struct.ice_sched_node** %11, align 8
  store i64 %3, i64* %12, align 8
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  %25 = load %struct.ice_port_info*, %struct.ice_port_info** %9, align 8
  %26 = getelementptr inbounds %struct.ice_port_info, %struct.ice_port_info* %25, i32 0, i32 1
  %27 = load %struct.ice_hw*, %struct.ice_hw** %26, align 8
  store %struct.ice_hw* %27, %struct.ice_hw** %22, align 8
  %28 = load %struct.ice_aqc_add_elem*, %struct.ice_aqc_add_elem** %18, align 8
  %29 = load i32, i32* @generic, align 4
  %30 = load i32, i32* %13, align 4
  %31 = sub nsw i32 %30, 1
  %32 = call i64 @struct_size(%struct.ice_aqc_add_elem* %28, i32 %29, i32 %31)
  store i64 %32, i64* %23, align 8
  %33 = load %struct.ice_hw*, %struct.ice_hw** %22, align 8
  %34 = call i32 @ice_hw_to_dev(%struct.ice_hw* %33)
  %35 = load i64, i64* %23, align 8
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call %struct.ice_aqc_add_elem* @devm_kzalloc(i32 %34, i64 %35, i32 %36)
  store %struct.ice_aqc_add_elem* %37, %struct.ice_aqc_add_elem** %18, align 8
  %38 = load %struct.ice_aqc_add_elem*, %struct.ice_aqc_add_elem** %18, align 8
  %39 = icmp ne %struct.ice_aqc_add_elem* %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %7
  %41 = load i32, i32* @ICE_ERR_NO_MEMORY, align 4
  store i32 %41, i32* %8, align 4
  br label %288

42:                                               ; preds = %7
  %43 = load %struct.ice_sched_node*, %struct.ice_sched_node** %11, align 8
  %44 = getelementptr inbounds %struct.ice_sched_node, %struct.ice_sched_node* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.ice_aqc_add_elem*, %struct.ice_aqc_add_elem** %18, align 8
  %48 = getelementptr inbounds %struct.ice_aqc_add_elem, %struct.ice_aqc_add_elem* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 1
  store i32 %46, i32* %49, align 8
  %50 = load i32, i32* %13, align 4
  %51 = call i8* @cpu_to_le16(i32 %50)
  %52 = load %struct.ice_aqc_add_elem*, %struct.ice_aqc_add_elem** %18, align 8
  %53 = getelementptr inbounds %struct.ice_aqc_add_elem, %struct.ice_aqc_add_elem* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  store i8* %51, i8** %54, align 8
  store i32 0, i32* %19, align 4
  br label %55

55:                                               ; preds = %145, %42
  %56 = load i32, i32* %19, align 4
  %57 = load i32, i32* %13, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %148

59:                                               ; preds = %55
  %60 = load %struct.ice_sched_node*, %struct.ice_sched_node** %11, align 8
  %61 = getelementptr inbounds %struct.ice_sched_node, %struct.ice_sched_node* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.ice_aqc_add_elem*, %struct.ice_aqc_add_elem** %18, align 8
  %65 = getelementptr inbounds %struct.ice_aqc_add_elem, %struct.ice_aqc_add_elem* %64, i32 0, i32 0
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %65, align 8
  %67 = load i32, i32* %19, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 2
  store i32 %63, i32* %70, align 8
  %71 = load i32, i32* @ICE_AQC_ELEM_TYPE_SE_GENERIC, align 4
  %72 = load %struct.ice_aqc_add_elem*, %struct.ice_aqc_add_elem** %18, align 8
  %73 = getelementptr inbounds %struct.ice_aqc_add_elem, %struct.ice_aqc_add_elem* %72, i32 0, i32 0
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %73, align 8
  %75 = load i32, i32* %19, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 4
  store i32 %71, i32* %79, align 8
  %80 = load i32, i32* @ICE_AQC_ELEM_VALID_GENERIC, align 4
  %81 = load i32, i32* @ICE_AQC_ELEM_VALID_CIR, align 4
  %82 = or i32 %80, %81
  %83 = load i32, i32* @ICE_AQC_ELEM_VALID_EIR, align 4
  %84 = or i32 %82, %83
  %85 = load %struct.ice_aqc_add_elem*, %struct.ice_aqc_add_elem** %18, align 8
  %86 = getelementptr inbounds %struct.ice_aqc_add_elem, %struct.ice_aqc_add_elem* %85, i32 0, i32 0
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %86, align 8
  %88 = load i32, i32* %19, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 0
  store i32 %84, i32* %92, align 8
  %93 = load %struct.ice_aqc_add_elem*, %struct.ice_aqc_add_elem** %18, align 8
  %94 = getelementptr inbounds %struct.ice_aqc_add_elem, %struct.ice_aqc_add_elem* %93, i32 0, i32 0
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %94, align 8
  %96 = load i32, i32* %19, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 3
  store i64 0, i64* %100, align 8
  %101 = load i32, i32* @ICE_SCHED_DFLT_RL_PROF_ID, align 4
  %102 = call i8* @cpu_to_le16(i32 %101)
  %103 = load %struct.ice_aqc_add_elem*, %struct.ice_aqc_add_elem** %18, align 8
  %104 = getelementptr inbounds %struct.ice_aqc_add_elem, %struct.ice_aqc_add_elem* %103, i32 0, i32 0
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %104, align 8
  %106 = load i32, i32* %19, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 1
  store i8* %102, i8** %111, align 8
  %112 = load i32, i32* @ICE_SCHED_DFLT_BW_WT, align 4
  %113 = call i8* @cpu_to_le16(i32 %112)
  %114 = load %struct.ice_aqc_add_elem*, %struct.ice_aqc_add_elem** %18, align 8
  %115 = getelementptr inbounds %struct.ice_aqc_add_elem, %struct.ice_aqc_add_elem* %114, i32 0, i32 0
  %116 = load %struct.TYPE_14__*, %struct.TYPE_14__** %115, align 8
  %117 = load i32, i32* %19, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 0
  store i8* %113, i8** %122, align 8
  %123 = load i32, i32* @ICE_SCHED_DFLT_RL_PROF_ID, align 4
  %124 = call i8* @cpu_to_le16(i32 %123)
  %125 = load %struct.ice_aqc_add_elem*, %struct.ice_aqc_add_elem** %18, align 8
  %126 = getelementptr inbounds %struct.ice_aqc_add_elem, %struct.ice_aqc_add_elem* %125, i32 0, i32 0
  %127 = load %struct.TYPE_14__*, %struct.TYPE_14__** %126, align 8
  %128 = load i32, i32* %19, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 1
  store i8* %124, i8** %133, align 8
  %134 = load i32, i32* @ICE_SCHED_DFLT_BW_WT, align 4
  %135 = call i8* @cpu_to_le16(i32 %134)
  %136 = load %struct.ice_aqc_add_elem*, %struct.ice_aqc_add_elem** %18, align 8
  %137 = getelementptr inbounds %struct.ice_aqc_add_elem, %struct.ice_aqc_add_elem* %136, i32 0, i32 0
  %138 = load %struct.TYPE_14__*, %struct.TYPE_14__** %137, align 8
  %139 = load i32, i32* %19, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %138, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %143, i32 0, i32 0
  store i8* %135, i8** %144, align 8
  br label %145

145:                                              ; preds = %59
  %146 = load i32, i32* %19, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %19, align 4
  br label %55

148:                                              ; preds = %55
  %149 = load %struct.ice_hw*, %struct.ice_hw** %22, align 8
  %150 = load %struct.ice_aqc_add_elem*, %struct.ice_aqc_add_elem** %18, align 8
  %151 = load i64, i64* %23, align 8
  %152 = call i32 @ice_aq_add_sched_elems(%struct.ice_hw* %149, i32 1, %struct.ice_aqc_add_elem* %150, i64 %151, i32* %20, i32* null)
  store i32 %152, i32* %21, align 4
  %153 = load i32, i32* %21, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %158, label %155

155:                                              ; preds = %148
  %156 = load i32, i32* %20, align 4
  %157 = icmp ne i32 %156, 1
  br i1 %157, label %158, label %171

158:                                              ; preds = %155, %148
  %159 = load %struct.ice_hw*, %struct.ice_hw** %22, align 8
  %160 = load i32, i32* @ICE_DBG_SCHED, align 4
  %161 = load %struct.ice_hw*, %struct.ice_hw** %22, align 8
  %162 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @ice_debug(%struct.ice_hw* %159, i32 %160, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %164)
  %166 = load %struct.ice_hw*, %struct.ice_hw** %22, align 8
  %167 = call i32 @ice_hw_to_dev(%struct.ice_hw* %166)
  %168 = load %struct.ice_aqc_add_elem*, %struct.ice_aqc_add_elem** %18, align 8
  %169 = call i32 @devm_kfree(i32 %167, %struct.ice_aqc_add_elem* %168)
  %170 = load i32, i32* @ICE_ERR_CFG, align 4
  store i32 %170, i32* %8, align 4
  br label %288

171:                                              ; preds = %155
  %172 = load i32, i32* %13, align 4
  %173 = load i32*, i32** %14, align 8
  store i32 %172, i32* %173, align 4
  store i32 0, i32* %19, align 4
  br label %174

174:                                              ; preds = %279, %171
  %175 = load i32, i32* %19, align 4
  %176 = load i32, i32* %13, align 4
  %177 = icmp slt i32 %175, %176
  br i1 %177, label %178, label %282

178:                                              ; preds = %174
  %179 = load %struct.ice_port_info*, %struct.ice_port_info** %9, align 8
  %180 = load i64, i64* %12, align 8
  %181 = load %struct.ice_aqc_add_elem*, %struct.ice_aqc_add_elem** %18, align 8
  %182 = getelementptr inbounds %struct.ice_aqc_add_elem, %struct.ice_aqc_add_elem* %181, i32 0, i32 0
  %183 = load %struct.TYPE_14__*, %struct.TYPE_14__** %182, align 8
  %184 = load i32, i32* %19, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %183, i64 %185
  %187 = call i32 @ice_sched_add_node(%struct.ice_port_info* %179, i64 %180, %struct.TYPE_14__* %186)
  store i32 %187, i32* %21, align 4
  %188 = load i32, i32* %21, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %195

190:                                              ; preds = %178
  %191 = load %struct.ice_hw*, %struct.ice_hw** %22, align 8
  %192 = load i32, i32* @ICE_DBG_SCHED, align 4
  %193 = load i32, i32* %21, align 4
  %194 = call i32 @ice_debug(%struct.ice_hw* %191, i32 %192, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %193)
  br label %282

195:                                              ; preds = %178
  %196 = load %struct.ice_aqc_add_elem*, %struct.ice_aqc_add_elem** %18, align 8
  %197 = getelementptr inbounds %struct.ice_aqc_add_elem, %struct.ice_aqc_add_elem* %196, i32 0, i32 0
  %198 = load %struct.TYPE_14__*, %struct.TYPE_14__** %197, align 8
  %199 = load i32, i32* %19, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %198, i64 %200
  %202 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = call i32 @le32_to_cpu(i32 %203)
  store i32 %204, i32* %24, align 4
  %205 = load %struct.ice_sched_node*, %struct.ice_sched_node** %11, align 8
  %206 = load i32, i32* %24, align 4
  %207 = call %struct.ice_sched_node* @ice_sched_find_node_by_teid(%struct.ice_sched_node* %205, i32 %206)
  store %struct.ice_sched_node* %207, %struct.ice_sched_node** %17, align 8
  %208 = load %struct.ice_sched_node*, %struct.ice_sched_node** %17, align 8
  %209 = icmp ne %struct.ice_sched_node* %208, null
  br i1 %209, label %215, label %210

210:                                              ; preds = %195
  %211 = load %struct.ice_hw*, %struct.ice_hw** %22, align 8
  %212 = load i32, i32* @ICE_DBG_SCHED, align 4
  %213 = load i32, i32* %24, align 4
  %214 = call i32 @ice_debug(%struct.ice_hw* %211, i32 %212, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %213)
  br label %282

215:                                              ; preds = %195
  %216 = load %struct.ice_sched_node*, %struct.ice_sched_node** %17, align 8
  %217 = getelementptr inbounds %struct.ice_sched_node, %struct.ice_sched_node* %216, i32 0, i32 1
  store %struct.ice_sched_node* null, %struct.ice_sched_node** %217, align 8
  %218 = load %struct.ice_sched_node*, %struct.ice_sched_node** %10, align 8
  %219 = getelementptr inbounds %struct.ice_sched_node, %struct.ice_sched_node* %218, i32 0, i32 0
  %220 = load i64, i64* %219, align 8
  %221 = load %struct.ice_sched_node*, %struct.ice_sched_node** %17, align 8
  %222 = getelementptr inbounds %struct.ice_sched_node, %struct.ice_sched_node* %221, i32 0, i32 0
  store i64 %220, i64* %222, align 8
  %223 = load %struct.ice_port_info*, %struct.ice_port_info** %9, align 8
  %224 = load %struct.ice_sched_node*, %struct.ice_sched_node** %10, align 8
  %225 = load i64, i64* %12, align 8
  %226 = call %struct.ice_sched_node* @ice_sched_get_first_node(%struct.ice_port_info* %223, %struct.ice_sched_node* %224, i64 %225)
  store %struct.ice_sched_node* %226, %struct.ice_sched_node** %16, align 8
  %227 = load %struct.ice_sched_node*, %struct.ice_sched_node** %16, align 8
  %228 = icmp ne %struct.ice_sched_node* %227, null
  br i1 %228, label %229, label %247

229:                                              ; preds = %215
  %230 = load %struct.ice_sched_node*, %struct.ice_sched_node** %16, align 8
  %231 = load %struct.ice_sched_node*, %struct.ice_sched_node** %17, align 8
  %232 = icmp ne %struct.ice_sched_node* %230, %231
  br i1 %232, label %233, label %247

233:                                              ; preds = %229
  br label %234

234:                                              ; preds = %239, %233
  %235 = load %struct.ice_sched_node*, %struct.ice_sched_node** %16, align 8
  %236 = getelementptr inbounds %struct.ice_sched_node, %struct.ice_sched_node* %235, i32 0, i32 1
  %237 = load %struct.ice_sched_node*, %struct.ice_sched_node** %236, align 8
  %238 = icmp ne %struct.ice_sched_node* %237, null
  br i1 %238, label %239, label %243

239:                                              ; preds = %234
  %240 = load %struct.ice_sched_node*, %struct.ice_sched_node** %16, align 8
  %241 = getelementptr inbounds %struct.ice_sched_node, %struct.ice_sched_node* %240, i32 0, i32 1
  %242 = load %struct.ice_sched_node*, %struct.ice_sched_node** %241, align 8
  store %struct.ice_sched_node* %242, %struct.ice_sched_node** %16, align 8
  br label %234

243:                                              ; preds = %234
  %244 = load %struct.ice_sched_node*, %struct.ice_sched_node** %17, align 8
  %245 = load %struct.ice_sched_node*, %struct.ice_sched_node** %16, align 8
  %246 = getelementptr inbounds %struct.ice_sched_node, %struct.ice_sched_node* %245, i32 0, i32 1
  store %struct.ice_sched_node* %244, %struct.ice_sched_node** %246, align 8
  br label %247

247:                                              ; preds = %243, %229, %215
  %248 = load %struct.ice_port_info*, %struct.ice_port_info** %9, align 8
  %249 = getelementptr inbounds %struct.ice_port_info, %struct.ice_port_info* %248, i32 0, i32 0
  %250 = load %struct.ice_sched_node***, %struct.ice_sched_node**** %249, align 8
  %251 = load %struct.ice_sched_node*, %struct.ice_sched_node** %10, align 8
  %252 = getelementptr inbounds %struct.ice_sched_node, %struct.ice_sched_node* %251, i32 0, i32 0
  %253 = load i64, i64* %252, align 8
  %254 = getelementptr inbounds %struct.ice_sched_node**, %struct.ice_sched_node*** %250, i64 %253
  %255 = load %struct.ice_sched_node**, %struct.ice_sched_node*** %254, align 8
  %256 = load i64, i64* %12, align 8
  %257 = getelementptr inbounds %struct.ice_sched_node*, %struct.ice_sched_node** %255, i64 %256
  %258 = load %struct.ice_sched_node*, %struct.ice_sched_node** %257, align 8
  %259 = icmp ne %struct.ice_sched_node* %258, null
  br i1 %259, label %272, label %260

260:                                              ; preds = %247
  %261 = load %struct.ice_sched_node*, %struct.ice_sched_node** %17, align 8
  %262 = load %struct.ice_port_info*, %struct.ice_port_info** %9, align 8
  %263 = getelementptr inbounds %struct.ice_port_info, %struct.ice_port_info* %262, i32 0, i32 0
  %264 = load %struct.ice_sched_node***, %struct.ice_sched_node**** %263, align 8
  %265 = load %struct.ice_sched_node*, %struct.ice_sched_node** %10, align 8
  %266 = getelementptr inbounds %struct.ice_sched_node, %struct.ice_sched_node* %265, i32 0, i32 0
  %267 = load i64, i64* %266, align 8
  %268 = getelementptr inbounds %struct.ice_sched_node**, %struct.ice_sched_node*** %264, i64 %267
  %269 = load %struct.ice_sched_node**, %struct.ice_sched_node*** %268, align 8
  %270 = load i64, i64* %12, align 8
  %271 = getelementptr inbounds %struct.ice_sched_node*, %struct.ice_sched_node** %269, i64 %270
  store %struct.ice_sched_node* %261, %struct.ice_sched_node** %271, align 8
  br label %272

272:                                              ; preds = %260, %247
  %273 = load i32, i32* %19, align 4
  %274 = icmp eq i32 %273, 0
  br i1 %274, label %275, label %278

275:                                              ; preds = %272
  %276 = load i32, i32* %24, align 4
  %277 = load i32*, i32** %15, align 8
  store i32 %276, i32* %277, align 4
  br label %278

278:                                              ; preds = %275, %272
  br label %279

279:                                              ; preds = %278
  %280 = load i32, i32* %19, align 4
  %281 = add nsw i32 %280, 1
  store i32 %281, i32* %19, align 4
  br label %174

282:                                              ; preds = %210, %190, %174
  %283 = load %struct.ice_hw*, %struct.ice_hw** %22, align 8
  %284 = call i32 @ice_hw_to_dev(%struct.ice_hw* %283)
  %285 = load %struct.ice_aqc_add_elem*, %struct.ice_aqc_add_elem** %18, align 8
  %286 = call i32 @devm_kfree(i32 %284, %struct.ice_aqc_add_elem* %285)
  %287 = load i32, i32* %21, align 4
  store i32 %287, i32* %8, align 4
  br label %288

288:                                              ; preds = %282, %158, %40
  %289 = load i32, i32* %8, align 4
  ret i32 %289
}

declare dso_local i64 @struct_size(%struct.ice_aqc_add_elem*, i32, i32) #1

declare dso_local %struct.ice_aqc_add_elem* @devm_kzalloc(i32, i64, i32) #1

declare dso_local i32 @ice_hw_to_dev(%struct.ice_hw*) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @ice_aq_add_sched_elems(%struct.ice_hw*, i32, %struct.ice_aqc_add_elem*, i64, i32*, i32*) #1

declare dso_local i32 @ice_debug(%struct.ice_hw*, i32, i8*, i32) #1

declare dso_local i32 @devm_kfree(i32, %struct.ice_aqc_add_elem*) #1

declare dso_local i32 @ice_sched_add_node(%struct.ice_port_info*, i64, %struct.TYPE_14__*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local %struct.ice_sched_node* @ice_sched_find_node_by_teid(%struct.ice_sched_node*, i32) #1

declare dso_local %struct.ice_sched_node* @ice_sched_get_first_node(%struct.ice_port_info*, %struct.ice_sched_node*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
