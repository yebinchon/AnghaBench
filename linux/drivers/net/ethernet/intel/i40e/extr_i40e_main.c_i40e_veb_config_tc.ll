; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_veb_config_tc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_veb_config_tc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_veb = type { i32, i32, %struct.i40e_pf* }
%struct.i40e_pf = type { %struct.TYPE_8__, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.i40e_aqc_configure_switching_comp_bw_config_data = type { i32, i32*, i32 }

@I40E_MAX_TRAFFIC_CLASS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"VEB bw config failed, err %s aq_err %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"Failed getting veb bw config, err %s aq_err %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40e_veb_config_tc(%struct.i40e_veb* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i40e_veb*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.i40e_aqc_configure_switching_comp_bw_config_data, align 8
  %7 = alloca %struct.i40e_pf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.i40e_veb* %0, %struct.i40e_veb** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = bitcast %struct.i40e_aqc_configure_switching_comp_bw_config_data* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %10, i8 0, i64 24, i1 false)
  %11 = load %struct.i40e_veb*, %struct.i40e_veb** %4, align 8
  %12 = getelementptr inbounds %struct.i40e_veb, %struct.i40e_veb* %11, i32 0, i32 2
  %13 = load %struct.i40e_pf*, %struct.i40e_pf** %12, align 8
  store %struct.i40e_pf* %13, %struct.i40e_pf** %7, align 8
  store i32 0, i32* %8, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = load %struct.i40e_veb*, %struct.i40e_veb** %4, align 8
  %18 = getelementptr inbounds %struct.i40e_veb, %struct.i40e_veb* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %16, %2
  %23 = load i32, i32* %8, align 4
  store i32 %23, i32* %3, align 4
  br label %100

24:                                               ; preds = %16
  %25 = load i32, i32* %5, align 4
  %26 = getelementptr inbounds %struct.i40e_aqc_configure_switching_comp_bw_config_data, %struct.i40e_aqc_configure_switching_comp_bw_config_data* %6, i32 0, i32 0
  store i32 %25, i32* %26, align 8
  store i32 0, i32* %9, align 4
  br label %27

27:                                               ; preds = %44, %24
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @I40E_MAX_TRAFFIC_CLASS, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %47

31:                                               ; preds = %27
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @BIT(i32 %33)
  %35 = and i32 %32, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.i40e_aqc_configure_switching_comp_bw_config_data, %struct.i40e_aqc_configure_switching_comp_bw_config_data* %6, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  store i32 1, i32* %42, align 4
  br label %43

43:                                               ; preds = %37, %31
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %9, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %9, align 4
  br label %27

47:                                               ; preds = %27
  %48 = load %struct.i40e_pf*, %struct.i40e_pf** %7, align 8
  %49 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %48, i32 0, i32 0
  %50 = load %struct.i40e_veb*, %struct.i40e_veb** %4, align 8
  %51 = getelementptr inbounds %struct.i40e_veb, %struct.i40e_veb* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @i40e_aq_config_switch_comp_bw_config(%struct.TYPE_8__* %49, i32 %52, %struct.i40e_aqc_configure_switching_comp_bw_config_data* %6, i32* null)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %74

56:                                               ; preds = %47
  %57 = load %struct.i40e_pf*, %struct.i40e_pf** %7, align 8
  %58 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %57, i32 0, i32 1
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load %struct.i40e_pf*, %struct.i40e_pf** %7, align 8
  %62 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %61, i32 0, i32 0
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @i40e_stat_str(%struct.TYPE_8__* %62, i32 %63)
  %65 = load %struct.i40e_pf*, %struct.i40e_pf** %7, align 8
  %66 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %65, i32 0, i32 0
  %67 = load %struct.i40e_pf*, %struct.i40e_pf** %7, align 8
  %68 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @i40e_aq_str(%struct.TYPE_8__* %66, i32 %71)
  %73 = call i32 @dev_info(i32* %60, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %64, i32 %72)
  br label %98

74:                                               ; preds = %47
  %75 = load %struct.i40e_veb*, %struct.i40e_veb** %4, align 8
  %76 = call i32 @i40e_veb_get_bw_info(%struct.i40e_veb* %75)
  store i32 %76, i32* %8, align 4
  %77 = load i32, i32* %8, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %97

79:                                               ; preds = %74
  %80 = load %struct.i40e_pf*, %struct.i40e_pf** %7, align 8
  %81 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %80, i32 0, i32 1
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load %struct.i40e_pf*, %struct.i40e_pf** %7, align 8
  %85 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %84, i32 0, i32 0
  %86 = load i32, i32* %8, align 4
  %87 = call i32 @i40e_stat_str(%struct.TYPE_8__* %85, i32 %86)
  %88 = load %struct.i40e_pf*, %struct.i40e_pf** %7, align 8
  %89 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %88, i32 0, i32 0
  %90 = load %struct.i40e_pf*, %struct.i40e_pf** %7, align 8
  %91 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @i40e_aq_str(%struct.TYPE_8__* %89, i32 %94)
  %96 = call i32 @dev_info(i32* %83, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %87, i32 %95)
  br label %97

97:                                               ; preds = %79, %74
  br label %98

98:                                               ; preds = %97, %56
  %99 = load i32, i32* %8, align 4
  store i32 %99, i32* %3, align 4
  br label %100

100:                                              ; preds = %98, %22
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @BIT(i32) #2

declare dso_local i32 @i40e_aq_config_switch_comp_bw_config(%struct.TYPE_8__*, i32, %struct.i40e_aqc_configure_switching_comp_bw_config_data*, i32*) #2

declare dso_local i32 @dev_info(i32*, i8*, i32, i32) #2

declare dso_local i32 @i40e_stat_str(%struct.TYPE_8__*, i32) #2

declare dso_local i32 @i40e_aq_str(%struct.TYPE_8__*, i32) #2

declare dso_local i32 @i40e_veb_get_bw_info(%struct.i40e_veb*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
