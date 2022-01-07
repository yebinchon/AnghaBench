; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_switch.c_ice_update_vsi_list_rule.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_switch.c_ice_update_vsi_list_rule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_hw = type { i32 }
%struct.ice_aqc_sw_rules_elem = type { %struct.TYPE_4__, i8* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8*, i8*, i8** }

@ICE_ERR_PARAM = common dso_local global i32 0, align 4
@ICE_SW_LKUP_MAC = common dso_local global i32 0, align 4
@ICE_SW_LKUP_MAC_VLAN = common dso_local global i32 0, align 4
@ICE_SW_LKUP_ETHERTYPE = common dso_local global i32 0, align 4
@ICE_SW_LKUP_ETHERTYPE_MAC = common dso_local global i32 0, align 4
@ICE_SW_LKUP_PROMISC = common dso_local global i32 0, align 4
@ICE_SW_LKUP_PROMISC_VLAN = common dso_local global i32 0, align 4
@ICE_AQC_SW_RULES_T_VSI_LIST_CLEAR = common dso_local global i32 0, align 4
@ICE_AQC_SW_RULES_T_VSI_LIST_SET = common dso_local global i32 0, align 4
@ICE_SW_LKUP_VLAN = common dso_local global i32 0, align 4
@ICE_AQC_SW_RULES_T_PRUNE_LIST_CLEAR = common dso_local global i32 0, align 4
@ICE_AQC_SW_RULES_T_PRUNE_LIST_SET = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ICE_ERR_NO_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ice_hw*, i32*, i32, i32, i32, i32, i32)* @ice_update_vsi_list_rule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ice_update_vsi_list_rule(%struct.ice_hw* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.ice_hw*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.ice_aqc_sw_rules_elem*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.ice_hw* %0, %struct.ice_hw** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %21 = load i32, i32* %11, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %7
  %24 = load i32, i32* @ICE_ERR_PARAM, align 4
  store i32 %24, i32* %8, align 4
  br label %151

25:                                               ; preds = %7
  %26 = load i32, i32* %15, align 4
  %27 = load i32, i32* @ICE_SW_LKUP_MAC, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %49, label %29

29:                                               ; preds = %25
  %30 = load i32, i32* %15, align 4
  %31 = load i32, i32* @ICE_SW_LKUP_MAC_VLAN, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %49, label %33

33:                                               ; preds = %29
  %34 = load i32, i32* %15, align 4
  %35 = load i32, i32* @ICE_SW_LKUP_ETHERTYPE, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %49, label %37

37:                                               ; preds = %33
  %38 = load i32, i32* %15, align 4
  %39 = load i32, i32* @ICE_SW_LKUP_ETHERTYPE_MAC, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %49, label %41

41:                                               ; preds = %37
  %42 = load i32, i32* %15, align 4
  %43 = load i32, i32* @ICE_SW_LKUP_PROMISC, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %49, label %45

45:                                               ; preds = %41
  %46 = load i32, i32* %15, align 4
  %47 = load i32, i32* @ICE_SW_LKUP_PROMISC_VLAN, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %58

49:                                               ; preds = %45, %41, %37, %33, %29, %25
  %50 = load i32, i32* %13, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %49
  %53 = load i32, i32* @ICE_AQC_SW_RULES_T_VSI_LIST_CLEAR, align 4
  br label %56

54:                                               ; preds = %49
  %55 = load i32, i32* @ICE_AQC_SW_RULES_T_VSI_LIST_SET, align 4
  br label %56

56:                                               ; preds = %54, %52
  %57 = phi i32 [ %53, %52 ], [ %55, %54 ]
  store i32 %57, i32* %19, align 4
  br label %74

58:                                               ; preds = %45
  %59 = load i32, i32* %15, align 4
  %60 = load i32, i32* @ICE_SW_LKUP_VLAN, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %71

62:                                               ; preds = %58
  %63 = load i32, i32* %13, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %62
  %66 = load i32, i32* @ICE_AQC_SW_RULES_T_PRUNE_LIST_CLEAR, align 4
  br label %69

67:                                               ; preds = %62
  %68 = load i32, i32* @ICE_AQC_SW_RULES_T_PRUNE_LIST_SET, align 4
  br label %69

69:                                               ; preds = %67, %65
  %70 = phi i32 [ %66, %65 ], [ %68, %67 ]
  store i32 %70, i32* %19, align 4
  br label %73

71:                                               ; preds = %58
  %72 = load i32, i32* @ICE_ERR_PARAM, align 4
  store i32 %72, i32* %8, align 4
  br label %151

73:                                               ; preds = %69
  br label %74

74:                                               ; preds = %73, %56
  %75 = load i32, i32* %11, align 4
  %76 = call i64 @ICE_SW_RULE_VSI_LIST_SIZE(i32 %75)
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %18, align 4
  %78 = load %struct.ice_hw*, %struct.ice_hw** %9, align 8
  %79 = call i32 @ice_hw_to_dev(%struct.ice_hw* %78)
  %80 = load i32, i32* %18, align 4
  %81 = load i32, i32* @GFP_KERNEL, align 4
  %82 = call %struct.ice_aqc_sw_rules_elem* @devm_kzalloc(i32 %79, i32 %80, i32 %81)
  store %struct.ice_aqc_sw_rules_elem* %82, %struct.ice_aqc_sw_rules_elem** %16, align 8
  %83 = load %struct.ice_aqc_sw_rules_elem*, %struct.ice_aqc_sw_rules_elem** %16, align 8
  %84 = icmp ne %struct.ice_aqc_sw_rules_elem* %83, null
  br i1 %84, label %87, label %85

85:                                               ; preds = %74
  %86 = load i32, i32* @ICE_ERR_NO_MEMORY, align 4
  store i32 %86, i32* %8, align 4
  br label %151

87:                                               ; preds = %74
  store i32 0, i32* %20, align 4
  br label %88

88:                                               ; preds = %120, %87
  %89 = load i32, i32* %20, align 4
  %90 = load i32, i32* %11, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %123

92:                                               ; preds = %88
  %93 = load %struct.ice_hw*, %struct.ice_hw** %9, align 8
  %94 = load i32*, i32** %10, align 8
  %95 = load i32, i32* %20, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @ice_is_vsi_valid(%struct.ice_hw* %93, i32 %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %103, label %101

101:                                              ; preds = %92
  %102 = load i32, i32* @ICE_ERR_PARAM, align 4
  store i32 %102, i32* %17, align 4
  br label %145

103:                                              ; preds = %92
  %104 = load %struct.ice_hw*, %struct.ice_hw** %9, align 8
  %105 = load i32*, i32** %10, align 8
  %106 = load i32, i32* %20, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @ice_get_hw_vsi_num(%struct.ice_hw* %104, i32 %109)
  %111 = call i8* @cpu_to_le16(i32 %110)
  %112 = load %struct.ice_aqc_sw_rules_elem*, %struct.ice_aqc_sw_rules_elem** %16, align 8
  %113 = getelementptr inbounds %struct.ice_aqc_sw_rules_elem, %struct.ice_aqc_sw_rules_elem* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 2
  %116 = load i8**, i8*** %115, align 8
  %117 = load i32, i32* %20, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i8*, i8** %116, i64 %118
  store i8* %111, i8** %119, align 8
  br label %120

120:                                              ; preds = %103
  %121 = load i32, i32* %20, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %20, align 4
  br label %88

123:                                              ; preds = %88
  %124 = load i32, i32* %19, align 4
  %125 = call i8* @cpu_to_le16(i32 %124)
  %126 = load %struct.ice_aqc_sw_rules_elem*, %struct.ice_aqc_sw_rules_elem** %16, align 8
  %127 = getelementptr inbounds %struct.ice_aqc_sw_rules_elem, %struct.ice_aqc_sw_rules_elem* %126, i32 0, i32 1
  store i8* %125, i8** %127, align 8
  %128 = load i32, i32* %11, align 4
  %129 = call i8* @cpu_to_le16(i32 %128)
  %130 = load %struct.ice_aqc_sw_rules_elem*, %struct.ice_aqc_sw_rules_elem** %16, align 8
  %131 = getelementptr inbounds %struct.ice_aqc_sw_rules_elem, %struct.ice_aqc_sw_rules_elem* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 1
  store i8* %129, i8** %133, align 8
  %134 = load i32, i32* %12, align 4
  %135 = call i8* @cpu_to_le16(i32 %134)
  %136 = load %struct.ice_aqc_sw_rules_elem*, %struct.ice_aqc_sw_rules_elem** %16, align 8
  %137 = getelementptr inbounds %struct.ice_aqc_sw_rules_elem, %struct.ice_aqc_sw_rules_elem* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 0
  store i8* %135, i8** %139, align 8
  %140 = load %struct.ice_hw*, %struct.ice_hw** %9, align 8
  %141 = load %struct.ice_aqc_sw_rules_elem*, %struct.ice_aqc_sw_rules_elem** %16, align 8
  %142 = load i32, i32* %18, align 4
  %143 = load i32, i32* %14, align 4
  %144 = call i32 @ice_aq_sw_rules(%struct.ice_hw* %140, %struct.ice_aqc_sw_rules_elem* %141, i32 %142, i32 1, i32 %143, i32* null)
  store i32 %144, i32* %17, align 4
  br label %145

145:                                              ; preds = %123, %101
  %146 = load %struct.ice_hw*, %struct.ice_hw** %9, align 8
  %147 = call i32 @ice_hw_to_dev(%struct.ice_hw* %146)
  %148 = load %struct.ice_aqc_sw_rules_elem*, %struct.ice_aqc_sw_rules_elem** %16, align 8
  %149 = call i32 @devm_kfree(i32 %147, %struct.ice_aqc_sw_rules_elem* %148)
  %150 = load i32, i32* %17, align 4
  store i32 %150, i32* %8, align 4
  br label %151

151:                                              ; preds = %145, %85, %71, %23
  %152 = load i32, i32* %8, align 4
  ret i32 %152
}

declare dso_local i64 @ICE_SW_RULE_VSI_LIST_SIZE(i32) #1

declare dso_local %struct.ice_aqc_sw_rules_elem* @devm_kzalloc(i32, i32, i32) #1

declare dso_local i32 @ice_hw_to_dev(%struct.ice_hw*) #1

declare dso_local i32 @ice_is_vsi_valid(%struct.ice_hw*, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @ice_get_hw_vsi_num(%struct.ice_hw*, i32) #1

declare dso_local i32 @ice_aq_sw_rules(%struct.ice_hw*, %struct.ice_aqc_sw_rules_elem*, i32, i32, i32, i32*) #1

declare dso_local i32 @devm_kfree(i32, %struct.ice_aqc_sw_rules_elem*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
