; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_virtchnl_pf.c_i40e_config_vsi_rx_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_virtchnl_pf.c_i40e_config_vsi_rx_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_vf = type { %struct.i40e_pf* }
%struct.i40e_pf = type { %struct.TYPE_2__*, %struct.i40e_hw }
%struct.TYPE_2__ = type { i32 }
%struct.i40e_hw = type { i32 }
%struct.virtchnl_rxq_info = type { i32, i32, i32, i32, i64, i32 }
%struct.i40e_hmc_obj_rxq = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@I40E_RX_SPLIT_L2 = common dso_local global i32 0, align 4
@I40E_RX_SPLIT_IP = common dso_local global i32 0, align 4
@I40E_RX_SPLIT_TCP_UDP = common dso_local global i32 0, align 4
@I40E_RX_SPLIT_SCTP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@I40E_RXQ_CTX_HBUFF_SHIFT = common dso_local global i32 0, align 4
@I40E_RX_DTYPE_HEADER_SPLIT = common dso_local global i32 0, align 4
@I40E_RXQ_CTX_DBUFF_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"Failed to clear VF LAN Rx queue context %d, error: %d\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"Failed to set VF LAN Rx queue context %d error: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40e_vf*, i32, i32, %struct.virtchnl_rxq_info*)* @i40e_config_vsi_rx_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_config_vsi_rx_queue(%struct.i40e_vf* %0, i32 %1, i32 %2, %struct.virtchnl_rxq_info* %3) #0 {
  %5 = alloca %struct.i40e_vf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.virtchnl_rxq_info*, align 8
  %9 = alloca %struct.i40e_pf*, align 8
  %10 = alloca %struct.i40e_hw*, align 8
  %11 = alloca %struct.i40e_hmc_obj_rxq, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.i40e_vf* %0, %struct.i40e_vf** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.virtchnl_rxq_info* %3, %struct.virtchnl_rxq_info** %8, align 8
  %14 = load %struct.i40e_vf*, %struct.i40e_vf** %5, align 8
  %15 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %14, i32 0, i32 0
  %16 = load %struct.i40e_pf*, %struct.i40e_pf** %15, align 8
  store %struct.i40e_pf* %16, %struct.i40e_pf** %9, align 8
  %17 = load %struct.i40e_pf*, %struct.i40e_pf** %9, align 8
  %18 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %17, i32 0, i32 1
  store %struct.i40e_hw* %18, %struct.i40e_hw** %10, align 8
  store i32 0, i32* %13, align 4
  %19 = load %struct.i40e_vf*, %struct.i40e_vf** %5, align 8
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @i40e_vc_get_pf_queue_id(%struct.i40e_vf* %19, i32 %20, i32 %21)
  store i32 %22, i32* %12, align 4
  %23 = call i32 @memset(%struct.i40e_hmc_obj_rxq* %11, i32 0, i32 48)
  %24 = load %struct.virtchnl_rxq_info*, %struct.virtchnl_rxq_info** %8, align 8
  %25 = getelementptr inbounds %struct.virtchnl_rxq_info, %struct.virtchnl_rxq_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = sdiv i32 %26, 128
  %28 = getelementptr inbounds %struct.i40e_hmc_obj_rxq, %struct.i40e_hmc_obj_rxq* %11, i32 0, i32 0
  store i32 %27, i32* %28, align 4
  %29 = load %struct.virtchnl_rxq_info*, %struct.virtchnl_rxq_info** %8, align 8
  %30 = getelementptr inbounds %struct.virtchnl_rxq_info, %struct.virtchnl_rxq_info* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 8
  %32 = getelementptr inbounds %struct.i40e_hmc_obj_rxq, %struct.i40e_hmc_obj_rxq* %11, i32 0, i32 11
  store i32 %31, i32* %32, align 4
  %33 = load %struct.virtchnl_rxq_info*, %struct.virtchnl_rxq_info** %8, align 8
  %34 = getelementptr inbounds %struct.virtchnl_rxq_info, %struct.virtchnl_rxq_info* %33, i32 0, i32 4
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %62

37:                                               ; preds = %4
  %38 = load i32, i32* @I40E_RX_SPLIT_L2, align 4
  %39 = load i32, i32* @I40E_RX_SPLIT_IP, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @I40E_RX_SPLIT_TCP_UDP, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @I40E_RX_SPLIT_SCTP, align 4
  %44 = or i32 %42, %43
  %45 = getelementptr inbounds %struct.i40e_hmc_obj_rxq, %struct.i40e_hmc_obj_rxq* %11, i32 0, i32 1
  store i32 %44, i32* %45, align 4
  %46 = load %struct.virtchnl_rxq_info*, %struct.virtchnl_rxq_info** %8, align 8
  %47 = getelementptr inbounds %struct.virtchnl_rxq_info, %struct.virtchnl_rxq_info* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp sgt i32 %48, 1984
  br i1 %49, label %50, label %53

50:                                               ; preds = %37
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %13, align 4
  br label %131

53:                                               ; preds = %37
  %54 = load %struct.virtchnl_rxq_info*, %struct.virtchnl_rxq_info** %8, align 8
  %55 = getelementptr inbounds %struct.virtchnl_rxq_info, %struct.virtchnl_rxq_info* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @I40E_RXQ_CTX_HBUFF_SHIFT, align 4
  %58 = ashr i32 %56, %57
  %59 = getelementptr inbounds %struct.i40e_hmc_obj_rxq, %struct.i40e_hmc_obj_rxq* %11, i32 0, i32 2
  store i32 %58, i32* %59, align 4
  %60 = load i32, i32* @I40E_RX_DTYPE_HEADER_SPLIT, align 4
  %61 = getelementptr inbounds %struct.i40e_hmc_obj_rxq, %struct.i40e_hmc_obj_rxq* %11, i32 0, i32 10
  store i32 %60, i32* %61, align 4
  br label %62

62:                                               ; preds = %53, %4
  %63 = load %struct.virtchnl_rxq_info*, %struct.virtchnl_rxq_info** %8, align 8
  %64 = getelementptr inbounds %struct.virtchnl_rxq_info, %struct.virtchnl_rxq_info* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = icmp sgt i32 %65, 16256
  br i1 %66, label %67, label %70

67:                                               ; preds = %62
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %13, align 4
  br label %131

70:                                               ; preds = %62
  %71 = load %struct.virtchnl_rxq_info*, %struct.virtchnl_rxq_info** %8, align 8
  %72 = getelementptr inbounds %struct.virtchnl_rxq_info, %struct.virtchnl_rxq_info* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @I40E_RXQ_CTX_DBUFF_SHIFT, align 4
  %75 = ashr i32 %73, %74
  %76 = getelementptr inbounds %struct.i40e_hmc_obj_rxq, %struct.i40e_hmc_obj_rxq* %11, i32 0, i32 3
  store i32 %75, i32* %76, align 4
  %77 = load %struct.virtchnl_rxq_info*, %struct.virtchnl_rxq_info** %8, align 8
  %78 = getelementptr inbounds %struct.virtchnl_rxq_info, %struct.virtchnl_rxq_info* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = icmp sge i32 %79, 16384
  br i1 %80, label %86, label %81

81:                                               ; preds = %70
  %82 = load %struct.virtchnl_rxq_info*, %struct.virtchnl_rxq_info** %8, align 8
  %83 = getelementptr inbounds %struct.virtchnl_rxq_info, %struct.virtchnl_rxq_info* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = icmp slt i32 %84, 64
  br i1 %85, label %86, label %89

86:                                               ; preds = %81, %70
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %13, align 4
  br label %131

89:                                               ; preds = %81
  %90 = load %struct.virtchnl_rxq_info*, %struct.virtchnl_rxq_info** %8, align 8
  %91 = getelementptr inbounds %struct.virtchnl_rxq_info, %struct.virtchnl_rxq_info* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = getelementptr inbounds %struct.i40e_hmc_obj_rxq, %struct.i40e_hmc_obj_rxq* %11, i32 0, i32 4
  store i32 %92, i32* %93, align 4
  %94 = getelementptr inbounds %struct.i40e_hmc_obj_rxq, %struct.i40e_hmc_obj_rxq* %11, i32 0, i32 5
  store i32 1, i32* %94, align 4
  %95 = getelementptr inbounds %struct.i40e_hmc_obj_rxq, %struct.i40e_hmc_obj_rxq* %11, i32 0, i32 6
  store i32 1, i32* %95, align 4
  %96 = getelementptr inbounds %struct.i40e_hmc_obj_rxq, %struct.i40e_hmc_obj_rxq* %11, i32 0, i32 7
  store i32 1, i32* %96, align 4
  %97 = getelementptr inbounds %struct.i40e_hmc_obj_rxq, %struct.i40e_hmc_obj_rxq* %11, i32 0, i32 8
  store i32 1, i32* %97, align 4
  %98 = getelementptr inbounds %struct.i40e_hmc_obj_rxq, %struct.i40e_hmc_obj_rxq* %11, i32 0, i32 9
  store i32 1, i32* %98, align 4
  %99 = load %struct.i40e_hw*, %struct.i40e_hw** %10, align 8
  %100 = load i32, i32* %12, align 4
  %101 = call i32 @i40e_clear_lan_rx_queue_context(%struct.i40e_hw* %99, i32 %100)
  store i32 %101, i32* %13, align 4
  %102 = load i32, i32* %13, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %114

104:                                              ; preds = %89
  %105 = load %struct.i40e_pf*, %struct.i40e_pf** %9, align 8
  %106 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %105, i32 0, i32 0
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  %109 = load i32, i32* %12, align 4
  %110 = load i32, i32* %13, align 4
  %111 = call i32 @dev_err(i32* %108, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %109, i32 %110)
  %112 = load i32, i32* @ENOENT, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %13, align 4
  br label %131

114:                                              ; preds = %89
  %115 = load %struct.i40e_hw*, %struct.i40e_hw** %10, align 8
  %116 = load i32, i32* %12, align 4
  %117 = call i32 @i40e_set_lan_rx_queue_context(%struct.i40e_hw* %115, i32 %116, %struct.i40e_hmc_obj_rxq* %11)
  store i32 %117, i32* %13, align 4
  %118 = load i32, i32* %13, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %130

120:                                              ; preds = %114
  %121 = load %struct.i40e_pf*, %struct.i40e_pf** %9, align 8
  %122 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %121, i32 0, i32 0
  %123 = load %struct.TYPE_2__*, %struct.TYPE_2__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 0
  %125 = load i32, i32* %12, align 4
  %126 = load i32, i32* %13, align 4
  %127 = call i32 @dev_err(i32* %124, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %125, i32 %126)
  %128 = load i32, i32* @ENOENT, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %13, align 4
  br label %131

130:                                              ; preds = %114
  br label %131

131:                                              ; preds = %130, %120, %104, %86, %67, %50
  %132 = load i32, i32* %13, align 4
  ret i32 %132
}

declare dso_local i32 @i40e_vc_get_pf_queue_id(%struct.i40e_vf*, i32, i32) #1

declare dso_local i32 @memset(%struct.i40e_hmc_obj_rxq*, i32, i32) #1

declare dso_local i32 @i40e_clear_lan_rx_queue_context(%struct.i40e_hw*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

declare dso_local i32 @i40e_set_lan_rx_queue_context(%struct.i40e_hw*, i32, %struct.i40e_hmc_obj_rxq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
