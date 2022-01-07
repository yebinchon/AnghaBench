; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_dev.c_qed_dp_init_qm_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_dev.c_qed_dp_init_qm_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.TYPE_2__*, %struct.qed_qm_info }
%struct.TYPE_2__ = type { i32 }
%struct.qed_qm_info = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.init_qm_pq_params*, %struct.init_qm_vport_params*, %struct.init_qm_port_params*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.init_qm_pq_params = type { i32, i32, i32, i32, i32 }
%struct.init_qm_vport_params = type { i32*, i32, i32 }
%struct.init_qm_port_params = type { i32, i32, i32, i32, i32 }

@NETIF_MSG_HW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [112 x i8] c"qm init top level params: start_pq %d, start_vport %d, pure_lb_pq %d, offload_pq %d, llt_pq %d, pure_ack_pq %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [95 x i8] c"ooo_pq %d, first_vf_pq %d, num_pqs %d, num_vf_pqs %d, num_vports %d, max_phys_tcs_per_port %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [109 x i8] c"pf_rl_en %d, pf_wfq_en %d, vport_rl_en %d, vport_wfq_en %d, pf_wfq %d, pf_rl %d, num_pf_rls %d, pq_flags %x\0A\00", align 1
@.str.3 = private unnamed_addr constant [98 x i8] c"port idx %d, active %d, active_phys_tcs %d, num_pbf_cmd_lines %d, num_btb_blocks %d, reserved %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [53 x i8] c"vport idx %d, vport_rl %d, wfq %d, first_tx_pq_id [ \00", align 1
@NUM_OF_TCS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"]\0A\00", align 1
@.str.7 = private unnamed_addr constant [65 x i8] c"pq idx %d, port %d, vport_id %d, tc %d, wrr_grp %d, rl_valid %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qed_hwfn*)* @qed_dp_init_qm_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qed_dp_init_qm_params(%struct.qed_hwfn* %0) #0 {
  %2 = alloca %struct.qed_hwfn*, align 8
  %3 = alloca %struct.qed_qm_info*, align 8
  %4 = alloca %struct.init_qm_vport_params*, align 8
  %5 = alloca %struct.init_qm_port_params*, align 8
  %6 = alloca %struct.init_qm_pq_params*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %2, align 8
  %9 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %10 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %9, i32 0, i32 1
  store %struct.qed_qm_info* %10, %struct.qed_qm_info** %3, align 8
  %11 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %12 = load i32, i32* @NETIF_MSG_HW, align 4
  %13 = load %struct.qed_qm_info*, %struct.qed_qm_info** %3, align 8
  %14 = getelementptr inbounds %struct.qed_qm_info, %struct.qed_qm_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.qed_qm_info*, %struct.qed_qm_info** %3, align 8
  %17 = getelementptr inbounds %struct.qed_qm_info, %struct.qed_qm_info* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.qed_qm_info*, %struct.qed_qm_info** %3, align 8
  %20 = getelementptr inbounds %struct.qed_qm_info, %struct.qed_qm_info* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.qed_qm_info*, %struct.qed_qm_info** %3, align 8
  %23 = getelementptr inbounds %struct.qed_qm_info, %struct.qed_qm_info* %22, i32 0, i32 21
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.qed_qm_info*, %struct.qed_qm_info** %3, align 8
  %26 = getelementptr inbounds %struct.qed_qm_info, %struct.qed_qm_info* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.qed_qm_info*, %struct.qed_qm_info** %3, align 8
  %29 = getelementptr inbounds %struct.qed_qm_info, %struct.qed_qm_info* %28, i32 0, i32 20
  %30 = load i32, i32* %29, align 4
  %31 = call i32 (%struct.qed_hwfn*, i32, i8*, ...) @DP_VERBOSE(%struct.qed_hwfn* %11, i32 %12, i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %18, i32 %21, i32 %24, i32 %27, i32 %30)
  %32 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %33 = load i32, i32* @NETIF_MSG_HW, align 4
  %34 = load %struct.qed_qm_info*, %struct.qed_qm_info** %3, align 8
  %35 = getelementptr inbounds %struct.qed_qm_info, %struct.qed_qm_info* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.qed_qm_info*, %struct.qed_qm_info** %3, align 8
  %38 = getelementptr inbounds %struct.qed_qm_info, %struct.qed_qm_info* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.qed_qm_info*, %struct.qed_qm_info** %3, align 8
  %41 = getelementptr inbounds %struct.qed_qm_info, %struct.qed_qm_info* %40, i32 0, i32 6
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.qed_qm_info*, %struct.qed_qm_info** %3, align 8
  %44 = getelementptr inbounds %struct.qed_qm_info, %struct.qed_qm_info* %43, i32 0, i32 19
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.qed_qm_info*, %struct.qed_qm_info** %3, align 8
  %47 = getelementptr inbounds %struct.qed_qm_info, %struct.qed_qm_info* %46, i32 0, i32 7
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.qed_qm_info*, %struct.qed_qm_info** %3, align 8
  %50 = getelementptr inbounds %struct.qed_qm_info, %struct.qed_qm_info* %49, i32 0, i32 18
  %51 = load i32, i32* %50, align 4
  %52 = call i32 (%struct.qed_hwfn*, i32, i8*, ...) @DP_VERBOSE(%struct.qed_hwfn* %32, i32 %33, i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.1, i64 0, i64 0), i32 %36, i32 %39, i32 %42, i32 %45, i32 %48, i32 %51)
  %53 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %54 = load i32, i32* @NETIF_MSG_HW, align 4
  %55 = load %struct.qed_qm_info*, %struct.qed_qm_info** %3, align 8
  %56 = getelementptr inbounds %struct.qed_qm_info, %struct.qed_qm_info* %55, i32 0, i32 17
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.qed_qm_info*, %struct.qed_qm_info** %3, align 8
  %59 = getelementptr inbounds %struct.qed_qm_info, %struct.qed_qm_info* %58, i32 0, i32 16
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.qed_qm_info*, %struct.qed_qm_info** %3, align 8
  %62 = getelementptr inbounds %struct.qed_qm_info, %struct.qed_qm_info* %61, i32 0, i32 15
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.qed_qm_info*, %struct.qed_qm_info** %3, align 8
  %65 = getelementptr inbounds %struct.qed_qm_info, %struct.qed_qm_info* %64, i32 0, i32 14
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.qed_qm_info*, %struct.qed_qm_info** %3, align 8
  %68 = getelementptr inbounds %struct.qed_qm_info, %struct.qed_qm_info* %67, i32 0, i32 13
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.qed_qm_info*, %struct.qed_qm_info** %3, align 8
  %71 = getelementptr inbounds %struct.qed_qm_info, %struct.qed_qm_info* %70, i32 0, i32 12
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.qed_qm_info*, %struct.qed_qm_info** %3, align 8
  %74 = getelementptr inbounds %struct.qed_qm_info, %struct.qed_qm_info* %73, i32 0, i32 11
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %77 = call i32 @qed_get_pq_flags(%struct.qed_hwfn* %76)
  %78 = call i32 (%struct.qed_hwfn*, i32, i8*, ...) @DP_VERBOSE(%struct.qed_hwfn* %53, i32 %54, i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str.2, i64 0, i64 0), i32 %57, i32 %60, i32 %63, i32 %66, i32 %69, i32 %72, i32 %75, i32 %77)
  store i32 0, i32* %7, align 4
  br label %79

79:                                               ; preds = %113, %1
  %80 = load i32, i32* %7, align 4
  %81 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %82 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %81, i32 0, i32 0
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = icmp slt i32 %80, %85
  br i1 %86, label %87, label %116

87:                                               ; preds = %79
  %88 = load %struct.qed_qm_info*, %struct.qed_qm_info** %3, align 8
  %89 = getelementptr inbounds %struct.qed_qm_info, %struct.qed_qm_info* %88, i32 0, i32 10
  %90 = load %struct.init_qm_port_params*, %struct.init_qm_port_params** %89, align 8
  %91 = load i32, i32* %7, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.init_qm_port_params, %struct.init_qm_port_params* %90, i64 %92
  store %struct.init_qm_port_params* %93, %struct.init_qm_port_params** %5, align 8
  %94 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %95 = load i32, i32* @NETIF_MSG_HW, align 4
  %96 = load i32, i32* %7, align 4
  %97 = load %struct.init_qm_port_params*, %struct.init_qm_port_params** %5, align 8
  %98 = getelementptr inbounds %struct.init_qm_port_params, %struct.init_qm_port_params* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.init_qm_port_params*, %struct.init_qm_port_params** %5, align 8
  %101 = getelementptr inbounds %struct.init_qm_port_params, %struct.init_qm_port_params* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.init_qm_port_params*, %struct.init_qm_port_params** %5, align 8
  %104 = getelementptr inbounds %struct.init_qm_port_params, %struct.init_qm_port_params* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.init_qm_port_params*, %struct.init_qm_port_params** %5, align 8
  %107 = getelementptr inbounds %struct.init_qm_port_params, %struct.init_qm_port_params* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.init_qm_port_params*, %struct.init_qm_port_params** %5, align 8
  %110 = getelementptr inbounds %struct.init_qm_port_params, %struct.init_qm_port_params* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = call i32 (%struct.qed_hwfn*, i32, i8*, ...) @DP_VERBOSE(%struct.qed_hwfn* %94, i32 %95, i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.3, i64 0, i64 0), i32 %96, i32 %99, i32 %102, i32 %105, i32 %108, i32 %111)
  br label %113

113:                                              ; preds = %87
  %114 = load i32, i32* %7, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %7, align 4
  br label %79

116:                                              ; preds = %79
  store i32 0, i32* %7, align 4
  br label %117

117:                                              ; preds = %166, %116
  %118 = load i32, i32* %7, align 4
  %119 = load %struct.qed_qm_info*, %struct.qed_qm_info** %3, align 8
  %120 = getelementptr inbounds %struct.qed_qm_info, %struct.qed_qm_info* %119, i32 0, i32 7
  %121 = load i32, i32* %120, align 4
  %122 = icmp slt i32 %118, %121
  br i1 %122, label %123, label %169

123:                                              ; preds = %117
  %124 = load %struct.qed_qm_info*, %struct.qed_qm_info** %3, align 8
  %125 = getelementptr inbounds %struct.qed_qm_info, %struct.qed_qm_info* %124, i32 0, i32 9
  %126 = load %struct.init_qm_vport_params*, %struct.init_qm_vport_params** %125, align 8
  %127 = load i32, i32* %7, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.init_qm_vport_params, %struct.init_qm_vport_params* %126, i64 %128
  store %struct.init_qm_vport_params* %129, %struct.init_qm_vport_params** %4, align 8
  %130 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %131 = load i32, i32* @NETIF_MSG_HW, align 4
  %132 = load %struct.qed_qm_info*, %struct.qed_qm_info** %3, align 8
  %133 = getelementptr inbounds %struct.qed_qm_info, %struct.qed_qm_info* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* %7, align 4
  %136 = add nsw i32 %134, %135
  %137 = load %struct.init_qm_vport_params*, %struct.init_qm_vport_params** %4, align 8
  %138 = getelementptr inbounds %struct.init_qm_vport_params, %struct.init_qm_vport_params* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.init_qm_vport_params*, %struct.init_qm_vport_params** %4, align 8
  %141 = getelementptr inbounds %struct.init_qm_vport_params, %struct.init_qm_vport_params* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 8
  %143 = call i32 (%struct.qed_hwfn*, i32, i8*, ...) @DP_VERBOSE(%struct.qed_hwfn* %130, i32 %131, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0), i32 %136, i32 %139, i32 %142)
  store i32 0, i32* %8, align 4
  br label %144

144:                                              ; preds = %159, %123
  %145 = load i32, i32* %8, align 4
  %146 = load i32, i32* @NUM_OF_TCS, align 4
  %147 = icmp slt i32 %145, %146
  br i1 %147, label %148, label %162

148:                                              ; preds = %144
  %149 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %150 = load i32, i32* @NETIF_MSG_HW, align 4
  %151 = load %struct.init_qm_vport_params*, %struct.init_qm_vport_params** %4, align 8
  %152 = getelementptr inbounds %struct.init_qm_vport_params, %struct.init_qm_vport_params* %151, i32 0, i32 0
  %153 = load i32*, i32** %152, align 8
  %154 = load i32, i32* %8, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %153, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = call i32 (%struct.qed_hwfn*, i32, i8*, ...) @DP_VERBOSE(%struct.qed_hwfn* %149, i32 %150, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %157)
  br label %159

159:                                              ; preds = %148
  %160 = load i32, i32* %8, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %8, align 4
  br label %144

162:                                              ; preds = %144
  %163 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %164 = load i32, i32* @NETIF_MSG_HW, align 4
  %165 = call i32 (%struct.qed_hwfn*, i32, i8*, ...) @DP_VERBOSE(%struct.qed_hwfn* %163, i32 %164, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  br label %166

166:                                              ; preds = %162
  %167 = load i32, i32* %7, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %7, align 4
  br label %117

169:                                              ; preds = %117
  store i32 0, i32* %7, align 4
  br label %170

170:                                              ; preds = %206, %169
  %171 = load i32, i32* %7, align 4
  %172 = load %struct.qed_qm_info*, %struct.qed_qm_info** %3, align 8
  %173 = getelementptr inbounds %struct.qed_qm_info, %struct.qed_qm_info* %172, i32 0, i32 6
  %174 = load i32, i32* %173, align 8
  %175 = icmp slt i32 %171, %174
  br i1 %175, label %176, label %209

176:                                              ; preds = %170
  %177 = load %struct.qed_qm_info*, %struct.qed_qm_info** %3, align 8
  %178 = getelementptr inbounds %struct.qed_qm_info, %struct.qed_qm_info* %177, i32 0, i32 8
  %179 = load %struct.init_qm_pq_params*, %struct.init_qm_pq_params** %178, align 8
  %180 = load i32, i32* %7, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.init_qm_pq_params, %struct.init_qm_pq_params* %179, i64 %181
  store %struct.init_qm_pq_params* %182, %struct.init_qm_pq_params** %6, align 8
  %183 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %184 = load i32, i32* @NETIF_MSG_HW, align 4
  %185 = load %struct.qed_qm_info*, %struct.qed_qm_info** %3, align 8
  %186 = getelementptr inbounds %struct.qed_qm_info, %struct.qed_qm_info* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = load i32, i32* %7, align 4
  %189 = add nsw i32 %187, %188
  %190 = load %struct.init_qm_pq_params*, %struct.init_qm_pq_params** %6, align 8
  %191 = getelementptr inbounds %struct.init_qm_pq_params, %struct.init_qm_pq_params* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.init_qm_pq_params*, %struct.init_qm_pq_params** %6, align 8
  %194 = getelementptr inbounds %struct.init_qm_pq_params, %struct.init_qm_pq_params* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.init_qm_pq_params*, %struct.init_qm_pq_params** %6, align 8
  %197 = getelementptr inbounds %struct.init_qm_pq_params, %struct.init_qm_pq_params* %196, i32 0, i32 4
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.init_qm_pq_params*, %struct.init_qm_pq_params** %6, align 8
  %200 = getelementptr inbounds %struct.init_qm_pq_params, %struct.init_qm_pq_params* %199, i32 0, i32 2
  %201 = load i32, i32* %200, align 4
  %202 = load %struct.init_qm_pq_params*, %struct.init_qm_pq_params** %6, align 8
  %203 = getelementptr inbounds %struct.init_qm_pq_params, %struct.init_qm_pq_params* %202, i32 0, i32 3
  %204 = load i32, i32* %203, align 4
  %205 = call i32 (%struct.qed_hwfn*, i32, i8*, ...) @DP_VERBOSE(%struct.qed_hwfn* %183, i32 %184, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.7, i64 0, i64 0), i32 %189, i32 %192, i32 %195, i32 %198, i32 %201, i32 %204)
  br label %206

206:                                              ; preds = %176
  %207 = load i32, i32* %7, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %7, align 4
  br label %170

209:                                              ; preds = %170
  ret void
}

declare dso_local i32 @DP_VERBOSE(%struct.qed_hwfn*, i32, i8*, ...) #1

declare dso_local i32 @qed_get_pq_flags(%struct.qed_hwfn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
