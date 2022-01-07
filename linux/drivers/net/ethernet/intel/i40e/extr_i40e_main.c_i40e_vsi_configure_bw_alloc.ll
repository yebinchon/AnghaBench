; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_vsi_configure_bw_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_vsi_configure_bw_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_vsi = type { %struct.TYPE_11__, i32, %struct.TYPE_8__, %struct.i40e_pf* }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.i40e_pf = type { i32, %struct.TYPE_12__, %struct.TYPE_9__* }
%struct.TYPE_12__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.i40e_aqc_configure_vsi_tc_bw_data = type { i32*, i8**, i8* }

@I40E_FLAG_TC_MQPRIO = common dso_local global i32 0, align 4
@I40E_FLAG_DCB_ENABLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Failed to reset tx rate for vsi->seid %u\0A\00", align 1
@I40E_MAX_TRAFFIC_CLASS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"AQ command Config VSI BW allocation per TC failed = %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40e_vsi*, i8*, i8**)* @i40e_vsi_configure_bw_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_vsi_configure_bw_alloc(%struct.i40e_vsi* %0, i8* %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i40e_vsi*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca %struct.i40e_aqc_configure_vsi_tc_bw_data, align 8
  %9 = alloca %struct.i40e_pf*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.i40e_vsi* %0, %struct.i40e_vsi** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8** %2, i8*** %7, align 8
  %12 = load %struct.i40e_vsi*, %struct.i40e_vsi** %5, align 8
  %13 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %12, i32 0, i32 3
  %14 = load %struct.i40e_pf*, %struct.i40e_pf** %13, align 8
  store %struct.i40e_pf* %14, %struct.i40e_pf** %9, align 8
  %15 = load %struct.i40e_pf*, %struct.i40e_pf** %9, align 8
  %16 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @I40E_FLAG_TC_MQPRIO, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %121

22:                                               ; preds = %3
  %23 = load %struct.i40e_vsi*, %struct.i40e_vsi** %5, align 8
  %24 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %55, label %29

29:                                               ; preds = %22
  %30 = load %struct.i40e_pf*, %struct.i40e_pf** %9, align 8
  %31 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @I40E_FLAG_DCB_ENABLED, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %55, label %36

36:                                               ; preds = %29
  %37 = load %struct.i40e_vsi*, %struct.i40e_vsi** %5, align 8
  %38 = load %struct.i40e_vsi*, %struct.i40e_vsi** %5, align 8
  %39 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @i40e_set_bw_limit(%struct.i40e_vsi* %37, i32 %40, i32 0)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %36
  %45 = load %struct.i40e_pf*, %struct.i40e_pf** %9, align 8
  %46 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %45, i32 0, i32 2
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = load %struct.i40e_vsi*, %struct.i40e_vsi** %5, align 8
  %50 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @dev_info(i32* %48, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %51)
  br label %53

53:                                               ; preds = %44, %36
  %54 = load i32, i32* %10, align 4
  store i32 %54, i32* %4, align 4
  br label %121

55:                                               ; preds = %29, %22
  %56 = load i8*, i8** %6, align 8
  %57 = getelementptr inbounds %struct.i40e_aqc_configure_vsi_tc_bw_data, %struct.i40e_aqc_configure_vsi_tc_bw_data* %8, i32 0, i32 2
  store i8* %56, i8** %57, align 8
  store i32 0, i32* %11, align 4
  br label %58

58:                                               ; preds = %73, %55
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* @I40E_MAX_TRAFFIC_CLASS, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %76

62:                                               ; preds = %58
  %63 = load i8**, i8*** %7, align 8
  %64 = load i32, i32* %11, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8*, i8** %63, i64 %65
  %67 = load i8*, i8** %66, align 8
  %68 = getelementptr inbounds %struct.i40e_aqc_configure_vsi_tc_bw_data, %struct.i40e_aqc_configure_vsi_tc_bw_data* %8, i32 0, i32 1
  %69 = load i8**, i8*** %68, align 8
  %70 = load i32, i32* %11, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8*, i8** %69, i64 %71
  store i8* %67, i8** %72, align 8
  br label %73

73:                                               ; preds = %62
  %74 = load i32, i32* %11, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %11, align 4
  br label %58

76:                                               ; preds = %58
  %77 = load %struct.i40e_pf*, %struct.i40e_pf** %9, align 8
  %78 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %77, i32 0, i32 1
  %79 = load %struct.i40e_vsi*, %struct.i40e_vsi** %5, align 8
  %80 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @i40e_aq_config_vsi_tc_bw(%struct.TYPE_12__* %78, i32 %81, %struct.i40e_aqc_configure_vsi_tc_bw_data* %8, i32* null)
  store i32 %82, i32* %10, align 4
  %83 = load i32, i32* %10, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %98

85:                                               ; preds = %76
  %86 = load %struct.i40e_pf*, %struct.i40e_pf** %9, align 8
  %87 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %86, i32 0, i32 2
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  %90 = load %struct.i40e_pf*, %struct.i40e_pf** %9, align 8
  %91 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @dev_info(i32* %89, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i32 %94)
  %96 = load i32, i32* @EINVAL, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %4, align 4
  br label %121

98:                                               ; preds = %76
  store i32 0, i32* %11, align 4
  br label %99

99:                                               ; preds = %117, %98
  %100 = load i32, i32* %11, align 4
  %101 = load i32, i32* @I40E_MAX_TRAFFIC_CLASS, align 4
  %102 = icmp slt i32 %100, %101
  br i1 %102, label %103, label %120

103:                                              ; preds = %99
  %104 = getelementptr inbounds %struct.i40e_aqc_configure_vsi_tc_bw_data, %struct.i40e_aqc_configure_vsi_tc_bw_data* %8, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* %11, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.i40e_vsi*, %struct.i40e_vsi** %5, align 8
  %111 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = load i32, i32* %11, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  store i32 %109, i32* %116, align 4
  br label %117

117:                                              ; preds = %103
  %118 = load i32, i32* %11, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %11, align 4
  br label %99

120:                                              ; preds = %99
  store i32 0, i32* %4, align 4
  br label %121

121:                                              ; preds = %120, %85, %53, %21
  %122 = load i32, i32* %4, align 4
  ret i32 %122
}

declare dso_local i32 @i40e_set_bw_limit(%struct.i40e_vsi*, i32, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i32 @i40e_aq_config_vsi_tc_bw(%struct.TYPE_12__*, i32, %struct.i40e_aqc_configure_vsi_tc_bw_data*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
