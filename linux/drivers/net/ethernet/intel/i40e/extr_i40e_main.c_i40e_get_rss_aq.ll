; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_get_rss_aq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_get_rss_aq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_vsi = type { i64, i32, %struct.i40e_pf* }
%struct.i40e_pf = type { %struct.i40e_hw, %struct.TYPE_3__* }
%struct.i40e_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.i40e_aqc_get_set_rss_key_data = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"Cannot get RSS key, err %s aq_err %s\0A\00", align 1
@I40E_VSI_MAIN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"Cannot get RSS lut, err %s aq_err %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40e_vsi*, i32*, i32*, i32)* @i40e_get_rss_aq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_get_rss_aq(%struct.i40e_vsi* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.i40e_vsi*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.i40e_pf*, align 8
  %11 = alloca %struct.i40e_hw*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.i40e_vsi* %0, %struct.i40e_vsi** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.i40e_vsi*, %struct.i40e_vsi** %6, align 8
  %15 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %14, i32 0, i32 2
  %16 = load %struct.i40e_pf*, %struct.i40e_pf** %15, align 8
  store %struct.i40e_pf* %16, %struct.i40e_pf** %10, align 8
  %17 = load %struct.i40e_pf*, %struct.i40e_pf** %10, align 8
  %18 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %17, i32 0, i32 0
  store %struct.i40e_hw* %18, %struct.i40e_hw** %11, align 8
  store i32 0, i32* %12, align 4
  %19 = load i32*, i32** %7, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %51

21:                                               ; preds = %4
  %22 = load %struct.i40e_hw*, %struct.i40e_hw** %11, align 8
  %23 = load %struct.i40e_vsi*, %struct.i40e_vsi** %6, align 8
  %24 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load i32*, i32** %7, align 8
  %27 = bitcast i32* %26 to %struct.i40e_aqc_get_set_rss_key_data*
  %28 = call i32 @i40e_aq_get_rss_key(%struct.i40e_hw* %22, i32 %25, %struct.i40e_aqc_get_set_rss_key_data* %27)
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %12, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %50

31:                                               ; preds = %21
  %32 = load %struct.i40e_pf*, %struct.i40e_pf** %10, align 8
  %33 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %32, i32 0, i32 1
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load %struct.i40e_pf*, %struct.i40e_pf** %10, align 8
  %37 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %36, i32 0, i32 0
  %38 = load i32, i32* %12, align 4
  %39 = call i32 @i40e_stat_str(%struct.i40e_hw* %37, i32 %38)
  %40 = load %struct.i40e_pf*, %struct.i40e_pf** %10, align 8
  %41 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %40, i32 0, i32 0
  %42 = load %struct.i40e_pf*, %struct.i40e_pf** %10, align 8
  %43 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @i40e_aq_str(%struct.i40e_hw* %41, i32 %46)
  %48 = call i32 @dev_info(i32* %35, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %47)
  %49 = load i32, i32* %12, align 4
  store i32 %49, i32* %5, align 4
  br label %94

50:                                               ; preds = %21
  br label %51

51:                                               ; preds = %50, %4
  %52 = load i32*, i32** %8, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %92

54:                                               ; preds = %51
  %55 = load %struct.i40e_vsi*, %struct.i40e_vsi** %6, align 8
  %56 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @I40E_VSI_MAIN, align 8
  %59 = icmp eq i64 %57, %58
  %60 = zext i1 %59 to i64
  %61 = select i1 %59, i32 1, i32 0
  store i32 %61, i32* %13, align 4
  %62 = load %struct.i40e_hw*, %struct.i40e_hw** %11, align 8
  %63 = load %struct.i40e_vsi*, %struct.i40e_vsi** %6, align 8
  %64 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* %13, align 4
  %67 = load i32*, i32** %8, align 8
  %68 = load i32, i32* %9, align 4
  %69 = call i32 @i40e_aq_get_rss_lut(%struct.i40e_hw* %62, i32 %65, i32 %66, i32* %67, i32 %68)
  store i32 %69, i32* %12, align 4
  %70 = load i32, i32* %12, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %91

72:                                               ; preds = %54
  %73 = load %struct.i40e_pf*, %struct.i40e_pf** %10, align 8
  %74 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %73, i32 0, i32 1
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load %struct.i40e_pf*, %struct.i40e_pf** %10, align 8
  %78 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %77, i32 0, i32 0
  %79 = load i32, i32* %12, align 4
  %80 = call i32 @i40e_stat_str(%struct.i40e_hw* %78, i32 %79)
  %81 = load %struct.i40e_pf*, %struct.i40e_pf** %10, align 8
  %82 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %81, i32 0, i32 0
  %83 = load %struct.i40e_pf*, %struct.i40e_pf** %10, align 8
  %84 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @i40e_aq_str(%struct.i40e_hw* %82, i32 %87)
  %89 = call i32 @dev_info(i32* %76, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %80, i32 %88)
  %90 = load i32, i32* %12, align 4
  store i32 %90, i32* %5, align 4
  br label %94

91:                                               ; preds = %54
  br label %92

92:                                               ; preds = %91, %51
  %93 = load i32, i32* %12, align 4
  store i32 %93, i32* %5, align 4
  br label %94

94:                                               ; preds = %92, %72, %31
  %95 = load i32, i32* %5, align 4
  ret i32 %95
}

declare dso_local i32 @i40e_aq_get_rss_key(%struct.i40e_hw*, i32, %struct.i40e_aqc_get_set_rss_key_data*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32) #1

declare dso_local i32 @i40e_stat_str(%struct.i40e_hw*, i32) #1

declare dso_local i32 @i40e_aq_str(%struct.i40e_hw*, i32) #1

declare dso_local i32 @i40e_aq_get_rss_lut(%struct.i40e_hw*, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
