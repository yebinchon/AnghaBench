; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_cxt.c_qed_cxt_set_pf_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_cxt.c_qed_cxt_set_pf_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32, %struct.TYPE_6__, %struct.TYPE_5__*, %struct.TYPE_4__, i64 }
%struct.TYPE_6__ = type { %struct.qed_iscsi_pf_params, %struct.qed_fcoe_pf_params, %struct.qed_eth_pf_params, i32 }
%struct.qed_iscsi_pf_params = type { i32, i32 }
%struct.qed_fcoe_pf_params = type { i32, i32 }
%struct.qed_eth_pf_params = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@PROTOCOLID_CORE = common dso_local global i32 0, align 4
@ETH_PF_PARAMS_VF_CONS_DEFAULT = common dso_local global i32 0, align 4
@PROTOCOLID_ETH = common dso_local global i32 0, align 4
@PROTOCOLID_FCOE = common dso_local global i32 0, align 4
@QED_CXT_FCOE_TID_SEG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Fcoe personality used without setting params!\0A\00", align 1
@PROTOCOLID_ISCSI = common dso_local global i32 0, align 4
@QED_CXT_ISCSI_TID_SEG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"Iscsi personality used without setting params!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qed_cxt_set_pf_params(%struct.qed_hwfn* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qed_hwfn*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.qed_eth_pf_params*, align 8
  %8 = alloca %struct.qed_fcoe_pf_params*, align 8
  %9 = alloca %struct.qed_iscsi_pf_params*, align 8
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 1, i32* %6, align 4
  %10 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %11 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %10, i32 0, i32 4
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* %6, align 4
  %16 = add nsw i32 %15, 4
  store i32 %16, i32* %6, align 4
  br label %17

17:                                               ; preds = %14, %2
  %18 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %19 = load i32, i32* @PROTOCOLID_CORE, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @qed_cxt_set_proto_cid_count(%struct.qed_hwfn* %18, i32 %19, i32 %20, i32 0)
  %22 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %23 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  switch i32 %25, label %128 [
    i32 131, label %26
    i32 132, label %26
    i32 130, label %26
    i32 133, label %33
    i32 129, label %62
    i32 128, label %95
  ]

26:                                               ; preds = %17, %17, %17
  %27 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %28 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %29 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 3
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @qed_rdma_set_pf_params(%struct.qed_hwfn* %27, i32* %30, i32 %31)
  br label %33

33:                                               ; preds = %17, %26
  %34 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %35 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 2
  store %struct.qed_eth_pf_params* %36, %struct.qed_eth_pf_params** %7, align 8
  %37 = load %struct.qed_eth_pf_params*, %struct.qed_eth_pf_params** %7, align 8
  %38 = getelementptr inbounds %struct.qed_eth_pf_params, %struct.qed_eth_pf_params* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %33
  %42 = load i32, i32* @ETH_PF_PARAMS_VF_CONS_DEFAULT, align 4
  %43 = load %struct.qed_eth_pf_params*, %struct.qed_eth_pf_params** %7, align 8
  %44 = getelementptr inbounds %struct.qed_eth_pf_params, %struct.qed_eth_pf_params* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 4
  br label %45

45:                                               ; preds = %41, %33
  %46 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %47 = load i32, i32* @PROTOCOLID_ETH, align 4
  %48 = load %struct.qed_eth_pf_params*, %struct.qed_eth_pf_params** %7, align 8
  %49 = getelementptr inbounds %struct.qed_eth_pf_params, %struct.qed_eth_pf_params* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.qed_eth_pf_params*, %struct.qed_eth_pf_params** %7, align 8
  %52 = getelementptr inbounds %struct.qed_eth_pf_params, %struct.qed_eth_pf_params* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @qed_cxt_set_proto_cid_count(%struct.qed_hwfn* %46, i32 %47, i32 %50, i32 %53)
  %55 = load %struct.qed_eth_pf_params*, %struct.qed_eth_pf_params** %7, align 8
  %56 = getelementptr inbounds %struct.qed_eth_pf_params, %struct.qed_eth_pf_params* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %59 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %58, i32 0, i32 2
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  store i32 %57, i32* %61, align 4
  br label %131

62:                                               ; preds = %17
  %63 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %64 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  store %struct.qed_fcoe_pf_params* %65, %struct.qed_fcoe_pf_params** %8, align 8
  %66 = load %struct.qed_fcoe_pf_params*, %struct.qed_fcoe_pf_params** %8, align 8
  %67 = getelementptr inbounds %struct.qed_fcoe_pf_params, %struct.qed_fcoe_pf_params* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %89

70:                                               ; preds = %62
  %71 = load %struct.qed_fcoe_pf_params*, %struct.qed_fcoe_pf_params** %8, align 8
  %72 = getelementptr inbounds %struct.qed_fcoe_pf_params, %struct.qed_fcoe_pf_params* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %89

75:                                               ; preds = %70
  %76 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %77 = load i32, i32* @PROTOCOLID_FCOE, align 4
  %78 = load %struct.qed_fcoe_pf_params*, %struct.qed_fcoe_pf_params** %8, align 8
  %79 = getelementptr inbounds %struct.qed_fcoe_pf_params, %struct.qed_fcoe_pf_params* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @qed_cxt_set_proto_cid_count(%struct.qed_hwfn* %76, i32 %77, i32 %80, i32 0)
  %82 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %83 = load i32, i32* @PROTOCOLID_FCOE, align 4
  %84 = load i32, i32* @QED_CXT_FCOE_TID_SEG, align 4
  %85 = load %struct.qed_fcoe_pf_params*, %struct.qed_fcoe_pf_params** %8, align 8
  %86 = getelementptr inbounds %struct.qed_fcoe_pf_params, %struct.qed_fcoe_pf_params* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @qed_cxt_set_proto_tid_count(%struct.qed_hwfn* %82, i32 %83, i32 %84, i32 0, i32 %87, i32 1)
  br label %94

89:                                               ; preds = %70, %62
  %90 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %91 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @DP_INFO(i32 %92, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  br label %94

94:                                               ; preds = %89, %75
  br label %131

95:                                               ; preds = %17
  %96 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %97 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  store %struct.qed_iscsi_pf_params* %98, %struct.qed_iscsi_pf_params** %9, align 8
  %99 = load %struct.qed_iscsi_pf_params*, %struct.qed_iscsi_pf_params** %9, align 8
  %100 = getelementptr inbounds %struct.qed_iscsi_pf_params, %struct.qed_iscsi_pf_params* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %122

103:                                              ; preds = %95
  %104 = load %struct.qed_iscsi_pf_params*, %struct.qed_iscsi_pf_params** %9, align 8
  %105 = getelementptr inbounds %struct.qed_iscsi_pf_params, %struct.qed_iscsi_pf_params* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %122

108:                                              ; preds = %103
  %109 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %110 = load i32, i32* @PROTOCOLID_ISCSI, align 4
  %111 = load %struct.qed_iscsi_pf_params*, %struct.qed_iscsi_pf_params** %9, align 8
  %112 = getelementptr inbounds %struct.qed_iscsi_pf_params, %struct.qed_iscsi_pf_params* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @qed_cxt_set_proto_cid_count(%struct.qed_hwfn* %109, i32 %110, i32 %113, i32 0)
  %115 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %116 = load i32, i32* @PROTOCOLID_ISCSI, align 4
  %117 = load i32, i32* @QED_CXT_ISCSI_TID_SEG, align 4
  %118 = load %struct.qed_iscsi_pf_params*, %struct.qed_iscsi_pf_params** %9, align 8
  %119 = getelementptr inbounds %struct.qed_iscsi_pf_params, %struct.qed_iscsi_pf_params* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @qed_cxt_set_proto_tid_count(%struct.qed_hwfn* %115, i32 %116, i32 %117, i32 0, i32 %120, i32 1)
  br label %127

122:                                              ; preds = %103, %95
  %123 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %124 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @DP_INFO(i32 %125, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  br label %127

127:                                              ; preds = %122, %108
  br label %131

128:                                              ; preds = %17
  %129 = load i32, i32* @EINVAL, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %3, align 4
  br label %132

131:                                              ; preds = %127, %94, %45
  store i32 0, i32* %3, align 4
  br label %132

132:                                              ; preds = %131, %128
  %133 = load i32, i32* %3, align 4
  ret i32 %133
}

declare dso_local i32 @qed_cxt_set_proto_cid_count(%struct.qed_hwfn*, i32, i32, i32) #1

declare dso_local i32 @qed_rdma_set_pf_params(%struct.qed_hwfn*, i32*, i32) #1

declare dso_local i32 @qed_cxt_set_proto_tid_count(%struct.qed_hwfn*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @DP_INFO(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
