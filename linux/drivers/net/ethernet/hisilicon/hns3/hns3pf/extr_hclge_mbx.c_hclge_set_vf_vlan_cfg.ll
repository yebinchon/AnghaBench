; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_mbx.c_hclge_set_vf_vlan_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_mbx.c_hclge_set_vf_vlan_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_vport = type { %struct.TYPE_2__, %struct.hnae3_handle }
%struct.TYPE_2__ = type { i32 }
%struct.hnae3_handle = type { i32 }
%struct.hclge_mbx_vf_to_pf_cmd = type { i64* }
%struct.hclge_vf_vlan_cfg = type { i64, i32, i32, i32 }
%struct.hclge_vlan_info = type { i32 }

@HCLGE_MBX_VLAN_FILTER = common dso_local global i64 0, align 8
@HCLGE_MBX_VLAN_RX_OFF_CFG = common dso_local global i64 0, align 8
@HCLGE_MBX_PORT_BASE_VLAN_CFG = common dso_local global i64 0, align 8
@HCLGE_MBX_GET_PORT_BASE_VLAN_STATE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hclge_vport*, %struct.hclge_mbx_vf_to_pf_cmd*)* @hclge_set_vf_vlan_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclge_set_vf_vlan_cfg(%struct.hclge_vport* %0, %struct.hclge_mbx_vf_to_pf_cmd* %1) #0 {
  %3 = alloca %struct.hclge_vport*, align 8
  %4 = alloca %struct.hclge_mbx_vf_to_pf_cmd*, align 8
  %5 = alloca %struct.hclge_vf_vlan_cfg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.hnae3_handle*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.hnae3_handle*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.hclge_vlan_info*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store %struct.hclge_vport* %0, %struct.hclge_vport** %3, align 8
  store %struct.hclge_mbx_vf_to_pf_cmd* %1, %struct.hclge_mbx_vf_to_pf_cmd** %4, align 8
  store i32 0, i32* %6, align 4
  %16 = load %struct.hclge_mbx_vf_to_pf_cmd*, %struct.hclge_mbx_vf_to_pf_cmd** %4, align 8
  %17 = getelementptr inbounds %struct.hclge_mbx_vf_to_pf_cmd, %struct.hclge_mbx_vf_to_pf_cmd* %16, i32 0, i32 0
  %18 = load i64*, i64** %17, align 8
  %19 = bitcast i64* %18 to %struct.hclge_vf_vlan_cfg*
  store %struct.hclge_vf_vlan_cfg* %19, %struct.hclge_vf_vlan_cfg** %5, align 8
  %20 = load %struct.hclge_vf_vlan_cfg*, %struct.hclge_vf_vlan_cfg** %5, align 8
  %21 = getelementptr inbounds %struct.hclge_vf_vlan_cfg, %struct.hclge_vf_vlan_cfg* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @HCLGE_MBX_VLAN_FILTER, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %47

25:                                               ; preds = %2
  %26 = load %struct.hclge_vport*, %struct.hclge_vport** %3, align 8
  %27 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %26, i32 0, i32 1
  store %struct.hnae3_handle* %27, %struct.hnae3_handle** %7, align 8
  %28 = load %struct.hclge_vf_vlan_cfg*, %struct.hclge_vf_vlan_cfg** %5, align 8
  %29 = getelementptr inbounds %struct.hclge_vf_vlan_cfg, %struct.hclge_vf_vlan_cfg* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %10, align 4
  %35 = load %struct.hclge_vf_vlan_cfg*, %struct.hclge_vf_vlan_cfg** %5, align 8
  %36 = getelementptr inbounds %struct.hclge_vf_vlan_cfg, %struct.hclge_vf_vlan_cfg* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %8, align 4
  %38 = load %struct.hclge_vf_vlan_cfg*, %struct.hclge_vf_vlan_cfg** %5, align 8
  %39 = getelementptr inbounds %struct.hclge_vf_vlan_cfg, %struct.hclge_vf_vlan_cfg* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %9, align 4
  %41 = load %struct.hnae3_handle*, %struct.hnae3_handle** %7, align 8
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @cpu_to_be16(i32 %42)
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %10, align 4
  %46 = call i32 @hclge_set_vlan_filter(%struct.hnae3_handle* %41, i32 %43, i32 %44, i32 %45)
  store i32 %46, i32* %6, align 4
  br label %108

47:                                               ; preds = %2
  %48 = load %struct.hclge_vf_vlan_cfg*, %struct.hclge_vf_vlan_cfg** %5, align 8
  %49 = getelementptr inbounds %struct.hclge_vf_vlan_cfg, %struct.hclge_vf_vlan_cfg* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @HCLGE_MBX_VLAN_RX_OFF_CFG, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %65

53:                                               ; preds = %47
  %54 = load %struct.hclge_vport*, %struct.hclge_vport** %3, align 8
  %55 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %54, i32 0, i32 1
  store %struct.hnae3_handle* %55, %struct.hnae3_handle** %11, align 8
  %56 = load %struct.hclge_vf_vlan_cfg*, %struct.hclge_vf_vlan_cfg** %5, align 8
  %57 = getelementptr inbounds %struct.hclge_vf_vlan_cfg, %struct.hclge_vf_vlan_cfg* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %58, 0
  %60 = zext i1 %59 to i64
  %61 = select i1 %59, i32 1, i32 0
  store i32 %61, i32* %12, align 4
  %62 = load %struct.hnae3_handle*, %struct.hnae3_handle** %11, align 8
  %63 = load i32, i32* %12, align 4
  %64 = call i32 @hclge_en_hw_strip_rxvtag(%struct.hnae3_handle* %62, i32 %63)
  store i32 %64, i32* %6, align 4
  br label %107

65:                                               ; preds = %47
  %66 = load %struct.hclge_mbx_vf_to_pf_cmd*, %struct.hclge_mbx_vf_to_pf_cmd** %4, align 8
  %67 = getelementptr inbounds %struct.hclge_mbx_vf_to_pf_cmd, %struct.hclge_mbx_vf_to_pf_cmd* %66, i32 0, i32 0
  %68 = load i64*, i64** %67, align 8
  %69 = getelementptr inbounds i64, i64* %68, i64 1
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @HCLGE_MBX_PORT_BASE_VLAN_CFG, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %89

73:                                               ; preds = %65
  %74 = load %struct.hclge_mbx_vf_to_pf_cmd*, %struct.hclge_mbx_vf_to_pf_cmd** %4, align 8
  %75 = getelementptr inbounds %struct.hclge_mbx_vf_to_pf_cmd, %struct.hclge_mbx_vf_to_pf_cmd* %74, i32 0, i32 0
  %76 = load i64*, i64** %75, align 8
  %77 = getelementptr inbounds i64, i64* %76, i64 2
  %78 = bitcast i64* %77 to i32*
  store i32* %78, i32** %14, align 8
  %79 = load %struct.hclge_mbx_vf_to_pf_cmd*, %struct.hclge_mbx_vf_to_pf_cmd** %4, align 8
  %80 = getelementptr inbounds %struct.hclge_mbx_vf_to_pf_cmd, %struct.hclge_mbx_vf_to_pf_cmd* %79, i32 0, i32 0
  %81 = load i64*, i64** %80, align 8
  %82 = getelementptr inbounds i64, i64* %81, i64 4
  %83 = bitcast i64* %82 to %struct.hclge_vlan_info*
  store %struct.hclge_vlan_info* %83, %struct.hclge_vlan_info** %13, align 8
  %84 = load %struct.hclge_vport*, %struct.hclge_vport** %3, align 8
  %85 = load i32*, i32** %14, align 8
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.hclge_vlan_info*, %struct.hclge_vlan_info** %13, align 8
  %88 = call i32 @hclge_update_port_base_vlan_cfg(%struct.hclge_vport* %84, i32 %86, %struct.hclge_vlan_info* %87)
  store i32 %88, i32* %6, align 4
  br label %106

89:                                               ; preds = %65
  %90 = load %struct.hclge_mbx_vf_to_pf_cmd*, %struct.hclge_mbx_vf_to_pf_cmd** %4, align 8
  %91 = getelementptr inbounds %struct.hclge_mbx_vf_to_pf_cmd, %struct.hclge_mbx_vf_to_pf_cmd* %90, i32 0, i32 0
  %92 = load i64*, i64** %91, align 8
  %93 = getelementptr inbounds i64, i64* %92, i64 1
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @HCLGE_MBX_GET_PORT_BASE_VLAN_STATE, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %105

97:                                               ; preds = %89
  %98 = load %struct.hclge_vport*, %struct.hclge_vport** %3, align 8
  %99 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  store i32 %101, i32* %15, align 4
  %102 = load %struct.hclge_vport*, %struct.hclge_vport** %3, align 8
  %103 = load %struct.hclge_mbx_vf_to_pf_cmd*, %struct.hclge_mbx_vf_to_pf_cmd** %4, align 8
  %104 = call i32 @hclge_gen_resp_to_vf(%struct.hclge_vport* %102, %struct.hclge_mbx_vf_to_pf_cmd* %103, i32 0, i32* %15, i32 4)
  store i32 %104, i32* %6, align 4
  br label %105

105:                                              ; preds = %97, %89
  br label %106

106:                                              ; preds = %105, %73
  br label %107

107:                                              ; preds = %106, %53
  br label %108

108:                                              ; preds = %107, %25
  %109 = load i32, i32* %6, align 4
  ret i32 %109
}

declare dso_local i32 @hclge_set_vlan_filter(%struct.hnae3_handle*, i32, i32, i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @hclge_en_hw_strip_rxvtag(%struct.hnae3_handle*, i32) #1

declare dso_local i32 @hclge_update_port_base_vlan_cfg(%struct.hclge_vport*, i32, %struct.hclge_vlan_info*) #1

declare dso_local i32 @hclge_gen_resp_to_vf(%struct.hclge_vport*, %struct.hclge_mbx_vf_to_pf_cmd*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
