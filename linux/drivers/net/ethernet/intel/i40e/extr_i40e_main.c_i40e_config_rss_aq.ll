; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_config_rss_aq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_config_rss_aq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_vsi = type { i64, i32, %struct.i40e_pf* }
%struct.i40e_pf = type { %struct.TYPE_3__*, %struct.i40e_hw }
%struct.TYPE_3__ = type { i32 }
%struct.i40e_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.i40e_aqc_get_set_rss_key_data = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"Cannot set RSS key, err %s aq_err %s\0A\00", align 1
@I40E_VSI_MAIN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"Cannot set RSS lut, err %s aq_err %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40e_vsi*, i32*, i32*, i32)* @i40e_config_rss_aq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_config_rss_aq(%struct.i40e_vsi* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.i40e_vsi*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.i40e_pf*, align 8
  %11 = alloca %struct.i40e_hw*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.i40e_aqc_get_set_rss_key_data*, align 8
  %14 = alloca i32, align 4
  store %struct.i40e_vsi* %0, %struct.i40e_vsi** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load %struct.i40e_vsi*, %struct.i40e_vsi** %6, align 8
  %16 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %15, i32 0, i32 2
  %17 = load %struct.i40e_pf*, %struct.i40e_pf** %16, align 8
  store %struct.i40e_pf* %17, %struct.i40e_pf** %10, align 8
  %18 = load %struct.i40e_pf*, %struct.i40e_pf** %10, align 8
  %19 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %18, i32 0, i32 1
  store %struct.i40e_hw* %19, %struct.i40e_hw** %11, align 8
  store i32 0, i32* %12, align 4
  %20 = load i32*, i32** %7, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %50

22:                                               ; preds = %4
  %23 = load i32*, i32** %7, align 8
  %24 = bitcast i32* %23 to %struct.i40e_aqc_get_set_rss_key_data*
  store %struct.i40e_aqc_get_set_rss_key_data* %24, %struct.i40e_aqc_get_set_rss_key_data** %13, align 8
  %25 = load %struct.i40e_hw*, %struct.i40e_hw** %11, align 8
  %26 = load %struct.i40e_vsi*, %struct.i40e_vsi** %6, align 8
  %27 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.i40e_aqc_get_set_rss_key_data*, %struct.i40e_aqc_get_set_rss_key_data** %13, align 8
  %30 = call i32 @i40e_aq_set_rss_key(%struct.i40e_hw* %25, i32 %28, %struct.i40e_aqc_get_set_rss_key_data* %29)
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %12, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %49

33:                                               ; preds = %22
  %34 = load %struct.i40e_pf*, %struct.i40e_pf** %10, align 8
  %35 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %34, i32 0, i32 0
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load %struct.i40e_hw*, %struct.i40e_hw** %11, align 8
  %39 = load i32, i32* %12, align 4
  %40 = call i32 @i40e_stat_str(%struct.i40e_hw* %38, i32 %39)
  %41 = load %struct.i40e_hw*, %struct.i40e_hw** %11, align 8
  %42 = load %struct.i40e_hw*, %struct.i40e_hw** %11, align 8
  %43 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @i40e_aq_str(%struct.i40e_hw* %41, i32 %45)
  %47 = call i32 @dev_info(i32* %37, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %46)
  %48 = load i32, i32* %12, align 4
  store i32 %48, i32* %5, align 4
  br label %90

49:                                               ; preds = %22
  br label %50

50:                                               ; preds = %49, %4
  %51 = load i32*, i32** %8, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %88

53:                                               ; preds = %50
  %54 = load %struct.i40e_vsi*, %struct.i40e_vsi** %6, align 8
  %55 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @I40E_VSI_MAIN, align 8
  %58 = icmp eq i64 %56, %57
  %59 = zext i1 %58 to i64
  %60 = select i1 %58, i32 1, i32 0
  store i32 %60, i32* %14, align 4
  %61 = load %struct.i40e_hw*, %struct.i40e_hw** %11, align 8
  %62 = load %struct.i40e_vsi*, %struct.i40e_vsi** %6, align 8
  %63 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* %14, align 4
  %66 = load i32*, i32** %8, align 8
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @i40e_aq_set_rss_lut(%struct.i40e_hw* %61, i32 %64, i32 %65, i32* %66, i32 %67)
  store i32 %68, i32* %12, align 4
  %69 = load i32, i32* %12, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %87

71:                                               ; preds = %53
  %72 = load %struct.i40e_pf*, %struct.i40e_pf** %10, align 8
  %73 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %72, i32 0, i32 0
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load %struct.i40e_hw*, %struct.i40e_hw** %11, align 8
  %77 = load i32, i32* %12, align 4
  %78 = call i32 @i40e_stat_str(%struct.i40e_hw* %76, i32 %77)
  %79 = load %struct.i40e_hw*, %struct.i40e_hw** %11, align 8
  %80 = load %struct.i40e_hw*, %struct.i40e_hw** %11, align 8
  %81 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @i40e_aq_str(%struct.i40e_hw* %79, i32 %83)
  %85 = call i32 @dev_info(i32* %75, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %78, i32 %84)
  %86 = load i32, i32* %12, align 4
  store i32 %86, i32* %5, align 4
  br label %90

87:                                               ; preds = %53
  br label %88

88:                                               ; preds = %87, %50
  %89 = load i32, i32* %12, align 4
  store i32 %89, i32* %5, align 4
  br label %90

90:                                               ; preds = %88, %71, %33
  %91 = load i32, i32* %5, align 4
  ret i32 %91
}

declare dso_local i32 @i40e_aq_set_rss_key(%struct.i40e_hw*, i32, %struct.i40e_aqc_get_set_rss_key_data*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32) #1

declare dso_local i32 @i40e_stat_str(%struct.i40e_hw*, i32) #1

declare dso_local i32 @i40e_aq_str(%struct.i40e_hw*, i32) #1

declare dso_local i32 @i40e_aq_set_rss_lut(%struct.i40e_hw*, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
