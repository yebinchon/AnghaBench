; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_common.c_i40e_aq_get_phy_capabilities.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_common.c_i40e_aq_get_phy_capabilities.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32, i64, i64 }
%struct.TYPE_8__ = type { i64 }
%struct.i40e_aq_get_phy_abilities_resp = type { i64, i32 }
%struct.i40e_asq_cmd_details = type { i32 }
%struct.i40e_aq_desc = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@I40E_MAX_PHY_TIMEOUT = common dso_local global i64 0, align 8
@I40E_ERR_PARAM = common dso_local global i64 0, align 8
@i40e_aqc_opc_get_phy_abilities = common dso_local global i32 0, align 4
@I40E_AQ_FLAG_BUF = common dso_local global i64 0, align 8
@I40E_AQ_LARGE_BUF = common dso_local global i64 0, align 8
@I40E_AQ_FLAG_LB = common dso_local global i64 0, align 8
@I40E_AQ_PHY_REPORT_QUALIFIED_MODULES = common dso_local global i32 0, align 4
@I40E_AQ_PHY_REPORT_INITIAL_VALUES = common dso_local global i32 0, align 4
@I40E_ERR_UNKNOWN_PHY = common dso_local global i64 0, align 8
@I40E_ERR_TIMEOUT = common dso_local global i64 0, align 8
@I40E_MAC_XL710 = common dso_local global i64 0, align 8
@I40E_FW_API_VERSION_MAJOR = common dso_local global i64 0, align 8
@I40E_MINOR_VER_GET_LINK_INFO_XL710 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @i40e_aq_get_phy_capabilities(%struct.i40e_hw* %0, i32 %1, i32 %2, %struct.i40e_aq_get_phy_abilities_resp* %3, %struct.i40e_asq_cmd_details* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.i40e_hw*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.i40e_aq_get_phy_abilities_resp*, align 8
  %11 = alloca %struct.i40e_asq_cmd_details*, align 8
  %12 = alloca %struct.i40e_aq_desc, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.i40e_hw* %0, %struct.i40e_hw** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.i40e_aq_get_phy_abilities_resp* %3, %struct.i40e_aq_get_phy_abilities_resp** %10, align 8
  store %struct.i40e_asq_cmd_details* %4, %struct.i40e_asq_cmd_details** %11, align 8
  store i64 16, i64* %14, align 8
  %17 = load i64, i64* @I40E_MAX_PHY_TIMEOUT, align 8
  store i64 %17, i64* %15, align 8
  store i64 0, i64* %16, align 8
  %18 = load %struct.i40e_aq_get_phy_abilities_resp*, %struct.i40e_aq_get_phy_abilities_resp** %10, align 8
  %19 = icmp ne %struct.i40e_aq_get_phy_abilities_resp* %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %5
  %21 = load i64, i64* @I40E_ERR_PARAM, align 8
  store i64 %21, i64* %6, align 8
  br label %146

22:                                               ; preds = %5
  br label %23

23:                                               ; preds = %91, %22
  %24 = load i32, i32* @i40e_aqc_opc_get_phy_abilities, align 4
  %25 = call i32 @i40e_fill_default_direct_cmd_desc(%struct.i40e_aq_desc* %12, i32 %24)
  %26 = load i64, i64* @I40E_AQ_FLAG_BUF, align 8
  %27 = call i32 @cpu_to_le16(i64 %26)
  %28 = getelementptr inbounds %struct.i40e_aq_desc, %struct.i40e_aq_desc* %12, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %29, %27
  store i32 %30, i32* %28, align 4
  %31 = load i64, i64* %14, align 8
  %32 = load i64, i64* @I40E_AQ_LARGE_BUF, align 8
  %33 = icmp sgt i64 %31, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %23
  %35 = load i64, i64* @I40E_AQ_FLAG_LB, align 8
  %36 = call i32 @cpu_to_le16(i64 %35)
  %37 = getelementptr inbounds %struct.i40e_aq_desc, %struct.i40e_aq_desc* %12, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, %36
  store i32 %39, i32* %37, align 4
  br label %40

40:                                               ; preds = %34, %23
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %40
  %44 = load i32, i32* @I40E_AQ_PHY_REPORT_QUALIFIED_MODULES, align 4
  %45 = call i32 @cpu_to_le32(i32 %44)
  %46 = getelementptr inbounds %struct.i40e_aq_desc, %struct.i40e_aq_desc* %12, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %45
  store i32 %50, i32* %48, align 4
  br label %51

51:                                               ; preds = %43, %40
  %52 = load i32, i32* %9, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %51
  %55 = load i32, i32* @I40E_AQ_PHY_REPORT_INITIAL_VALUES, align 4
  %56 = call i32 @cpu_to_le32(i32 %55)
  %57 = getelementptr inbounds %struct.i40e_aq_desc, %struct.i40e_aq_desc* %12, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %60, %56
  store i32 %61, i32* %59, align 4
  br label %62

62:                                               ; preds = %54, %51
  %63 = load %struct.i40e_hw*, %struct.i40e_hw** %7, align 8
  %64 = load %struct.i40e_aq_get_phy_abilities_resp*, %struct.i40e_aq_get_phy_abilities_resp** %10, align 8
  %65 = load i64, i64* %14, align 8
  %66 = load %struct.i40e_asq_cmd_details*, %struct.i40e_asq_cmd_details** %11, align 8
  %67 = call i64 @i40e_asq_send_command(%struct.i40e_hw* %63, %struct.i40e_aq_desc* %12, %struct.i40e_aq_get_phy_abilities_resp* %64, i64 %65, %struct.i40e_asq_cmd_details* %66)
  store i64 %67, i64* %13, align 8
  %68 = load %struct.i40e_hw*, %struct.i40e_hw** %7, align 8
  %69 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  switch i32 %71, label %79 [
    i32 128, label %72
    i32 129, label %74
  ]

72:                                               ; preds = %62
  %73 = load i64, i64* @I40E_ERR_UNKNOWN_PHY, align 8
  store i64 %73, i64* %13, align 8
  br label %80

74:                                               ; preds = %62
  %75 = call i32 @usleep_range(i32 1000, i32 2000)
  %76 = load i64, i64* %16, align 8
  %77 = add nsw i64 %76, 1
  store i64 %77, i64* %16, align 8
  %78 = load i64, i64* @I40E_ERR_TIMEOUT, align 8
  store i64 %78, i64* %13, align 8
  br label %80

79:                                               ; preds = %62
  br label %80

80:                                               ; preds = %79, %74, %72
  br label %81

81:                                               ; preds = %80
  %82 = load %struct.i40e_hw*, %struct.i40e_hw** %7, align 8
  %83 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp eq i32 %85, 129
  br i1 %86, label %87, label %91

87:                                               ; preds = %81
  %88 = load i64, i64* %16, align 8
  %89 = load i64, i64* %15, align 8
  %90 = icmp slt i64 %88, %89
  br label %91

91:                                               ; preds = %87, %81
  %92 = phi i1 [ false, %81 ], [ %90, %87 ]
  br i1 %92, label %23, label %93

93:                                               ; preds = %91
  %94 = load i64, i64* %13, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %93
  %97 = load i64, i64* %13, align 8
  store i64 %97, i64* %6, align 8
  br label %146

98:                                               ; preds = %93
  %99 = load i32, i32* %9, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %144

101:                                              ; preds = %98
  %102 = load %struct.i40e_hw*, %struct.i40e_hw** %7, align 8
  %103 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @I40E_MAC_XL710, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %125

108:                                              ; preds = %101
  %109 = load %struct.i40e_hw*, %struct.i40e_hw** %7, align 8
  %110 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @I40E_FW_API_VERSION_MAJOR, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %125

115:                                              ; preds = %108
  %116 = load %struct.i40e_hw*, %struct.i40e_hw** %7, align 8
  %117 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @I40E_MINOR_VER_GET_LINK_INFO_XL710, align 8
  %121 = icmp sge i64 %119, %120
  br i1 %121, label %122, label %125

122:                                              ; preds = %115
  %123 = load %struct.i40e_hw*, %struct.i40e_hw** %7, align 8
  %124 = call i64 @i40e_aq_get_link_info(%struct.i40e_hw* %123, i32 1, i32* null, i32* null)
  store i64 %124, i64* %13, align 8
  br label %143

125:                                              ; preds = %115, %108, %101
  %126 = load %struct.i40e_aq_get_phy_abilities_resp*, %struct.i40e_aq_get_phy_abilities_resp** %10, align 8
  %127 = getelementptr inbounds %struct.i40e_aq_get_phy_abilities_resp, %struct.i40e_aq_get_phy_abilities_resp* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @le32_to_cpu(i32 %128)
  %130 = load %struct.i40e_hw*, %struct.i40e_hw** %7, align 8
  %131 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 0
  store i32 %129, i32* %132, align 8
  %133 = load %struct.i40e_aq_get_phy_abilities_resp*, %struct.i40e_aq_get_phy_abilities_resp** %10, align 8
  %134 = getelementptr inbounds %struct.i40e_aq_get_phy_abilities_resp, %struct.i40e_aq_get_phy_abilities_resp* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = trunc i64 %135 to i32
  %137 = shl i32 %136, 32
  %138 = load %struct.i40e_hw*, %struct.i40e_hw** %7, align 8
  %139 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = or i32 %141, %137
  store i32 %142, i32* %140, align 8
  br label %143

143:                                              ; preds = %125, %122
  br label %144

144:                                              ; preds = %143, %98
  %145 = load i64, i64* %13, align 8
  store i64 %145, i64* %6, align 8
  br label %146

146:                                              ; preds = %144, %96, %20
  %147 = load i64, i64* %6, align 8
  ret i64 %147
}

declare dso_local i32 @i40e_fill_default_direct_cmd_desc(%struct.i40e_aq_desc*, i32) #1

declare dso_local i32 @cpu_to_le16(i64) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i64 @i40e_asq_send_command(%struct.i40e_hw*, %struct.i40e_aq_desc*, %struct.i40e_aq_get_phy_abilities_resp*, i64, %struct.i40e_asq_cmd_details*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i64 @i40e_aq_get_link_info(%struct.i40e_hw*, i32, i32*, i32*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
