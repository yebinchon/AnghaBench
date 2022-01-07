; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_resource_tracker.c_mlx4_RST2INIT_QP_wrapper.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_resource_tracker.c_mlx4_RST2INIT_QP_wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.mlx4_vhcr = type { i32 }
%struct.mlx4_cmd_mailbox = type { %struct.mlx4_qp_context* }
%struct.mlx4_qp_context = type { i64, i32 }
%struct.mlx4_cmd_info = type { i32 }
%struct.res_mtt = type { i32 }
%struct.res_qp = type { i32, i64, %struct.res_srq*, %struct.res_srq*, %struct.res_srq*, %struct.res_srq*, i32, i64, i64, i64, i64, i64, i64 }
%struct.res_srq = type { i32 }
%struct.res_cq = type { i32 }

@RES_QP_HW = common dso_local global i32 0, align 4
@RES_MTT = common dso_local global i32 0, align 4
@RES_CQ = common dso_local global i32 0, align 4
@RES_SRQ = common dso_local global i32 0, align 4
@RES_QP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_RST2INIT_QP_wrapper(%struct.mlx4_dev* %0, i32 %1, %struct.mlx4_vhcr* %2, %struct.mlx4_cmd_mailbox* %3, %struct.mlx4_cmd_mailbox* %4, %struct.mlx4_cmd_info* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx4_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mlx4_vhcr*, align 8
  %11 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %12 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %13 = alloca %struct.mlx4_cmd_info*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.res_mtt*, align 8
  %17 = alloca %struct.res_qp*, align 8
  %18 = alloca %struct.mlx4_qp_context*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.res_cq*, align 8
  %22 = alloca %struct.res_cq*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca %struct.res_srq*, align 8
  %28 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.mlx4_vhcr* %2, %struct.mlx4_vhcr** %10, align 8
  store %struct.mlx4_cmd_mailbox* %3, %struct.mlx4_cmd_mailbox** %11, align 8
  store %struct.mlx4_cmd_mailbox* %4, %struct.mlx4_cmd_mailbox** %12, align 8
  store %struct.mlx4_cmd_info* %5, %struct.mlx4_cmd_info** %13, align 8
  %29 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %10, align 8
  %30 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %31, 8388607
  store i32 %32, i32* %15, align 4
  %33 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %11, align 8
  %34 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %33, i32 0, i32 0
  %35 = load %struct.mlx4_qp_context*, %struct.mlx4_qp_context** %34, align 8
  %36 = getelementptr inbounds %struct.mlx4_qp_context, %struct.mlx4_qp_context* %35, i64 8
  store %struct.mlx4_qp_context* %36, %struct.mlx4_qp_context** %18, align 8
  %37 = load %struct.mlx4_qp_context*, %struct.mlx4_qp_context** %18, align 8
  %38 = call i32 @qp_get_mtt_addr(%struct.mlx4_qp_context* %37)
  %39 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %40 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = sdiv i32 %38, %42
  store i32 %43, i32* %19, align 4
  %44 = load %struct.mlx4_qp_context*, %struct.mlx4_qp_context** %18, align 8
  %45 = call i32 @qp_get_mtt_size(%struct.mlx4_qp_context* %44)
  store i32 %45, i32* %20, align 4
  %46 = load %struct.mlx4_qp_context*, %struct.mlx4_qp_context** %18, align 8
  %47 = call i32 @qp_get_rcqn(%struct.mlx4_qp_context* %46)
  store i32 %47, i32* %23, align 4
  %48 = load %struct.mlx4_qp_context*, %struct.mlx4_qp_context** %18, align 8
  %49 = call i32 @qp_get_scqn(%struct.mlx4_qp_context* %48)
  store i32 %49, i32* %24, align 4
  %50 = load %struct.mlx4_qp_context*, %struct.mlx4_qp_context** %18, align 8
  %51 = call i32 @qp_get_srqn(%struct.mlx4_qp_context* %50)
  %52 = and i32 %51, 16777215
  store i32 %52, i32* %25, align 4
  %53 = load %struct.mlx4_qp_context*, %struct.mlx4_qp_context** %18, align 8
  %54 = call i32 @qp_get_srqn(%struct.mlx4_qp_context* %53)
  %55 = ashr i32 %54, 24
  %56 = and i32 %55, 1
  store i32 %56, i32* %26, align 4
  %57 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %10, align 8
  %58 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %59, 16777215
  store i32 %60, i32* %28, align 4
  %61 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %62 = load i32, i32* %9, align 4
  %63 = load %struct.mlx4_qp_context*, %struct.mlx4_qp_context** %18, align 8
  %64 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %11, align 8
  %65 = call i32 @adjust_qp_sched_queue(%struct.mlx4_dev* %61, i32 %62, %struct.mlx4_qp_context* %63, %struct.mlx4_cmd_mailbox* %64)
  store i32 %65, i32* %14, align 4
  %66 = load i32, i32* %14, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %6
  %69 = load i32, i32* %14, align 4
  store i32 %69, i32* %7, align 4
  br label %290

70:                                               ; preds = %6
  %71 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* %15, align 4
  %74 = load i32, i32* @RES_QP_HW, align 4
  %75 = call i32 @qp_res_start_move_to(%struct.mlx4_dev* %71, i32 %72, i32 %73, i32 %74, %struct.res_qp** %17, i32 0)
  store i32 %75, i32* %14, align 4
  %76 = load i32, i32* %14, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %70
  %79 = load i32, i32* %14, align 4
  store i32 %79, i32* %7, align 4
  br label %290

80:                                               ; preds = %70
  %81 = load i32, i32* %28, align 4
  %82 = load %struct.res_qp*, %struct.res_qp** %17, align 8
  %83 = getelementptr inbounds %struct.res_qp, %struct.res_qp* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 8
  %84 = load %struct.res_qp*, %struct.res_qp** %17, align 8
  %85 = getelementptr inbounds %struct.res_qp, %struct.res_qp* %84, i32 0, i32 12
  store i64 0, i64* %85, align 8
  %86 = load %struct.res_qp*, %struct.res_qp** %17, align 8
  %87 = getelementptr inbounds %struct.res_qp, %struct.res_qp* %86, i32 0, i32 1
  store i64 0, i64* %87, align 8
  %88 = load %struct.res_qp*, %struct.res_qp** %17, align 8
  %89 = getelementptr inbounds %struct.res_qp, %struct.res_qp* %88, i32 0, i32 11
  store i64 0, i64* %89, align 8
  %90 = load %struct.res_qp*, %struct.res_qp** %17, align 8
  %91 = getelementptr inbounds %struct.res_qp, %struct.res_qp* %90, i32 0, i32 10
  store i64 0, i64* %91, align 8
  %92 = load %struct.res_qp*, %struct.res_qp** %17, align 8
  %93 = getelementptr inbounds %struct.res_qp, %struct.res_qp* %92, i32 0, i32 9
  store i64 0, i64* %93, align 8
  %94 = load %struct.res_qp*, %struct.res_qp** %17, align 8
  %95 = getelementptr inbounds %struct.res_qp, %struct.res_qp* %94, i32 0, i32 8
  store i64 0, i64* %95, align 8
  %96 = load %struct.res_qp*, %struct.res_qp** %17, align 8
  %97 = getelementptr inbounds %struct.res_qp, %struct.res_qp* %96, i32 0, i32 7
  store i64 0, i64* %97, align 8
  %98 = load %struct.mlx4_qp_context*, %struct.mlx4_qp_context** %18, align 8
  %99 = getelementptr inbounds %struct.mlx4_qp_context, %struct.mlx4_qp_context* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @be32_to_cpu(i32 %100)
  %102 = load %struct.res_qp*, %struct.res_qp** %17, align 8
  %103 = getelementptr inbounds %struct.res_qp, %struct.res_qp* %102, i32 0, i32 6
  store i32 %101, i32* %103, align 8
  %104 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %105 = load i32, i32* %9, align 4
  %106 = load i32, i32* %19, align 4
  %107 = load i32, i32* @RES_MTT, align 4
  %108 = bitcast %struct.res_mtt** %16 to %struct.res_srq**
  %109 = call i32 @get_res(%struct.mlx4_dev* %104, i32 %105, i32 %106, i32 %107, %struct.res_srq** %108)
  store i32 %109, i32* %14, align 4
  %110 = load i32, i32* %14, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %80
  br label %283

113:                                              ; preds = %80
  %114 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %115 = load i32, i32* %9, align 4
  %116 = load i32, i32* %19, align 4
  %117 = load i32, i32* %20, align 4
  %118 = load %struct.res_mtt*, %struct.res_mtt** %16, align 8
  %119 = bitcast %struct.res_mtt* %118 to %struct.res_srq*
  %120 = call i32 @check_mtt_range(%struct.mlx4_dev* %114, i32 %115, i32 %116, i32 %117, %struct.res_srq* %119)
  store i32 %120, i32* %14, align 4
  %121 = load i32, i32* %14, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %113
  br label %277

124:                                              ; preds = %113
  %125 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %126 = load i32, i32* %9, align 4
  %127 = load i32, i32* %23, align 4
  %128 = load i32, i32* @RES_CQ, align 4
  %129 = bitcast %struct.res_cq** %21 to %struct.res_srq**
  %130 = call i32 @get_res(%struct.mlx4_dev* %125, i32 %126, i32 %127, i32 %128, %struct.res_srq** %129)
  store i32 %130, i32* %14, align 4
  %131 = load i32, i32* %14, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %124
  br label %277

134:                                              ; preds = %124
  %135 = load i32, i32* %24, align 4
  %136 = load i32, i32* %23, align 4
  %137 = icmp ne i32 %135, %136
  br i1 %137, label %138, label %149

138:                                              ; preds = %134
  %139 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %140 = load i32, i32* %9, align 4
  %141 = load i32, i32* %24, align 4
  %142 = load i32, i32* @RES_CQ, align 4
  %143 = bitcast %struct.res_cq** %22 to %struct.res_srq**
  %144 = call i32 @get_res(%struct.mlx4_dev* %139, i32 %140, i32 %141, i32 %142, %struct.res_srq** %143)
  store i32 %144, i32* %14, align 4
  %145 = load i32, i32* %14, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %138
  br label %271

148:                                              ; preds = %138
  br label %151

149:                                              ; preds = %134
  %150 = load %struct.res_cq*, %struct.res_cq** %21, align 8
  store %struct.res_cq* %150, %struct.res_cq** %22, align 8
  br label %151

151:                                              ; preds = %149, %148
  %152 = load i32, i32* %26, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %164

154:                                              ; preds = %151
  %155 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %156 = load i32, i32* %9, align 4
  %157 = load i32, i32* %25, align 4
  %158 = load i32, i32* @RES_SRQ, align 4
  %159 = call i32 @get_res(%struct.mlx4_dev* %155, i32 %156, i32 %157, i32 %158, %struct.res_srq** %27)
  store i32 %159, i32* %14, align 4
  %160 = load i32, i32* %14, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %154
  br label %260

163:                                              ; preds = %154
  br label %164

164:                                              ; preds = %163, %151
  %165 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %166 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %10, align 8
  %167 = load %struct.mlx4_qp_context*, %struct.mlx4_qp_context** %18, align 8
  %168 = call i32 @adjust_proxy_tun_qkey(%struct.mlx4_dev* %165, %struct.mlx4_vhcr* %166, %struct.mlx4_qp_context* %167)
  %169 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %170 = load i32, i32* %9, align 4
  %171 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %11, align 8
  %172 = call i32 @update_pkey_index(%struct.mlx4_dev* %169, i32 %170, %struct.mlx4_cmd_mailbox* %171)
  %173 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %174 = load i32, i32* %9, align 4
  %175 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %10, align 8
  %176 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %11, align 8
  %177 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %178 = load %struct.mlx4_cmd_info*, %struct.mlx4_cmd_info** %13, align 8
  %179 = call i32 @mlx4_DMA_wrapper(%struct.mlx4_dev* %173, i32 %174, %struct.mlx4_vhcr* %175, %struct.mlx4_cmd_mailbox* %176, %struct.mlx4_cmd_mailbox* %177, %struct.mlx4_cmd_info* %178)
  store i32 %179, i32* %14, align 4
  %180 = load i32, i32* %14, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %164
  br label %250

183:                                              ; preds = %164
  %184 = load %struct.res_mtt*, %struct.res_mtt** %16, align 8
  %185 = getelementptr inbounds %struct.res_mtt, %struct.res_mtt* %184, i32 0, i32 0
  %186 = call i32 @atomic_inc(i32* %185)
  %187 = load %struct.res_mtt*, %struct.res_mtt** %16, align 8
  %188 = bitcast %struct.res_mtt* %187 to %struct.res_srq*
  %189 = load %struct.res_qp*, %struct.res_qp** %17, align 8
  %190 = getelementptr inbounds %struct.res_qp, %struct.res_qp* %189, i32 0, i32 5
  store %struct.res_srq* %188, %struct.res_srq** %190, align 8
  %191 = load %struct.res_cq*, %struct.res_cq** %21, align 8
  %192 = getelementptr inbounds %struct.res_cq, %struct.res_cq* %191, i32 0, i32 0
  %193 = call i32 @atomic_inc(i32* %192)
  %194 = load %struct.res_cq*, %struct.res_cq** %21, align 8
  %195 = bitcast %struct.res_cq* %194 to %struct.res_srq*
  %196 = load %struct.res_qp*, %struct.res_qp** %17, align 8
  %197 = getelementptr inbounds %struct.res_qp, %struct.res_qp* %196, i32 0, i32 4
  store %struct.res_srq* %195, %struct.res_srq** %197, align 8
  %198 = load %struct.res_cq*, %struct.res_cq** %22, align 8
  %199 = getelementptr inbounds %struct.res_cq, %struct.res_cq* %198, i32 0, i32 0
  %200 = call i32 @atomic_inc(i32* %199)
  %201 = load %struct.res_cq*, %struct.res_cq** %22, align 8
  %202 = bitcast %struct.res_cq* %201 to %struct.res_srq*
  %203 = load %struct.res_qp*, %struct.res_qp** %17, align 8
  %204 = getelementptr inbounds %struct.res_qp, %struct.res_qp* %203, i32 0, i32 3
  store %struct.res_srq* %202, %struct.res_srq** %204, align 8
  %205 = load i32, i32* %24, align 4
  %206 = load i32, i32* %23, align 4
  %207 = icmp ne i32 %205, %206
  br i1 %207, label %208, label %214

208:                                              ; preds = %183
  %209 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %210 = load i32, i32* %9, align 4
  %211 = load i32, i32* %24, align 4
  %212 = load i32, i32* @RES_CQ, align 4
  %213 = call i32 @put_res(%struct.mlx4_dev* %209, i32 %210, i32 %211, i32 %212)
  br label %214

214:                                              ; preds = %208, %183
  %215 = load i32, i32* %26, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %229

217:                                              ; preds = %214
  %218 = load %struct.res_srq*, %struct.res_srq** %27, align 8
  %219 = getelementptr inbounds %struct.res_srq, %struct.res_srq* %218, i32 0, i32 0
  %220 = call i32 @atomic_inc(i32* %219)
  %221 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %222 = load i32, i32* %9, align 4
  %223 = load i32, i32* %25, align 4
  %224 = load i32, i32* @RES_SRQ, align 4
  %225 = call i32 @put_res(%struct.mlx4_dev* %221, i32 %222, i32 %223, i32 %224)
  %226 = load %struct.res_srq*, %struct.res_srq** %27, align 8
  %227 = load %struct.res_qp*, %struct.res_qp** %17, align 8
  %228 = getelementptr inbounds %struct.res_qp, %struct.res_qp* %227, i32 0, i32 2
  store %struct.res_srq* %226, %struct.res_srq** %228, align 8
  br label %229

229:                                              ; preds = %217, %214
  %230 = load %struct.mlx4_qp_context*, %struct.mlx4_qp_context** %18, align 8
  %231 = getelementptr inbounds %struct.mlx4_qp_context, %struct.mlx4_qp_context* %230, i32 0, i32 0
  %232 = load i64, i64* %231, align 8
  %233 = load %struct.res_qp*, %struct.res_qp** %17, align 8
  %234 = getelementptr inbounds %struct.res_qp, %struct.res_qp* %233, i32 0, i32 1
  store i64 %232, i64* %234, align 8
  %235 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %236 = load i32, i32* %9, align 4
  %237 = load i32, i32* %23, align 4
  %238 = load i32, i32* @RES_CQ, align 4
  %239 = call i32 @put_res(%struct.mlx4_dev* %235, i32 %236, i32 %237, i32 %238)
  %240 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %241 = load i32, i32* %9, align 4
  %242 = load i32, i32* %19, align 4
  %243 = load i32, i32* @RES_MTT, align 4
  %244 = call i32 @put_res(%struct.mlx4_dev* %240, i32 %241, i32 %242, i32 %243)
  %245 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %246 = load i32, i32* %9, align 4
  %247 = load i32, i32* @RES_QP, align 4
  %248 = load i32, i32* %15, align 4
  %249 = call i32 @res_end_move(%struct.mlx4_dev* %245, i32 %246, i32 %247, i32 %248)
  store i32 0, i32* %7, align 4
  br label %290

250:                                              ; preds = %182
  %251 = load i32, i32* %26, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %259

253:                                              ; preds = %250
  %254 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %255 = load i32, i32* %9, align 4
  %256 = load i32, i32* %25, align 4
  %257 = load i32, i32* @RES_SRQ, align 4
  %258 = call i32 @put_res(%struct.mlx4_dev* %254, i32 %255, i32 %256, i32 %257)
  br label %259

259:                                              ; preds = %253, %250
  br label %260

260:                                              ; preds = %259, %162
  %261 = load i32, i32* %24, align 4
  %262 = load i32, i32* %23, align 4
  %263 = icmp ne i32 %261, %262
  br i1 %263, label %264, label %270

264:                                              ; preds = %260
  %265 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %266 = load i32, i32* %9, align 4
  %267 = load i32, i32* %24, align 4
  %268 = load i32, i32* @RES_CQ, align 4
  %269 = call i32 @put_res(%struct.mlx4_dev* %265, i32 %266, i32 %267, i32 %268)
  br label %270

270:                                              ; preds = %264, %260
  br label %271

271:                                              ; preds = %270, %147
  %272 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %273 = load i32, i32* %9, align 4
  %274 = load i32, i32* %23, align 4
  %275 = load i32, i32* @RES_CQ, align 4
  %276 = call i32 @put_res(%struct.mlx4_dev* %272, i32 %273, i32 %274, i32 %275)
  br label %277

277:                                              ; preds = %271, %133, %123
  %278 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %279 = load i32, i32* %9, align 4
  %280 = load i32, i32* %19, align 4
  %281 = load i32, i32* @RES_MTT, align 4
  %282 = call i32 @put_res(%struct.mlx4_dev* %278, i32 %279, i32 %280, i32 %281)
  br label %283

283:                                              ; preds = %277, %112
  %284 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %285 = load i32, i32* %9, align 4
  %286 = load i32, i32* @RES_QP, align 4
  %287 = load i32, i32* %15, align 4
  %288 = call i32 @res_abort_move(%struct.mlx4_dev* %284, i32 %285, i32 %286, i32 %287)
  %289 = load i32, i32* %14, align 4
  store i32 %289, i32* %7, align 4
  br label %290

290:                                              ; preds = %283, %229, %78, %68
  %291 = load i32, i32* %7, align 4
  ret i32 %291
}

declare dso_local i32 @qp_get_mtt_addr(%struct.mlx4_qp_context*) #1

declare dso_local i32 @qp_get_mtt_size(%struct.mlx4_qp_context*) #1

declare dso_local i32 @qp_get_rcqn(%struct.mlx4_qp_context*) #1

declare dso_local i32 @qp_get_scqn(%struct.mlx4_qp_context*) #1

declare dso_local i32 @qp_get_srqn(%struct.mlx4_qp_context*) #1

declare dso_local i32 @adjust_qp_sched_queue(%struct.mlx4_dev*, i32, %struct.mlx4_qp_context*, %struct.mlx4_cmd_mailbox*) #1

declare dso_local i32 @qp_res_start_move_to(%struct.mlx4_dev*, i32, i32, i32, %struct.res_qp**, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @get_res(%struct.mlx4_dev*, i32, i32, i32, %struct.res_srq**) #1

declare dso_local i32 @check_mtt_range(%struct.mlx4_dev*, i32, i32, i32, %struct.res_srq*) #1

declare dso_local i32 @adjust_proxy_tun_qkey(%struct.mlx4_dev*, %struct.mlx4_vhcr*, %struct.mlx4_qp_context*) #1

declare dso_local i32 @update_pkey_index(%struct.mlx4_dev*, i32, %struct.mlx4_cmd_mailbox*) #1

declare dso_local i32 @mlx4_DMA_wrapper(%struct.mlx4_dev*, i32, %struct.mlx4_vhcr*, %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_info*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @put_res(%struct.mlx4_dev*, i32, i32, i32) #1

declare dso_local i32 @res_end_move(%struct.mlx4_dev*, i32, i32, i32) #1

declare dso_local i32 @res_abort_move(%struct.mlx4_dev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
