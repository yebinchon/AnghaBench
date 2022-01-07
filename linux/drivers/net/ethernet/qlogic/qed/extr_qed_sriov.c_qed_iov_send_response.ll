; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_sriov.c_qed_iov_send_response.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_sriov.c_qed_iov_send_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.qed_ptt = type { i32 }
%struct.qed_vf_info = type { i8*, %struct.qed_iov_vf_mbx }
%struct.qed_iov_vf_mbx = type { %struct.TYPE_9__*, i64, %struct.TYPE_10__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_10__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8* }
%struct.qed_dmae_params = type { i8*, i32 }

@QED_DMAE_FLAG_VF_DST = common dso_local global i32 0, align 4
@GTT_BAR0_MAP_REG_USDM_RAM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qed_hwfn*, %struct.qed_ptt*, %struct.qed_vf_info*, i32, i8*)* @qed_iov_send_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qed_iov_send_response(%struct.qed_hwfn* %0, %struct.qed_ptt* %1, %struct.qed_vf_info* %2, i32 %3, i8* %4) #0 {
  %6 = alloca %struct.qed_hwfn*, align 8
  %7 = alloca %struct.qed_ptt*, align 8
  %8 = alloca %struct.qed_vf_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.qed_iov_vf_mbx*, align 8
  %12 = alloca %struct.qed_dmae_params, align 8
  %13 = alloca i8*, align 8
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %6, align 8
  store %struct.qed_ptt* %1, %struct.qed_ptt** %7, align 8
  store %struct.qed_vf_info* %2, %struct.qed_vf_info** %8, align 8
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %14 = load %struct.qed_vf_info*, %struct.qed_vf_info** %8, align 8
  %15 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %14, i32 0, i32 1
  store %struct.qed_iov_vf_mbx* %15, %struct.qed_iov_vf_mbx** %11, align 8
  %16 = load i8*, i8** %10, align 8
  %17 = load %struct.qed_iov_vf_mbx*, %struct.qed_iov_vf_mbx** %11, align 8
  %18 = getelementptr inbounds %struct.qed_iov_vf_mbx, %struct.qed_iov_vf_mbx* %17, i32 0, i32 2
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  store i8* %16, i8** %22, align 8
  %23 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %24 = load %struct.qed_iov_vf_mbx*, %struct.qed_iov_vf_mbx** %11, align 8
  %25 = getelementptr inbounds %struct.qed_iov_vf_mbx, %struct.qed_iov_vf_mbx* %24, i32 0, i32 2
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  %27 = call i32 @qed_dp_tlv_list(%struct.qed_hwfn* %23, %struct.TYPE_10__* %26)
  %28 = load %struct.qed_vf_info*, %struct.qed_vf_info** %8, align 8
  %29 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %13, align 8
  %31 = call i32 @memset(%struct.qed_dmae_params* %12, i32 0, i32 16)
  %32 = load i32, i32* @QED_DMAE_FLAG_VF_DST, align 4
  %33 = getelementptr inbounds %struct.qed_dmae_params, %struct.qed_dmae_params* %12, i32 0, i32 1
  store i32 %32, i32* %33, align 8
  %34 = load i8*, i8** %13, align 8
  %35 = getelementptr inbounds %struct.qed_dmae_params, %struct.qed_dmae_params* %12, i32 0, i32 0
  store i8* %34, i8** %35, align 8
  %36 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %37 = load %struct.qed_ptt*, %struct.qed_ptt** %7, align 8
  %38 = load %struct.qed_iov_vf_mbx*, %struct.qed_iov_vf_mbx** %11, align 8
  %39 = getelementptr inbounds %struct.qed_iov_vf_mbx, %struct.qed_iov_vf_mbx* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = add i64 %40, 4
  %42 = load %struct.qed_iov_vf_mbx*, %struct.qed_iov_vf_mbx** %11, align 8
  %43 = getelementptr inbounds %struct.qed_iov_vf_mbx, %struct.qed_iov_vf_mbx* %42, i32 0, i32 0
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = add i64 %47, 4
  %49 = call i32 @qed_dmae_host2host(%struct.qed_hwfn* %36, %struct.qed_ptt* %37, i64 %41, i64 %48, i32 0, %struct.qed_dmae_params* %12)
  %50 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %51 = load i64, i64* @GTT_BAR0_MAP_REG_USDM_RAM, align 8
  %52 = load i8*, i8** %13, align 8
  %53 = call i64 @USTORM_VF_PF_CHANNEL_READY_OFFSET(i8* %52)
  %54 = add nsw i64 %51, %53
  %55 = call i32 @REG_WR(%struct.qed_hwfn* %50, i64 %54, i32 1)
  %56 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %57 = load %struct.qed_ptt*, %struct.qed_ptt** %7, align 8
  %58 = load %struct.qed_iov_vf_mbx*, %struct.qed_iov_vf_mbx** %11, align 8
  %59 = getelementptr inbounds %struct.qed_iov_vf_mbx, %struct.qed_iov_vf_mbx* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.qed_iov_vf_mbx*, %struct.qed_iov_vf_mbx** %11, align 8
  %62 = getelementptr inbounds %struct.qed_iov_vf_mbx, %struct.qed_iov_vf_mbx* %61, i32 0, i32 0
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @qed_dmae_host2host(%struct.qed_hwfn* %56, %struct.qed_ptt* %57, i64 %60, i64 %66, i32 1, %struct.qed_dmae_params* %12)
  ret void
}

declare dso_local i32 @qed_dp_tlv_list(%struct.qed_hwfn*, %struct.TYPE_10__*) #1

declare dso_local i32 @memset(%struct.qed_dmae_params*, i32, i32) #1

declare dso_local i32 @qed_dmae_host2host(%struct.qed_hwfn*, %struct.qed_ptt*, i64, i64, i32, %struct.qed_dmae_params*) #1

declare dso_local i32 @REG_WR(%struct.qed_hwfn*, i64, i32) #1

declare dso_local i64 @USTORM_VF_PF_CHANNEL_READY_OFFSET(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
