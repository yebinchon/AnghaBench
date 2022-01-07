; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_pf_get_num_tc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_pf_get_num_tc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_pf = type { i32, i64, %struct.i40e_hw, %struct.TYPE_7__** }
%struct.i40e_hw = type { %struct.TYPE_8__, %struct.i40e_dcbx_config }
%struct.TYPE_8__ = type { i64 }
%struct.i40e_dcbx_config = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@I40E_FLAG_TC_MQPRIO = common dso_local global i32 0, align 4
@I40E_FLAG_DCB_ENABLED = common dso_local global i32 0, align 4
@I40E_FLAG_MFP_ENABLED = common dso_local global i32 0, align 4
@I40E_MAX_TRAFFIC_CLASS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40e_pf*)* @i40e_pf_get_num_tc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_pf_get_num_tc(%struct.i40e_pf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i40e_pf*, align 8
  %4 = alloca %struct.i40e_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.i40e_dcbx_config*, align 8
  store %struct.i40e_pf* %0, %struct.i40e_pf** %3, align 8
  %9 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %10 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %9, i32 0, i32 2
  store %struct.i40e_hw* %10, %struct.i40e_hw** %4, align 8
  store i32 1, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %11 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %12 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %11, i32 0, i32 1
  store %struct.i40e_dcbx_config* %12, %struct.i40e_dcbx_config** %8, align 8
  %13 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %14 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @I40E_FLAG_TC_MQPRIO, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %32

19:                                               ; preds = %1
  %20 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %21 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %20, i32 0, i32 3
  %22 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %21, align 8
  %23 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %24 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %22, i64 %25
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %2, align 4
  br label %81

32:                                               ; preds = %1
  %33 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %34 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @I40E_FLAG_DCB_ENABLED, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %32
  store i32 1, i32* %2, align 4
  br label %81

40:                                               ; preds = %32
  %41 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %42 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @I40E_FLAG_MFP_ENABLED, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %40
  %48 = load %struct.i40e_dcbx_config*, %struct.i40e_dcbx_config** %8, align 8
  %49 = call i32 @i40e_dcb_get_num_tc(%struct.i40e_dcbx_config* %48)
  store i32 %49, i32* %2, align 4
  br label %81

50:                                               ; preds = %40
  %51 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %52 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %50
  %58 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %59 = call i32 @i40e_get_iscsi_tc_map(%struct.i40e_pf* %58)
  store i32 %59, i32* %6, align 4
  br label %61

60:                                               ; preds = %50
  store i32 1, i32* %2, align 4
  br label %81

61:                                               ; preds = %57
  store i32 0, i32* %5, align 4
  br label %62

62:                                               ; preds = %76, %61
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* @I40E_MAX_TRAFFIC_CLASS, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %79

66:                                               ; preds = %62
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* %5, align 4
  %69 = call i32 @BIT(i32 %68)
  %70 = and i32 %67, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %66
  %73 = load i32, i32* %7, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %7, align 4
  br label %75

75:                                               ; preds = %72, %66
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %5, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %5, align 4
  br label %62

79:                                               ; preds = %62
  %80 = load i32, i32* %7, align 4
  store i32 %80, i32* %2, align 4
  br label %81

81:                                               ; preds = %79, %60, %47, %39, %19
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local i32 @i40e_dcb_get_num_tc(%struct.i40e_dcbx_config*) #1

declare dso_local i32 @i40e_get_iscsi_tc_map(%struct.i40e_pf*) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
