; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_dev.c_qed_get_hw_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_dev.c_qed_get_hw_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.TYPE_6__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i32, i32, i32 }
%struct.TYPE_4__ = type { i64, i32, i32, i32, i32, i32, i32 }
%struct.qed_ptt = type { i32 }

@QED_MCP_VLAN_UNSET = common dso_local global i64 0, align 8
@NUM_PHYS_TCS_4PORT_K2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_hwfn*, %struct.qed_ptt*, i32)* @qed_get_hw_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_get_hw_info(%struct.qed_hwfn* %0, %struct.qed_ptt* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qed_hwfn*, align 8
  %6 = alloca %struct.qed_ptt*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %5, align 8
  store %struct.qed_ptt* %1, %struct.qed_ptt** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %11 = call i64 @IS_LEAD_HWFN(%struct.qed_hwfn* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %3
  %14 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %15 = call i32 @qed_iov_hw_info(%struct.qed_hwfn* %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = load i32, i32* %8, align 4
  store i32 %19, i32* %4, align 4
  br label %149

20:                                               ; preds = %13
  br label %21

21:                                               ; preds = %20, %3
  %22 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %23 = call i64 @IS_LEAD_HWFN(%struct.qed_hwfn* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %27 = load %struct.qed_ptt*, %struct.qed_ptt** %6, align 8
  %28 = call i32 @qed_hw_info_port_num(%struct.qed_hwfn* %26, %struct.qed_ptt* %27)
  br label %29

29:                                               ; preds = %25, %21
  %30 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %31 = load %struct.qed_ptt*, %struct.qed_ptt** %6, align 8
  %32 = call i32 @qed_mcp_get_capabilities(%struct.qed_hwfn* %30, %struct.qed_ptt* %31)
  %33 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %34 = load %struct.qed_ptt*, %struct.qed_ptt** %6, align 8
  %35 = call i32 @qed_hw_get_nvm_info(%struct.qed_hwfn* %33, %struct.qed_ptt* %34)
  %36 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %37 = load %struct.qed_ptt*, %struct.qed_ptt** %6, align 8
  %38 = call i32 @qed_int_igu_read_cam(%struct.qed_hwfn* %36, %struct.qed_ptt* %37)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %29
  %42 = load i32, i32* %8, align 4
  store i32 %42, i32* %4, align 4
  br label %149

43:                                               ; preds = %29
  %44 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %45 = call i64 @qed_mcp_is_init(%struct.qed_hwfn* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %59

47:                                               ; preds = %43
  %48 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %49 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 6
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %53 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %52, i32 0, i32 0
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @ether_addr_copy(i32 %51, i32 %57)
  br label %65

59:                                               ; preds = %43
  %60 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %61 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 6
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @eth_random_addr(i32 %63)
  br label %65

65:                                               ; preds = %59, %47
  %66 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %67 = call i64 @qed_mcp_is_init(%struct.qed_hwfn* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %98

69:                                               ; preds = %65
  %70 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %71 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %70, i32 0, i32 0
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @QED_MCP_VLAN_UNSET, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %78, label %88

78:                                               ; preds = %69
  %79 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %80 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %79, i32 0, i32 0
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %86 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  store i64 %84, i64* %87, align 8
  br label %88

88:                                               ; preds = %78, %69
  %89 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %90 = load %struct.qed_ptt*, %struct.qed_ptt** %6, align 8
  %91 = call i32 @qed_mcp_cmd_port_init(%struct.qed_hwfn* %89, %struct.qed_ptt* %90)
  %92 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %93 = load %struct.qed_ptt*, %struct.qed_ptt** %6, align 8
  %94 = call i32 @qed_get_eee_caps(%struct.qed_hwfn* %92, %struct.qed_ptt* %93)
  %95 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %96 = load %struct.qed_ptt*, %struct.qed_ptt** %6, align 8
  %97 = call i32 @qed_mcp_read_ufp_config(%struct.qed_hwfn* %95, %struct.qed_ptt* %96)
  br label %98

98:                                               ; preds = %88, %65
  %99 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %100 = call i64 @qed_mcp_is_init(%struct.qed_hwfn* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %113

102:                                              ; preds = %98
  %103 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %104 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %103, i32 0, i32 0
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  store i32 %108, i32* %9, align 4
  %109 = load i32, i32* %9, align 4
  %110 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %111 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 1
  store i32 %109, i32* %112, align 8
  br label %113

113:                                              ; preds = %102, %98
  %114 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %115 = call i64 @QED_IS_ROCE_PERSONALITY(%struct.qed_hwfn* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %113
  %118 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %119 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 2
  store i32 1, i32* %120, align 4
  br label %121

121:                                              ; preds = %117, %113
  %122 = load i32, i32* @NUM_PHYS_TCS_4PORT_K2, align 4
  %123 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %124 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 5
  store i32 %122, i32* %125, align 8
  %126 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %127 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 3
  store i32 1, i32* %128, align 8
  %129 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %130 = load %struct.qed_ptt*, %struct.qed_ptt** %6, align 8
  %131 = call i32 @qed_get_num_funcs(%struct.qed_hwfn* %129, %struct.qed_ptt* %130)
  %132 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %133 = call i64 @qed_mcp_is_init(%struct.qed_hwfn* %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %145

135:                                              ; preds = %121
  %136 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %137 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %136, i32 0, i32 0
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %143 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 4
  store i32 %141, i32* %144, align 4
  br label %145

145:                                              ; preds = %135, %121
  %146 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %147 = load %struct.qed_ptt*, %struct.qed_ptt** %6, align 8
  %148 = call i32 @qed_hw_get_resc(%struct.qed_hwfn* %146, %struct.qed_ptt* %147)
  store i32 %148, i32* %4, align 4
  br label %149

149:                                              ; preds = %145, %41, %18
  %150 = load i32, i32* %4, align 4
  ret i32 %150
}

declare dso_local i64 @IS_LEAD_HWFN(%struct.qed_hwfn*) #1

declare dso_local i32 @qed_iov_hw_info(%struct.qed_hwfn*) #1

declare dso_local i32 @qed_hw_info_port_num(%struct.qed_hwfn*, %struct.qed_ptt*) #1

declare dso_local i32 @qed_mcp_get_capabilities(%struct.qed_hwfn*, %struct.qed_ptt*) #1

declare dso_local i32 @qed_hw_get_nvm_info(%struct.qed_hwfn*, %struct.qed_ptt*) #1

declare dso_local i32 @qed_int_igu_read_cam(%struct.qed_hwfn*, %struct.qed_ptt*) #1

declare dso_local i64 @qed_mcp_is_init(%struct.qed_hwfn*) #1

declare dso_local i32 @ether_addr_copy(i32, i32) #1

declare dso_local i32 @eth_random_addr(i32) #1

declare dso_local i32 @qed_mcp_cmd_port_init(%struct.qed_hwfn*, %struct.qed_ptt*) #1

declare dso_local i32 @qed_get_eee_caps(%struct.qed_hwfn*, %struct.qed_ptt*) #1

declare dso_local i32 @qed_mcp_read_ufp_config(%struct.qed_hwfn*, %struct.qed_ptt*) #1

declare dso_local i64 @QED_IS_ROCE_PERSONALITY(%struct.qed_hwfn*) #1

declare dso_local i32 @qed_get_num_funcs(%struct.qed_hwfn*, %struct.qed_ptt*) #1

declare dso_local i32 @qed_hw_get_resc(%struct.qed_hwfn*, %struct.qed_ptt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
