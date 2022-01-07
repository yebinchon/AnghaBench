; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4vf/extr_t4vf_hw.c_t4vf_get_sge_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4vf/extr_t4vf_hw.c_t4vf_get_sge_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.sge_params }
%struct.sge_params = type { i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8**, i8* }

@FW_PARAMS_MNEM_REG = common dso_local global i32 0, align 4
@SGE_CONTROL_A = common dso_local global i32 0, align 4
@SGE_HOST_PAGE_SIZE_A = common dso_local global i32 0, align 4
@SGE_FL_BUFFER_SIZE0_A = common dso_local global i32 0, align 4
@SGE_FL_BUFFER_SIZE1_A = common dso_local global i32 0, align 4
@SGE_TIMER_VALUE_0_AND_1_A = common dso_local global i32 0, align 4
@SGE_TIMER_VALUE_2_AND_3_A = common dso_local global i32 0, align 4
@SGE_TIMER_VALUE_4_AND_5_A = common dso_local global i32 0, align 4
@SGE_CONTROL2_A = common dso_local global i32 0, align 4
@FW_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"Unable to get SGE Control2; probably old firmware.\0A\00", align 1
@SGE_INGRESS_RX_THRESHOLD_A = common dso_local global i32 0, align 4
@SGE_CONM_CTRL_A = common dso_local global i32 0, align 4
@SGE_EGRESS_QUEUES_PER_PAGE_VF_A = common dso_local global i32 0, align 4
@SGE_INGRESS_QUEUES_PER_PAGE_VF_A = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"Unable to get VF SGE Queues/Page; probably old firmware.\0A\00", align 1
@HOSTPAGESIZEPF0_S = common dso_local global i32 0, align 4
@HOSTPAGESIZEPF1_S = common dso_local global i32 0, align 4
@HOSTPAGESIZEPF0_M = common dso_local global i32 0, align 4
@QUEUESPERPAGEPF0_S = common dso_local global i32 0, align 4
@QUEUESPERPAGEPF1_S = common dso_local global i32 0, align 4
@QUEUESPERPAGEPF0_M = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t4vf_get_sge_params(%struct.adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.sge_params*, align 8
  %5 = alloca [7 x i8*], align 16
  %6 = alloca [7 x i8*], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  %11 = load %struct.adapter*, %struct.adapter** %3, align 8
  %12 = getelementptr inbounds %struct.adapter, %struct.adapter* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  store %struct.sge_params* %13, %struct.sge_params** %4, align 8
  %14 = load i32, i32* @FW_PARAMS_MNEM_REG, align 4
  %15 = call i32 @FW_PARAMS_MNEM_V(i32 %14)
  %16 = load i32, i32* @SGE_CONTROL_A, align 4
  %17 = call i32 @FW_PARAMS_PARAM_XYZ_V(i32 %16)
  %18 = or i32 %15, %17
  %19 = sext i32 %18 to i64
  %20 = inttoptr i64 %19 to i8*
  %21 = getelementptr inbounds [7 x i8*], [7 x i8*]* %5, i64 0, i64 0
  store i8* %20, i8** %21, align 16
  %22 = load i32, i32* @FW_PARAMS_MNEM_REG, align 4
  %23 = call i32 @FW_PARAMS_MNEM_V(i32 %22)
  %24 = load i32, i32* @SGE_HOST_PAGE_SIZE_A, align 4
  %25 = call i32 @FW_PARAMS_PARAM_XYZ_V(i32 %24)
  %26 = or i32 %23, %25
  %27 = sext i32 %26 to i64
  %28 = inttoptr i64 %27 to i8*
  %29 = getelementptr inbounds [7 x i8*], [7 x i8*]* %5, i64 0, i64 1
  store i8* %28, i8** %29, align 8
  %30 = load i32, i32* @FW_PARAMS_MNEM_REG, align 4
  %31 = call i32 @FW_PARAMS_MNEM_V(i32 %30)
  %32 = load i32, i32* @SGE_FL_BUFFER_SIZE0_A, align 4
  %33 = call i32 @FW_PARAMS_PARAM_XYZ_V(i32 %32)
  %34 = or i32 %31, %33
  %35 = sext i32 %34 to i64
  %36 = inttoptr i64 %35 to i8*
  %37 = getelementptr inbounds [7 x i8*], [7 x i8*]* %5, i64 0, i64 2
  store i8* %36, i8** %37, align 16
  %38 = load i32, i32* @FW_PARAMS_MNEM_REG, align 4
  %39 = call i32 @FW_PARAMS_MNEM_V(i32 %38)
  %40 = load i32, i32* @SGE_FL_BUFFER_SIZE1_A, align 4
  %41 = call i32 @FW_PARAMS_PARAM_XYZ_V(i32 %40)
  %42 = or i32 %39, %41
  %43 = sext i32 %42 to i64
  %44 = inttoptr i64 %43 to i8*
  %45 = getelementptr inbounds [7 x i8*], [7 x i8*]* %5, i64 0, i64 3
  store i8* %44, i8** %45, align 8
  %46 = load i32, i32* @FW_PARAMS_MNEM_REG, align 4
  %47 = call i32 @FW_PARAMS_MNEM_V(i32 %46)
  %48 = load i32, i32* @SGE_TIMER_VALUE_0_AND_1_A, align 4
  %49 = call i32 @FW_PARAMS_PARAM_XYZ_V(i32 %48)
  %50 = or i32 %47, %49
  %51 = sext i32 %50 to i64
  %52 = inttoptr i64 %51 to i8*
  %53 = getelementptr inbounds [7 x i8*], [7 x i8*]* %5, i64 0, i64 4
  store i8* %52, i8** %53, align 16
  %54 = load i32, i32* @FW_PARAMS_MNEM_REG, align 4
  %55 = call i32 @FW_PARAMS_MNEM_V(i32 %54)
  %56 = load i32, i32* @SGE_TIMER_VALUE_2_AND_3_A, align 4
  %57 = call i32 @FW_PARAMS_PARAM_XYZ_V(i32 %56)
  %58 = or i32 %55, %57
  %59 = sext i32 %58 to i64
  %60 = inttoptr i64 %59 to i8*
  %61 = getelementptr inbounds [7 x i8*], [7 x i8*]* %5, i64 0, i64 5
  store i8* %60, i8** %61, align 8
  %62 = load i32, i32* @FW_PARAMS_MNEM_REG, align 4
  %63 = call i32 @FW_PARAMS_MNEM_V(i32 %62)
  %64 = load i32, i32* @SGE_TIMER_VALUE_4_AND_5_A, align 4
  %65 = call i32 @FW_PARAMS_PARAM_XYZ_V(i32 %64)
  %66 = or i32 %63, %65
  %67 = sext i32 %66 to i64
  %68 = inttoptr i64 %67 to i8*
  %69 = getelementptr inbounds [7 x i8*], [7 x i8*]* %5, i64 0, i64 6
  store i8* %68, i8** %69, align 16
  %70 = load %struct.adapter*, %struct.adapter** %3, align 8
  %71 = getelementptr inbounds [7 x i8*], [7 x i8*]* %5, i64 0, i64 0
  %72 = getelementptr inbounds [7 x i8*], [7 x i8*]* %6, i64 0, i64 0
  %73 = call i32 @t4vf_query_params(%struct.adapter* %70, i32 7, i8** %71, i8** %72)
  store i32 %73, i32* %7, align 4
  %74 = load i32, i32* %7, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %1
  %77 = load i32, i32* %7, align 4
  store i32 %77, i32* %2, align 4
  br label %270

78:                                               ; preds = %1
  %79 = getelementptr inbounds [7 x i8*], [7 x i8*]* %6, i64 0, i64 0
  %80 = load i8*, i8** %79, align 16
  %81 = load %struct.sge_params*, %struct.sge_params** %4, align 8
  %82 = getelementptr inbounds %struct.sge_params, %struct.sge_params* %81, i32 0, i32 13
  store i8* %80, i8** %82, align 8
  %83 = getelementptr inbounds [7 x i8*], [7 x i8*]* %6, i64 0, i64 1
  %84 = load i8*, i8** %83, align 8
  %85 = ptrtoint i8* %84 to i32
  %86 = load %struct.sge_params*, %struct.sge_params** %4, align 8
  %87 = getelementptr inbounds %struct.sge_params, %struct.sge_params* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 8
  %88 = getelementptr inbounds [7 x i8*], [7 x i8*]* %6, i64 0, i64 2
  %89 = load i8*, i8** %88, align 16
  %90 = load %struct.sge_params*, %struct.sge_params** %4, align 8
  %91 = getelementptr inbounds %struct.sge_params, %struct.sge_params* %90, i32 0, i32 12
  %92 = load i8**, i8*** %91, align 8
  %93 = getelementptr inbounds i8*, i8** %92, i64 0
  store i8* %89, i8** %93, align 8
  %94 = getelementptr inbounds [7 x i8*], [7 x i8*]* %6, i64 0, i64 3
  %95 = load i8*, i8** %94, align 8
  %96 = load %struct.sge_params*, %struct.sge_params** %4, align 8
  %97 = getelementptr inbounds %struct.sge_params, %struct.sge_params* %96, i32 0, i32 12
  %98 = load i8**, i8*** %97, align 8
  %99 = getelementptr inbounds i8*, i8** %98, i64 1
  store i8* %95, i8** %99, align 8
  %100 = getelementptr inbounds [7 x i8*], [7 x i8*]* %6, i64 0, i64 4
  %101 = load i8*, i8** %100, align 16
  %102 = load %struct.sge_params*, %struct.sge_params** %4, align 8
  %103 = getelementptr inbounds %struct.sge_params, %struct.sge_params* %102, i32 0, i32 11
  store i8* %101, i8** %103, align 8
  %104 = getelementptr inbounds [7 x i8*], [7 x i8*]* %6, i64 0, i64 5
  %105 = load i8*, i8** %104, align 8
  %106 = load %struct.sge_params*, %struct.sge_params** %4, align 8
  %107 = getelementptr inbounds %struct.sge_params, %struct.sge_params* %106, i32 0, i32 10
  store i8* %105, i8** %107, align 8
  %108 = getelementptr inbounds [7 x i8*], [7 x i8*]* %6, i64 0, i64 6
  %109 = load i8*, i8** %108, align 16
  %110 = load %struct.sge_params*, %struct.sge_params** %4, align 8
  %111 = getelementptr inbounds %struct.sge_params, %struct.sge_params* %110, i32 0, i32 9
  store i8* %109, i8** %111, align 8
  %112 = load %struct.adapter*, %struct.adapter** %3, align 8
  %113 = getelementptr inbounds %struct.adapter, %struct.adapter* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @is_t4(i32 %115)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %145, label %118

118:                                              ; preds = %78
  %119 = load i32, i32* @FW_PARAMS_MNEM_REG, align 4
  %120 = call i32 @FW_PARAMS_MNEM_V(i32 %119)
  %121 = load i32, i32* @SGE_CONTROL2_A, align 4
  %122 = call i32 @FW_PARAMS_PARAM_XYZ_V(i32 %121)
  %123 = or i32 %120, %122
  %124 = sext i32 %123 to i64
  %125 = inttoptr i64 %124 to i8*
  %126 = getelementptr inbounds [7 x i8*], [7 x i8*]* %5, i64 0, i64 0
  store i8* %125, i8** %126, align 16
  %127 = load %struct.adapter*, %struct.adapter** %3, align 8
  %128 = getelementptr inbounds [7 x i8*], [7 x i8*]* %5, i64 0, i64 0
  %129 = getelementptr inbounds [7 x i8*], [7 x i8*]* %6, i64 0, i64 0
  %130 = call i32 @t4vf_query_params(%struct.adapter* %127, i32 1, i8** %128, i8** %129)
  store i32 %130, i32* %7, align 4
  %131 = load i32, i32* %7, align 4
  %132 = load i32, i32* @FW_SUCCESS, align 4
  %133 = icmp ne i32 %131, %132
  br i1 %133, label %134, label %140

134:                                              ; preds = %118
  %135 = load %struct.adapter*, %struct.adapter** %3, align 8
  %136 = getelementptr inbounds %struct.adapter, %struct.adapter* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = call i32 @dev_err(i32 %137, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  %139 = load i32, i32* %7, align 4
  store i32 %139, i32* %2, align 4
  br label %270

140:                                              ; preds = %118
  %141 = getelementptr inbounds [7 x i8*], [7 x i8*]* %6, i64 0, i64 0
  %142 = load i8*, i8** %141, align 16
  %143 = load %struct.sge_params*, %struct.sge_params** %4, align 8
  %144 = getelementptr inbounds %struct.sge_params, %struct.sge_params* %143, i32 0, i32 8
  store i8* %142, i8** %144, align 8
  br label %145

145:                                              ; preds = %140, %78
  %146 = load i32, i32* @FW_PARAMS_MNEM_REG, align 4
  %147 = call i32 @FW_PARAMS_MNEM_V(i32 %146)
  %148 = load i32, i32* @SGE_INGRESS_RX_THRESHOLD_A, align 4
  %149 = call i32 @FW_PARAMS_PARAM_XYZ_V(i32 %148)
  %150 = or i32 %147, %149
  %151 = sext i32 %150 to i64
  %152 = inttoptr i64 %151 to i8*
  %153 = getelementptr inbounds [7 x i8*], [7 x i8*]* %5, i64 0, i64 0
  store i8* %152, i8** %153, align 16
  %154 = load i32, i32* @FW_PARAMS_MNEM_REG, align 4
  %155 = call i32 @FW_PARAMS_MNEM_V(i32 %154)
  %156 = load i32, i32* @SGE_CONM_CTRL_A, align 4
  %157 = call i32 @FW_PARAMS_PARAM_XYZ_V(i32 %156)
  %158 = or i32 %155, %157
  %159 = sext i32 %158 to i64
  %160 = inttoptr i64 %159 to i8*
  %161 = getelementptr inbounds [7 x i8*], [7 x i8*]* %5, i64 0, i64 1
  store i8* %160, i8** %161, align 8
  %162 = load %struct.adapter*, %struct.adapter** %3, align 8
  %163 = getelementptr inbounds [7 x i8*], [7 x i8*]* %5, i64 0, i64 0
  %164 = getelementptr inbounds [7 x i8*], [7 x i8*]* %6, i64 0, i64 0
  %165 = call i32 @t4vf_query_params(%struct.adapter* %162, i32 2, i8** %163, i8** %164)
  store i32 %165, i32* %7, align 4
  %166 = load i32, i32* %7, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %170

168:                                              ; preds = %145
  %169 = load i32, i32* %7, align 4
  store i32 %169, i32* %2, align 4
  br label %270

170:                                              ; preds = %145
  %171 = getelementptr inbounds [7 x i8*], [7 x i8*]* %6, i64 0, i64 0
  %172 = load i8*, i8** %171, align 16
  %173 = load %struct.sge_params*, %struct.sge_params** %4, align 8
  %174 = getelementptr inbounds %struct.sge_params, %struct.sge_params* %173, i32 0, i32 7
  store i8* %172, i8** %174, align 8
  %175 = getelementptr inbounds [7 x i8*], [7 x i8*]* %6, i64 0, i64 1
  %176 = load i8*, i8** %175, align 8
  %177 = load %struct.sge_params*, %struct.sge_params** %4, align 8
  %178 = getelementptr inbounds %struct.sge_params, %struct.sge_params* %177, i32 0, i32 6
  store i8* %176, i8** %178, align 8
  %179 = load %struct.adapter*, %struct.adapter** %3, align 8
  %180 = getelementptr inbounds %struct.adapter, %struct.adapter* %179, i32 0, i32 1
  %181 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = call i32 @is_t4(i32 %182)
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %269, label %185

185:                                              ; preds = %170
  %186 = load i32, i32* @FW_PARAMS_MNEM_REG, align 4
  %187 = call i32 @FW_PARAMS_MNEM_V(i32 %186)
  %188 = load i32, i32* @SGE_EGRESS_QUEUES_PER_PAGE_VF_A, align 4
  %189 = call i32 @FW_PARAMS_PARAM_XYZ_V(i32 %188)
  %190 = or i32 %187, %189
  %191 = sext i32 %190 to i64
  %192 = inttoptr i64 %191 to i8*
  %193 = getelementptr inbounds [7 x i8*], [7 x i8*]* %5, i64 0, i64 0
  store i8* %192, i8** %193, align 16
  %194 = load i32, i32* @FW_PARAMS_MNEM_REG, align 4
  %195 = call i32 @FW_PARAMS_MNEM_V(i32 %194)
  %196 = load i32, i32* @SGE_INGRESS_QUEUES_PER_PAGE_VF_A, align 4
  %197 = call i32 @FW_PARAMS_PARAM_XYZ_V(i32 %196)
  %198 = or i32 %195, %197
  %199 = sext i32 %198 to i64
  %200 = inttoptr i64 %199 to i8*
  %201 = getelementptr inbounds [7 x i8*], [7 x i8*]* %5, i64 0, i64 1
  store i8* %200, i8** %201, align 8
  %202 = load %struct.adapter*, %struct.adapter** %3, align 8
  %203 = getelementptr inbounds [7 x i8*], [7 x i8*]* %5, i64 0, i64 0
  %204 = getelementptr inbounds [7 x i8*], [7 x i8*]* %6, i64 0, i64 0
  %205 = call i32 @t4vf_query_params(%struct.adapter* %202, i32 2, i8** %203, i8** %204)
  store i32 %205, i32* %7, align 4
  %206 = load i32, i32* %7, align 4
  %207 = load i32, i32* @FW_SUCCESS, align 4
  %208 = icmp ne i32 %206, %207
  br i1 %208, label %209, label %215

209:                                              ; preds = %185
  %210 = load %struct.adapter*, %struct.adapter** %3, align 8
  %211 = getelementptr inbounds %struct.adapter, %struct.adapter* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = call i32 @dev_warn(i32 %212, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0))
  %214 = load i32, i32* %7, align 4
  store i32 %214, i32* %2, align 4
  br label %270

215:                                              ; preds = %185
  %216 = getelementptr inbounds [7 x i8*], [7 x i8*]* %6, i64 0, i64 0
  %217 = load i8*, i8** %216, align 16
  %218 = ptrtoint i8* %217 to i32
  %219 = load %struct.sge_params*, %struct.sge_params** %4, align 8
  %220 = getelementptr inbounds %struct.sge_params, %struct.sge_params* %219, i32 0, i32 1
  store i32 %218, i32* %220, align 4
  %221 = getelementptr inbounds [7 x i8*], [7 x i8*]* %6, i64 0, i64 1
  %222 = load i8*, i8** %221, align 8
  %223 = ptrtoint i8* %222 to i32
  %224 = load %struct.sge_params*, %struct.sge_params** %4, align 8
  %225 = getelementptr inbounds %struct.sge_params, %struct.sge_params* %224, i32 0, i32 2
  store i32 %223, i32* %225, align 8
  %226 = load %struct.adapter*, %struct.adapter** %3, align 8
  %227 = call i32 @t4vf_get_pf_from_vf(%struct.adapter* %226)
  store i32 %227, i32* %8, align 4
  %228 = load i32, i32* @HOSTPAGESIZEPF0_S, align 4
  %229 = load i32, i32* @HOSTPAGESIZEPF1_S, align 4
  %230 = load i32, i32* @HOSTPAGESIZEPF0_S, align 4
  %231 = sub i32 %229, %230
  %232 = load i32, i32* %8, align 4
  %233 = mul i32 %231, %232
  %234 = add i32 %228, %233
  store i32 %234, i32* %9, align 4
  %235 = load %struct.sge_params*, %struct.sge_params** %4, align 8
  %236 = getelementptr inbounds %struct.sge_params, %struct.sge_params* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = load i32, i32* %9, align 4
  %239 = lshr i32 %237, %238
  %240 = load i32, i32* @HOSTPAGESIZEPF0_M, align 4
  %241 = and i32 %239, %240
  %242 = load %struct.sge_params*, %struct.sge_params** %4, align 8
  %243 = getelementptr inbounds %struct.sge_params, %struct.sge_params* %242, i32 0, i32 3
  store i32 %241, i32* %243, align 4
  %244 = load i32, i32* @QUEUESPERPAGEPF0_S, align 4
  %245 = load i32, i32* @QUEUESPERPAGEPF1_S, align 4
  %246 = load i32, i32* @QUEUESPERPAGEPF0_S, align 4
  %247 = sub i32 %245, %246
  %248 = load i32, i32* %8, align 4
  %249 = mul i32 %247, %248
  %250 = add i32 %244, %249
  store i32 %250, i32* %10, align 4
  %251 = load %struct.sge_params*, %struct.sge_params** %4, align 8
  %252 = getelementptr inbounds %struct.sge_params, %struct.sge_params* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 4
  %254 = load i32, i32* %10, align 4
  %255 = lshr i32 %253, %254
  %256 = load i32, i32* @QUEUESPERPAGEPF0_M, align 4
  %257 = and i32 %255, %256
  %258 = load %struct.sge_params*, %struct.sge_params** %4, align 8
  %259 = getelementptr inbounds %struct.sge_params, %struct.sge_params* %258, i32 0, i32 4
  store i32 %257, i32* %259, align 8
  %260 = load %struct.sge_params*, %struct.sge_params** %4, align 8
  %261 = getelementptr inbounds %struct.sge_params, %struct.sge_params* %260, i32 0, i32 2
  %262 = load i32, i32* %261, align 8
  %263 = load i32, i32* %10, align 4
  %264 = lshr i32 %262, %263
  %265 = load i32, i32* @QUEUESPERPAGEPF0_M, align 4
  %266 = and i32 %264, %265
  %267 = load %struct.sge_params*, %struct.sge_params** %4, align 8
  %268 = getelementptr inbounds %struct.sge_params, %struct.sge_params* %267, i32 0, i32 5
  store i32 %266, i32* %268, align 4
  br label %269

269:                                              ; preds = %215, %170
  store i32 0, i32* %2, align 4
  br label %270

270:                                              ; preds = %269, %209, %168, %134, %76
  %271 = load i32, i32* %2, align 4
  ret i32 %271
}

declare dso_local i32 @FW_PARAMS_MNEM_V(i32) #1

declare dso_local i32 @FW_PARAMS_PARAM_XYZ_V(i32) #1

declare dso_local i32 @t4vf_query_params(%struct.adapter*, i32, i8**, i8**) #1

declare dso_local i32 @is_t4(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @t4vf_get_pf_from_vf(%struct.adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
