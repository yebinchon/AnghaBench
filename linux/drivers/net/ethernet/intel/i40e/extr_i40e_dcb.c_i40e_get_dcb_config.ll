; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_dcb.c_i40e_get_dcb_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_dcb.c_i40e_get_dcb_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { %struct.TYPE_6__, i32, i32, %struct.TYPE_7__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32, i64 }
%struct.TYPE_7__ = type { i32, i8* }
%struct.TYPE_5__ = type { i64 }
%struct.i40e_aqc_get_cee_dcb_cfg_resp = type { i32 }
%struct.i40e_aqc_get_cee_dcb_cfg_v1_resp = type { i32 }

@I40E_MAC_XL710 = common dso_local global i64 0, align 8
@I40E_DCBX_MODE_CEE = common dso_local global i8* null, align 8
@I40E_AQ_RC_ENOENT = common dso_local global i64 0, align 8
@I40E_AQ_LLDP_MIB_LOCAL = common dso_local global i32 0, align 4
@I40E_AQ_LLDP_MIB_REMOTE = common dso_local global i32 0, align 4
@I40E_AQ_LLDP_BRIDGE_TYPE_NEAREST_BRIDGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @i40e_get_dcb_config(%struct.i40e_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.i40e_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.i40e_aqc_get_cee_dcb_cfg_resp, align 4
  %6 = alloca %struct.i40e_aqc_get_cee_dcb_cfg_v1_resp, align 4
  store %struct.i40e_hw* %0, %struct.i40e_hw** %3, align 8
  store i64 0, i64* %4, align 8
  %7 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %8 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %7, i32 0, i32 4
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @I40E_MAC_XL710, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %34

13:                                               ; preds = %1
  %14 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %15 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp eq i32 %17, 4
  br i1 %18, label %19, label %25

19:                                               ; preds = %13
  %20 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %21 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp slt i32 %23, 33
  br i1 %24, label %31, label %25

25:                                               ; preds = %19, %13
  %26 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %27 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %29, 4
  br i1 %30, label %31, label %34

31:                                               ; preds = %25, %19
  %32 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %33 = call i64 @i40e_get_ieee_dcb_config(%struct.i40e_hw* %32)
  store i64 %33, i64* %2, align 8
  br label %135

34:                                               ; preds = %25, %1
  %35 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %36 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %35, i32 0, i32 4
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @I40E_MAC_XL710, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %73

41:                                               ; preds = %34
  %42 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %43 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp eq i32 %45, 4
  br i1 %46, label %47, label %73

47:                                               ; preds = %41
  %48 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %49 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = icmp eq i32 %51, 33
  br i1 %52, label %53, label %73

53:                                               ; preds = %47
  %54 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %55 = call i64 @i40e_aq_get_cee_dcb_config(%struct.i40e_hw* %54, %struct.i40e_aqc_get_cee_dcb_cfg_v1_resp* %6, i32 4, i32* null)
  store i64 %55, i64* %4, align 8
  %56 = load i64, i64* %4, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %72, label %58

58:                                               ; preds = %53
  %59 = load i8*, i8** @I40E_DCBX_MODE_CEE, align 8
  %60 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %61 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %60, i32 0, i32 3
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 1
  store i8* %59, i8** %62, align 8
  %63 = getelementptr inbounds %struct.i40e_aqc_get_cee_dcb_cfg_v1_resp, %struct.i40e_aqc_get_cee_dcb_cfg_v1_resp* %6, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @le16_to_cpu(i32 %64)
  %66 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %67 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %66, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  store i32 %65, i32* %68, align 8
  %69 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %70 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %69, i32 0, i32 3
  %71 = call i32 @i40e_cee_to_dcb_v1_config(%struct.i40e_aqc_get_cee_dcb_cfg_v1_resp* %6, %struct.TYPE_7__* %70)
  br label %72

72:                                               ; preds = %58, %53
  br label %95

73:                                               ; preds = %47, %41, %34
  %74 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %75 = bitcast %struct.i40e_aqc_get_cee_dcb_cfg_resp* %5 to %struct.i40e_aqc_get_cee_dcb_cfg_v1_resp*
  %76 = call i64 @i40e_aq_get_cee_dcb_config(%struct.i40e_hw* %74, %struct.i40e_aqc_get_cee_dcb_cfg_v1_resp* %75, i32 4, i32* null)
  store i64 %76, i64* %4, align 8
  %77 = load i64, i64* %4, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %94, label %79

79:                                               ; preds = %73
  %80 = load i8*, i8** @I40E_DCBX_MODE_CEE, align 8
  %81 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %82 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %81, i32 0, i32 3
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 1
  store i8* %80, i8** %83, align 8
  %84 = getelementptr inbounds %struct.i40e_aqc_get_cee_dcb_cfg_resp, %struct.i40e_aqc_get_cee_dcb_cfg_resp* %5, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @le32_to_cpu(i32 %85)
  %87 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %88 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %87, i32 0, i32 3
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  store i32 %86, i32* %89, align 8
  %90 = bitcast %struct.i40e_aqc_get_cee_dcb_cfg_resp* %5 to %struct.i40e_aqc_get_cee_dcb_cfg_v1_resp*
  %91 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %92 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %91, i32 0, i32 3
  %93 = call i32 @i40e_cee_to_dcb_config(%struct.i40e_aqc_get_cee_dcb_cfg_v1_resp* %90, %struct.TYPE_7__* %92)
  br label %94

94:                                               ; preds = %79, %73
  br label %95

95:                                               ; preds = %94, %72
  %96 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %97 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @I40E_AQ_RC_ENOENT, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %105

102:                                              ; preds = %95
  %103 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %104 = call i64 @i40e_get_ieee_dcb_config(%struct.i40e_hw* %103)
  store i64 %104, i64* %2, align 8
  br label %135

105:                                              ; preds = %95
  %106 = load i64, i64* %4, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %105
  br label %133

109:                                              ; preds = %105
  %110 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %111 = load i32, i32* @I40E_AQ_LLDP_MIB_LOCAL, align 4
  %112 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %113 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %112, i32 0, i32 2
  %114 = call i64 @i40e_aq_get_dcb_config(%struct.i40e_hw* %110, i32 %111, i32 0, i32* %113)
  store i64 %114, i64* %4, align 8
  %115 = load i64, i64* %4, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %109
  br label %133

118:                                              ; preds = %109
  %119 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %120 = load i32, i32* @I40E_AQ_LLDP_MIB_REMOTE, align 4
  %121 = load i32, i32* @I40E_AQ_LLDP_BRIDGE_TYPE_NEAREST_BRIDGE, align 4
  %122 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %123 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %122, i32 0, i32 1
  %124 = call i64 @i40e_aq_get_dcb_config(%struct.i40e_hw* %119, i32 %120, i32 %121, i32* %123)
  store i64 %124, i64* %4, align 8
  %125 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %126 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 2
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @I40E_AQ_RC_ENOENT, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %131, label %132

131:                                              ; preds = %118
  store i64 0, i64* %4, align 8
  br label %132

132:                                              ; preds = %131, %118
  br label %133

133:                                              ; preds = %132, %117, %108
  %134 = load i64, i64* %4, align 8
  store i64 %134, i64* %2, align 8
  br label %135

135:                                              ; preds = %133, %102, %31
  %136 = load i64, i64* %2, align 8
  ret i64 %136
}

declare dso_local i64 @i40e_get_ieee_dcb_config(%struct.i40e_hw*) #1

declare dso_local i64 @i40e_aq_get_cee_dcb_config(%struct.i40e_hw*, %struct.i40e_aqc_get_cee_dcb_cfg_v1_resp*, i32, i32*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @i40e_cee_to_dcb_v1_config(%struct.i40e_aqc_get_cee_dcb_cfg_v1_resp*, %struct.TYPE_7__*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @i40e_cee_to_dcb_config(%struct.i40e_aqc_get_cee_dcb_cfg_v1_resp*, %struct.TYPE_7__*) #1

declare dso_local i64 @i40e_aq_get_dcb_config(%struct.i40e_hw*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
