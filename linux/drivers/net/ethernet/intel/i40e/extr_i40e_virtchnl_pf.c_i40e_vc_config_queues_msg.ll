; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_virtchnl_pf.c_i40e_vc_config_queues_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_virtchnl_pf.c_i40e_vc_config_queues_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_vf = type { i64, i32, %struct.TYPE_8__*, i64, i32, %struct.i40e_pf* }
%struct.TYPE_8__ = type { i32, i64, i64 }
%struct.i40e_pf = type { %struct.TYPE_5__** }
%struct.TYPE_5__ = type { i32 }
%struct.virtchnl_vsi_queue_config_info = type { i64, i64, %struct.virtchnl_queue_pair_info* }
%struct.virtchnl_queue_pair_info = type { %struct.TYPE_6__, %struct.TYPE_7__ }
%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_7__ = type { i64, i64 }

@I40E_VF_STATE_ACTIVE = common dso_local global i32 0, align 4
@I40E_ERR_PARAM = common dso_local global i32 0, align 4
@I40E_MAX_VF_QUEUES = common dso_local global i64 0, align 8
@I40E_MAX_VF_VSI = common dso_local global i32 0, align 4
@I40E_ERR_NO_AVAILABLE_VSI = common dso_local global i32 0, align 4
@VIRTCHNL_OP_CONFIG_VSI_QUEUES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40e_vf*, i32*)* @i40e_vc_config_queues_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_vc_config_queues_msg(%struct.i40e_vf* %0, i32* %1) #0 {
  %3 = alloca %struct.i40e_vf*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.virtchnl_vsi_queue_config_info*, align 8
  %6 = alloca %struct.virtchnl_queue_pair_info*, align 8
  %7 = alloca %struct.i40e_pf*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.i40e_vf* %0, %struct.i40e_vf** %3, align 8
  store i32* %1, i32** %4, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = bitcast i32* %15 to %struct.virtchnl_vsi_queue_config_info*
  store %struct.virtchnl_vsi_queue_config_info* %16, %struct.virtchnl_vsi_queue_config_info** %5, align 8
  %17 = load %struct.i40e_vf*, %struct.i40e_vf** %3, align 8
  %18 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %17, i32 0, i32 5
  %19 = load %struct.i40e_pf*, %struct.i40e_pf** %18, align 8
  store %struct.i40e_pf* %19, %struct.i40e_pf** %7, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %20 = load i32, i32* @I40E_VF_STATE_ACTIVE, align 4
  %21 = load %struct.i40e_vf*, %struct.i40e_vf** %3, align 8
  %22 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %21, i32 0, i32 4
  %23 = call i32 @test_bit(i32 %20, i32* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %2
  %26 = load i32, i32* @I40E_ERR_PARAM, align 4
  store i32 %26, i32* %11, align 4
  br label %277

27:                                               ; preds = %2
  %28 = load %struct.i40e_vf*, %struct.i40e_vf** %3, align 8
  %29 = load %struct.virtchnl_vsi_queue_config_info*, %struct.virtchnl_vsi_queue_config_info** %5, align 8
  %30 = getelementptr inbounds %struct.virtchnl_vsi_queue_config_info, %struct.virtchnl_vsi_queue_config_info* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @i40e_vc_isvalid_vsi_id(%struct.i40e_vf* %28, i64 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %27
  %35 = load i32, i32* @I40E_ERR_PARAM, align 4
  store i32 %35, i32* %11, align 4
  br label %277

36:                                               ; preds = %27
  %37 = load %struct.virtchnl_vsi_queue_config_info*, %struct.virtchnl_vsi_queue_config_info** %5, align 8
  %38 = getelementptr inbounds %struct.virtchnl_vsi_queue_config_info, %struct.virtchnl_vsi_queue_config_info* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @I40E_MAX_VF_QUEUES, align 8
  %41 = icmp sgt i64 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = load i32, i32* @I40E_ERR_PARAM, align 4
  store i32 %43, i32* %11, align 4
  br label %277

44:                                               ; preds = %36
  %45 = load %struct.i40e_vf*, %struct.i40e_vf** %3, align 8
  %46 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %45, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %78

49:                                               ; preds = %44
  store i32 0, i32* %12, align 4
  br label %50

50:                                               ; preds = %66, %49
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* @I40E_MAX_VF_VSI, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %69

54:                                               ; preds = %50
  %55 = load %struct.i40e_vf*, %struct.i40e_vf** %3, align 8
  %56 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %55, i32 0, i32 2
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %56, align 8
  %58 = load i32, i32* %12, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = sext i32 %62 to i64
  %64 = load i64, i64* %10, align 8
  %65 = add nsw i64 %64, %63
  store i64 %65, i64* %10, align 8
  br label %66

66:                                               ; preds = %54
  %67 = load i32, i32* %12, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %12, align 4
  br label %50

69:                                               ; preds = %50
  %70 = load i64, i64* %10, align 8
  %71 = load %struct.virtchnl_vsi_queue_config_info*, %struct.virtchnl_vsi_queue_config_info** %5, align 8
  %72 = getelementptr inbounds %struct.virtchnl_vsi_queue_config_info, %struct.virtchnl_vsi_queue_config_info* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %70, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %69
  %76 = load i32, i32* @I40E_ERR_PARAM, align 4
  store i32 %76, i32* %11, align 4
  br label %277

77:                                               ; preds = %69
  br label %78

78:                                               ; preds = %77, %44
  %79 = load %struct.virtchnl_vsi_queue_config_info*, %struct.virtchnl_vsi_queue_config_info** %5, align 8
  %80 = getelementptr inbounds %struct.virtchnl_vsi_queue_config_info, %struct.virtchnl_vsi_queue_config_info* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  store i64 %81, i64* %8, align 8
  store i32 0, i32* %12, align 4
  br label %82

82:                                               ; preds = %220, %78
  %83 = load i32, i32* %12, align 4
  %84 = sext i32 %83 to i64
  %85 = load %struct.virtchnl_vsi_queue_config_info*, %struct.virtchnl_vsi_queue_config_info** %5, align 8
  %86 = getelementptr inbounds %struct.virtchnl_vsi_queue_config_info, %struct.virtchnl_vsi_queue_config_info* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = icmp slt i64 %84, %87
  br i1 %88, label %89, label %223

89:                                               ; preds = %82
  %90 = load %struct.virtchnl_vsi_queue_config_info*, %struct.virtchnl_vsi_queue_config_info** %5, align 8
  %91 = getelementptr inbounds %struct.virtchnl_vsi_queue_config_info, %struct.virtchnl_vsi_queue_config_info* %90, i32 0, i32 2
  %92 = load %struct.virtchnl_queue_pair_info*, %struct.virtchnl_queue_pair_info** %91, align 8
  %93 = load i32, i32* %12, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.virtchnl_queue_pair_info, %struct.virtchnl_queue_pair_info* %92, i64 %94
  store %struct.virtchnl_queue_pair_info* %95, %struct.virtchnl_queue_pair_info** %6, align 8
  %96 = load %struct.i40e_vf*, %struct.i40e_vf** %3, align 8
  %97 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %96, i32 0, i32 3
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %143, label %100

100:                                              ; preds = %89
  %101 = load %struct.i40e_vf*, %struct.i40e_vf** %3, align 8
  %102 = load i64, i64* %8, align 8
  %103 = load %struct.virtchnl_queue_pair_info*, %struct.virtchnl_queue_pair_info** %6, align 8
  %104 = getelementptr inbounds %struct.virtchnl_queue_pair_info, %struct.virtchnl_queue_pair_info* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = call i32 @i40e_vc_isvalid_queue_id(%struct.i40e_vf* %101, i64 %102, i64 %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %111, label %109

109:                                              ; preds = %100
  %110 = load i32, i32* @I40E_ERR_PARAM, align 4
  store i32 %110, i32* %11, align 4
  br label %277

111:                                              ; preds = %100
  %112 = load %struct.virtchnl_queue_pair_info*, %struct.virtchnl_queue_pair_info** %6, align 8
  %113 = getelementptr inbounds %struct.virtchnl_queue_pair_info, %struct.virtchnl_queue_pair_info* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  store i64 %115, i64* %9, align 8
  %116 = load %struct.virtchnl_queue_pair_info*, %struct.virtchnl_queue_pair_info** %6, align 8
  %117 = getelementptr inbounds %struct.virtchnl_queue_pair_info, %struct.virtchnl_queue_pair_info* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.virtchnl_vsi_queue_config_info*, %struct.virtchnl_vsi_queue_config_info** %5, align 8
  %121 = getelementptr inbounds %struct.virtchnl_vsi_queue_config_info, %struct.virtchnl_vsi_queue_config_info* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %119, %122
  br i1 %123, label %140, label %124

124:                                              ; preds = %111
  %125 = load %struct.virtchnl_queue_pair_info*, %struct.virtchnl_queue_pair_info** %6, align 8
  %126 = getelementptr inbounds %struct.virtchnl_queue_pair_info, %struct.virtchnl_queue_pair_info* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.virtchnl_vsi_queue_config_info*, %struct.virtchnl_vsi_queue_config_info** %5, align 8
  %130 = getelementptr inbounds %struct.virtchnl_vsi_queue_config_info, %struct.virtchnl_vsi_queue_config_info* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %128, %131
  br i1 %132, label %140, label %133

133:                                              ; preds = %124
  %134 = load %struct.virtchnl_queue_pair_info*, %struct.virtchnl_queue_pair_info** %6, align 8
  %135 = getelementptr inbounds %struct.virtchnl_queue_pair_info, %struct.virtchnl_queue_pair_info* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* %9, align 8
  %139 = icmp ne i64 %137, %138
  br i1 %139, label %140, label %142

140:                                              ; preds = %133, %124, %111
  %141 = load i32, i32* @I40E_ERR_PARAM, align 4
  store i32 %141, i32* %11, align 4
  br label %277

142:                                              ; preds = %133
  br label %143

143:                                              ; preds = %142, %89
  %144 = load %struct.i40e_vf*, %struct.i40e_vf** %3, align 8
  %145 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %144, i32 0, i32 3
  %146 = load i64, i64* %145, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %166

148:                                              ; preds = %143
  %149 = load i32, i32* %14, align 4
  %150 = load %struct.i40e_vf*, %struct.i40e_vf** %3, align 8
  %151 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %150, i32 0, i32 2
  %152 = load %struct.TYPE_8__*, %struct.TYPE_8__** %151, align 8
  %153 = call i32 @ARRAY_SIZE(%struct.TYPE_8__* %152)
  %154 = icmp sge i32 %149, %153
  br i1 %154, label %155, label %157

155:                                              ; preds = %148
  %156 = load i32, i32* @I40E_ERR_NO_AVAILABLE_VSI, align 4
  store i32 %156, i32* %11, align 4
  br label %277

157:                                              ; preds = %148
  %158 = load %struct.i40e_vf*, %struct.i40e_vf** %3, align 8
  %159 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %158, i32 0, i32 2
  %160 = load %struct.TYPE_8__*, %struct.TYPE_8__** %159, align 8
  %161 = load i32, i32* %14, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i64 %162
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 1
  %165 = load i64, i64* %164, align 8
  store i64 %165, i64* %8, align 8
  br label %166

166:                                              ; preds = %157, %143
  %167 = load %struct.i40e_vf*, %struct.i40e_vf** %3, align 8
  %168 = load i64, i64* %8, align 8
  %169 = load i64, i64* %9, align 8
  %170 = load %struct.virtchnl_queue_pair_info*, %struct.virtchnl_queue_pair_info** %6, align 8
  %171 = getelementptr inbounds %struct.virtchnl_queue_pair_info, %struct.virtchnl_queue_pair_info* %170, i32 0, i32 1
  %172 = call i64 @i40e_config_vsi_rx_queue(%struct.i40e_vf* %167, i64 %168, i64 %169, %struct.TYPE_7__* %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %182, label %174

174:                                              ; preds = %166
  %175 = load %struct.i40e_vf*, %struct.i40e_vf** %3, align 8
  %176 = load i64, i64* %8, align 8
  %177 = load i64, i64* %9, align 8
  %178 = load %struct.virtchnl_queue_pair_info*, %struct.virtchnl_queue_pair_info** %6, align 8
  %179 = getelementptr inbounds %struct.virtchnl_queue_pair_info, %struct.virtchnl_queue_pair_info* %178, i32 0, i32 0
  %180 = call i64 @i40e_config_vsi_tx_queue(%struct.i40e_vf* %175, i64 %176, i64 %177, %struct.TYPE_6__* %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %184

182:                                              ; preds = %174, %166
  %183 = load i32, i32* @I40E_ERR_PARAM, align 4
  store i32 %183, i32* %11, align 4
  br label %277

184:                                              ; preds = %174
  %185 = load %struct.i40e_vf*, %struct.i40e_vf** %3, align 8
  %186 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %185, i32 0, i32 3
  %187 = load i64, i64* %186, align 8
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %219

189:                                              ; preds = %184
  %190 = load i32, i32* %14, align 4
  %191 = load %struct.i40e_vf*, %struct.i40e_vf** %3, align 8
  %192 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %191, i32 0, i32 2
  %193 = load %struct.TYPE_8__*, %struct.TYPE_8__** %192, align 8
  %194 = call i32 @ARRAY_SIZE(%struct.TYPE_8__* %193)
  %195 = icmp sge i32 %190, %194
  br i1 %195, label %196, label %198

196:                                              ; preds = %189
  %197 = load i32, i32* @I40E_ERR_NO_AVAILABLE_VSI, align 4
  store i32 %197, i32* %11, align 4
  br label %277

198:                                              ; preds = %189
  %199 = load i32, i32* %13, align 4
  %200 = load %struct.i40e_vf*, %struct.i40e_vf** %3, align 8
  %201 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %200, i32 0, i32 2
  %202 = load %struct.TYPE_8__*, %struct.TYPE_8__** %201, align 8
  %203 = load i32, i32* %14, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %202, i64 %204
  %206 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = sub nsw i32 %207, 1
  %209 = icmp eq i32 %199, %208
  br i1 %209, label %210, label %213

210:                                              ; preds = %198
  %211 = load i32, i32* %14, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %14, align 4
  store i32 0, i32* %13, align 4
  store i64 0, i64* %9, align 8
  br label %218

213:                                              ; preds = %198
  %214 = load i32, i32* %13, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %13, align 4
  %216 = load i64, i64* %9, align 8
  %217 = add nsw i64 %216, 1
  store i64 %217, i64* %9, align 8
  br label %218

218:                                              ; preds = %213, %210
  br label %219

219:                                              ; preds = %218, %184
  br label %220

220:                                              ; preds = %219
  %221 = load i32, i32* %12, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %12, align 4
  br label %82

223:                                              ; preds = %82
  %224 = load %struct.i40e_vf*, %struct.i40e_vf** %3, align 8
  %225 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %224, i32 0, i32 3
  %226 = load i64, i64* %225, align 8
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %242, label %228

228:                                              ; preds = %223
  %229 = load %struct.virtchnl_vsi_queue_config_info*, %struct.virtchnl_vsi_queue_config_info** %5, align 8
  %230 = getelementptr inbounds %struct.virtchnl_vsi_queue_config_info, %struct.virtchnl_vsi_queue_config_info* %229, i32 0, i32 1
  %231 = load i64, i64* %230, align 8
  %232 = trunc i64 %231 to i32
  %233 = load %struct.i40e_pf*, %struct.i40e_pf** %7, align 8
  %234 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %233, i32 0, i32 0
  %235 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %234, align 8
  %236 = load %struct.i40e_vf*, %struct.i40e_vf** %3, align 8
  %237 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %236, i32 0, i32 0
  %238 = load i64, i64* %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %235, i64 %238
  %240 = load %struct.TYPE_5__*, %struct.TYPE_5__** %239, align 8
  %241 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %240, i32 0, i32 0
  store i32 %232, i32* %241, align 4
  br label %276

242:                                              ; preds = %223
  store i32 0, i32* %12, align 4
  br label %243

243:                                              ; preds = %272, %242
  %244 = load i32, i32* %12, align 4
  %245 = load %struct.i40e_vf*, %struct.i40e_vf** %3, align 8
  %246 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 8
  %248 = icmp slt i32 %244, %247
  br i1 %248, label %249, label %275

249:                                              ; preds = %243
  %250 = load %struct.i40e_vf*, %struct.i40e_vf** %3, align 8
  %251 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %250, i32 0, i32 2
  %252 = load %struct.TYPE_8__*, %struct.TYPE_8__** %251, align 8
  %253 = load i32, i32* %12, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %252, i64 %254
  %256 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 8
  %258 = load %struct.i40e_pf*, %struct.i40e_pf** %7, align 8
  %259 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %258, i32 0, i32 0
  %260 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %259, align 8
  %261 = load %struct.i40e_vf*, %struct.i40e_vf** %3, align 8
  %262 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %261, i32 0, i32 2
  %263 = load %struct.TYPE_8__*, %struct.TYPE_8__** %262, align 8
  %264 = load i32, i32* %12, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %263, i64 %265
  %267 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %266, i32 0, i32 2
  %268 = load i64, i64* %267, align 8
  %269 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %260, i64 %268
  %270 = load %struct.TYPE_5__*, %struct.TYPE_5__** %269, align 8
  %271 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %270, i32 0, i32 0
  store i32 %257, i32* %271, align 4
  br label %272

272:                                              ; preds = %249
  %273 = load i32, i32* %12, align 4
  %274 = add nsw i32 %273, 1
  store i32 %274, i32* %12, align 4
  br label %243

275:                                              ; preds = %243
  br label %276

276:                                              ; preds = %275, %228
  br label %277

277:                                              ; preds = %276, %196, %182, %155, %140, %109, %75, %42, %34, %25
  %278 = load %struct.i40e_vf*, %struct.i40e_vf** %3, align 8
  %279 = load i32, i32* @VIRTCHNL_OP_CONFIG_VSI_QUEUES, align 4
  %280 = load i32, i32* %11, align 4
  %281 = call i32 @i40e_vc_send_resp_to_vf(%struct.i40e_vf* %278, i32 %279, i32 %280)
  ret i32 %281
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @i40e_vc_isvalid_vsi_id(%struct.i40e_vf*, i64) #1

declare dso_local i32 @i40e_vc_isvalid_queue_id(%struct.i40e_vf*, i64, i64) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_8__*) #1

declare dso_local i64 @i40e_config_vsi_rx_queue(%struct.i40e_vf*, i64, i64, %struct.TYPE_7__*) #1

declare dso_local i64 @i40e_config_vsi_tx_queue(%struct.i40e_vf*, i64, i64, %struct.TYPE_6__*) #1

declare dso_local i32 @i40e_vc_send_resp_to_vf(%struct.i40e_vf*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
