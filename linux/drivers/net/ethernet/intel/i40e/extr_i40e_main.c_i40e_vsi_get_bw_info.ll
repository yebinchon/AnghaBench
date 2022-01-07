; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_vsi_get_bw_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_vsi_get_bw_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_vsi = type { i32, i32*, i64*, i32*, i32, i32, %struct.i40e_pf* }
%struct.i40e_pf = type { %struct.TYPE_4__*, %struct.i40e_hw }
%struct.TYPE_4__ = type { i32 }
%struct.i40e_hw = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.i40e_aqc_query_vsi_ets_sla_config_resp = type { i64, i32*, i32*, i32*, i32 }
%struct.i40e_aqc_query_vsi_bw_config_resp = type { i64, i32, i32, i32 }

@.str = private unnamed_addr constant [49 x i8] c"couldn't get PF vsi bw config, err %s aq_err %s\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"couldn't get PF vsi ets bw config, err %s aq_err %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [62 x i8] c"Enabled TCs mismatch from querying VSI BW info 0x%08x 0x%08x\0A\00", align 1
@I40E_MAX_TRAFFIC_CLASS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40e_vsi*)* @i40e_vsi_get_bw_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_vsi_get_bw_info(%struct.i40e_vsi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i40e_vsi*, align 8
  %4 = alloca %struct.i40e_aqc_query_vsi_ets_sla_config_resp, align 8
  %5 = alloca %struct.i40e_aqc_query_vsi_bw_config_resp, align 8
  %6 = alloca %struct.i40e_pf*, align 8
  %7 = alloca %struct.i40e_hw*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.i40e_vsi* %0, %struct.i40e_vsi** %3, align 8
  %11 = bitcast %struct.i40e_aqc_query_vsi_ets_sla_config_resp* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %11, i8 0, i64 40, i1 false)
  %12 = bitcast %struct.i40e_aqc_query_vsi_bw_config_resp* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 24, i1 false)
  %13 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %14 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %13, i32 0, i32 6
  %15 = load %struct.i40e_pf*, %struct.i40e_pf** %14, align 8
  store %struct.i40e_pf* %15, %struct.i40e_pf** %6, align 8
  %16 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %17 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %16, i32 0, i32 1
  store %struct.i40e_hw* %17, %struct.i40e_hw** %7, align 8
  %18 = load %struct.i40e_hw*, %struct.i40e_hw** %7, align 8
  %19 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %20 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @i40e_aq_query_vsi_bw_config(%struct.i40e_hw* %18, i32 %21, %struct.i40e_aqc_query_vsi_bw_config_resp* %5, i32* null)
  store i64 %22, i64* %8, align 8
  %23 = load i64, i64* %8, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %45

25:                                               ; preds = %1
  %26 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %27 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %31 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %30, i32 0, i32 1
  %32 = load i64, i64* %8, align 8
  %33 = call i64 @i40e_stat_str(%struct.i40e_hw* %31, i64 %32)
  %34 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %35 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %34, i32 0, i32 1
  %36 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %37 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i64 @i40e_aq_str(%struct.i40e_hw* %35, i32 %40)
  %42 = call i32 @dev_info(i32* %29, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i64 %33, i64 %41)
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %2, align 4
  br label %157

45:                                               ; preds = %1
  %46 = load %struct.i40e_hw*, %struct.i40e_hw** %7, align 8
  %47 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %48 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @i40e_aq_query_vsi_ets_sla_config(%struct.i40e_hw* %46, i32 %49, %struct.i40e_aqc_query_vsi_ets_sla_config_resp* %4, i32* null)
  store i64 %50, i64* %8, align 8
  %51 = load i64, i64* %8, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %73

53:                                               ; preds = %45
  %54 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %55 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %54, i32 0, i32 0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %59 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %58, i32 0, i32 1
  %60 = load i64, i64* %8, align 8
  %61 = call i64 @i40e_stat_str(%struct.i40e_hw* %59, i64 %60)
  %62 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %63 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %62, i32 0, i32 1
  %64 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %65 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i64 @i40e_aq_str(%struct.i40e_hw* %63, i32 %68)
  %70 = call i32 @dev_info(i32* %57, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i64 %61, i64 %69)
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %2, align 4
  br label %157

73:                                               ; preds = %45
  %74 = getelementptr inbounds %struct.i40e_aqc_query_vsi_bw_config_resp, %struct.i40e_aqc_query_vsi_bw_config_resp* %5, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = getelementptr inbounds %struct.i40e_aqc_query_vsi_ets_sla_config_resp, %struct.i40e_aqc_query_vsi_ets_sla_config_resp* %4, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %75, %77
  br i1 %78, label %79, label %89

79:                                               ; preds = %73
  %80 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %81 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %80, i32 0, i32 0
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.i40e_aqc_query_vsi_bw_config_resp, %struct.i40e_aqc_query_vsi_bw_config_resp* %5, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = getelementptr inbounds %struct.i40e_aqc_query_vsi_ets_sla_config_resp, %struct.i40e_aqc_query_vsi_ets_sla_config_resp* %4, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = call i32 @dev_info(i32* %83, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0), i64 %85, i64 %87)
  br label %89

89:                                               ; preds = %79, %73
  %90 = getelementptr inbounds %struct.i40e_aqc_query_vsi_bw_config_resp, %struct.i40e_aqc_query_vsi_bw_config_resp* %5, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @le16_to_cpu(i32 %91)
  %93 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %94 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 8
  %95 = getelementptr inbounds %struct.i40e_aqc_query_vsi_bw_config_resp, %struct.i40e_aqc_query_vsi_bw_config_resp* %5, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %98 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %97, i32 0, i32 4
  store i32 %96, i32* %98, align 8
  %99 = getelementptr inbounds %struct.i40e_aqc_query_vsi_ets_sla_config_resp, %struct.i40e_aqc_query_vsi_ets_sla_config_resp* %4, i32 0, i32 3
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @le16_to_cpu(i32 %102)
  %104 = getelementptr inbounds %struct.i40e_aqc_query_vsi_ets_sla_config_resp, %struct.i40e_aqc_query_vsi_ets_sla_config_resp* %4, i32 0, i32 3
  %105 = load i32*, i32** %104, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 1
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @le16_to_cpu(i32 %107)
  %109 = shl i32 %108, 16
  %110 = or i32 %103, %109
  store i32 %110, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %111

111:                                              ; preds = %153, %89
  %112 = load i32, i32* %10, align 4
  %113 = load i32, i32* @I40E_MAX_TRAFFIC_CLASS, align 4
  %114 = icmp slt i32 %112, %113
  br i1 %114, label %115, label %156

115:                                              ; preds = %111
  %116 = getelementptr inbounds %struct.i40e_aqc_query_vsi_ets_sla_config_resp, %struct.i40e_aqc_query_vsi_ets_sla_config_resp* %4, i32 0, i32 2
  %117 = load i32*, i32** %116, align 8
  %118 = load i32, i32* %10, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %123 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %122, i32 0, i32 3
  %124 = load i32*, i32** %123, align 8
  %125 = load i32, i32* %10, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  store i32 %121, i32* %127, align 4
  %128 = getelementptr inbounds %struct.i40e_aqc_query_vsi_ets_sla_config_resp, %struct.i40e_aqc_query_vsi_ets_sla_config_resp* %4, i32 0, i32 1
  %129 = load i32*, i32** %128, align 8
  %130 = load i32, i32* %10, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %129, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @le16_to_cpu(i32 %133)
  %135 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %136 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %135, i32 0, i32 1
  %137 = load i32*, i32** %136, align 8
  %138 = load i32, i32* %10, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %137, i64 %139
  store i32 %134, i32* %140, align 4
  %141 = load i32, i32* %9, align 4
  %142 = load i32, i32* %10, align 4
  %143 = mul nsw i32 %142, 4
  %144 = ashr i32 %141, %143
  %145 = and i32 %144, 7
  %146 = sext i32 %145 to i64
  %147 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %148 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %147, i32 0, i32 2
  %149 = load i64*, i64** %148, align 8
  %150 = load i32, i32* %10, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i64, i64* %149, i64 %151
  store i64 %146, i64* %152, align 8
  br label %153

153:                                              ; preds = %115
  %154 = load i32, i32* %10, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %10, align 4
  br label %111

156:                                              ; preds = %111
  store i32 0, i32* %2, align 4
  br label %157

157:                                              ; preds = %156, %53, %25
  %158 = load i32, i32* %2, align 4
  ret i32 %158
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @i40e_aq_query_vsi_bw_config(%struct.i40e_hw*, i32, %struct.i40e_aqc_query_vsi_bw_config_resp*, i32*) #2

declare dso_local i32 @dev_info(i32*, i8*, i64, i64) #2

declare dso_local i64 @i40e_stat_str(%struct.i40e_hw*, i64) #2

declare dso_local i64 @i40e_aq_str(%struct.i40e_hw*, i32) #2

declare dso_local i64 @i40e_aq_query_vsi_ets_sla_config(%struct.i40e_hw*, i32, %struct.i40e_aqc_query_vsi_ets_sla_config_resp*, i32*) #2

declare dso_local i32 @le16_to_cpu(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
