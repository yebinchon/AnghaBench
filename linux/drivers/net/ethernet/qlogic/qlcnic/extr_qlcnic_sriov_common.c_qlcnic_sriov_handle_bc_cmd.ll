; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_sriov_common.c_qlcnic_sriov_handle_bc_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_sriov_common.c_qlcnic_sriov_handle_bc_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_sriov = type { i32 }
%struct.qlcnic_bc_hdr = type { i64, i64, i32, i32 }
%struct.qlcnic_vf_info = type { %struct.TYPE_4__, i32, %struct.qlcnic_adapter*, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.qlcnic_adapter = type { i64 }
%struct.qlcnic_bc_trans = type { i32, i32, i32, %struct.TYPE_3__*, i32, %struct.qlcnic_vf_info*, i32, i32 }
%struct.TYPE_3__ = type { i64 }
%struct.qlcnic_cmd_args = type { i64 }

@QLC_BC_VF_STATE = common dso_local global i32 0, align 4
@QLC_BC_CMD = common dso_local global i64 0, align 8
@QLCNIC_BC_CMD_CHANNEL_INIT = common dso_local global i64 0, align 8
@QLC_BC_COMMAND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qlcnic_sriov*, %struct.qlcnic_bc_hdr*, %struct.qlcnic_vf_info*)* @qlcnic_sriov_handle_bc_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qlcnic_sriov_handle_bc_cmd(%struct.qlcnic_sriov* %0, %struct.qlcnic_bc_hdr* %1, %struct.qlcnic_vf_info* %2) #0 {
  %4 = alloca %struct.qlcnic_sriov*, align 8
  %5 = alloca %struct.qlcnic_bc_hdr*, align 8
  %6 = alloca %struct.qlcnic_vf_info*, align 8
  %7 = alloca %struct.qlcnic_bc_trans*, align 8
  %8 = alloca %struct.qlcnic_adapter*, align 8
  %9 = alloca %struct.qlcnic_cmd_args, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.qlcnic_sriov* %0, %struct.qlcnic_sriov** %4, align 8
  store %struct.qlcnic_bc_hdr* %1, %struct.qlcnic_bc_hdr** %5, align 8
  store %struct.qlcnic_vf_info* %2, %struct.qlcnic_vf_info** %6, align 8
  %13 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %6, align 8
  %14 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %13, i32 0, i32 2
  %15 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %14, align 8
  store %struct.qlcnic_adapter* %15, %struct.qlcnic_adapter** %8, align 8
  %16 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %8, align 8
  %17 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  br label %189

21:                                               ; preds = %3
  %22 = load i32, i32* @QLC_BC_VF_STATE, align 4
  %23 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %6, align 8
  %24 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %23, i32 0, i32 3
  %25 = call i32 @test_bit(i32 %22, i32* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %40, label %27

27:                                               ; preds = %21
  %28 = load %struct.qlcnic_bc_hdr*, %struct.qlcnic_bc_hdr** %5, align 8
  %29 = getelementptr inbounds %struct.qlcnic_bc_hdr, %struct.qlcnic_bc_hdr* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @QLC_BC_CMD, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %27
  %34 = load %struct.qlcnic_bc_hdr*, %struct.qlcnic_bc_hdr** %5, align 8
  %35 = getelementptr inbounds %struct.qlcnic_bc_hdr, %struct.qlcnic_bc_hdr* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @QLCNIC_BC_CMD_CHANNEL_INIT, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %189

40:                                               ; preds = %33, %27, %21
  %41 = load %struct.qlcnic_bc_hdr*, %struct.qlcnic_bc_hdr** %5, align 8
  %42 = getelementptr inbounds %struct.qlcnic_bc_hdr, %struct.qlcnic_bc_hdr* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = icmp sgt i32 %43, 1
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = load %struct.qlcnic_sriov*, %struct.qlcnic_sriov** %4, align 8
  %47 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %6, align 8
  %48 = load %struct.qlcnic_bc_hdr*, %struct.qlcnic_bc_hdr** %5, align 8
  %49 = call i32 @qlcnic_sriov_handle_pending_trans(%struct.qlcnic_sriov* %46, %struct.qlcnic_vf_info* %47, %struct.qlcnic_bc_hdr* %48)
  br label %189

50:                                               ; preds = %40
  %51 = call i32 @memset(%struct.qlcnic_cmd_args* %9, i32 0, i32 8)
  %52 = load %struct.qlcnic_bc_hdr*, %struct.qlcnic_bc_hdr** %5, align 8
  %53 = getelementptr inbounds %struct.qlcnic_bc_hdr, %struct.qlcnic_bc_hdr* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  store i64 %54, i64* %12, align 8
  %55 = call i64 @qlcnic_sriov_alloc_bc_trans(%struct.qlcnic_bc_trans** %7)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %50
  br label %189

58:                                               ; preds = %50
  %59 = load %struct.qlcnic_bc_hdr*, %struct.qlcnic_bc_hdr** %5, align 8
  %60 = getelementptr inbounds %struct.qlcnic_bc_hdr, %struct.qlcnic_bc_hdr* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @QLC_BC_CMD, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %58
  %65 = load i64, i64* %12, align 8
  %66 = call i32 @qlcnic_sriov_alloc_bc_mbx_args(%struct.qlcnic_cmd_args* %9, i64 %65)
  store i32 %66, i32* %11, align 4
  br label %71

67:                                               ; preds = %58
  %68 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %8, align 8
  %69 = load i64, i64* %12, align 8
  %70 = call i32 @qlcnic_alloc_mbx_args(%struct.qlcnic_cmd_args* %9, %struct.qlcnic_adapter* %68, i64 %69)
  store i32 %70, i32* %11, align 4
  br label %71

71:                                               ; preds = %67, %64
  %72 = load i32, i32* %11, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %7, align 8
  %76 = call i32 @qlcnic_sriov_cleanup_transaction(%struct.qlcnic_bc_trans* %75)
  br label %189

77:                                               ; preds = %71
  %78 = load %struct.qlcnic_bc_hdr*, %struct.qlcnic_bc_hdr** %5, align 8
  %79 = getelementptr inbounds %struct.qlcnic_bc_hdr, %struct.qlcnic_bc_hdr* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %9, i32 0, i32 0
  store i64 %80, i64* %81, align 8
  %82 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %7, align 8
  %83 = load %struct.qlcnic_bc_hdr*, %struct.qlcnic_bc_hdr** %5, align 8
  %84 = getelementptr inbounds %struct.qlcnic_bc_hdr, %struct.qlcnic_bc_hdr* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @QLC_BC_COMMAND, align 4
  %87 = call i64 @qlcnic_sriov_prepare_bc_hdr(%struct.qlcnic_bc_trans* %82, %struct.qlcnic_cmd_args* %9, i32 %85, i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %77
  %90 = call i32 @qlcnic_free_mbx_args(%struct.qlcnic_cmd_args* %9)
  %91 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %7, align 8
  %92 = call i32 @qlcnic_sriov_cleanup_transaction(%struct.qlcnic_bc_trans* %91)
  br label %189

93:                                               ; preds = %77
  %94 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %7, align 8
  %95 = getelementptr inbounds %struct.qlcnic_bc_trans, %struct.qlcnic_bc_trans* %94, i32 0, i32 7
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %7, align 8
  %98 = getelementptr inbounds %struct.qlcnic_bc_trans, %struct.qlcnic_bc_trans* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @qlcnic_sriov_get_bc_paysize(i32 %96, i32 %99)
  store i32 %100, i32* %10, align 4
  %101 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %6, align 8
  %102 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %101, i32 0, i32 2
  %103 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %102, align 8
  %104 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %7, align 8
  %105 = getelementptr inbounds %struct.qlcnic_bc_trans, %struct.qlcnic_bc_trans* %104, i32 0, i32 3
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %105, align 8
  %107 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %7, align 8
  %108 = getelementptr inbounds %struct.qlcnic_bc_trans, %struct.qlcnic_bc_trans* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i64 %110
  %112 = bitcast %struct.TYPE_3__* %111 to i32*
  %113 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %7, align 8
  %114 = getelementptr inbounds %struct.qlcnic_bc_trans, %struct.qlcnic_bc_trans* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %7, align 8
  %117 = getelementptr inbounds %struct.qlcnic_bc_trans, %struct.qlcnic_bc_trans* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = add nsw i32 %115, %118
  %120 = sext i32 %119 to i64
  %121 = inttoptr i64 %120 to i32*
  %122 = load i32, i32* %10, align 4
  %123 = call i32 @qlcnic_sriov_pull_bc_msg(%struct.qlcnic_adapter* %103, i32* %112, i32* %121, i32 %122)
  %124 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %6, align 8
  %125 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %7, align 8
  %128 = getelementptr inbounds %struct.qlcnic_bc_trans, %struct.qlcnic_bc_trans* %127, i32 0, i32 6
  store i32 %126, i32* %128, align 8
  %129 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %6, align 8
  %130 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %7, align 8
  %131 = getelementptr inbounds %struct.qlcnic_bc_trans, %struct.qlcnic_bc_trans* %130, i32 0, i32 5
  store %struct.qlcnic_vf_info* %129, %struct.qlcnic_vf_info** %131, align 8
  %132 = load %struct.qlcnic_bc_hdr*, %struct.qlcnic_bc_hdr** %5, align 8
  %133 = getelementptr inbounds %struct.qlcnic_bc_hdr, %struct.qlcnic_bc_hdr* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %7, align 8
  %136 = getelementptr inbounds %struct.qlcnic_bc_trans, %struct.qlcnic_bc_trans* %135, i32 0, i32 4
  store i32 %134, i32* %136, align 8
  %137 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %7, align 8
  %138 = getelementptr inbounds %struct.qlcnic_bc_trans, %struct.qlcnic_bc_trans* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %138, align 8
  %141 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %8, align 8
  %142 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %7, align 8
  %143 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %6, align 8
  %144 = call i64 @qlcnic_sriov_soft_flr_check(%struct.qlcnic_adapter* %141, %struct.qlcnic_bc_trans* %142, %struct.qlcnic_vf_info* %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %93
  br label %189

147:                                              ; preds = %93
  %148 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %7, align 8
  %149 = getelementptr inbounds %struct.qlcnic_bc_trans, %struct.qlcnic_bc_trans* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = sext i32 %150 to i64
  %152 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %7, align 8
  %153 = getelementptr inbounds %struct.qlcnic_bc_trans, %struct.qlcnic_bc_trans* %152, i32 0, i32 3
  %154 = load %struct.TYPE_3__*, %struct.TYPE_3__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = icmp eq i64 %151, %156
  br i1 %157, label %158, label %169

158:                                              ; preds = %147
  %159 = load %struct.qlcnic_sriov*, %struct.qlcnic_sriov** %4, align 8
  %160 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %6, align 8
  %161 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %7, align 8
  %162 = call i64 @qlcnic_sriov_add_act_list(%struct.qlcnic_sriov* %159, %struct.qlcnic_vf_info* %160, %struct.qlcnic_bc_trans* %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %168

164:                                              ; preds = %158
  %165 = call i32 @qlcnic_free_mbx_args(%struct.qlcnic_cmd_args* %9)
  %166 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %7, align 8
  %167 = call i32 @qlcnic_sriov_cleanup_transaction(%struct.qlcnic_bc_trans* %166)
  br label %168

168:                                              ; preds = %164, %158
  br label %189

169:                                              ; preds = %147
  %170 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %6, align 8
  %171 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i32 0, i32 0
  %173 = call i32 @spin_lock(i32* %172)
  %174 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %7, align 8
  %175 = getelementptr inbounds %struct.qlcnic_bc_trans, %struct.qlcnic_bc_trans* %174, i32 0, i32 2
  %176 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %6, align 8
  %177 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 2
  %179 = call i32 @list_add_tail(i32* %175, i32* %178)
  %180 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %6, align 8
  %181 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %182, align 4
  %185 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %6, align 8
  %186 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 0
  %188 = call i32 @spin_unlock(i32* %187)
  br label %189

189:                                              ; preds = %20, %39, %45, %57, %74, %89, %146, %169, %168
  ret void
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @qlcnic_sriov_handle_pending_trans(%struct.qlcnic_sriov*, %struct.qlcnic_vf_info*, %struct.qlcnic_bc_hdr*) #1

declare dso_local i32 @memset(%struct.qlcnic_cmd_args*, i32, i32) #1

declare dso_local i64 @qlcnic_sriov_alloc_bc_trans(%struct.qlcnic_bc_trans**) #1

declare dso_local i32 @qlcnic_sriov_alloc_bc_mbx_args(%struct.qlcnic_cmd_args*, i64) #1

declare dso_local i32 @qlcnic_alloc_mbx_args(%struct.qlcnic_cmd_args*, %struct.qlcnic_adapter*, i64) #1

declare dso_local i32 @qlcnic_sriov_cleanup_transaction(%struct.qlcnic_bc_trans*) #1

declare dso_local i64 @qlcnic_sriov_prepare_bc_hdr(%struct.qlcnic_bc_trans*, %struct.qlcnic_cmd_args*, i32, i32) #1

declare dso_local i32 @qlcnic_free_mbx_args(%struct.qlcnic_cmd_args*) #1

declare dso_local i32 @qlcnic_sriov_get_bc_paysize(i32, i32) #1

declare dso_local i32 @qlcnic_sriov_pull_bc_msg(%struct.qlcnic_adapter*, i32*, i32*, i32) #1

declare dso_local i64 @qlcnic_sriov_soft_flr_check(%struct.qlcnic_adapter*, %struct.qlcnic_bc_trans*, %struct.qlcnic_vf_info*) #1

declare dso_local i64 @qlcnic_sriov_add_act_list(%struct.qlcnic_sriov*, %struct.qlcnic_vf_info*, %struct.qlcnic_bc_trans*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
