; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_virtchnl_pf.c_i40e_vc_remove_vlan_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_virtchnl_pf.c_i40e_vc_remove_vlan_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_vf = type { i64, i32, i32, %struct.i40e_pf* }
%struct.i40e_pf = type { i32, %struct.i40e_vsi** }
%struct.i40e_vsi = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.virtchnl_vlan_filter_list = type { i32, i64*, i32 }

@I40E_VF_STATE_ACTIVE = common dso_local global i32 0, align 4
@I40E_ERR_PARAM = common dso_local global i32 0, align 4
@I40E_MAX_VLANID = common dso_local global i64 0, align 8
@I40E_VF_STATE_UC_PROMISC = common dso_local global i32 0, align 4
@I40E_VF_STATE_MC_PROMISC = common dso_local global i32 0, align 4
@VIRTCHNL_OP_DEL_VLAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40e_vf*, i32*)* @i40e_vc_remove_vlan_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_vc_remove_vlan_msg(%struct.i40e_vf* %0, i32* %1) #0 {
  %3 = alloca %struct.i40e_vf*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.virtchnl_vlan_filter_list*, align 8
  %6 = alloca %struct.i40e_pf*, align 8
  %7 = alloca %struct.i40e_vsi*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.i40e_vf* %0, %struct.i40e_vf** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = bitcast i32* %10 to %struct.virtchnl_vlan_filter_list*
  store %struct.virtchnl_vlan_filter_list* %11, %struct.virtchnl_vlan_filter_list** %5, align 8
  %12 = load %struct.i40e_vf*, %struct.i40e_vf** %3, align 8
  %13 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %12, i32 0, i32 3
  %14 = load %struct.i40e_pf*, %struct.i40e_pf** %13, align 8
  store %struct.i40e_pf* %14, %struct.i40e_pf** %6, align 8
  store %struct.i40e_vsi* null, %struct.i40e_vsi** %7, align 8
  store i32 0, i32* %8, align 4
  %15 = load i32, i32* @I40E_VF_STATE_ACTIVE, align 4
  %16 = load %struct.i40e_vf*, %struct.i40e_vf** %3, align 8
  %17 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %16, i32 0, i32 1
  %18 = call i64 @test_bit(i32 %15, i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %2
  %21 = load %struct.i40e_vf*, %struct.i40e_vf** %3, align 8
  %22 = load %struct.virtchnl_vlan_filter_list*, %struct.virtchnl_vlan_filter_list** %5, align 8
  %23 = getelementptr inbounds %struct.virtchnl_vlan_filter_list, %struct.virtchnl_vlan_filter_list* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @i40e_vc_isvalid_vsi_id(%struct.i40e_vf* %21, i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %20, %2
  %28 = load i32, i32* @I40E_ERR_PARAM, align 4
  store i32 %28, i32* %8, align 4
  br label %146

29:                                               ; preds = %20
  store i32 0, i32* %9, align 4
  br label %30

30:                                               ; preds = %49, %29
  %31 = load i32, i32* %9, align 4
  %32 = load %struct.virtchnl_vlan_filter_list*, %struct.virtchnl_vlan_filter_list** %5, align 8
  %33 = getelementptr inbounds %struct.virtchnl_vlan_filter_list, %struct.virtchnl_vlan_filter_list* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %36, label %52

36:                                               ; preds = %30
  %37 = load %struct.virtchnl_vlan_filter_list*, %struct.virtchnl_vlan_filter_list** %5, align 8
  %38 = getelementptr inbounds %struct.virtchnl_vlan_filter_list, %struct.virtchnl_vlan_filter_list* %37, i32 0, i32 1
  %39 = load i64*, i64** %38, align 8
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i64, i64* %39, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @I40E_MAX_VLANID, align 8
  %45 = icmp sgt i64 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %36
  %47 = load i32, i32* @I40E_ERR_PARAM, align 4
  store i32 %47, i32* %8, align 4
  br label %146

48:                                               ; preds = %36
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %9, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %9, align 4
  br label %30

52:                                               ; preds = %30
  %53 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %54 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %53, i32 0, i32 1
  %55 = load %struct.i40e_vsi**, %struct.i40e_vsi*** %54, align 8
  %56 = load %struct.i40e_vf*, %struct.i40e_vf** %3, align 8
  %57 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds %struct.i40e_vsi*, %struct.i40e_vsi** %55, i64 %58
  %60 = load %struct.i40e_vsi*, %struct.i40e_vsi** %59, align 8
  store %struct.i40e_vsi* %60, %struct.i40e_vsi** %7, align 8
  %61 = load %struct.i40e_vsi*, %struct.i40e_vsi** %7, align 8
  %62 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %81

66:                                               ; preds = %52
  %67 = load %struct.virtchnl_vlan_filter_list*, %struct.virtchnl_vlan_filter_list** %5, align 8
  %68 = getelementptr inbounds %struct.virtchnl_vlan_filter_list, %struct.virtchnl_vlan_filter_list* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp sgt i32 %69, 1
  br i1 %70, label %78, label %71

71:                                               ; preds = %66
  %72 = load %struct.virtchnl_vlan_filter_list*, %struct.virtchnl_vlan_filter_list** %5, align 8
  %73 = getelementptr inbounds %struct.virtchnl_vlan_filter_list, %struct.virtchnl_vlan_filter_list* %72, i32 0, i32 1
  %74 = load i64*, i64** %73, align 8
  %75 = getelementptr inbounds i64, i64* %74, i64 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %71, %66
  %79 = load i32, i32* @I40E_ERR_PARAM, align 4
  store i32 %79, i32* %8, align 4
  br label %80

80:                                               ; preds = %78, %71
  br label %146

81:                                               ; preds = %52
  store i32 0, i32* %9, align 4
  br label %82

82:                                               ; preds = %142, %81
  %83 = load i32, i32* %9, align 4
  %84 = load %struct.virtchnl_vlan_filter_list*, %struct.virtchnl_vlan_filter_list** %5, align 8
  %85 = getelementptr inbounds %struct.virtchnl_vlan_filter_list, %struct.virtchnl_vlan_filter_list* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp slt i32 %83, %86
  br i1 %87, label %88, label %145

88:                                               ; preds = %82
  %89 = load %struct.i40e_vsi*, %struct.i40e_vsi** %7, align 8
  %90 = load %struct.virtchnl_vlan_filter_list*, %struct.virtchnl_vlan_filter_list** %5, align 8
  %91 = getelementptr inbounds %struct.virtchnl_vlan_filter_list, %struct.virtchnl_vlan_filter_list* %90, i32 0, i32 1
  %92 = load i64*, i64** %91, align 8
  %93 = load i32, i32* %9, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i64, i64* %92, i64 %94
  %96 = load i64, i64* %95, align 8
  %97 = call i32 @i40e_vsi_kill_vlan(%struct.i40e_vsi* %89, i64 %96)
  %98 = load %struct.i40e_vf*, %struct.i40e_vf** %3, align 8
  %99 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = add nsw i32 %100, -1
  store i32 %101, i32* %99, align 4
  %102 = load i32, i32* @I40E_VF_STATE_UC_PROMISC, align 4
  %103 = load %struct.i40e_vf*, %struct.i40e_vf** %3, align 8
  %104 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %103, i32 0, i32 1
  %105 = call i64 @test_bit(i32 %102, i32* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %121

107:                                              ; preds = %88
  %108 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %109 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %108, i32 0, i32 0
  %110 = load %struct.i40e_vsi*, %struct.i40e_vsi** %7, align 8
  %111 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.virtchnl_vlan_filter_list*, %struct.virtchnl_vlan_filter_list** %5, align 8
  %114 = getelementptr inbounds %struct.virtchnl_vlan_filter_list, %struct.virtchnl_vlan_filter_list* %113, i32 0, i32 1
  %115 = load i64*, i64** %114, align 8
  %116 = load i32, i32* %9, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i64, i64* %115, i64 %117
  %119 = load i64, i64* %118, align 8
  %120 = call i32 @i40e_aq_set_vsi_uc_promisc_on_vlan(i32* %109, i32 %112, i32 0, i64 %119, i32* null)
  br label %121

121:                                              ; preds = %107, %88
  %122 = load i32, i32* @I40E_VF_STATE_MC_PROMISC, align 4
  %123 = load %struct.i40e_vf*, %struct.i40e_vf** %3, align 8
  %124 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %123, i32 0, i32 1
  %125 = call i64 @test_bit(i32 %122, i32* %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %141

127:                                              ; preds = %121
  %128 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %129 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %128, i32 0, i32 0
  %130 = load %struct.i40e_vsi*, %struct.i40e_vsi** %7, align 8
  %131 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.virtchnl_vlan_filter_list*, %struct.virtchnl_vlan_filter_list** %5, align 8
  %134 = getelementptr inbounds %struct.virtchnl_vlan_filter_list, %struct.virtchnl_vlan_filter_list* %133, i32 0, i32 1
  %135 = load i64*, i64** %134, align 8
  %136 = load i32, i32* %9, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i64, i64* %135, i64 %137
  %139 = load i64, i64* %138, align 8
  %140 = call i32 @i40e_aq_set_vsi_mc_promisc_on_vlan(i32* %129, i32 %132, i32 0, i64 %139, i32* null)
  br label %141

141:                                              ; preds = %127, %121
  br label %142

142:                                              ; preds = %141
  %143 = load i32, i32* %9, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %9, align 4
  br label %82

145:                                              ; preds = %82
  br label %146

146:                                              ; preds = %145, %80, %46, %27
  %147 = load %struct.i40e_vf*, %struct.i40e_vf** %3, align 8
  %148 = load i32, i32* @VIRTCHNL_OP_DEL_VLAN, align 4
  %149 = load i32, i32* %8, align 4
  %150 = call i32 @i40e_vc_send_resp_to_vf(%struct.i40e_vf* %147, i32 %148, i32 %149)
  ret i32 %150
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @i40e_vc_isvalid_vsi_id(%struct.i40e_vf*, i32) #1

declare dso_local i32 @i40e_vsi_kill_vlan(%struct.i40e_vsi*, i64) #1

declare dso_local i32 @i40e_aq_set_vsi_uc_promisc_on_vlan(i32*, i32, i32, i64, i32*) #1

declare dso_local i32 @i40e_aq_set_vsi_mc_promisc_on_vlan(i32*, i32, i32, i64, i32*) #1

declare dso_local i32 @i40e_vc_send_resp_to_vf(%struct.i40e_vf*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
