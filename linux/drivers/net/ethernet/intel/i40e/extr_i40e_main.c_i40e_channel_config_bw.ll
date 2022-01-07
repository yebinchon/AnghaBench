; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_channel_config_bw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_channel_config_bw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_vsi = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_10__, %struct.TYPE_6__* }
%struct.TYPE_10__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.i40e_channel = type { %struct.TYPE_9__, i32, i32 }
%struct.TYPE_9__ = type { i32* }
%struct.i40e_aqc_configure_vsi_tc_bw_data = type { i32*, i32*, i32 }

@I40E_MAX_TRAFFIC_CLASS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [73 x i8] c"Config VSI BW allocation per TC failed, aq_err: %d for new_vsi->seid %u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40e_vsi*, %struct.i40e_channel*, i32*)* @i40e_channel_config_bw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_channel_config_bw(%struct.i40e_vsi* %0, %struct.i40e_channel* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i40e_vsi*, align 8
  %6 = alloca %struct.i40e_channel*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.i40e_aqc_configure_vsi_tc_bw_data, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.i40e_vsi* %0, %struct.i40e_vsi** %5, align 8
  store %struct.i40e_channel* %1, %struct.i40e_channel** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load %struct.i40e_channel*, %struct.i40e_channel** %6, align 8
  %12 = getelementptr inbounds %struct.i40e_channel, %struct.i40e_channel* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = getelementptr inbounds %struct.i40e_aqc_configure_vsi_tc_bw_data, %struct.i40e_aqc_configure_vsi_tc_bw_data* %8, i32 0, i32 2
  store i32 %13, i32* %14, align 8
  store i32 0, i32* %10, align 4
  br label %15

15:                                               ; preds = %30, %3
  %16 = load i32, i32* %10, align 4
  %17 = load i32, i32* @I40E_MAX_TRAFFIC_CLASS, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %33

19:                                               ; preds = %15
  %20 = load i32*, i32** %7, align 8
  %21 = load i32, i32* %10, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds %struct.i40e_aqc_configure_vsi_tc_bw_data, %struct.i40e_aqc_configure_vsi_tc_bw_data* %8, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %10, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  store i32 %24, i32* %29, align 4
  br label %30

30:                                               ; preds = %19
  %31 = load i32, i32* %10, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %10, align 4
  br label %15

33:                                               ; preds = %15
  %34 = load %struct.i40e_vsi*, %struct.i40e_vsi** %5, align 8
  %35 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %34, i32 0, i32 0
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load %struct.i40e_channel*, %struct.i40e_channel** %6, align 8
  %39 = getelementptr inbounds %struct.i40e_channel, %struct.i40e_channel* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i64 @i40e_aq_config_vsi_tc_bw(%struct.TYPE_10__* %37, i32 %40, %struct.i40e_aqc_configure_vsi_tc_bw_data* %8, i32* null)
  store i64 %41, i64* %9, align 8
  %42 = load i64, i64* %9, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %64

44:                                               ; preds = %33
  %45 = load %struct.i40e_vsi*, %struct.i40e_vsi** %5, align 8
  %46 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %45, i32 0, i32 0
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load %struct.i40e_vsi*, %struct.i40e_vsi** %5, align 8
  %52 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %51, i32 0, i32 0
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.i40e_channel*, %struct.i40e_channel** %6, align 8
  %59 = getelementptr inbounds %struct.i40e_channel, %struct.i40e_channel* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @dev_info(i32* %50, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0), i32 %57, i32 %60)
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %4, align 4
  br label %87

64:                                               ; preds = %33
  store i32 0, i32* %10, align 4
  br label %65

65:                                               ; preds = %83, %64
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* @I40E_MAX_TRAFFIC_CLASS, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %86

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.i40e_aqc_configure_vsi_tc_bw_data, %struct.i40e_aqc_configure_vsi_tc_bw_data* %8, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %10, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.i40e_channel*, %struct.i40e_channel** %6, align 8
  %77 = getelementptr inbounds %struct.i40e_channel, %struct.i40e_channel* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %10, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  store i32 %75, i32* %82, align 4
  br label %83

83:                                               ; preds = %69
  %84 = load i32, i32* %10, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %10, align 4
  br label %65

86:                                               ; preds = %65
  store i32 0, i32* %4, align 4
  br label %87

87:                                               ; preds = %86, %44
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

declare dso_local i64 @i40e_aq_config_vsi_tc_bw(%struct.TYPE_10__*, i32, %struct.i40e_aqc_configure_vsi_tc_bw_data*, i32*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
