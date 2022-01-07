; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_virtchnl_pf.c_i40e_config_vsi_tx_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_virtchnl_pf.c_i40e_config_vsi_tx_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_vf = type { i32, %struct.i40e_pf* }
%struct.i40e_pf = type { %struct.TYPE_5__*, %struct.i40e_hw }
%struct.TYPE_5__ = type { i32 }
%struct.i40e_hw = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.virtchnl_txq_info = type { i32, i32, i32, i32, i32 }
%struct.i40e_hmc_obj_txq = type { i32, i32, i32, i64, i32, i32 }
%struct.i40e_vsi = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }

@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"Failed to clear VF LAN Tx queue context %d, error: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"Failed to set VF LAN Tx queue context %d error: %d\0A\00", align 1
@I40E_QTX_CTL_VF_QUEUE = common dso_local global i32 0, align 4
@I40E_QTX_CTL_PF_INDX_SHIFT = common dso_local global i32 0, align 4
@I40E_QTX_CTL_PF_INDX_MASK = common dso_local global i32 0, align 4
@I40E_QTX_CTL_VFVM_INDX_SHIFT = common dso_local global i32 0, align 4
@I40E_QTX_CTL_VFVM_INDX_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40e_vf*, i32, i32, %struct.virtchnl_txq_info*)* @i40e_config_vsi_tx_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_config_vsi_tx_queue(%struct.i40e_vf* %0, i32 %1, i32 %2, %struct.virtchnl_txq_info* %3) #0 {
  %5 = alloca %struct.i40e_vf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.virtchnl_txq_info*, align 8
  %9 = alloca %struct.i40e_pf*, align 8
  %10 = alloca %struct.i40e_hw*, align 8
  %11 = alloca %struct.i40e_hmc_obj_txq, align 8
  %12 = alloca %struct.i40e_vsi*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.i40e_vf* %0, %struct.i40e_vf** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.virtchnl_txq_info* %3, %struct.virtchnl_txq_info** %8, align 8
  %16 = load %struct.i40e_vf*, %struct.i40e_vf** %5, align 8
  %17 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %16, i32 0, i32 1
  %18 = load %struct.i40e_pf*, %struct.i40e_pf** %17, align 8
  store %struct.i40e_pf* %18, %struct.i40e_pf** %9, align 8
  %19 = load %struct.i40e_pf*, %struct.i40e_pf** %9, align 8
  %20 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %19, i32 0, i32 1
  store %struct.i40e_hw* %20, %struct.i40e_hw** %10, align 8
  store i32 0, i32* %15, align 4
  %21 = load %struct.i40e_vf*, %struct.i40e_vf** %5, align 8
  %22 = load %struct.virtchnl_txq_info*, %struct.virtchnl_txq_info** %8, align 8
  %23 = getelementptr inbounds %struct.virtchnl_txq_info, %struct.virtchnl_txq_info* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @i40e_vc_isvalid_vsi_id(%struct.i40e_vf* %21, i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %4
  %28 = load i32, i32* @ENOENT, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %15, align 4
  br label %134

30:                                               ; preds = %4
  %31 = load %struct.i40e_vf*, %struct.i40e_vf** %5, align 8
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @i40e_vc_get_pf_queue_id(%struct.i40e_vf* %31, i32 %32, i32 %33)
  store i32 %34, i32* %13, align 4
  %35 = load %struct.i40e_pf*, %struct.i40e_pf** %9, align 8
  %36 = load i32, i32* %6, align 4
  %37 = call %struct.i40e_vsi* @i40e_find_vsi_from_id(%struct.i40e_pf* %35, i32 %36)
  store %struct.i40e_vsi* %37, %struct.i40e_vsi** %12, align 8
  %38 = load %struct.i40e_vsi*, %struct.i40e_vsi** %12, align 8
  %39 = icmp ne %struct.i40e_vsi* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %30
  %41 = load i32, i32* @ENOENT, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %15, align 4
  br label %134

43:                                               ; preds = %30
  %44 = call i32 @memset(%struct.i40e_hmc_obj_txq* %11, i32 0, i32 32)
  %45 = load %struct.virtchnl_txq_info*, %struct.virtchnl_txq_info** %8, align 8
  %46 = getelementptr inbounds %struct.virtchnl_txq_info, %struct.virtchnl_txq_info* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = sdiv i32 %47, 128
  %49 = getelementptr inbounds %struct.i40e_hmc_obj_txq, %struct.i40e_hmc_obj_txq* %11, i32 0, i32 0
  store i32 %48, i32* %49, align 8
  %50 = load %struct.virtchnl_txq_info*, %struct.virtchnl_txq_info** %8, align 8
  %51 = getelementptr inbounds %struct.virtchnl_txq_info, %struct.virtchnl_txq_info* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = getelementptr inbounds %struct.i40e_hmc_obj_txq, %struct.i40e_hmc_obj_txq* %11, i32 0, i32 5
  store i32 %52, i32* %53, align 4
  %54 = load %struct.i40e_vsi*, %struct.i40e_vsi** %12, align 8
  %55 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @le16_to_cpu(i32 %59)
  %61 = getelementptr inbounds %struct.i40e_hmc_obj_txq, %struct.i40e_hmc_obj_txq* %11, i32 0, i32 4
  store i32 %60, i32* %61, align 8
  %62 = getelementptr inbounds %struct.i40e_hmc_obj_txq, %struct.i40e_hmc_obj_txq* %11, i32 0, i32 3
  store i64 0, i64* %62, align 8
  %63 = load %struct.virtchnl_txq_info*, %struct.virtchnl_txq_info** %8, align 8
  %64 = getelementptr inbounds %struct.virtchnl_txq_info, %struct.virtchnl_txq_info* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = getelementptr inbounds %struct.i40e_hmc_obj_txq, %struct.i40e_hmc_obj_txq* %11, i32 0, i32 2
  store i32 %65, i32* %66, align 8
  %67 = load %struct.virtchnl_txq_info*, %struct.virtchnl_txq_info** %8, align 8
  %68 = getelementptr inbounds %struct.virtchnl_txq_info, %struct.virtchnl_txq_info* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = getelementptr inbounds %struct.i40e_hmc_obj_txq, %struct.i40e_hmc_obj_txq* %11, i32 0, i32 1
  store i32 %69, i32* %70, align 4
  %71 = load %struct.i40e_hw*, %struct.i40e_hw** %10, align 8
  %72 = load i32, i32* %13, align 4
  %73 = call i32 @i40e_clear_lan_tx_queue_context(%struct.i40e_hw* %71, i32 %72)
  store i32 %73, i32* %15, align 4
  %74 = load i32, i32* %15, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %86

76:                                               ; preds = %43
  %77 = load %struct.i40e_pf*, %struct.i40e_pf** %9, align 8
  %78 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %77, i32 0, i32 0
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load i32, i32* %13, align 4
  %82 = load i32, i32* %15, align 4
  %83 = call i32 @dev_err(i32* %80, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %81, i32 %82)
  %84 = load i32, i32* @ENOENT, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %15, align 4
  br label %134

86:                                               ; preds = %43
  %87 = load %struct.i40e_hw*, %struct.i40e_hw** %10, align 8
  %88 = load i32, i32* %13, align 4
  %89 = call i32 @i40e_set_lan_tx_queue_context(%struct.i40e_hw* %87, i32 %88, %struct.i40e_hmc_obj_txq* %11)
  store i32 %89, i32* %15, align 4
  %90 = load i32, i32* %15, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %102

92:                                               ; preds = %86
  %93 = load %struct.i40e_pf*, %struct.i40e_pf** %9, align 8
  %94 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %93, i32 0, i32 0
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  %97 = load i32, i32* %13, align 4
  %98 = load i32, i32* %15, align 4
  %99 = call i32 @dev_err(i32* %96, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %97, i32 %98)
  %100 = load i32, i32* @ENOENT, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %15, align 4
  br label %134

102:                                              ; preds = %86
  %103 = load i32, i32* @I40E_QTX_CTL_VF_QUEUE, align 4
  store i32 %103, i32* %14, align 4
  %104 = load %struct.i40e_hw*, %struct.i40e_hw** %10, align 8
  %105 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @I40E_QTX_CTL_PF_INDX_SHIFT, align 4
  %108 = shl i32 %106, %107
  %109 = load i32, i32* @I40E_QTX_CTL_PF_INDX_MASK, align 4
  %110 = and i32 %108, %109
  %111 = load i32, i32* %14, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %14, align 4
  %113 = load %struct.i40e_vf*, %struct.i40e_vf** %5, align 8
  %114 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.i40e_hw*, %struct.i40e_hw** %10, align 8
  %117 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = add nsw i32 %115, %119
  %121 = load i32, i32* @I40E_QTX_CTL_VFVM_INDX_SHIFT, align 4
  %122 = shl i32 %120, %121
  %123 = load i32, i32* @I40E_QTX_CTL_VFVM_INDX_MASK, align 4
  %124 = and i32 %122, %123
  %125 = load i32, i32* %14, align 4
  %126 = or i32 %125, %124
  store i32 %126, i32* %14, align 4
  %127 = load %struct.i40e_hw*, %struct.i40e_hw** %10, align 8
  %128 = load i32, i32* %13, align 4
  %129 = call i32 @I40E_QTX_CTL(i32 %128)
  %130 = load i32, i32* %14, align 4
  %131 = call i32 @wr32(%struct.i40e_hw* %127, i32 %129, i32 %130)
  %132 = load %struct.i40e_hw*, %struct.i40e_hw** %10, align 8
  %133 = call i32 @i40e_flush(%struct.i40e_hw* %132)
  br label %134

134:                                              ; preds = %102, %92, %76, %40, %27
  %135 = load i32, i32* %15, align 4
  ret i32 %135
}

declare dso_local i32 @i40e_vc_isvalid_vsi_id(%struct.i40e_vf*, i32) #1

declare dso_local i32 @i40e_vc_get_pf_queue_id(%struct.i40e_vf*, i32, i32) #1

declare dso_local %struct.i40e_vsi* @i40e_find_vsi_from_id(%struct.i40e_pf*, i32) #1

declare dso_local i32 @memset(%struct.i40e_hmc_obj_txq*, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @i40e_clear_lan_tx_queue_context(%struct.i40e_hw*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

declare dso_local i32 @i40e_set_lan_tx_queue_context(%struct.i40e_hw*, i32, %struct.i40e_hmc_obj_txq*) #1

declare dso_local i32 @wr32(%struct.i40e_hw*, i32, i32) #1

declare dso_local i32 @I40E_QTX_CTL(i32) #1

declare dso_local i32 @i40e_flush(%struct.i40e_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
