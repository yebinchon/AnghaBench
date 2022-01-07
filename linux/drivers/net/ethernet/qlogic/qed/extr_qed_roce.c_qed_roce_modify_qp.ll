; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_roce.c_qed_roce_modify_qp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_roce.c_qed_roce_modify_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.qed_rdma_qp = type { i64, i32 }
%struct.qed_rdma_modify_qp_in_params = type { i32 }

@QED_ROCE_QP_STATE_INIT = common dso_local global i32 0, align 4
@QED_ROCE_QP_STATE_RESET = common dso_local global i32 0, align 4
@QED_ROCE_QP_STATE_RTR = common dso_local global i64 0, align 8
@QED_ROCE_QP_STATE_RTS = common dso_local global i64 0, align 8
@QED_ROCE_QP_STATE_SQD = common dso_local global i64 0, align 8
@QED_ROCE_QP_STATE_ERR = common dso_local global i64 0, align 8
@QED_MSG_RDMA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"0\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qed_roce_modify_qp(%struct.qed_hwfn* %0, %struct.qed_rdma_qp* %1, i32 %2, %struct.qed_rdma_modify_qp_in_params* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.qed_hwfn*, align 8
  %7 = alloca %struct.qed_rdma_qp*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.qed_rdma_modify_qp_in_params*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %6, align 8
  store %struct.qed_rdma_qp* %1, %struct.qed_rdma_qp** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.qed_rdma_modify_qp_in_params* %3, %struct.qed_rdma_modify_qp_in_params** %9, align 8
  store i32 0, i32* %10, align 4
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* @QED_ROCE_QP_STATE_INIT, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %19, label %15

15:                                               ; preds = %4
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @QED_ROCE_QP_STATE_RESET, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %30

19:                                               ; preds = %15, %4
  %20 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %7, align 8
  %21 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @QED_ROCE_QP_STATE_RTR, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %19
  %26 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %27 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %7, align 8
  %28 = call i32 @qed_roce_sp_create_responder(%struct.qed_hwfn* %26, %struct.qed_rdma_qp* %27)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  store i32 %29, i32* %5, align 4
  br label %226

30:                                               ; preds = %19, %15
  %31 = load i32, i32* %8, align 4
  %32 = zext i32 %31 to i64
  %33 = load i64, i64* @QED_ROCE_QP_STATE_RTR, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %57

35:                                               ; preds = %30
  %36 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %7, align 8
  %37 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @QED_ROCE_QP_STATE_RTS, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %57

41:                                               ; preds = %35
  %42 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %43 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %7, align 8
  %44 = call i32 @qed_roce_sp_create_requester(%struct.qed_hwfn* %42, %struct.qed_rdma_qp* %43)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = load i32, i32* %10, align 4
  store i32 %48, i32* %5, align 4
  br label %226

49:                                               ; preds = %41
  %50 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %51 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %7, align 8
  %52 = load %struct.qed_rdma_modify_qp_in_params*, %struct.qed_rdma_modify_qp_in_params** %9, align 8
  %53 = getelementptr inbounds %struct.qed_rdma_modify_qp_in_params, %struct.qed_rdma_modify_qp_in_params* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @qed_roce_sp_modify_responder(%struct.qed_hwfn* %50, %struct.qed_rdma_qp* %51, i32 0, i32 %54)
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %10, align 4
  store i32 %56, i32* %5, align 4
  br label %226

57:                                               ; preds = %35, %30
  %58 = load i32, i32* %8, align 4
  %59 = zext i32 %58 to i64
  %60 = load i64, i64* @QED_ROCE_QP_STATE_RTS, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %87

62:                                               ; preds = %57
  %63 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %7, align 8
  %64 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @QED_ROCE_QP_STATE_RTS, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %87

68:                                               ; preds = %62
  %69 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %70 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %7, align 8
  %71 = load %struct.qed_rdma_modify_qp_in_params*, %struct.qed_rdma_modify_qp_in_params** %9, align 8
  %72 = getelementptr inbounds %struct.qed_rdma_modify_qp_in_params, %struct.qed_rdma_modify_qp_in_params* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @qed_roce_sp_modify_responder(%struct.qed_hwfn* %69, %struct.qed_rdma_qp* %70, i32 0, i32 %73)
  store i32 %74, i32* %10, align 4
  %75 = load i32, i32* %10, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %68
  %78 = load i32, i32* %10, align 4
  store i32 %78, i32* %5, align 4
  br label %226

79:                                               ; preds = %68
  %80 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %81 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %7, align 8
  %82 = load %struct.qed_rdma_modify_qp_in_params*, %struct.qed_rdma_modify_qp_in_params** %9, align 8
  %83 = getelementptr inbounds %struct.qed_rdma_modify_qp_in_params, %struct.qed_rdma_modify_qp_in_params* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @qed_roce_sp_modify_requester(%struct.qed_hwfn* %80, %struct.qed_rdma_qp* %81, i32 0, i32 0, i32 %84)
  store i32 %85, i32* %10, align 4
  %86 = load i32, i32* %10, align 4
  store i32 %86, i32* %5, align 4
  br label %226

87:                                               ; preds = %62, %57
  %88 = load i32, i32* %8, align 4
  %89 = zext i32 %88 to i64
  %90 = load i64, i64* @QED_ROCE_QP_STATE_RTS, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %106

92:                                               ; preds = %87
  %93 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %7, align 8
  %94 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @QED_ROCE_QP_STATE_SQD, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %106

98:                                               ; preds = %92
  %99 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %100 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %7, align 8
  %101 = load %struct.qed_rdma_modify_qp_in_params*, %struct.qed_rdma_modify_qp_in_params** %9, align 8
  %102 = getelementptr inbounds %struct.qed_rdma_modify_qp_in_params, %struct.qed_rdma_modify_qp_in_params* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @qed_roce_sp_modify_requester(%struct.qed_hwfn* %99, %struct.qed_rdma_qp* %100, i32 1, i32 0, i32 %103)
  store i32 %104, i32* %10, align 4
  %105 = load i32, i32* %10, align 4
  store i32 %105, i32* %5, align 4
  br label %226

106:                                              ; preds = %92, %87
  %107 = load i32, i32* %8, align 4
  %108 = zext i32 %107 to i64
  %109 = load i64, i64* @QED_ROCE_QP_STATE_SQD, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %136

111:                                              ; preds = %106
  %112 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %7, align 8
  %113 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @QED_ROCE_QP_STATE_SQD, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %136

117:                                              ; preds = %111
  %118 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %119 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %7, align 8
  %120 = load %struct.qed_rdma_modify_qp_in_params*, %struct.qed_rdma_modify_qp_in_params** %9, align 8
  %121 = getelementptr inbounds %struct.qed_rdma_modify_qp_in_params, %struct.qed_rdma_modify_qp_in_params* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @qed_roce_sp_modify_responder(%struct.qed_hwfn* %118, %struct.qed_rdma_qp* %119, i32 0, i32 %122)
  store i32 %123, i32* %10, align 4
  %124 = load i32, i32* %10, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %117
  %127 = load i32, i32* %10, align 4
  store i32 %127, i32* %5, align 4
  br label %226

128:                                              ; preds = %117
  %129 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %130 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %7, align 8
  %131 = load %struct.qed_rdma_modify_qp_in_params*, %struct.qed_rdma_modify_qp_in_params** %9, align 8
  %132 = getelementptr inbounds %struct.qed_rdma_modify_qp_in_params, %struct.qed_rdma_modify_qp_in_params* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @qed_roce_sp_modify_requester(%struct.qed_hwfn* %129, %struct.qed_rdma_qp* %130, i32 0, i32 0, i32 %133)
  store i32 %134, i32* %10, align 4
  %135 = load i32, i32* %10, align 4
  store i32 %135, i32* %5, align 4
  br label %226

136:                                              ; preds = %111, %106
  %137 = load i32, i32* %8, align 4
  %138 = zext i32 %137 to i64
  %139 = load i64, i64* @QED_ROCE_QP_STATE_SQD, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %166

141:                                              ; preds = %136
  %142 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %7, align 8
  %143 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @QED_ROCE_QP_STATE_RTS, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %147, label %166

147:                                              ; preds = %141
  %148 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %149 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %7, align 8
  %150 = load %struct.qed_rdma_modify_qp_in_params*, %struct.qed_rdma_modify_qp_in_params** %9, align 8
  %151 = getelementptr inbounds %struct.qed_rdma_modify_qp_in_params, %struct.qed_rdma_modify_qp_in_params* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @qed_roce_sp_modify_responder(%struct.qed_hwfn* %148, %struct.qed_rdma_qp* %149, i32 0, i32 %152)
  store i32 %153, i32* %10, align 4
  %154 = load i32, i32* %10, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %147
  %157 = load i32, i32* %10, align 4
  store i32 %157, i32* %5, align 4
  br label %226

158:                                              ; preds = %147
  %159 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %160 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %7, align 8
  %161 = load %struct.qed_rdma_modify_qp_in_params*, %struct.qed_rdma_modify_qp_in_params** %9, align 8
  %162 = getelementptr inbounds %struct.qed_rdma_modify_qp_in_params, %struct.qed_rdma_modify_qp_in_params* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @qed_roce_sp_modify_requester(%struct.qed_hwfn* %159, %struct.qed_rdma_qp* %160, i32 0, i32 0, i32 %163)
  store i32 %164, i32* %10, align 4
  %165 = load i32, i32* %10, align 4
  store i32 %165, i32* %5, align 4
  br label %226

166:                                              ; preds = %141, %136
  %167 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %7, align 8
  %168 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* @QED_ROCE_QP_STATE_ERR, align 8
  %171 = icmp eq i64 %169, %170
  br i1 %171, label %172, label %191

172:                                              ; preds = %166
  %173 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %174 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %7, align 8
  %175 = load %struct.qed_rdma_modify_qp_in_params*, %struct.qed_rdma_modify_qp_in_params** %9, align 8
  %176 = getelementptr inbounds %struct.qed_rdma_modify_qp_in_params, %struct.qed_rdma_modify_qp_in_params* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @qed_roce_sp_modify_responder(%struct.qed_hwfn* %173, %struct.qed_rdma_qp* %174, i32 1, i32 %177)
  store i32 %178, i32* %10, align 4
  %179 = load i32, i32* %10, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %183

181:                                              ; preds = %172
  %182 = load i32, i32* %10, align 4
  store i32 %182, i32* %5, align 4
  br label %226

183:                                              ; preds = %172
  %184 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %185 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %7, align 8
  %186 = load %struct.qed_rdma_modify_qp_in_params*, %struct.qed_rdma_modify_qp_in_params** %9, align 8
  %187 = getelementptr inbounds %struct.qed_rdma_modify_qp_in_params, %struct.qed_rdma_modify_qp_in_params* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @qed_roce_sp_modify_requester(%struct.qed_hwfn* %184, %struct.qed_rdma_qp* %185, i32 0, i32 1, i32 %188)
  store i32 %189, i32* %10, align 4
  %190 = load i32, i32* %10, align 4
  store i32 %190, i32* %5, align 4
  br label %226

191:                                              ; preds = %166
  %192 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %7, align 8
  %193 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = load i32, i32* @QED_ROCE_QP_STATE_RESET, align 4
  %196 = sext i32 %195 to i64
  %197 = icmp eq i64 %194, %196
  br i1 %197, label %198, label %213

198:                                              ; preds = %191
  %199 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %200 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %7, align 8
  %201 = call i32 @qed_roce_sp_destroy_qp_responder(%struct.qed_hwfn* %199, %struct.qed_rdma_qp* %200, i32* %11)
  store i32 %201, i32* %10, align 4
  %202 = load i32, i32* %10, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %206

204:                                              ; preds = %198
  %205 = load i32, i32* %10, align 4
  store i32 %205, i32* %5, align 4
  br label %226

206:                                              ; preds = %198
  %207 = load i32, i32* %11, align 4
  %208 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %7, align 8
  %209 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %208, i32 0, i32 1
  store i32 %207, i32* %209, align 8
  %210 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %211 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %7, align 8
  %212 = call i32 @qed_roce_sp_destroy_qp_requester(%struct.qed_hwfn* %210, %struct.qed_rdma_qp* %211)
  store i32 %212, i32* %10, align 4
  br label %217

213:                                              ; preds = %191
  %214 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %215 = load i32, i32* @QED_MSG_RDMA, align 4
  %216 = call i32 @DP_VERBOSE(%struct.qed_hwfn* %214, i32 %215, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  br label %217

217:                                              ; preds = %213, %206
  br label %218

218:                                              ; preds = %217
  br label %219

219:                                              ; preds = %218
  br label %220

220:                                              ; preds = %219
  br label %221

221:                                              ; preds = %220
  br label %222

222:                                              ; preds = %221
  br label %223

223:                                              ; preds = %222
  br label %224

224:                                              ; preds = %223
  %225 = load i32, i32* %10, align 4
  store i32 %225, i32* %5, align 4
  br label %226

226:                                              ; preds = %224, %204, %183, %181, %158, %156, %128, %126, %98, %79, %77, %49, %47, %25
  %227 = load i32, i32* %5, align 4
  ret i32 %227
}

declare dso_local i32 @qed_roce_sp_create_responder(%struct.qed_hwfn*, %struct.qed_rdma_qp*) #1

declare dso_local i32 @qed_roce_sp_create_requester(%struct.qed_hwfn*, %struct.qed_rdma_qp*) #1

declare dso_local i32 @qed_roce_sp_modify_responder(%struct.qed_hwfn*, %struct.qed_rdma_qp*, i32, i32) #1

declare dso_local i32 @qed_roce_sp_modify_requester(%struct.qed_hwfn*, %struct.qed_rdma_qp*, i32, i32, i32) #1

declare dso_local i32 @qed_roce_sp_destroy_qp_responder(%struct.qed_hwfn*, %struct.qed_rdma_qp*, i32*) #1

declare dso_local i32 @qed_roce_sp_destroy_qp_requester(%struct.qed_hwfn*, %struct.qed_rdma_qp*) #1

declare dso_local i32 @DP_VERBOSE(%struct.qed_hwfn*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
