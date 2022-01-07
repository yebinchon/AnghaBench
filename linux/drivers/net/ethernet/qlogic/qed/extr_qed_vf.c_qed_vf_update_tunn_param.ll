; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_vf.c_qed_vf_update_tunn_param.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_vf.c_qed_vf_update_tunn_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.qed_tunnel_info = type { %struct.TYPE_6__, %struct.TYPE_6__, %struct.TYPE_6__, %struct.TYPE_6__, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.pfvf_update_tunn_param_tlv = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@QED_MODE_VXLAN_TUNN = common dso_local global i32 0, align 4
@QED_MODE_L2GENEVE_TUNN = common dso_local global i32 0, align 4
@QED_MODE_IPGENEVE_TUNN = common dso_local global i32 0, align 4
@QED_MODE_L2GRE_TUNN = common dso_local global i32 0, align 4
@QED_MODE_IPGRE_TUNN = common dso_local global i32 0, align 4
@QED_MSG_IOV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [76 x i8] c"tunn mode: vxlan=0x%x, l2geneve=0x%x, ipgeneve=0x%x, l2gre=0x%x, ipgre=0x%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qed_hwfn*, %struct.qed_tunnel_info*, %struct.pfvf_update_tunn_param_tlv*)* @qed_vf_update_tunn_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qed_vf_update_tunn_param(%struct.qed_hwfn* %0, %struct.qed_tunnel_info* %1, %struct.pfvf_update_tunn_param_tlv* %2) #0 {
  %4 = alloca %struct.qed_hwfn*, align 8
  %5 = alloca %struct.qed_tunnel_info*, align 8
  %6 = alloca %struct.pfvf_update_tunn_param_tlv*, align 8
  %7 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %4, align 8
  store %struct.qed_tunnel_info* %1, %struct.qed_tunnel_info** %5, align 8
  store %struct.pfvf_update_tunn_param_tlv* %2, %struct.pfvf_update_tunn_param_tlv** %6, align 8
  %8 = load %struct.pfvf_update_tunn_param_tlv*, %struct.pfvf_update_tunn_param_tlv** %6, align 8
  %9 = getelementptr inbounds %struct.pfvf_update_tunn_param_tlv, %struct.pfvf_update_tunn_param_tlv* %8, i32 0, i32 12
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %7, align 4
  %11 = load %struct.qed_tunnel_info*, %struct.qed_tunnel_info** %5, align 8
  %12 = getelementptr inbounds %struct.qed_tunnel_info, %struct.qed_tunnel_info* %11, i32 0, i32 4
  %13 = load i32, i32* %7, align 4
  %14 = load %struct.pfvf_update_tunn_param_tlv*, %struct.pfvf_update_tunn_param_tlv** %6, align 8
  %15 = getelementptr inbounds %struct.pfvf_update_tunn_param_tlv, %struct.pfvf_update_tunn_param_tlv* %14, i32 0, i32 11
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.pfvf_update_tunn_param_tlv*, %struct.pfvf_update_tunn_param_tlv** %6, align 8
  %18 = getelementptr inbounds %struct.pfvf_update_tunn_param_tlv, %struct.pfvf_update_tunn_param_tlv* %17, i32 0, i32 10
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @QED_MODE_VXLAN_TUNN, align 4
  %21 = call i32 @__qed_vf_update_tunn_param(%struct.TYPE_6__* %12, i32 %13, i32 %16, i32 %19, i32 %20)
  %22 = load %struct.qed_tunnel_info*, %struct.qed_tunnel_info** %5, align 8
  %23 = getelementptr inbounds %struct.qed_tunnel_info, %struct.qed_tunnel_info* %22, i32 0, i32 3
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.pfvf_update_tunn_param_tlv*, %struct.pfvf_update_tunn_param_tlv** %6, align 8
  %26 = getelementptr inbounds %struct.pfvf_update_tunn_param_tlv, %struct.pfvf_update_tunn_param_tlv* %25, i32 0, i32 9
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.pfvf_update_tunn_param_tlv*, %struct.pfvf_update_tunn_param_tlv** %6, align 8
  %29 = getelementptr inbounds %struct.pfvf_update_tunn_param_tlv, %struct.pfvf_update_tunn_param_tlv* %28, i32 0, i32 8
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @QED_MODE_L2GENEVE_TUNN, align 4
  %32 = call i32 @__qed_vf_update_tunn_param(%struct.TYPE_6__* %23, i32 %24, i32 %27, i32 %30, i32 %31)
  %33 = load %struct.qed_tunnel_info*, %struct.qed_tunnel_info** %5, align 8
  %34 = getelementptr inbounds %struct.qed_tunnel_info, %struct.qed_tunnel_info* %33, i32 0, i32 2
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.pfvf_update_tunn_param_tlv*, %struct.pfvf_update_tunn_param_tlv** %6, align 8
  %37 = getelementptr inbounds %struct.pfvf_update_tunn_param_tlv, %struct.pfvf_update_tunn_param_tlv* %36, i32 0, i32 7
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.pfvf_update_tunn_param_tlv*, %struct.pfvf_update_tunn_param_tlv** %6, align 8
  %40 = getelementptr inbounds %struct.pfvf_update_tunn_param_tlv, %struct.pfvf_update_tunn_param_tlv* %39, i32 0, i32 6
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @QED_MODE_IPGENEVE_TUNN, align 4
  %43 = call i32 @__qed_vf_update_tunn_param(%struct.TYPE_6__* %34, i32 %35, i32 %38, i32 %41, i32 %42)
  %44 = load %struct.qed_tunnel_info*, %struct.qed_tunnel_info** %5, align 8
  %45 = getelementptr inbounds %struct.qed_tunnel_info, %struct.qed_tunnel_info* %44, i32 0, i32 1
  %46 = load i32, i32* %7, align 4
  %47 = load %struct.pfvf_update_tunn_param_tlv*, %struct.pfvf_update_tunn_param_tlv** %6, align 8
  %48 = getelementptr inbounds %struct.pfvf_update_tunn_param_tlv, %struct.pfvf_update_tunn_param_tlv* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.pfvf_update_tunn_param_tlv*, %struct.pfvf_update_tunn_param_tlv** %6, align 8
  %51 = getelementptr inbounds %struct.pfvf_update_tunn_param_tlv, %struct.pfvf_update_tunn_param_tlv* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @QED_MODE_L2GRE_TUNN, align 4
  %54 = call i32 @__qed_vf_update_tunn_param(%struct.TYPE_6__* %45, i32 %46, i32 %49, i32 %52, i32 %53)
  %55 = load %struct.qed_tunnel_info*, %struct.qed_tunnel_info** %5, align 8
  %56 = getelementptr inbounds %struct.qed_tunnel_info, %struct.qed_tunnel_info* %55, i32 0, i32 0
  %57 = load i32, i32* %7, align 4
  %58 = load %struct.pfvf_update_tunn_param_tlv*, %struct.pfvf_update_tunn_param_tlv** %6, align 8
  %59 = getelementptr inbounds %struct.pfvf_update_tunn_param_tlv, %struct.pfvf_update_tunn_param_tlv* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.pfvf_update_tunn_param_tlv*, %struct.pfvf_update_tunn_param_tlv** %6, align 8
  %62 = getelementptr inbounds %struct.pfvf_update_tunn_param_tlv, %struct.pfvf_update_tunn_param_tlv* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @QED_MODE_IPGRE_TUNN, align 4
  %65 = call i32 @__qed_vf_update_tunn_param(%struct.TYPE_6__* %56, i32 %57, i32 %60, i32 %63, i32 %64)
  %66 = load %struct.pfvf_update_tunn_param_tlv*, %struct.pfvf_update_tunn_param_tlv** %6, align 8
  %67 = getelementptr inbounds %struct.pfvf_update_tunn_param_tlv, %struct.pfvf_update_tunn_param_tlv* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.qed_tunnel_info*, %struct.qed_tunnel_info** %5, align 8
  %70 = getelementptr inbounds %struct.qed_tunnel_info, %struct.qed_tunnel_info* %69, i32 0, i32 6
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  store i32 %68, i32* %71, align 4
  %72 = load %struct.pfvf_update_tunn_param_tlv*, %struct.pfvf_update_tunn_param_tlv** %6, align 8
  %73 = getelementptr inbounds %struct.pfvf_update_tunn_param_tlv, %struct.pfvf_update_tunn_param_tlv* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.qed_tunnel_info*, %struct.qed_tunnel_info** %5, align 8
  %76 = getelementptr inbounds %struct.qed_tunnel_info, %struct.qed_tunnel_info* %75, i32 0, i32 5
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  store i32 %74, i32* %77, align 4
  %78 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %79 = load i32, i32* @QED_MSG_IOV, align 4
  %80 = load %struct.qed_tunnel_info*, %struct.qed_tunnel_info** %5, align 8
  %81 = getelementptr inbounds %struct.qed_tunnel_info, %struct.qed_tunnel_info* %80, i32 0, i32 4
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.qed_tunnel_info*, %struct.qed_tunnel_info** %5, align 8
  %85 = getelementptr inbounds %struct.qed_tunnel_info, %struct.qed_tunnel_info* %84, i32 0, i32 3
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.qed_tunnel_info*, %struct.qed_tunnel_info** %5, align 8
  %89 = getelementptr inbounds %struct.qed_tunnel_info, %struct.qed_tunnel_info* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.qed_tunnel_info*, %struct.qed_tunnel_info** %5, align 8
  %93 = getelementptr inbounds %struct.qed_tunnel_info, %struct.qed_tunnel_info* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.qed_tunnel_info*, %struct.qed_tunnel_info** %5, align 8
  %97 = getelementptr inbounds %struct.qed_tunnel_info, %struct.qed_tunnel_info* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @DP_VERBOSE(%struct.qed_hwfn* %78, i32 %79, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str, i64 0, i64 0), i32 %83, i32 %87, i32 %91, i32 %95, i32 %99)
  ret void
}

declare dso_local i32 @__qed_vf_update_tunn_param(%struct.TYPE_6__*, i32, i32, i32, i32) #1

declare dso_local i32 @DP_VERBOSE(%struct.qed_hwfn*, i32, i8*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
