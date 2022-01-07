; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_sp.c_bnx2x_config_vlan_mac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_sp.c_bnx2x_config_vlan_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_vlan_mac_ramrod_params = type { i64, %struct.bnx2x_vlan_mac_obj* }
%struct.bnx2x_vlan_mac_obj = type { i32, %struct.bnx2x_raw_obj }
%struct.bnx2x_raw_obj = type { i32 (%struct.bnx2x.0*, %struct.bnx2x_raw_obj*)*, i32 (%struct.bnx2x_raw_obj*)* }
%struct.bnx2x.0 = type opaque

@RAMROD_CONT = common dso_local global i32 0, align 4
@RAMROD_DRV_CLR_ONLY = common dso_local global i32 0, align 4
@BNX2X_MSG_SP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"RAMROD_DRV_CLR_ONLY requested: clearing a pending bit.\0A\00", align 1
@RAMROD_EXEC = common dso_local global i32 0, align 4
@RAMROD_COMP_WAIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnx2x_config_vlan_mac(%struct.bnx2x* %0, %struct.bnx2x_vlan_mac_ramrod_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bnx2x*, align 8
  %5 = alloca %struct.bnx2x_vlan_mac_ramrod_params*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bnx2x_vlan_mac_obj*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.bnx2x_raw_obj*, align 8
  %11 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %4, align 8
  store %struct.bnx2x_vlan_mac_ramrod_params* %1, %struct.bnx2x_vlan_mac_ramrod_params** %5, align 8
  store i32 0, i32* %6, align 4
  %12 = load %struct.bnx2x_vlan_mac_ramrod_params*, %struct.bnx2x_vlan_mac_ramrod_params** %5, align 8
  %13 = getelementptr inbounds %struct.bnx2x_vlan_mac_ramrod_params, %struct.bnx2x_vlan_mac_ramrod_params* %12, i32 0, i32 1
  %14 = load %struct.bnx2x_vlan_mac_obj*, %struct.bnx2x_vlan_mac_obj** %13, align 8
  store %struct.bnx2x_vlan_mac_obj* %14, %struct.bnx2x_vlan_mac_obj** %7, align 8
  %15 = load %struct.bnx2x_vlan_mac_ramrod_params*, %struct.bnx2x_vlan_mac_ramrod_params** %5, align 8
  %16 = getelementptr inbounds %struct.bnx2x_vlan_mac_ramrod_params, %struct.bnx2x_vlan_mac_ramrod_params* %15, i32 0, i32 0
  store i64* %16, i64** %8, align 8
  %17 = load i32, i32* @RAMROD_CONT, align 4
  %18 = load i64*, i64** %8, align 8
  %19 = call i32 @test_bit(i32 %17, i64* %18)
  store i32 %19, i32* %9, align 4
  %20 = load %struct.bnx2x_vlan_mac_obj*, %struct.bnx2x_vlan_mac_obj** %7, align 8
  %21 = getelementptr inbounds %struct.bnx2x_vlan_mac_obj, %struct.bnx2x_vlan_mac_obj* %20, i32 0, i32 1
  store %struct.bnx2x_raw_obj* %21, %struct.bnx2x_raw_obj** %10, align 8
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %33, label %24

24:                                               ; preds = %2
  %25 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %26 = load %struct.bnx2x_vlan_mac_ramrod_params*, %struct.bnx2x_vlan_mac_ramrod_params** %5, align 8
  %27 = call i32 @bnx2x_vlan_mac_push_new_cmd(%struct.bnx2x* %25, %struct.bnx2x_vlan_mac_ramrod_params* %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i32, i32* %6, align 4
  store i32 %31, i32* %3, align 4
  br label %128

32:                                               ; preds = %24
  br label %33

33:                                               ; preds = %32, %2
  %34 = load %struct.bnx2x_vlan_mac_obj*, %struct.bnx2x_vlan_mac_obj** %7, align 8
  %35 = getelementptr inbounds %struct.bnx2x_vlan_mac_obj, %struct.bnx2x_vlan_mac_obj* %34, i32 0, i32 0
  %36 = call i32 @bnx2x_exe_queue_empty(i32* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %33
  store i32 1, i32* %6, align 4
  br label %39

39:                                               ; preds = %38, %33
  %40 = load i32, i32* @RAMROD_DRV_CLR_ONLY, align 4
  %41 = load i64*, i64** %8, align 8
  %42 = call i32 @test_bit(i32 %40, i64* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %39
  %45 = load i32, i32* @BNX2X_MSG_SP, align 4
  %46 = call i32 @DP(i32 %45, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  %47 = load %struct.bnx2x_raw_obj*, %struct.bnx2x_raw_obj** %10, align 8
  %48 = getelementptr inbounds %struct.bnx2x_raw_obj, %struct.bnx2x_raw_obj* %47, i32 0, i32 1
  %49 = load i32 (%struct.bnx2x_raw_obj*)*, i32 (%struct.bnx2x_raw_obj*)** %48, align 8
  %50 = load %struct.bnx2x_raw_obj*, %struct.bnx2x_raw_obj** %10, align 8
  %51 = call i32 %49(%struct.bnx2x_raw_obj* %50)
  br label %52

52:                                               ; preds = %44, %39
  %53 = load i32, i32* %9, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %65, label %55

55:                                               ; preds = %52
  %56 = load i32, i32* @RAMROD_EXEC, align 4
  %57 = load i64*, i64** %8, align 8
  %58 = call i32 @test_bit(i32 %56, i64* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %65, label %60

60:                                               ; preds = %55
  %61 = load i32, i32* @RAMROD_COMP_WAIT, align 4
  %62 = load i64*, i64** %8, align 8
  %63 = call i32 @test_bit(i32 %61, i64* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %78

65:                                               ; preds = %60, %55, %52
  %66 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %67 = load %struct.bnx2x_vlan_mac_ramrod_params*, %struct.bnx2x_vlan_mac_ramrod_params** %5, align 8
  %68 = getelementptr inbounds %struct.bnx2x_vlan_mac_ramrod_params, %struct.bnx2x_vlan_mac_ramrod_params* %67, i32 0, i32 1
  %69 = load %struct.bnx2x_vlan_mac_obj*, %struct.bnx2x_vlan_mac_obj** %68, align 8
  %70 = load %struct.bnx2x_vlan_mac_ramrod_params*, %struct.bnx2x_vlan_mac_ramrod_params** %5, align 8
  %71 = getelementptr inbounds %struct.bnx2x_vlan_mac_ramrod_params, %struct.bnx2x_vlan_mac_ramrod_params* %70, i32 0, i32 0
  %72 = call i32 @__bnx2x_vlan_mac_execute_step(%struct.bnx2x* %66, %struct.bnx2x_vlan_mac_obj* %69, i64* %71)
  store i32 %72, i32* %6, align 4
  %73 = load i32, i32* %6, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %65
  %76 = load i32, i32* %6, align 4
  store i32 %76, i32* %3, align 4
  br label %128

77:                                               ; preds = %65
  br label %78

78:                                               ; preds = %77, %60
  %79 = load i32, i32* @RAMROD_COMP_WAIT, align 4
  %80 = load %struct.bnx2x_vlan_mac_ramrod_params*, %struct.bnx2x_vlan_mac_ramrod_params** %5, align 8
  %81 = getelementptr inbounds %struct.bnx2x_vlan_mac_ramrod_params, %struct.bnx2x_vlan_mac_ramrod_params* %80, i32 0, i32 0
  %82 = call i32 @test_bit(i32 %79, i64* %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %126

84:                                               ; preds = %78
  %85 = load %struct.bnx2x_vlan_mac_obj*, %struct.bnx2x_vlan_mac_obj** %7, align 8
  %86 = getelementptr inbounds %struct.bnx2x_vlan_mac_obj, %struct.bnx2x_vlan_mac_obj* %85, i32 0, i32 0
  %87 = call i32 @bnx2x_exe_queue_length(i32* %86)
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %11, align 4
  br label %89

89:                                               ; preds = %124, %84
  %90 = load %struct.bnx2x_vlan_mac_obj*, %struct.bnx2x_vlan_mac_obj** %7, align 8
  %91 = getelementptr inbounds %struct.bnx2x_vlan_mac_obj, %struct.bnx2x_vlan_mac_obj* %90, i32 0, i32 0
  %92 = call i32 @bnx2x_exe_queue_empty(i32* %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %98, label %94

94:                                               ; preds = %89
  %95 = load i32, i32* %11, align 4
  %96 = add nsw i32 %95, -1
  store i32 %96, i32* %11, align 4
  %97 = icmp ne i32 %95, 0
  br label %98

98:                                               ; preds = %94, %89
  %99 = phi i1 [ false, %89 ], [ %97, %94 ]
  br i1 %99, label %100, label %125

100:                                              ; preds = %98
  %101 = load %struct.bnx2x_raw_obj*, %struct.bnx2x_raw_obj** %10, align 8
  %102 = getelementptr inbounds %struct.bnx2x_raw_obj, %struct.bnx2x_raw_obj* %101, i32 0, i32 0
  %103 = load i32 (%struct.bnx2x.0*, %struct.bnx2x_raw_obj*)*, i32 (%struct.bnx2x.0*, %struct.bnx2x_raw_obj*)** %102, align 8
  %104 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %105 = bitcast %struct.bnx2x* %104 to %struct.bnx2x.0*
  %106 = load %struct.bnx2x_raw_obj*, %struct.bnx2x_raw_obj** %10, align 8
  %107 = call i32 %103(%struct.bnx2x.0* %105, %struct.bnx2x_raw_obj* %106)
  store i32 %107, i32* %6, align 4
  %108 = load i32, i32* %6, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %100
  %111 = load i32, i32* %6, align 4
  store i32 %111, i32* %3, align 4
  br label %128

112:                                              ; preds = %100
  %113 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %114 = load %struct.bnx2x_vlan_mac_ramrod_params*, %struct.bnx2x_vlan_mac_ramrod_params** %5, align 8
  %115 = getelementptr inbounds %struct.bnx2x_vlan_mac_ramrod_params, %struct.bnx2x_vlan_mac_ramrod_params* %114, i32 0, i32 1
  %116 = load %struct.bnx2x_vlan_mac_obj*, %struct.bnx2x_vlan_mac_obj** %115, align 8
  %117 = load %struct.bnx2x_vlan_mac_ramrod_params*, %struct.bnx2x_vlan_mac_ramrod_params** %5, align 8
  %118 = getelementptr inbounds %struct.bnx2x_vlan_mac_ramrod_params, %struct.bnx2x_vlan_mac_ramrod_params* %117, i32 0, i32 0
  %119 = call i32 @__bnx2x_vlan_mac_execute_step(%struct.bnx2x* %113, %struct.bnx2x_vlan_mac_obj* %116, i64* %118)
  store i32 %119, i32* %6, align 4
  %120 = load i32, i32* %6, align 4
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %112
  %123 = load i32, i32* %6, align 4
  store i32 %123, i32* %3, align 4
  br label %128

124:                                              ; preds = %112
  br label %89

125:                                              ; preds = %98
  store i32 0, i32* %3, align 4
  br label %128

126:                                              ; preds = %78
  %127 = load i32, i32* %6, align 4
  store i32 %127, i32* %3, align 4
  br label %128

128:                                              ; preds = %126, %125, %122, %110, %75, %30
  %129 = load i32, i32* %3, align 4
  ret i32 %129
}

declare dso_local i32 @test_bit(i32, i64*) #1

declare dso_local i32 @bnx2x_vlan_mac_push_new_cmd(%struct.bnx2x*, %struct.bnx2x_vlan_mac_ramrod_params*) #1

declare dso_local i32 @bnx2x_exe_queue_empty(i32*) #1

declare dso_local i32 @DP(i32, i8*) #1

declare dso_local i32 @__bnx2x_vlan_mac_execute_step(%struct.bnx2x*, %struct.bnx2x_vlan_mac_obj*, i64*) #1

declare dso_local i32 @bnx2x_exe_queue_length(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
