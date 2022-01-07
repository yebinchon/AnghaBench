; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_dcb.c_i40e_init_dcb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_dcb.c_i40e_init_dcb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { i32, i32, i64, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 }
%struct.i40e_lldp_variables = type { i32 }

@I40E_NOT_SUPPORTED = common dso_local global i64 0, align 8
@I40E_HW_FLAG_FW_LLDP_PERSISTENT = common dso_local global i32 0, align 4
@I40E_MAC_XL710 = common dso_local global i64 0, align 8
@I40E_LLDP_CURRENT_STATUS_XL710_OFFSET = common dso_local global i32 0, align 4
@I40E_MAC_X722 = common dso_local global i64 0, align 8
@I40E_LLDP_CURRENT_STATUS_X722_OFFSET = common dso_local global i32 0, align 4
@I40E_SR_EMP_SR_SETTINGS_PTR = common dso_local global i32 0, align 4
@I40E_ERR_NOT_READY = common dso_local global i64 0, align 8
@I40E_DCBX_STATUS_DISABLED = common dso_local global i64 0, align 8
@I40E_DCBX_STATUS_DONE = common dso_local global i64 0, align 8
@I40E_DCBX_STATUS_IN_PROGRESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @i40e_init_dcb(%struct.i40e_hw* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.i40e_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.i40e_lldp_variables, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.i40e_hw* %0, %struct.i40e_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 0, i64* %6, align 8
  store i32 0, i32* %8, align 4
  %10 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %11 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %10, i32 0, i32 4
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %2
  %16 = load i64, i64* @I40E_NOT_SUPPORTED, align 8
  store i64 %16, i64* %3, align 8
  br label %122

17:                                               ; preds = %2
  %18 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %19 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @I40E_HW_FLAG_FW_LLDP_PERSISTENT, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %51

24:                                               ; preds = %17
  store i32 0, i32* %9, align 4
  %25 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %26 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @I40E_MAC_XL710, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = load i32, i32* @I40E_LLDP_CURRENT_STATUS_XL710_OFFSET, align 4
  store i32 %32, i32* %9, align 4
  br label %45

33:                                               ; preds = %24
  %34 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %35 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @I40E_MAC_X722, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %33
  %41 = load i32, i32* @I40E_LLDP_CURRENT_STATUS_X722_OFFSET, align 4
  store i32 %41, i32* %9, align 4
  br label %44

42:                                               ; preds = %33
  %43 = load i64, i64* @I40E_NOT_SUPPORTED, align 8
  store i64 %43, i64* %3, align 8
  br label %122

44:                                               ; preds = %40
  br label %45

45:                                               ; preds = %44, %31
  %46 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %47 = load i32, i32* @I40E_SR_EMP_SR_SETTINGS_PTR, align 4
  %48 = load i32, i32* %9, align 4
  %49 = getelementptr inbounds %struct.i40e_lldp_variables, %struct.i40e_lldp_variables* %7, i32 0, i32 0
  %50 = call i64 @i40e_read_nvm_module_data(%struct.i40e_hw* %46, i32 %47, i32 %48, i32 1, i32* %49)
  store i64 %50, i64* %6, align 8
  br label %54

51:                                               ; preds = %17
  %52 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %53 = call i64 @i40e_read_lldp_cfg(%struct.i40e_hw* %52, %struct.i40e_lldp_variables* %7)
  store i64 %53, i64* %6, align 8
  br label %54

54:                                               ; preds = %51, %45
  %55 = load i64, i64* %6, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  %58 = load i64, i64* @I40E_ERR_NOT_READY, align 8
  store i64 %58, i64* %3, align 8
  br label %122

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.i40e_lldp_variables, %struct.i40e_lldp_variables* %7, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %63 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = mul nsw i32 %64, 4
  %66 = ashr i32 %61, %65
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* %8, align 4
  %68 = and i32 %67, 15
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %8, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %76, label %71

71:                                               ; preds = %59
  %72 = load i64, i64* @I40E_DCBX_STATUS_DISABLED, align 8
  %73 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %74 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %73, i32 0, i32 2
  store i64 %72, i64* %74, align 8
  %75 = load i64, i64* @I40E_ERR_NOT_READY, align 8
  store i64 %75, i64* %3, align 8
  br label %122

76:                                               ; preds = %59
  %77 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %78 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %79 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %78, i32 0, i32 2
  %80 = call i64 @i40e_get_dcbx_status(%struct.i40e_hw* %77, i64* %79)
  store i64 %80, i64* %6, align 8
  %81 = load i64, i64* %6, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %76
  %84 = load i64, i64* %6, align 8
  store i64 %84, i64* %3, align 8
  br label %122

85:                                               ; preds = %76
  %86 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %87 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @I40E_DCBX_STATUS_DONE, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %97, label %91

91:                                               ; preds = %85
  %92 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %93 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @I40E_DCBX_STATUS_IN_PROGRESS, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %105

97:                                               ; preds = %91, %85
  %98 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %99 = call i64 @i40e_get_dcb_config(%struct.i40e_hw* %98)
  store i64 %99, i64* %6, align 8
  %100 = load i64, i64* %6, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %97
  %103 = load i64, i64* %6, align 8
  store i64 %103, i64* %3, align 8
  br label %122

104:                                              ; preds = %97
  br label %114

105:                                              ; preds = %91
  %106 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %107 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @I40E_DCBX_STATUS_DISABLED, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %113

111:                                              ; preds = %105
  %112 = load i64, i64* @I40E_ERR_NOT_READY, align 8
  store i64 %112, i64* %3, align 8
  br label %122

113:                                              ; preds = %105
  br label %114

114:                                              ; preds = %113, %104
  %115 = load i32, i32* %5, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %114
  %118 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %119 = call i64 @i40e_aq_cfg_lldp_mib_change_event(%struct.i40e_hw* %118, i32 1, i32* null)
  store i64 %119, i64* %6, align 8
  br label %120

120:                                              ; preds = %117, %114
  %121 = load i64, i64* %6, align 8
  store i64 %121, i64* %3, align 8
  br label %122

122:                                              ; preds = %120, %111, %102, %83, %71, %57, %42, %15
  %123 = load i64, i64* %3, align 8
  ret i64 %123
}

declare dso_local i64 @i40e_read_nvm_module_data(%struct.i40e_hw*, i32, i32, i32, i32*) #1

declare dso_local i64 @i40e_read_lldp_cfg(%struct.i40e_hw*, %struct.i40e_lldp_variables*) #1

declare dso_local i64 @i40e_get_dcbx_status(%struct.i40e_hw*, i64*) #1

declare dso_local i64 @i40e_get_dcb_config(%struct.i40e_hw*) #1

declare dso_local i64 @i40e_aq_cfg_lldp_mib_change_event(%struct.i40e_hw*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
