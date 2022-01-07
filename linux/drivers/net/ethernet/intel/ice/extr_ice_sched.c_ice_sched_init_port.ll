; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_sched.c_ice_sched_init_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_sched.c_ice_sched_init_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_port_info = type { i32*, i32, i32, i8*, i32, %struct.ice_hw* }
%struct.ice_hw = type { i32 }
%struct.ice_aqc_get_topo_elem = type { %struct.TYPE_7__*, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32 }

@ICE_ERR_PARAM = common dso_local global i32 0, align 4
@ICE_AQ_MAX_BUF_LEN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ICE_ERR_NO_MEMORY = common dso_local global i32 0, align 4
@ICE_TXSCHED_MAX_BRANCHES = common dso_local global i32 0, align 4
@ICE_DBG_SCHED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"num_branches unexpected %d\0A\00", align 1
@ICE_AQC_TOPO_MAX_LEVEL_NUM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"num_elems unexpected %d\0A\00", align 1
@ICE_AQC_ELEM_TYPE_LEAF = common dso_local global i64 0, align 8
@ICE_AQC_ELEM_TYPE_ENTRY_POINT = common dso_local global i64 0, align 8
@ICE_SCHED_PORT_STATE_READY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ice_sched_init_port(%struct.ice_port_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ice_port_info*, align 8
  %4 = alloca %struct.ice_aqc_get_topo_elem*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ice_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ice_port_info* %0, %struct.ice_port_info** %3, align 8
  %11 = load %struct.ice_port_info*, %struct.ice_port_info** %3, align 8
  %12 = icmp ne %struct.ice_port_info* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ICE_ERR_PARAM, align 4
  store i32 %14, i32* %2, align 4
  br label %223

15:                                               ; preds = %1
  %16 = load %struct.ice_port_info*, %struct.ice_port_info** %3, align 8
  %17 = getelementptr inbounds %struct.ice_port_info, %struct.ice_port_info* %16, i32 0, i32 5
  %18 = load %struct.ice_hw*, %struct.ice_hw** %17, align 8
  store %struct.ice_hw* %18, %struct.ice_hw** %6, align 8
  %19 = load %struct.ice_hw*, %struct.ice_hw** %6, align 8
  %20 = call i32 @ice_hw_to_dev(%struct.ice_hw* %19)
  %21 = load i32, i32* @ICE_AQ_MAX_BUF_LEN, align 4
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.ice_aqc_get_topo_elem* @devm_kzalloc(i32 %20, i32 %21, i32 %22)
  store %struct.ice_aqc_get_topo_elem* %23, %struct.ice_aqc_get_topo_elem** %4, align 8
  %24 = load %struct.ice_aqc_get_topo_elem*, %struct.ice_aqc_get_topo_elem** %4, align 8
  %25 = icmp ne %struct.ice_aqc_get_topo_elem* %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %15
  %27 = load i32, i32* @ICE_ERR_NO_MEMORY, align 4
  store i32 %27, i32* %2, align 4
  br label %223

28:                                               ; preds = %15
  %29 = load %struct.ice_hw*, %struct.ice_hw** %6, align 8
  %30 = load %struct.ice_port_info*, %struct.ice_port_info** %3, align 8
  %31 = getelementptr inbounds %struct.ice_port_info, %struct.ice_port_info* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.ice_aqc_get_topo_elem*, %struct.ice_aqc_get_topo_elem** %4, align 8
  %34 = load i32, i32* @ICE_AQ_MAX_BUF_LEN, align 4
  %35 = call i32 @ice_aq_get_dflt_topo(%struct.ice_hw* %29, i32 %32, %struct.ice_aqc_get_topo_elem* %33, i32 %34, i32* %7, i32* null)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %28
  br label %201

39:                                               ; preds = %28
  %40 = load i32, i32* %7, align 4
  %41 = icmp slt i32 %40, 1
  br i1 %41, label %46, label %42

42:                                               ; preds = %39
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @ICE_TXSCHED_MAX_BRANCHES, align 4
  %45 = icmp sgt i32 %43, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %42, %39
  %47 = load %struct.ice_hw*, %struct.ice_hw** %6, align 8
  %48 = load i32, i32* @ICE_DBG_SCHED, align 4
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @ice_debug(%struct.ice_hw* %47, i32 %48, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* @ICE_ERR_PARAM, align 4
  store i32 %51, i32* %5, align 4
  br label %201

52:                                               ; preds = %42
  %53 = load %struct.ice_aqc_get_topo_elem*, %struct.ice_aqc_get_topo_elem** %4, align 8
  %54 = getelementptr inbounds %struct.ice_aqc_get_topo_elem, %struct.ice_aqc_get_topo_elem* %53, i64 0
  %55 = getelementptr inbounds %struct.ice_aqc_get_topo_elem, %struct.ice_aqc_get_topo_elem* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @le16_to_cpu(i32 %57)
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp slt i32 %59, 1
  br i1 %60, label %65, label %61

61:                                               ; preds = %52
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* @ICE_AQC_TOPO_MAX_LEVEL_NUM, align 4
  %64 = icmp sgt i32 %62, %63
  br i1 %64, label %65, label %71

65:                                               ; preds = %61, %52
  %66 = load %struct.ice_hw*, %struct.ice_hw** %6, align 8
  %67 = load i32, i32* @ICE_DBG_SCHED, align 4
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @ice_debug(%struct.ice_hw* %66, i32 %67, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %68)
  %70 = load i32, i32* @ICE_ERR_PARAM, align 4
  store i32 %70, i32* %5, align 4
  br label %201

71:                                               ; preds = %61
  %72 = load i32, i32* %8, align 4
  %73 = icmp sgt i32 %72, 2
  br i1 %73, label %74, label %102

74:                                               ; preds = %71
  %75 = load %struct.ice_aqc_get_topo_elem*, %struct.ice_aqc_get_topo_elem** %4, align 8
  %76 = getelementptr inbounds %struct.ice_aqc_get_topo_elem, %struct.ice_aqc_get_topo_elem* %75, i64 0
  %77 = getelementptr inbounds %struct.ice_aqc_get_topo_elem, %struct.ice_aqc_get_topo_elem* %76, i32 0, i32 0
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %77, align 8
  %79 = load i32, i32* %8, align 4
  %80 = sub nsw i32 %79, 1
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @ICE_AQC_ELEM_TYPE_LEAF, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %102

88:                                               ; preds = %74
  %89 = load %struct.ice_aqc_get_topo_elem*, %struct.ice_aqc_get_topo_elem** %4, align 8
  %90 = getelementptr inbounds %struct.ice_aqc_get_topo_elem, %struct.ice_aqc_get_topo_elem* %89, i64 0
  %91 = getelementptr inbounds %struct.ice_aqc_get_topo_elem, %struct.ice_aqc_get_topo_elem* %90, i32 0, i32 0
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %91, align 8
  %93 = load i32, i32* %8, align 4
  %94 = sub nsw i32 %93, 2
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = call i8* @le32_to_cpu(i32 %98)
  %100 = load %struct.ice_port_info*, %struct.ice_port_info** %3, align 8
  %101 = getelementptr inbounds %struct.ice_port_info, %struct.ice_port_info* %100, i32 0, i32 3
  store i8* %99, i8** %101, align 8
  br label %116

102:                                              ; preds = %74, %71
  %103 = load %struct.ice_aqc_get_topo_elem*, %struct.ice_aqc_get_topo_elem** %4, align 8
  %104 = getelementptr inbounds %struct.ice_aqc_get_topo_elem, %struct.ice_aqc_get_topo_elem* %103, i64 0
  %105 = getelementptr inbounds %struct.ice_aqc_get_topo_elem, %struct.ice_aqc_get_topo_elem* %104, i32 0, i32 0
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %105, align 8
  %107 = load i32, i32* %8, align 4
  %108 = sub nsw i32 %107, 1
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = call i8* @le32_to_cpu(i32 %112)
  %114 = load %struct.ice_port_info*, %struct.ice_port_info** %3, align 8
  %115 = getelementptr inbounds %struct.ice_port_info, %struct.ice_port_info* %114, i32 0, i32 3
  store i8* %113, i8** %115, align 8
  br label %116

116:                                              ; preds = %102, %88
  %117 = load %struct.ice_port_info*, %struct.ice_port_info** %3, align 8
  %118 = load %struct.ice_aqc_get_topo_elem*, %struct.ice_aqc_get_topo_elem** %4, align 8
  %119 = getelementptr inbounds %struct.ice_aqc_get_topo_elem, %struct.ice_aqc_get_topo_elem* %118, i64 0
  %120 = getelementptr inbounds %struct.ice_aqc_get_topo_elem, %struct.ice_aqc_get_topo_elem* %119, i32 0, i32 0
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i64 0
  %123 = call i32 @ice_sched_add_root_node(%struct.ice_port_info* %117, %struct.TYPE_7__* %122)
  store i32 %123, i32* %5, align 4
  %124 = load i32, i32* %5, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %116
  br label %201

127:                                              ; preds = %116
  store i32 0, i32* %9, align 4
  br label %128

128:                                              ; preds = %183, %127
  %129 = load i32, i32* %9, align 4
  %130 = load i32, i32* %7, align 4
  %131 = icmp slt i32 %129, %130
  br i1 %131, label %132, label %186

132:                                              ; preds = %128
  %133 = load %struct.ice_aqc_get_topo_elem*, %struct.ice_aqc_get_topo_elem** %4, align 8
  %134 = load i32, i32* %9, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.ice_aqc_get_topo_elem, %struct.ice_aqc_get_topo_elem* %133, i64 %135
  %137 = getelementptr inbounds %struct.ice_aqc_get_topo_elem, %struct.ice_aqc_get_topo_elem* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @le16_to_cpu(i32 %139)
  store i32 %140, i32* %8, align 4
  store i32 1, i32* %10, align 4
  br label %141

141:                                              ; preds = %179, %132
  %142 = load i32, i32* %10, align 4
  %143 = load i32, i32* %8, align 4
  %144 = icmp slt i32 %142, %143
  br i1 %144, label %145, label %182

145:                                              ; preds = %141
  %146 = load %struct.ice_aqc_get_topo_elem*, %struct.ice_aqc_get_topo_elem** %4, align 8
  %147 = getelementptr inbounds %struct.ice_aqc_get_topo_elem, %struct.ice_aqc_get_topo_elem* %146, i64 0
  %148 = getelementptr inbounds %struct.ice_aqc_get_topo_elem, %struct.ice_aqc_get_topo_elem* %147, i32 0, i32 0
  %149 = load %struct.TYPE_7__*, %struct.TYPE_7__** %148, align 8
  %150 = load i32, i32* %10, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @ICE_AQC_ELEM_TYPE_ENTRY_POINT, align 8
  %157 = icmp eq i64 %155, %156
  br i1 %157, label %158, label %162

158:                                              ; preds = %145
  %159 = load i32, i32* %10, align 4
  %160 = load %struct.ice_hw*, %struct.ice_hw** %6, align 8
  %161 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %160, i32 0, i32 0
  store i32 %159, i32* %161, align 4
  br label %162

162:                                              ; preds = %158, %145
  %163 = load %struct.ice_port_info*, %struct.ice_port_info** %3, align 8
  %164 = load i32, i32* %10, align 4
  %165 = load %struct.ice_aqc_get_topo_elem*, %struct.ice_aqc_get_topo_elem** %4, align 8
  %166 = load i32, i32* %9, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.ice_aqc_get_topo_elem, %struct.ice_aqc_get_topo_elem* %165, i64 %167
  %169 = getelementptr inbounds %struct.ice_aqc_get_topo_elem, %struct.ice_aqc_get_topo_elem* %168, i32 0, i32 0
  %170 = load %struct.TYPE_7__*, %struct.TYPE_7__** %169, align 8
  %171 = load i32, i32* %10, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i64 %172
  %174 = call i32 @ice_sched_add_node(%struct.ice_port_info* %163, i32 %164, %struct.TYPE_7__* %173)
  store i32 %174, i32* %5, align 4
  %175 = load i32, i32* %5, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %162
  br label %201

178:                                              ; preds = %162
  br label %179

179:                                              ; preds = %178
  %180 = load i32, i32* %10, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %10, align 4
  br label %141

182:                                              ; preds = %141
  br label %183

183:                                              ; preds = %182
  %184 = load i32, i32* %9, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %9, align 4
  br label %128

186:                                              ; preds = %128
  %187 = load %struct.ice_port_info*, %struct.ice_port_info** %3, align 8
  %188 = getelementptr inbounds %struct.ice_port_info, %struct.ice_port_info* %187, i32 0, i32 0
  %189 = load i32*, i32** %188, align 8
  %190 = icmp ne i32* %189, null
  br i1 %190, label %191, label %194

191:                                              ; preds = %186
  %192 = load %struct.ice_port_info*, %struct.ice_port_info** %3, align 8
  %193 = call i32 @ice_sched_rm_dflt_nodes(%struct.ice_port_info* %192)
  br label %194

194:                                              ; preds = %191, %186
  %195 = load i32, i32* @ICE_SCHED_PORT_STATE_READY, align 4
  %196 = load %struct.ice_port_info*, %struct.ice_port_info** %3, align 8
  %197 = getelementptr inbounds %struct.ice_port_info, %struct.ice_port_info* %196, i32 0, i32 2
  store i32 %195, i32* %197, align 4
  %198 = load %struct.ice_port_info*, %struct.ice_port_info** %3, align 8
  %199 = getelementptr inbounds %struct.ice_port_info, %struct.ice_port_info* %198, i32 0, i32 1
  %200 = call i32 @mutex_init(i32* %199)
  br label %201

201:                                              ; preds = %194, %177, %126, %65, %46, %38
  %202 = load i32, i32* %5, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %217

204:                                              ; preds = %201
  %205 = load %struct.ice_port_info*, %struct.ice_port_info** %3, align 8
  %206 = getelementptr inbounds %struct.ice_port_info, %struct.ice_port_info* %205, i32 0, i32 0
  %207 = load i32*, i32** %206, align 8
  %208 = icmp ne i32* %207, null
  br i1 %208, label %209, label %217

209:                                              ; preds = %204
  %210 = load %struct.ice_port_info*, %struct.ice_port_info** %3, align 8
  %211 = load %struct.ice_port_info*, %struct.ice_port_info** %3, align 8
  %212 = getelementptr inbounds %struct.ice_port_info, %struct.ice_port_info* %211, i32 0, i32 0
  %213 = load i32*, i32** %212, align 8
  %214 = call i32 @ice_free_sched_node(%struct.ice_port_info* %210, i32* %213)
  %215 = load %struct.ice_port_info*, %struct.ice_port_info** %3, align 8
  %216 = getelementptr inbounds %struct.ice_port_info, %struct.ice_port_info* %215, i32 0, i32 0
  store i32* null, i32** %216, align 8
  br label %217

217:                                              ; preds = %209, %204, %201
  %218 = load %struct.ice_hw*, %struct.ice_hw** %6, align 8
  %219 = call i32 @ice_hw_to_dev(%struct.ice_hw* %218)
  %220 = load %struct.ice_aqc_get_topo_elem*, %struct.ice_aqc_get_topo_elem** %4, align 8
  %221 = call i32 @devm_kfree(i32 %219, %struct.ice_aqc_get_topo_elem* %220)
  %222 = load i32, i32* %5, align 4
  store i32 %222, i32* %2, align 4
  br label %223

223:                                              ; preds = %217, %26, %13
  %224 = load i32, i32* %2, align 4
  ret i32 %224
}

declare dso_local %struct.ice_aqc_get_topo_elem* @devm_kzalloc(i32, i32, i32) #1

declare dso_local i32 @ice_hw_to_dev(%struct.ice_hw*) #1

declare dso_local i32 @ice_aq_get_dflt_topo(%struct.ice_hw*, i32, %struct.ice_aqc_get_topo_elem*, i32, i32*, i32*) #1

declare dso_local i32 @ice_debug(%struct.ice_hw*, i32, i8*, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i32 @ice_sched_add_root_node(%struct.ice_port_info*, %struct.TYPE_7__*) #1

declare dso_local i32 @ice_sched_add_node(%struct.ice_port_info*, i32, %struct.TYPE_7__*) #1

declare dso_local i32 @ice_sched_rm_dflt_nodes(%struct.ice_port_info*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @ice_free_sched_node(%struct.ice_port_info*, i32*) #1

declare dso_local i32 @devm_kfree(i32, %struct.ice_aqc_get_topo_elem*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
