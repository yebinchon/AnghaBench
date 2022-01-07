; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_fetch_switch_configuration.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_fetch_switch_configuration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_pf = type { %struct.TYPE_9__*, %struct.TYPE_10__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.i40e_aqc_get_switch_config_resp = type { %struct.i40e_aqc_switch_config_element_resp*, %struct.TYPE_8__ }
%struct.i40e_aqc_switch_config_element_resp = type { i32 }
%struct.TYPE_8__ = type { i32, i32 }

@I40E_AQ_LARGE_BUF = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"get switch config failed err %s aq_err %s\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"header: %d reported %d total\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40e_fetch_switch_configuration(%struct.i40e_pf* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i40e_pf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.i40e_aqc_get_switch_config_resp*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.i40e_aqc_switch_config_element_resp*, align 8
  store %struct.i40e_pf* %0, %struct.i40e_pf** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 0, i64* %7, align 8
  store i32 0, i32* %8, align 4
  %14 = load i32, i32* @I40E_AQ_LARGE_BUF, align 4
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call i32* @kzalloc(i32 %14, i32 %15)
  store i32* %16, i32** %9, align 8
  %17 = load i32*, i32** %9, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %105

22:                                               ; preds = %2
  %23 = load i32*, i32** %9, align 8
  %24 = bitcast i32* %23 to %struct.i40e_aqc_get_switch_config_resp*
  store %struct.i40e_aqc_get_switch_config_resp* %24, %struct.i40e_aqc_get_switch_config_resp** %6, align 8
  br label %25

25:                                               ; preds = %98, %22
  %26 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %27 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %26, i32 0, i32 1
  %28 = load %struct.i40e_aqc_get_switch_config_resp*, %struct.i40e_aqc_get_switch_config_resp** %6, align 8
  %29 = load i32, i32* @I40E_AQ_LARGE_BUF, align 4
  %30 = call i32 @i40e_aq_get_switch_config(%struct.TYPE_10__* %27, %struct.i40e_aqc_get_switch_config_resp* %28, i32 %29, i64* %7, i32* null)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %55

33:                                               ; preds = %25
  %34 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %35 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %34, i32 0, i32 0
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %39 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %38, i32 0, i32 1
  %40 = load i32, i32* %8, align 4
  %41 = call i64 @i40e_stat_str(%struct.TYPE_10__* %39, i32 %40)
  %42 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %43 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %42, i32 0, i32 1
  %44 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %45 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i64 @i40e_aq_str(%struct.TYPE_10__* %43, i32 %48)
  %50 = call i32 @dev_info(i32* %37, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i64 %41, i64 %49)
  %51 = load i32*, i32** %9, align 8
  %52 = call i32 @kfree(i32* %51)
  %53 = load i32, i32* @ENOENT, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %105

55:                                               ; preds = %25
  %56 = load %struct.i40e_aqc_get_switch_config_resp*, %struct.i40e_aqc_get_switch_config_resp** %6, align 8
  %57 = getelementptr inbounds %struct.i40e_aqc_get_switch_config_resp, %struct.i40e_aqc_get_switch_config_resp* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @le16_to_cpu(i32 %59)
  store i64 %60, i64* %11, align 8
  %61 = load %struct.i40e_aqc_get_switch_config_resp*, %struct.i40e_aqc_get_switch_config_resp** %6, align 8
  %62 = getelementptr inbounds %struct.i40e_aqc_get_switch_config_resp, %struct.i40e_aqc_get_switch_config_resp* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i64 @le16_to_cpu(i32 %64)
  store i64 %65, i64* %12, align 8
  %66 = load i32, i32* %5, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %55
  %69 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %70 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %69, i32 0, i32 0
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  %73 = load i64, i64* %11, align 8
  %74 = load i64, i64* %12, align 8
  %75 = call i32 @dev_info(i32* %72, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i64 %73, i64 %74)
  br label %76

76:                                               ; preds = %68, %55
  store i32 0, i32* %10, align 4
  br label %77

77:                                               ; preds = %94, %76
  %78 = load i32, i32* %10, align 4
  %79 = sext i32 %78 to i64
  %80 = load i64, i64* %11, align 8
  %81 = icmp slt i64 %79, %80
  br i1 %81, label %82, label %97

82:                                               ; preds = %77
  %83 = load %struct.i40e_aqc_get_switch_config_resp*, %struct.i40e_aqc_get_switch_config_resp** %6, align 8
  %84 = getelementptr inbounds %struct.i40e_aqc_get_switch_config_resp, %struct.i40e_aqc_get_switch_config_resp* %83, i32 0, i32 0
  %85 = load %struct.i40e_aqc_switch_config_element_resp*, %struct.i40e_aqc_switch_config_element_resp** %84, align 8
  %86 = load i32, i32* %10, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.i40e_aqc_switch_config_element_resp, %struct.i40e_aqc_switch_config_element_resp* %85, i64 %87
  store %struct.i40e_aqc_switch_config_element_resp* %88, %struct.i40e_aqc_switch_config_element_resp** %13, align 8
  %89 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %90 = load %struct.i40e_aqc_switch_config_element_resp*, %struct.i40e_aqc_switch_config_element_resp** %13, align 8
  %91 = load i64, i64* %11, align 8
  %92 = load i32, i32* %5, align 4
  %93 = call i32 @i40e_setup_pf_switch_element(%struct.i40e_pf* %89, %struct.i40e_aqc_switch_config_element_resp* %90, i64 %91, i32 %92)
  br label %94

94:                                               ; preds = %82
  %95 = load i32, i32* %10, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %10, align 4
  br label %77

97:                                               ; preds = %77
  br label %98

98:                                               ; preds = %97
  %99 = load i64, i64* %7, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %25, label %101

101:                                              ; preds = %98
  %102 = load i32*, i32** %9, align 8
  %103 = call i32 @kfree(i32* %102)
  %104 = load i32, i32* %8, align 4
  store i32 %104, i32* %3, align 4
  br label %105

105:                                              ; preds = %101, %33, %19
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i32 @i40e_aq_get_switch_config(%struct.TYPE_10__*, %struct.i40e_aqc_get_switch_config_resp*, i32, i64*, i32*) #1

declare dso_local i32 @dev_info(i32*, i8*, i64, i64) #1

declare dso_local i64 @i40e_stat_str(%struct.TYPE_10__*, i32) #1

declare dso_local i64 @i40e_aq_str(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @i40e_setup_pf_switch_element(%struct.i40e_pf*, %struct.i40e_aqc_switch_config_element_resp*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
