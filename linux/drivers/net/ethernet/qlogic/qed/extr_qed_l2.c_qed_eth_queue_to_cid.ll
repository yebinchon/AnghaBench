; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_l2.c_qed_eth_queue_to_cid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_l2.c_qed_eth_queue_to_cid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_queue_cid = type { i32 }
%struct.qed_hwfn = type { i32 }
%struct.qed_queue_start_common_params = type { i32 }
%struct.qed_queue_cid_vf_params = type { i32, i32, i32 }

@QED_CXT_PF_CID = common dso_local global i32 0, align 4
@QED_QCID_LEGACY_VF_CID = common dso_local global i32 0, align 4
@PROTOCOLID_ETH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Failed to acquire cid\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.qed_queue_cid* @qed_eth_queue_to_cid(%struct.qed_hwfn* %0, i32 %1, %struct.qed_queue_start_common_params* %2, i32 %3, %struct.qed_queue_cid_vf_params* %4) #0 {
  %6 = alloca %struct.qed_queue_cid*, align 8
  %7 = alloca %struct.qed_hwfn*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.qed_queue_start_common_params*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.qed_queue_cid_vf_params*, align 8
  %12 = alloca %struct.qed_queue_cid*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.qed_queue_start_common_params* %2, %struct.qed_queue_start_common_params** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.qed_queue_cid_vf_params* %4, %struct.qed_queue_cid_vf_params** %11, align 8
  %16 = load i32, i32* @QED_CXT_PF_CID, align 4
  store i32 %16, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %17 = load %struct.qed_queue_cid_vf_params*, %struct.qed_queue_cid_vf_params** %11, align 8
  %18 = icmp ne %struct.qed_queue_cid_vf_params* %17, null
  br i1 %18, label %19, label %34

19:                                               ; preds = %5
  %20 = load %struct.qed_queue_cid_vf_params*, %struct.qed_queue_cid_vf_params** %11, align 8
  %21 = getelementptr inbounds %struct.qed_queue_cid_vf_params, %struct.qed_queue_cid_vf_params* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %13, align 4
  %23 = load %struct.qed_queue_cid_vf_params*, %struct.qed_queue_cid_vf_params** %11, align 8
  %24 = getelementptr inbounds %struct.qed_queue_cid_vf_params, %struct.qed_queue_cid_vf_params* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @QED_QCID_LEGACY_VF_CID, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %19
  store i32 1, i32* %14, align 4
  %30 = load %struct.qed_queue_cid_vf_params*, %struct.qed_queue_cid_vf_params** %11, align 8
  %31 = getelementptr inbounds %struct.qed_queue_cid_vf_params, %struct.qed_queue_cid_vf_params* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %15, align 4
  br label %33

33:                                               ; preds = %29, %19
  br label %34

34:                                               ; preds = %33, %5
  %35 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %36 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @IS_PF(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %53

40:                                               ; preds = %34
  %41 = load i32, i32* %14, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %53, label %43

43:                                               ; preds = %40
  %44 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %45 = load i32, i32* @PROTOCOLID_ETH, align 4
  %46 = load i32, i32* %13, align 4
  %47 = call i64 @_qed_cxt_acquire_cid(%struct.qed_hwfn* %44, i32 %45, i32* %15, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %43
  %50 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %51 = call i32 @DP_NOTICE(%struct.qed_hwfn* %50, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store %struct.qed_queue_cid* null, %struct.qed_queue_cid** %6, align 8
  br label %79

52:                                               ; preds = %43
  br label %53

53:                                               ; preds = %52, %40, %34
  %54 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %15, align 4
  %57 = load %struct.qed_queue_start_common_params*, %struct.qed_queue_start_common_params** %9, align 8
  %58 = load i32, i32* %10, align 4
  %59 = load %struct.qed_queue_cid_vf_params*, %struct.qed_queue_cid_vf_params** %11, align 8
  %60 = call %struct.qed_queue_cid* @_qed_eth_queue_to_cid(%struct.qed_hwfn* %54, i32 %55, i32 %56, %struct.qed_queue_start_common_params* %57, i32 %58, %struct.qed_queue_cid_vf_params* %59)
  store %struct.qed_queue_cid* %60, %struct.qed_queue_cid** %12, align 8
  %61 = load %struct.qed_queue_cid*, %struct.qed_queue_cid** %12, align 8
  %62 = icmp ne %struct.qed_queue_cid* %61, null
  br i1 %62, label %77, label %63

63:                                               ; preds = %53
  %64 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %65 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i64 @IS_PF(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %63
  %70 = load i32, i32* %14, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %77, label %72

72:                                               ; preds = %69
  %73 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %74 = load i32, i32* %15, align 4
  %75 = load i32, i32* %13, align 4
  %76 = call i32 @_qed_cxt_release_cid(%struct.qed_hwfn* %73, i32 %74, i32 %75)
  br label %77

77:                                               ; preds = %72, %69, %63, %53
  %78 = load %struct.qed_queue_cid*, %struct.qed_queue_cid** %12, align 8
  store %struct.qed_queue_cid* %78, %struct.qed_queue_cid** %6, align 8
  br label %79

79:                                               ; preds = %77, %49
  %80 = load %struct.qed_queue_cid*, %struct.qed_queue_cid** %6, align 8
  ret %struct.qed_queue_cid* %80
}

declare dso_local i64 @IS_PF(i32) #1

declare dso_local i64 @_qed_cxt_acquire_cid(%struct.qed_hwfn*, i32, i32*, i32) #1

declare dso_local i32 @DP_NOTICE(%struct.qed_hwfn*, i8*) #1

declare dso_local %struct.qed_queue_cid* @_qed_eth_queue_to_cid(%struct.qed_hwfn*, i32, i32, %struct.qed_queue_start_common_params*, i32, %struct.qed_queue_cid_vf_params*) #1

declare dso_local i32 @_qed_cxt_release_cid(%struct.qed_hwfn*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
