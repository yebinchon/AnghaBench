; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_iwarp.c_qed_iwarp_process_mpa_pkt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_iwarp.c_qed_iwarp_process_mpa_pkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.qed_iwarp_ll2_mpa_buf = type { i32, i32, %struct.qed_iwarp_ll2_buff*, %struct.unaligned_opaque_data }
%struct.qed_iwarp_ll2_buff = type { i64 }
%struct.unaligned_opaque_data = type { i32, i32 }
%struct.qed_iwarp_fpdu = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Invalid cid, drop and post back to rx cid=%x\0A\00", align 1
@QED_MSG_RDMA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Can't send FPDU:reset rc=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Can't send FPDU:delay rc=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_hwfn*, %struct.qed_iwarp_ll2_mpa_buf*)* @qed_iwarp_process_mpa_pkt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_iwarp_process_mpa_pkt(%struct.qed_hwfn* %0, %struct.qed_iwarp_ll2_mpa_buf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qed_hwfn*, align 8
  %5 = alloca %struct.qed_iwarp_ll2_mpa_buf*, align 8
  %6 = alloca %struct.unaligned_opaque_data*, align 8
  %7 = alloca %struct.qed_iwarp_ll2_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.qed_iwarp_fpdu*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %4, align 8
  store %struct.qed_iwarp_ll2_mpa_buf* %1, %struct.qed_iwarp_ll2_mpa_buf** %5, align 8
  %12 = load %struct.qed_iwarp_ll2_mpa_buf*, %struct.qed_iwarp_ll2_mpa_buf** %5, align 8
  %13 = getelementptr inbounds %struct.qed_iwarp_ll2_mpa_buf, %struct.qed_iwarp_ll2_mpa_buf* %12, i32 0, i32 3
  store %struct.unaligned_opaque_data* %13, %struct.unaligned_opaque_data** %6, align 8
  %14 = load %struct.qed_iwarp_ll2_mpa_buf*, %struct.qed_iwarp_ll2_mpa_buf** %5, align 8
  %15 = getelementptr inbounds %struct.qed_iwarp_ll2_mpa_buf, %struct.qed_iwarp_ll2_mpa_buf* %14, i32 0, i32 2
  %16 = load %struct.qed_iwarp_ll2_buff*, %struct.qed_iwarp_ll2_buff** %15, align 8
  store %struct.qed_iwarp_ll2_buff* %16, %struct.qed_iwarp_ll2_buff** %7, align 8
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %10, align 4
  %19 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %20 = load %struct.unaligned_opaque_data*, %struct.unaligned_opaque_data** %6, align 8
  %21 = getelementptr inbounds %struct.unaligned_opaque_data, %struct.unaligned_opaque_data* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, 65535
  %24 = call %struct.qed_iwarp_fpdu* @qed_iwarp_get_curr_fpdu(%struct.qed_hwfn* %19, i32 %23)
  store %struct.qed_iwarp_fpdu* %24, %struct.qed_iwarp_fpdu** %9, align 8
  %25 = load %struct.qed_iwarp_fpdu*, %struct.qed_iwarp_fpdu** %9, align 8
  %26 = icmp ne %struct.qed_iwarp_fpdu* %25, null
  br i1 %26, label %33, label %27

27:                                               ; preds = %2
  %28 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %29 = load %struct.unaligned_opaque_data*, %struct.unaligned_opaque_data** %6, align 8
  %30 = getelementptr inbounds %struct.unaligned_opaque_data, %struct.unaligned_opaque_data* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @DP_ERR(%struct.qed_hwfn* %28, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %31)
  br label %218

33:                                               ; preds = %2
  br label %34

34:                                               ; preds = %214, %33
  %35 = load %struct.qed_iwarp_ll2_buff*, %struct.qed_iwarp_ll2_buff** %7, align 8
  %36 = getelementptr inbounds %struct.qed_iwarp_ll2_buff, %struct.qed_iwarp_ll2_buff* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to i32*
  %39 = load %struct.unaligned_opaque_data*, %struct.unaligned_opaque_data** %6, align 8
  %40 = getelementptr inbounds %struct.unaligned_opaque_data, %struct.unaligned_opaque_data* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %38, i64 %42
  store i32* %43, i32** %11, align 8
  %44 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %45 = load %struct.qed_iwarp_fpdu*, %struct.qed_iwarp_fpdu** %9, align 8
  %46 = load %struct.qed_iwarp_ll2_mpa_buf*, %struct.qed_iwarp_ll2_mpa_buf** %5, align 8
  %47 = getelementptr inbounds %struct.qed_iwarp_ll2_mpa_buf, %struct.qed_iwarp_ll2_mpa_buf* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32*, i32** %11, align 8
  %50 = call i32 @qed_iwarp_mpa_classify(%struct.qed_hwfn* %44, %struct.qed_iwarp_fpdu* %45, i32 %48, i32* %49)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  switch i32 %51, label %204 [
    i32 129, label %52
    i32 130, label %85
    i32 128, label %129
  ]

52:                                               ; preds = %34
  %53 = load %struct.qed_iwarp_ll2_buff*, %struct.qed_iwarp_ll2_buff** %7, align 8
  %54 = load %struct.qed_iwarp_fpdu*, %struct.qed_iwarp_fpdu** %9, align 8
  %55 = load %struct.unaligned_opaque_data*, %struct.unaligned_opaque_data** %6, align 8
  %56 = load %struct.qed_iwarp_ll2_mpa_buf*, %struct.qed_iwarp_ll2_mpa_buf** %5, align 8
  %57 = getelementptr inbounds %struct.qed_iwarp_ll2_mpa_buf, %struct.qed_iwarp_ll2_mpa_buf* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.qed_iwarp_ll2_mpa_buf*, %struct.qed_iwarp_ll2_mpa_buf** %5, align 8
  %60 = getelementptr inbounds %struct.qed_iwarp_ll2_mpa_buf, %struct.qed_iwarp_ll2_mpa_buf* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @qed_iwarp_init_fpdu(%struct.qed_iwarp_ll2_buff* %53, %struct.qed_iwarp_fpdu* %54, %struct.unaligned_opaque_data* %55, i32 %58, i32 %61)
  %63 = load %struct.unaligned_opaque_data*, %struct.unaligned_opaque_data** %6, align 8
  %64 = call i32 @QED_IWARP_IS_RIGHT_EDGE(%struct.unaligned_opaque_data* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %52
  %67 = load %struct.qed_iwarp_ll2_mpa_buf*, %struct.qed_iwarp_ll2_mpa_buf** %5, align 8
  %68 = getelementptr inbounds %struct.qed_iwarp_ll2_mpa_buf, %struct.qed_iwarp_ll2_mpa_buf* %67, i32 0, i32 0
  store i32 0, i32* %68, align 8
  br label %204

69:                                               ; preds = %52
  %70 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %71 = load %struct.qed_iwarp_fpdu*, %struct.qed_iwarp_fpdu** %9, align 8
  %72 = call i32 @qed_iwarp_win_right_edge(%struct.qed_hwfn* %70, %struct.qed_iwarp_fpdu* %71)
  store i32 %72, i32* %10, align 4
  %73 = load i32, i32* %10, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %69
  %76 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %77 = load i32, i32* @QED_MSG_RDMA, align 4
  %78 = load i32, i32* %10, align 4
  %79 = call i32 @DP_VERBOSE(%struct.qed_hwfn* %76, i32 %77, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %78)
  %80 = load %struct.qed_iwarp_fpdu*, %struct.qed_iwarp_fpdu** %9, align 8
  %81 = call i32 @memset(%struct.qed_iwarp_fpdu* %80, i32 0, i32 8)
  br label %204

82:                                               ; preds = %69
  %83 = load %struct.qed_iwarp_ll2_mpa_buf*, %struct.qed_iwarp_ll2_mpa_buf** %5, align 8
  %84 = getelementptr inbounds %struct.qed_iwarp_ll2_mpa_buf, %struct.qed_iwarp_ll2_mpa_buf* %83, i32 0, i32 0
  store i32 0, i32* %84, align 8
  br label %204

85:                                               ; preds = %34
  %86 = load %struct.qed_iwarp_ll2_buff*, %struct.qed_iwarp_ll2_buff** %7, align 8
  %87 = load %struct.qed_iwarp_fpdu*, %struct.qed_iwarp_fpdu** %9, align 8
  %88 = load %struct.unaligned_opaque_data*, %struct.unaligned_opaque_data** %6, align 8
  %89 = load %struct.qed_iwarp_ll2_mpa_buf*, %struct.qed_iwarp_ll2_mpa_buf** %5, align 8
  %90 = getelementptr inbounds %struct.qed_iwarp_ll2_mpa_buf, %struct.qed_iwarp_ll2_mpa_buf* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.qed_iwarp_ll2_mpa_buf*, %struct.qed_iwarp_ll2_mpa_buf** %5, align 8
  %93 = getelementptr inbounds %struct.qed_iwarp_ll2_mpa_buf, %struct.qed_iwarp_ll2_mpa_buf* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @qed_iwarp_init_fpdu(%struct.qed_iwarp_ll2_buff* %86, %struct.qed_iwarp_fpdu* %87, %struct.unaligned_opaque_data* %88, i32 %91, i32 %94)
  %96 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %97 = load %struct.qed_iwarp_fpdu*, %struct.qed_iwarp_fpdu** %9, align 8
  %98 = load %struct.unaligned_opaque_data*, %struct.unaligned_opaque_data** %6, align 8
  %99 = load %struct.qed_iwarp_ll2_buff*, %struct.qed_iwarp_ll2_buff** %7, align 8
  %100 = load %struct.qed_iwarp_ll2_mpa_buf*, %struct.qed_iwarp_ll2_mpa_buf** %5, align 8
  %101 = getelementptr inbounds %struct.qed_iwarp_ll2_mpa_buf, %struct.qed_iwarp_ll2_mpa_buf* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* %8, align 4
  %104 = call i32 @qed_iwarp_send_fpdu(%struct.qed_hwfn* %96, %struct.qed_iwarp_fpdu* %97, %struct.unaligned_opaque_data* %98, %struct.qed_iwarp_ll2_buff* %99, i32 %102, i32 %103)
  store i32 %104, i32* %10, align 4
  %105 = load i32, i32* %10, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %114

107:                                              ; preds = %85
  %108 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %109 = load i32, i32* @QED_MSG_RDMA, align 4
  %110 = load i32, i32* %10, align 4
  %111 = call i32 @DP_VERBOSE(%struct.qed_hwfn* %108, i32 %109, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %110)
  %112 = load %struct.qed_iwarp_fpdu*, %struct.qed_iwarp_fpdu** %9, align 8
  %113 = call i32 @memset(%struct.qed_iwarp_fpdu* %112, i32 0, i32 8)
  br label %204

114:                                              ; preds = %85
  %115 = load %struct.qed_iwarp_fpdu*, %struct.qed_iwarp_fpdu** %9, align 8
  %116 = getelementptr inbounds %struct.qed_iwarp_fpdu, %struct.qed_iwarp_fpdu* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.qed_iwarp_ll2_mpa_buf*, %struct.qed_iwarp_ll2_mpa_buf** %5, align 8
  %119 = getelementptr inbounds %struct.qed_iwarp_ll2_mpa_buf, %struct.qed_iwarp_ll2_mpa_buf* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = sub nsw i32 %120, %117
  store i32 %121, i32* %119, align 8
  %122 = load %struct.qed_iwarp_fpdu*, %struct.qed_iwarp_fpdu** %9, align 8
  %123 = getelementptr inbounds %struct.qed_iwarp_fpdu, %struct.qed_iwarp_fpdu* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.unaligned_opaque_data*, %struct.unaligned_opaque_data** %6, align 8
  %126 = getelementptr inbounds %struct.unaligned_opaque_data, %struct.unaligned_opaque_data* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = add nsw i32 %127, %124
  store i32 %128, i32* %126, align 4
  br label %204

129:                                              ; preds = %34
  %130 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %131 = load %struct.qed_iwarp_fpdu*, %struct.qed_iwarp_fpdu** %9, align 8
  %132 = load i32*, i32** %11, align 8
  %133 = call i32 @qed_iwarp_update_fpdu_length(%struct.qed_hwfn* %130, %struct.qed_iwarp_fpdu* %131, i32* %132)
  %134 = load %struct.qed_iwarp_ll2_mpa_buf*, %struct.qed_iwarp_ll2_mpa_buf** %5, align 8
  %135 = getelementptr inbounds %struct.qed_iwarp_ll2_mpa_buf, %struct.qed_iwarp_ll2_mpa_buf* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.qed_iwarp_fpdu*, %struct.qed_iwarp_fpdu** %9, align 8
  %138 = getelementptr inbounds %struct.qed_iwarp_fpdu, %struct.qed_iwarp_fpdu* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = icmp slt i32 %136, %139
  br i1 %140, label %141, label %170

141:                                              ; preds = %129
  %142 = load %struct.unaligned_opaque_data*, %struct.unaligned_opaque_data** %6, align 8
  %143 = call i32 @QED_IWARP_IS_RIGHT_EDGE(%struct.unaligned_opaque_data* %142)
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %154

145:                                              ; preds = %141
  %146 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %147 = load %struct.qed_iwarp_fpdu*, %struct.qed_iwarp_fpdu** %9, align 8
  %148 = call i32 @qed_iwarp_win_right_edge(%struct.qed_hwfn* %146, %struct.qed_iwarp_fpdu* %147)
  store i32 %148, i32* %10, align 4
  %149 = load i32, i32* %10, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %145
  %152 = load i32, i32* %10, align 4
  store i32 %152, i32* %3, align 4
  br label %229

153:                                              ; preds = %145
  br label %154

154:                                              ; preds = %153, %141
  %155 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %156 = load %struct.qed_iwarp_fpdu*, %struct.qed_iwarp_fpdu** %9, align 8
  %157 = load %struct.unaligned_opaque_data*, %struct.unaligned_opaque_data** %6, align 8
  %158 = load %struct.qed_iwarp_ll2_buff*, %struct.qed_iwarp_ll2_buff** %7, align 8
  %159 = load %struct.qed_iwarp_ll2_mpa_buf*, %struct.qed_iwarp_ll2_mpa_buf** %5, align 8
  %160 = getelementptr inbounds %struct.qed_iwarp_ll2_mpa_buf, %struct.qed_iwarp_ll2_mpa_buf* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = call i32 @qed_iwarp_cp_pkt(%struct.qed_hwfn* %155, %struct.qed_iwarp_fpdu* %156, %struct.unaligned_opaque_data* %157, %struct.qed_iwarp_ll2_buff* %158, i32 %161)
  store i32 %162, i32* %10, align 4
  %163 = load i32, i32* %10, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %167

165:                                              ; preds = %154
  %166 = load i32, i32* %10, align 4
  store i32 %166, i32* %3, align 4
  br label %229

167:                                              ; preds = %154
  %168 = load %struct.qed_iwarp_ll2_mpa_buf*, %struct.qed_iwarp_ll2_mpa_buf** %5, align 8
  %169 = getelementptr inbounds %struct.qed_iwarp_ll2_mpa_buf, %struct.qed_iwarp_ll2_mpa_buf* %168, i32 0, i32 0
  store i32 0, i32* %169, align 8
  br label %204

170:                                              ; preds = %129
  %171 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %172 = load %struct.qed_iwarp_fpdu*, %struct.qed_iwarp_fpdu** %9, align 8
  %173 = load %struct.unaligned_opaque_data*, %struct.unaligned_opaque_data** %6, align 8
  %174 = load %struct.qed_iwarp_ll2_buff*, %struct.qed_iwarp_ll2_buff** %7, align 8
  %175 = load %struct.qed_iwarp_ll2_mpa_buf*, %struct.qed_iwarp_ll2_mpa_buf** %5, align 8
  %176 = getelementptr inbounds %struct.qed_iwarp_ll2_mpa_buf, %struct.qed_iwarp_ll2_mpa_buf* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = load i32, i32* %8, align 4
  %179 = call i32 @qed_iwarp_send_fpdu(%struct.qed_hwfn* %171, %struct.qed_iwarp_fpdu* %172, %struct.unaligned_opaque_data* %173, %struct.qed_iwarp_ll2_buff* %174, i32 %177, i32 %178)
  store i32 %179, i32* %10, align 4
  %180 = load i32, i32* %10, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %187

182:                                              ; preds = %170
  %183 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %184 = load i32, i32* @QED_MSG_RDMA, align 4
  %185 = load i32, i32* %10, align 4
  %186 = call i32 @DP_VERBOSE(%struct.qed_hwfn* %183, i32 %184, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %185)
  br label %204

187:                                              ; preds = %170
  %188 = load %struct.qed_iwarp_fpdu*, %struct.qed_iwarp_fpdu** %9, align 8
  %189 = getelementptr inbounds %struct.qed_iwarp_fpdu, %struct.qed_iwarp_fpdu* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.qed_iwarp_ll2_mpa_buf*, %struct.qed_iwarp_ll2_mpa_buf** %5, align 8
  %192 = getelementptr inbounds %struct.qed_iwarp_ll2_mpa_buf, %struct.qed_iwarp_ll2_mpa_buf* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = sub nsw i32 %193, %190
  store i32 %194, i32* %192, align 8
  %195 = load %struct.qed_iwarp_fpdu*, %struct.qed_iwarp_fpdu** %9, align 8
  %196 = getelementptr inbounds %struct.qed_iwarp_fpdu, %struct.qed_iwarp_fpdu* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.unaligned_opaque_data*, %struct.unaligned_opaque_data** %6, align 8
  %199 = getelementptr inbounds %struct.unaligned_opaque_data, %struct.unaligned_opaque_data* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = add nsw i32 %200, %197
  store i32 %201, i32* %199, align 4
  %202 = load %struct.qed_iwarp_fpdu*, %struct.qed_iwarp_fpdu** %9, align 8
  %203 = getelementptr inbounds %struct.qed_iwarp_fpdu, %struct.qed_iwarp_fpdu* %202, i32 0, i32 0
  store i32 0, i32* %203, align 4
  br label %204

204:                                              ; preds = %34, %187, %182, %167, %114, %107, %82, %75, %66
  br label %205

205:                                              ; preds = %204
  %206 = load %struct.qed_iwarp_ll2_mpa_buf*, %struct.qed_iwarp_ll2_mpa_buf** %5, align 8
  %207 = getelementptr inbounds %struct.qed_iwarp_ll2_mpa_buf, %struct.qed_iwarp_ll2_mpa_buf* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %214

210:                                              ; preds = %205
  %211 = load i32, i32* %10, align 4
  %212 = icmp ne i32 %211, 0
  %213 = xor i1 %212, true
  br label %214

214:                                              ; preds = %210, %205
  %215 = phi i1 [ false, %205 ], [ %213, %210 ]
  br i1 %215, label %34, label %216

216:                                              ; preds = %214
  %217 = load i32, i32* %10, align 4
  store i32 %217, i32* %3, align 4
  br label %229

218:                                              ; preds = %27
  %219 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %220 = load %struct.qed_iwarp_ll2_buff*, %struct.qed_iwarp_ll2_buff** %7, align 8
  %221 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %222 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %221, i32 0, i32 0
  %223 = load %struct.TYPE_4__*, %struct.TYPE_4__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 4
  %227 = call i32 @qed_iwarp_ll2_post_rx(%struct.qed_hwfn* %219, %struct.qed_iwarp_ll2_buff* %220, i32 %226)
  %228 = load i32, i32* %10, align 4
  store i32 %228, i32* %3, align 4
  br label %229

229:                                              ; preds = %218, %216, %165, %151
  %230 = load i32, i32* %3, align 4
  ret i32 %230
}

declare dso_local %struct.qed_iwarp_fpdu* @qed_iwarp_get_curr_fpdu(%struct.qed_hwfn*, i32) #1

declare dso_local i32 @DP_ERR(%struct.qed_hwfn*, i8*, i32) #1

declare dso_local i32 @qed_iwarp_mpa_classify(%struct.qed_hwfn*, %struct.qed_iwarp_fpdu*, i32, i32*) #1

declare dso_local i32 @qed_iwarp_init_fpdu(%struct.qed_iwarp_ll2_buff*, %struct.qed_iwarp_fpdu*, %struct.unaligned_opaque_data*, i32, i32) #1

declare dso_local i32 @QED_IWARP_IS_RIGHT_EDGE(%struct.unaligned_opaque_data*) #1

declare dso_local i32 @qed_iwarp_win_right_edge(%struct.qed_hwfn*, %struct.qed_iwarp_fpdu*) #1

declare dso_local i32 @DP_VERBOSE(%struct.qed_hwfn*, i32, i8*, i32) #1

declare dso_local i32 @memset(%struct.qed_iwarp_fpdu*, i32, i32) #1

declare dso_local i32 @qed_iwarp_send_fpdu(%struct.qed_hwfn*, %struct.qed_iwarp_fpdu*, %struct.unaligned_opaque_data*, %struct.qed_iwarp_ll2_buff*, i32, i32) #1

declare dso_local i32 @qed_iwarp_update_fpdu_length(%struct.qed_hwfn*, %struct.qed_iwarp_fpdu*, i32*) #1

declare dso_local i32 @qed_iwarp_cp_pkt(%struct.qed_hwfn*, %struct.qed_iwarp_fpdu*, %struct.unaligned_opaque_data*, %struct.qed_iwarp_ll2_buff*, i32) #1

declare dso_local i32 @qed_iwarp_ll2_post_rx(%struct.qed_hwfn*, %struct.qed_iwarp_ll2_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
