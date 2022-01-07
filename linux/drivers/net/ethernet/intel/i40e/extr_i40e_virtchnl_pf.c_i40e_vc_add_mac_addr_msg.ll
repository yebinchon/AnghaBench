; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_virtchnl_pf.c_i40e_vc_add_mac_addr_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_virtchnl_pf.c_i40e_vc_add_mac_addr_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_vf = type { i64, i64, i32, i32, %struct.i40e_pf* }
%struct.i40e_pf = type { %struct.TYPE_4__*, %struct.i40e_vsi** }
%struct.TYPE_4__ = type { i32 }
%struct.i40e_vsi = type { i32 }
%struct.virtchnl_ether_addr_list = type { i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i64 }
%struct.i40e_mac_filter = type { i32 }

@I40E_VF_STATE_ACTIVE = common dso_local global i32 0, align 4
@I40E_ERR_PARAM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"Unable to add MAC filter %pM for VF %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"Unable to program VF %d MAC filters, error %d\0A\00", align 1
@VIRTCHNL_OP_ADD_ETH_ADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40e_vf*, i32*)* @i40e_vc_add_mac_addr_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_vc_add_mac_addr_msg(%struct.i40e_vf* %0, i32* %1) #0 {
  %3 = alloca %struct.i40e_vf*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.virtchnl_ether_addr_list*, align 8
  %6 = alloca %struct.i40e_pf*, align 8
  %7 = alloca %struct.i40e_vsi*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.i40e_mac_filter*, align 8
  store %struct.i40e_vf* %0, %struct.i40e_vf** %3, align 8
  store i32* %1, i32** %4, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = bitcast i32* %11 to %struct.virtchnl_ether_addr_list*
  store %struct.virtchnl_ether_addr_list* %12, %struct.virtchnl_ether_addr_list** %5, align 8
  %13 = load %struct.i40e_vf*, %struct.i40e_vf** %3, align 8
  %14 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %13, i32 0, i32 4
  %15 = load %struct.i40e_pf*, %struct.i40e_pf** %14, align 8
  store %struct.i40e_pf* %15, %struct.i40e_pf** %6, align 8
  store %struct.i40e_vsi* null, %struct.i40e_vsi** %7, align 8
  store i64 0, i64* %8, align 8
  %16 = load i32, i32* @I40E_VF_STATE_ACTIVE, align 4
  %17 = load %struct.i40e_vf*, %struct.i40e_vf** %3, align 8
  %18 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %17, i32 0, i32 3
  %19 = call i32 @test_bit(i32 %16, i32* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %2
  %22 = load %struct.i40e_vf*, %struct.i40e_vf** %3, align 8
  %23 = load %struct.virtchnl_ether_addr_list*, %struct.virtchnl_ether_addr_list** %5, align 8
  %24 = getelementptr inbounds %struct.virtchnl_ether_addr_list, %struct.virtchnl_ether_addr_list* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @i40e_vc_isvalid_vsi_id(%struct.i40e_vf* %22, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %21, %2
  %29 = load i64, i64* @I40E_ERR_PARAM, align 8
  store i64 %29, i64* %8, align 8
  br label %134

30:                                               ; preds = %21
  %31 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %32 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %31, i32 0, i32 1
  %33 = load %struct.i40e_vsi**, %struct.i40e_vsi*** %32, align 8
  %34 = load %struct.i40e_vf*, %struct.i40e_vf** %3, align 8
  %35 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds %struct.i40e_vsi*, %struct.i40e_vsi** %33, i64 %36
  %38 = load %struct.i40e_vsi*, %struct.i40e_vsi** %37, align 8
  store %struct.i40e_vsi* %38, %struct.i40e_vsi** %7, align 8
  %39 = load %struct.i40e_vsi*, %struct.i40e_vsi** %7, align 8
  %40 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %39, i32 0, i32 0
  %41 = call i32 @spin_lock_bh(i32* %40)
  %42 = load %struct.i40e_vf*, %struct.i40e_vf** %3, align 8
  %43 = load %struct.virtchnl_ether_addr_list*, %struct.virtchnl_ether_addr_list** %5, align 8
  %44 = call i64 @i40e_check_vf_permission(%struct.i40e_vf* %42, %struct.virtchnl_ether_addr_list* %43)
  store i64 %44, i64* %8, align 8
  %45 = load i64, i64* %8, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %30
  %48 = load %struct.i40e_vsi*, %struct.i40e_vsi** %7, align 8
  %49 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %48, i32 0, i32 0
  %50 = call i32 @spin_unlock_bh(i32* %49)
  br label %134

51:                                               ; preds = %30
  store i32 0, i32* %9, align 4
  br label %52

52:                                               ; preds = %112, %51
  %53 = load i32, i32* %9, align 4
  %54 = load %struct.virtchnl_ether_addr_list*, %struct.virtchnl_ether_addr_list** %5, align 8
  %55 = getelementptr inbounds %struct.virtchnl_ether_addr_list, %struct.virtchnl_ether_addr_list* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp slt i32 %53, %56
  br i1 %57, label %58, label %115

58:                                               ; preds = %52
  %59 = load %struct.i40e_vsi*, %struct.i40e_vsi** %7, align 8
  %60 = load %struct.virtchnl_ether_addr_list*, %struct.virtchnl_ether_addr_list** %5, align 8
  %61 = getelementptr inbounds %struct.virtchnl_ether_addr_list, %struct.virtchnl_ether_addr_list* %60, i32 0, i32 1
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = load i32, i32* %9, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = call %struct.i40e_mac_filter* @i40e_find_mac(%struct.i40e_vsi* %59, i64 %67)
  store %struct.i40e_mac_filter* %68, %struct.i40e_mac_filter** %10, align 8
  %69 = load %struct.i40e_mac_filter*, %struct.i40e_mac_filter** %10, align 8
  %70 = icmp ne %struct.i40e_mac_filter* %69, null
  br i1 %70, label %111, label %71

71:                                               ; preds = %58
  %72 = load %struct.i40e_vsi*, %struct.i40e_vsi** %7, align 8
  %73 = load %struct.virtchnl_ether_addr_list*, %struct.virtchnl_ether_addr_list** %5, align 8
  %74 = getelementptr inbounds %struct.virtchnl_ether_addr_list, %struct.virtchnl_ether_addr_list* %73, i32 0, i32 1
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %74, align 8
  %76 = load i32, i32* %9, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = call %struct.i40e_mac_filter* @i40e_add_mac_filter(%struct.i40e_vsi* %72, i64 %80)
  store %struct.i40e_mac_filter* %81, %struct.i40e_mac_filter** %10, align 8
  %82 = load %struct.i40e_mac_filter*, %struct.i40e_mac_filter** %10, align 8
  %83 = icmp ne %struct.i40e_mac_filter* %82, null
  br i1 %83, label %105, label %84

84:                                               ; preds = %71
  %85 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %86 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %85, i32 0, i32 0
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load %struct.virtchnl_ether_addr_list*, %struct.virtchnl_ether_addr_list** %5, align 8
  %90 = getelementptr inbounds %struct.virtchnl_ether_addr_list, %struct.virtchnl_ether_addr_list* %89, i32 0, i32 1
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %90, align 8
  %92 = load i32, i32* %9, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.i40e_vf*, %struct.i40e_vf** %3, align 8
  %98 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = call i32 @dev_err(i32* %88, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %96, i64 %99)
  %101 = load i64, i64* @I40E_ERR_PARAM, align 8
  store i64 %101, i64* %8, align 8
  %102 = load %struct.i40e_vsi*, %struct.i40e_vsi** %7, align 8
  %103 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %102, i32 0, i32 0
  %104 = call i32 @spin_unlock_bh(i32* %103)
  br label %134

105:                                              ; preds = %71
  %106 = load %struct.i40e_vf*, %struct.i40e_vf** %3, align 8
  %107 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %107, align 8
  br label %110

110:                                              ; preds = %105
  br label %111

111:                                              ; preds = %110, %58
  br label %112

112:                                              ; preds = %111
  %113 = load i32, i32* %9, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %9, align 4
  br label %52

115:                                              ; preds = %52
  %116 = load %struct.i40e_vsi*, %struct.i40e_vsi** %7, align 8
  %117 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %116, i32 0, i32 0
  %118 = call i32 @spin_unlock_bh(i32* %117)
  %119 = load %struct.i40e_vsi*, %struct.i40e_vsi** %7, align 8
  %120 = call i64 @i40e_sync_vsi_filters(%struct.i40e_vsi* %119)
  store i64 %120, i64* %8, align 8
  %121 = load i64, i64* %8, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %133

123:                                              ; preds = %115
  %124 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %125 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %124, i32 0, i32 0
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 0
  %128 = load %struct.i40e_vf*, %struct.i40e_vf** %3, align 8
  %129 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* %8, align 8
  %132 = call i32 @dev_err(i32* %127, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i64 %130, i64 %131)
  br label %133

133:                                              ; preds = %123, %115
  br label %134

134:                                              ; preds = %133, %84, %47, %28
  %135 = load %struct.i40e_vf*, %struct.i40e_vf** %3, align 8
  %136 = load i32, i32* @VIRTCHNL_OP_ADD_ETH_ADDR, align 4
  %137 = load i64, i64* %8, align 8
  %138 = call i32 @i40e_vc_send_resp_to_vf(%struct.i40e_vf* %135, i32 %136, i64 %137)
  ret i32 %138
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @i40e_vc_isvalid_vsi_id(%struct.i40e_vf*, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @i40e_check_vf_permission(%struct.i40e_vf*, %struct.virtchnl_ether_addr_list*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local %struct.i40e_mac_filter* @i40e_find_mac(%struct.i40e_vsi*, i64) #1

declare dso_local %struct.i40e_mac_filter* @i40e_add_mac_filter(%struct.i40e_vsi*, i64) #1

declare dso_local i32 @dev_err(i32*, i8*, i64, i64) #1

declare dso_local i64 @i40e_sync_vsi_filters(%struct.i40e_vsi*) #1

declare dso_local i32 @i40e_vc_send_resp_to_vf(%struct.i40e_vf*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
