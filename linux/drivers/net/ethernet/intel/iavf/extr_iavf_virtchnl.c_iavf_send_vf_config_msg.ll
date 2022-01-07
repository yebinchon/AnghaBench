; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_virtchnl.c_iavf_send_vf_config_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_virtchnl.c_iavf_send_vf_config_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iavf_adapter = type { i32, i32 }

@VIRTCHNL_VF_OFFLOAD_L2 = common dso_local global i32 0, align 4
@VIRTCHNL_VF_OFFLOAD_RSS_PF = common dso_local global i32 0, align 4
@VIRTCHNL_VF_OFFLOAD_RSS_AQ = common dso_local global i32 0, align 4
@VIRTCHNL_VF_OFFLOAD_RSS_REG = common dso_local global i32 0, align 4
@VIRTCHNL_VF_OFFLOAD_VLAN = common dso_local global i32 0, align 4
@VIRTCHNL_VF_OFFLOAD_WB_ON_ITR = common dso_local global i32 0, align 4
@VIRTCHNL_VF_OFFLOAD_RSS_PCTYPE_V2 = common dso_local global i32 0, align 4
@VIRTCHNL_VF_OFFLOAD_ENCAP = common dso_local global i32 0, align 4
@VIRTCHNL_VF_OFFLOAD_ENCAP_CSUM = common dso_local global i32 0, align 4
@VIRTCHNL_VF_OFFLOAD_REQ_QUEUES = common dso_local global i32 0, align 4
@VIRTCHNL_VF_OFFLOAD_ADQ = common dso_local global i32 0, align 4
@VIRTCHNL_OP_GET_VF_RESOURCES = common dso_local global i32 0, align 4
@IAVF_FLAG_AQ_GET_CONFIG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iavf_send_vf_config_msg(%struct.iavf_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iavf_adapter*, align 8
  %4 = alloca i32, align 4
  store %struct.iavf_adapter* %0, %struct.iavf_adapter** %3, align 8
  %5 = load i32, i32* @VIRTCHNL_VF_OFFLOAD_L2, align 4
  %6 = load i32, i32* @VIRTCHNL_VF_OFFLOAD_RSS_PF, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @VIRTCHNL_VF_OFFLOAD_RSS_AQ, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @VIRTCHNL_VF_OFFLOAD_RSS_REG, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @VIRTCHNL_VF_OFFLOAD_VLAN, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @VIRTCHNL_VF_OFFLOAD_WB_ON_ITR, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @VIRTCHNL_VF_OFFLOAD_RSS_PCTYPE_V2, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @VIRTCHNL_VF_OFFLOAD_ENCAP, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @VIRTCHNL_VF_OFFLOAD_ENCAP_CSUM, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @VIRTCHNL_VF_OFFLOAD_REQ_QUEUES, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @VIRTCHNL_VF_OFFLOAD_ADQ, align 4
  %25 = or i32 %23, %24
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* @VIRTCHNL_OP_GET_VF_RESOURCES, align 4
  %27 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %28 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* @IAVF_FLAG_AQ_GET_CONFIG, align 4
  %30 = xor i32 %29, -1
  %31 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %32 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, %30
  store i32 %34, i32* %32, align 4
  %35 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %36 = call i64 @PF_IS_V11(%struct.iavf_adapter* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %1
  %39 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %40 = load i32, i32* @VIRTCHNL_OP_GET_VF_RESOURCES, align 4
  %41 = call i32 @iavf_send_pf_msg(%struct.iavf_adapter* %39, i32 %40, i32* %4, i32 4)
  store i32 %41, i32* %2, align 4
  br label %46

42:                                               ; preds = %1
  %43 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %44 = load i32, i32* @VIRTCHNL_OP_GET_VF_RESOURCES, align 4
  %45 = call i32 @iavf_send_pf_msg(%struct.iavf_adapter* %43, i32 %44, i32* null, i32 0)
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %42, %38
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i64 @PF_IS_V11(%struct.iavf_adapter*) #1

declare dso_local i32 @iavf_send_pf_msg(%struct.iavf_adapter*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
