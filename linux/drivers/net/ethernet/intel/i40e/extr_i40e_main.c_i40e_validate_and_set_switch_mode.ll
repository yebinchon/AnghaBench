; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_validate_and_set_switch_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_validate_and_set_switch_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_vsi = type { %struct.i40e_pf* }
%struct.i40e_pf = type { %struct.TYPE_5__*, i32, i32, %struct.i40e_hw }
%struct.TYPE_5__ = type { i32 }
%struct.i40e_hw = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_4__ = type { i32 }

@i40e_aqc_opc_list_dev_capabilities = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@I40E_SWITCH_MODE_MASK = common dso_local global i64 0, align 8
@I40E_CLOUD_FILTER_MODE1 = common dso_local global i64 0, align 8
@I40E_CLOUD_FILTER_MODE2 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [80 x i8] c"Invalid switch_mode (%d), only non-tunneled mode for cloud filter is supported\0A\00", align 1
@I40E_AQ_SET_SWITCH_BIT7_VALID = common dso_local global i32 0, align 4
@I40E_AQ_SET_SWITCH_L4_TYPE_TCP = common dso_local global i32 0, align 4
@I40E_AQ_SET_SWITCH_MODE_NON_TUNNEL = common dso_local global i32 0, align 4
@I40E_AQ_RC_ESRCH = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [51 x i8] c"couldn't set switch config bits, err %s aq_err %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40e_vsi*)* @i40e_validate_and_set_switch_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_validate_and_set_switch_mode(%struct.i40e_vsi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i40e_vsi*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.i40e_pf*, align 8
  %6 = alloca %struct.i40e_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.i40e_vsi* %0, %struct.i40e_vsi** %3, align 8
  %9 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %10 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %9, i32 0, i32 0
  %11 = load %struct.i40e_pf*, %struct.i40e_pf** %10, align 8
  store %struct.i40e_pf* %11, %struct.i40e_pf** %5, align 8
  %12 = load %struct.i40e_pf*, %struct.i40e_pf** %5, align 8
  %13 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %12, i32 0, i32 3
  store %struct.i40e_hw* %13, %struct.i40e_hw** %6, align 8
  %14 = load %struct.i40e_pf*, %struct.i40e_pf** %5, align 8
  %15 = load i32, i32* @i40e_aqc_opc_list_dev_capabilities, align 4
  %16 = call i32 @i40e_get_capabilities(%struct.i40e_pf* %14, i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %102

22:                                               ; preds = %1
  %23 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %24 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %58

28:                                               ; preds = %22
  %29 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %30 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = sext i32 %32 to i64
  %34 = load i64, i64* @I40E_SWITCH_MODE_MASK, align 8
  %35 = and i64 %33, %34
  store i64 %35, i64* %8, align 8
  %36 = load i64, i64* %8, align 8
  %37 = load i64, i64* @I40E_CLOUD_FILTER_MODE1, align 8
  %38 = icmp sge i64 %36, %37
  br i1 %38, label %39, label %57

39:                                               ; preds = %28
  %40 = load i64, i64* %8, align 8
  %41 = load i64, i64* @I40E_CLOUD_FILTER_MODE2, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  store i32 0, i32* %2, align 4
  br label %102

44:                                               ; preds = %39
  %45 = load %struct.i40e_pf*, %struct.i40e_pf** %5, align 8
  %46 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %45, i32 0, i32 0
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %50 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = sext i32 %52 to i64
  %54 = call i32 (i32*, i8*, i64, ...) @dev_err(i32* %48, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str, i64 0, i64 0), i64 %53)
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %2, align 4
  br label %102

57:                                               ; preds = %28
  br label %58

58:                                               ; preds = %57, %22
  %59 = load i32, i32* @I40E_AQ_SET_SWITCH_BIT7_VALID, align 4
  store i32 %59, i32* %4, align 4
  %60 = load i32, i32* @I40E_AQ_SET_SWITCH_L4_TYPE_TCP, align 4
  %61 = load i32, i32* %4, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %4, align 4
  %63 = load i32, i32* @I40E_AQ_SET_SWITCH_MODE_NON_TUNNEL, align 4
  %64 = load i32, i32* %4, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %4, align 4
  %66 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %67 = load %struct.i40e_pf*, %struct.i40e_pf** %5, align 8
  %68 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.i40e_pf*, %struct.i40e_pf** %5, align 8
  %71 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* %4, align 4
  %74 = call i32 @i40e_aq_set_switch_config(%struct.i40e_hw* %66, i32 %69, i32 %72, i32 %73, i32* null)
  store i32 %74, i32* %7, align 4
  %75 = load i32, i32* %7, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %100

77:                                               ; preds = %58
  %78 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %79 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @I40E_AQ_RC_ESRCH, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %100

84:                                               ; preds = %77
  %85 = load %struct.i40e_pf*, %struct.i40e_pf** %5, align 8
  %86 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %85, i32 0, i32 0
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  %89 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %90 = load i32, i32* %7, align 4
  %91 = call i32 @i40e_stat_str(%struct.i40e_hw* %89, i32 %90)
  %92 = sext i32 %91 to i64
  %93 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %94 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %95 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = call i32 @i40e_aq_str(%struct.i40e_hw* %93, i64 %97)
  %99 = call i32 (i32*, i8*, i64, ...) @dev_err(i32* %88, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i64 %92, i32 %98)
  br label %100

100:                                              ; preds = %84, %77, %58
  %101 = load i32, i32* %7, align 4
  store i32 %101, i32* %2, align 4
  br label %102

102:                                              ; preds = %100, %44, %43, %19
  %103 = load i32, i32* %2, align 4
  ret i32 %103
}

declare dso_local i32 @i40e_get_capabilities(%struct.i40e_pf*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i64, ...) #1

declare dso_local i32 @i40e_aq_set_switch_config(%struct.i40e_hw*, i32, i32, i32, i32*) #1

declare dso_local i32 @i40e_stat_str(%struct.i40e_hw*, i32) #1

declare dso_local i32 @i40e_aq_str(%struct.i40e_hw*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
