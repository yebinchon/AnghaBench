; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_veb_get_bw_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_veb_get_bw_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_veb = type { i32, i32*, i32*, i32*, i32, i32, i32, i32, %struct.i40e_pf* }
%struct.i40e_pf = type { %struct.i40e_hw, %struct.TYPE_3__* }
%struct.i40e_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.i40e_aqc_query_switching_comp_ets_config_resp = type { i32, i32, i32 }
%struct.i40e_aqc_query_switching_comp_bw_config_resp = type { i32*, i32*, i32*, i32 }

@.str = private unnamed_addr constant [46 x i8] c"query veb bw config failed, err %s aq_err %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"query veb bw ets config failed, err %s aq_err %s\0A\00", align 1
@I40E_MAX_TRAFFIC_CLASS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40e_veb*)* @i40e_veb_get_bw_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_veb_get_bw_info(%struct.i40e_veb* %0) #0 {
  %2 = alloca %struct.i40e_veb*, align 8
  %3 = alloca %struct.i40e_aqc_query_switching_comp_ets_config_resp, align 4
  %4 = alloca %struct.i40e_aqc_query_switching_comp_bw_config_resp, align 8
  %5 = alloca %struct.i40e_pf*, align 8
  %6 = alloca %struct.i40e_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.i40e_veb* %0, %struct.i40e_veb** %2, align 8
  %10 = load %struct.i40e_veb*, %struct.i40e_veb** %2, align 8
  %11 = getelementptr inbounds %struct.i40e_veb, %struct.i40e_veb* %10, i32 0, i32 8
  %12 = load %struct.i40e_pf*, %struct.i40e_pf** %11, align 8
  store %struct.i40e_pf* %12, %struct.i40e_pf** %5, align 8
  %13 = load %struct.i40e_pf*, %struct.i40e_pf** %5, align 8
  %14 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %13, i32 0, i32 0
  store %struct.i40e_hw* %14, %struct.i40e_hw** %6, align 8
  store i32 0, i32* %8, align 4
  %15 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %16 = load %struct.i40e_veb*, %struct.i40e_veb** %2, align 8
  %17 = getelementptr inbounds %struct.i40e_veb, %struct.i40e_veb* %16, i32 0, i32 7
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @i40e_aq_query_switch_comp_bw_config(%struct.i40e_hw* %15, i32 %18, %struct.i40e_aqc_query_switching_comp_bw_config_resp* %4, i32* null)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %39

22:                                               ; preds = %1
  %23 = load %struct.i40e_pf*, %struct.i40e_pf** %5, align 8
  %24 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %23, i32 0, i32 1
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load %struct.i40e_pf*, %struct.i40e_pf** %5, align 8
  %28 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %27, i32 0, i32 0
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @i40e_stat_str(%struct.i40e_hw* %28, i32 %29)
  %31 = load %struct.i40e_pf*, %struct.i40e_pf** %5, align 8
  %32 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %31, i32 0, i32 0
  %33 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %34 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @i40e_aq_str(%struct.i40e_hw* %32, i32 %36)
  %38 = call i32 @dev_info(i32* %26, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %37)
  br label %139

39:                                               ; preds = %1
  %40 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %41 = load %struct.i40e_veb*, %struct.i40e_veb** %2, align 8
  %42 = getelementptr inbounds %struct.i40e_veb, %struct.i40e_veb* %41, i32 0, i32 7
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @i40e_aq_query_switch_comp_ets_config(%struct.i40e_hw* %40, i32 %43, %struct.i40e_aqc_query_switching_comp_ets_config_resp* %3, i32* null)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %64

47:                                               ; preds = %39
  %48 = load %struct.i40e_pf*, %struct.i40e_pf** %5, align 8
  %49 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %48, i32 0, i32 1
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load %struct.i40e_pf*, %struct.i40e_pf** %5, align 8
  %53 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %52, i32 0, i32 0
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @i40e_stat_str(%struct.i40e_hw* %53, i32 %54)
  %56 = load %struct.i40e_pf*, %struct.i40e_pf** %5, align 8
  %57 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %56, i32 0, i32 0
  %58 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %59 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @i40e_aq_str(%struct.i40e_hw* %57, i32 %61)
  %63 = call i32 @dev_info(i32* %51, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %55, i32 %62)
  br label %139

64:                                               ; preds = %39
  %65 = getelementptr inbounds %struct.i40e_aqc_query_switching_comp_ets_config_resp, %struct.i40e_aqc_query_switching_comp_ets_config_resp* %3, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @le16_to_cpu(i32 %66)
  %68 = load %struct.i40e_veb*, %struct.i40e_veb** %2, align 8
  %69 = getelementptr inbounds %struct.i40e_veb, %struct.i40e_veb* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  %70 = getelementptr inbounds %struct.i40e_aqc_query_switching_comp_ets_config_resp, %struct.i40e_aqc_query_switching_comp_ets_config_resp* %3, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.i40e_veb*, %struct.i40e_veb** %2, align 8
  %73 = getelementptr inbounds %struct.i40e_veb, %struct.i40e_veb* %72, i32 0, i32 6
  store i32 %71, i32* %73, align 8
  %74 = getelementptr inbounds %struct.i40e_aqc_query_switching_comp_bw_config_resp, %struct.i40e_aqc_query_switching_comp_bw_config_resp* %4, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.i40e_veb*, %struct.i40e_veb** %2, align 8
  %77 = getelementptr inbounds %struct.i40e_veb, %struct.i40e_veb* %76, i32 0, i32 5
  store i32 %75, i32* %77, align 4
  %78 = getelementptr inbounds %struct.i40e_aqc_query_switching_comp_ets_config_resp, %struct.i40e_aqc_query_switching_comp_ets_config_resp* %3, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.i40e_veb*, %struct.i40e_veb** %2, align 8
  %81 = getelementptr inbounds %struct.i40e_veb, %struct.i40e_veb* %80, i32 0, i32 4
  store i32 %79, i32* %81, align 8
  %82 = getelementptr inbounds %struct.i40e_aqc_query_switching_comp_bw_config_resp, %struct.i40e_aqc_query_switching_comp_bw_config_resp* %4, i32 0, i32 2
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @le16_to_cpu(i32 %85)
  %87 = getelementptr inbounds %struct.i40e_aqc_query_switching_comp_bw_config_resp, %struct.i40e_aqc_query_switching_comp_bw_config_resp* %4, i32 0, i32 2
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 1
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @le16_to_cpu(i32 %90)
  %92 = shl i32 %91, 16
  %93 = or i32 %86, %92
  store i32 %93, i32* %7, align 4
  store i32 0, i32* %9, align 4
  br label %94

94:                                               ; preds = %135, %64
  %95 = load i32, i32* %9, align 4
  %96 = load i32, i32* @I40E_MAX_TRAFFIC_CLASS, align 4
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %98, label %138

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.i40e_aqc_query_switching_comp_bw_config_resp, %struct.i40e_aqc_query_switching_comp_bw_config_resp* %4, i32 0, i32 1
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* %9, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.i40e_veb*, %struct.i40e_veb** %2, align 8
  %106 = getelementptr inbounds %struct.i40e_veb, %struct.i40e_veb* %105, i32 0, i32 3
  %107 = load i32*, i32** %106, align 8
  %108 = load i32, i32* %9, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  store i32 %104, i32* %110, align 4
  %111 = getelementptr inbounds %struct.i40e_aqc_query_switching_comp_bw_config_resp, %struct.i40e_aqc_query_switching_comp_bw_config_resp* %4, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = load i32, i32* %9, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @le16_to_cpu(i32 %116)
  %118 = load %struct.i40e_veb*, %struct.i40e_veb** %2, align 8
  %119 = getelementptr inbounds %struct.i40e_veb, %struct.i40e_veb* %118, i32 0, i32 1
  %120 = load i32*, i32** %119, align 8
  %121 = load i32, i32* %9, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  store i32 %117, i32* %123, align 4
  %124 = load i32, i32* %7, align 4
  %125 = load i32, i32* %9, align 4
  %126 = mul nsw i32 %125, 4
  %127 = ashr i32 %124, %126
  %128 = and i32 %127, 7
  %129 = load %struct.i40e_veb*, %struct.i40e_veb** %2, align 8
  %130 = getelementptr inbounds %struct.i40e_veb, %struct.i40e_veb* %129, i32 0, i32 2
  %131 = load i32*, i32** %130, align 8
  %132 = load i32, i32* %9, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  store i32 %128, i32* %134, align 4
  br label %135

135:                                              ; preds = %98
  %136 = load i32, i32* %9, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %9, align 4
  br label %94

138:                                              ; preds = %94
  br label %139

139:                                              ; preds = %138, %47, %22
  %140 = load i32, i32* %8, align 4
  ret i32 %140
}

declare dso_local i32 @i40e_aq_query_switch_comp_bw_config(%struct.i40e_hw*, i32, %struct.i40e_aqc_query_switching_comp_bw_config_resp*, i32*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32) #1

declare dso_local i32 @i40e_stat_str(%struct.i40e_hw*, i32) #1

declare dso_local i32 @i40e_aq_str(%struct.i40e_hw*, i32) #1

declare dso_local i32 @i40e_aq_query_switch_comp_ets_config(%struct.i40e_hw*, i32, %struct.i40e_aqc_query_switching_comp_ets_config_resp*, i32*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
