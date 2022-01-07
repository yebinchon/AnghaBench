; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_main.c_iavf_config_rss_aq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_main.c_iavf_config_rss_aq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iavf_adapter = type { i64, %struct.TYPE_5__*, i32, i32, %struct.TYPE_4__, %struct.iavf_hw, i64 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.iavf_hw = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.iavf_aqc_get_set_rss_key_data = type { i32 }

@VIRTCHNL_OP_UNKNOWN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"Cannot configure RSS, command %d pending\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Cannot set RSS key, err %s aq_err %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"Cannot set RSS lut, err %s aq_err %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iavf_adapter*)* @iavf_config_rss_aq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iavf_config_rss_aq(%struct.iavf_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iavf_adapter*, align 8
  %4 = alloca %struct.iavf_aqc_get_set_rss_key_data*, align 8
  %5 = alloca %struct.iavf_hw*, align 8
  %6 = alloca i32, align 4
  store %struct.iavf_adapter* %0, %struct.iavf_adapter** %3, align 8
  %7 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %8 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %7, i32 0, i32 6
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.iavf_aqc_get_set_rss_key_data*
  store %struct.iavf_aqc_get_set_rss_key_data* %10, %struct.iavf_aqc_get_set_rss_key_data** %4, align 8
  %11 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %12 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %11, i32 0, i32 5
  store %struct.iavf_hw* %12, %struct.iavf_hw** %5, align 8
  store i32 0, i32* %6, align 4
  %13 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %14 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @VIRTCHNL_OP_UNKNOWN, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %29

18:                                               ; preds = %1
  %19 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %20 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %19, i32 0, i32 1
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %24 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32 (i32*, i8*, i64, ...) @dev_err(i32* %22, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64 %25)
  %27 = load i32, i32* @EBUSY, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %89

29:                                               ; preds = %1
  %30 = load %struct.iavf_hw*, %struct.iavf_hw** %5, align 8
  %31 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %32 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %31, i32 0, i32 4
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.iavf_aqc_get_set_rss_key_data*, %struct.iavf_aqc_get_set_rss_key_data** %4, align 8
  %36 = call i32 @iavf_aq_set_rss_key(%struct.iavf_hw* %30, i32 %34, %struct.iavf_aqc_get_set_rss_key_data* %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %56

39:                                               ; preds = %29
  %40 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %41 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %40, i32 0, i32 1
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load %struct.iavf_hw*, %struct.iavf_hw** %5, align 8
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @iavf_stat_str(%struct.iavf_hw* %44, i32 %45)
  %47 = sext i32 %46 to i64
  %48 = load %struct.iavf_hw*, %struct.iavf_hw** %5, align 8
  %49 = load %struct.iavf_hw*, %struct.iavf_hw** %5, align 8
  %50 = getelementptr inbounds %struct.iavf_hw, %struct.iavf_hw* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @iavf_aq_str(%struct.iavf_hw* %48, i32 %52)
  %54 = call i32 (i32*, i8*, i64, ...) @dev_err(i32* %43, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i64 %47, i32 %53)
  %55 = load i32, i32* %6, align 4
  store i32 %55, i32* %2, align 4
  br label %89

56:                                               ; preds = %29
  %57 = load %struct.iavf_hw*, %struct.iavf_hw** %5, align 8
  %58 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %59 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %58, i32 0, i32 4
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %63 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %66 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @iavf_aq_set_rss_lut(%struct.iavf_hw* %57, i32 %61, i32 0, i32 %64, i32 %67)
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* %6, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %87

71:                                               ; preds = %56
  %72 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %73 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %72, i32 0, i32 1
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load %struct.iavf_hw*, %struct.iavf_hw** %5, align 8
  %77 = load i32, i32* %6, align 4
  %78 = call i32 @iavf_stat_str(%struct.iavf_hw* %76, i32 %77)
  %79 = sext i32 %78 to i64
  %80 = load %struct.iavf_hw*, %struct.iavf_hw** %5, align 8
  %81 = load %struct.iavf_hw*, %struct.iavf_hw** %5, align 8
  %82 = getelementptr inbounds %struct.iavf_hw, %struct.iavf_hw* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @iavf_aq_str(%struct.iavf_hw* %80, i32 %84)
  %86 = call i32 (i32*, i8*, i64, ...) @dev_err(i32* %75, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i64 %79, i32 %85)
  br label %87

87:                                               ; preds = %71, %56
  %88 = load i32, i32* %6, align 4
  store i32 %88, i32* %2, align 4
  br label %89

89:                                               ; preds = %87, %39, %18
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local i32 @dev_err(i32*, i8*, i64, ...) #1

declare dso_local i32 @iavf_aq_set_rss_key(%struct.iavf_hw*, i32, %struct.iavf_aqc_get_set_rss_key_data*) #1

declare dso_local i32 @iavf_stat_str(%struct.iavf_hw*, i32) #1

declare dso_local i32 @iavf_aq_str(%struct.iavf_hw*, i32) #1

declare dso_local i32 @iavf_aq_set_rss_lut(%struct.iavf_hw*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
