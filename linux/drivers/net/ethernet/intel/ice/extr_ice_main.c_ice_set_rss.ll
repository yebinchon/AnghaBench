; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_main.c_ice_set_rss.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_main.c_ice_set_rss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_vsi = type { i32, i32, %struct.ice_pf* }
%struct.ice_pf = type { %struct.TYPE_3__*, %struct.ice_hw }
%struct.TYPE_3__ = type { i32 }
%struct.ice_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ice_aqc_get_set_rss_keys = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"Cannot set RSS key, err %d aq_err %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Cannot set RSS lut, err %d aq_err %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ice_set_rss(%struct.ice_vsi* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ice_vsi*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ice_pf*, align 8
  %11 = alloca %struct.ice_hw*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.ice_aqc_get_set_rss_keys*, align 8
  store %struct.ice_vsi* %0, %struct.ice_vsi** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.ice_vsi*, %struct.ice_vsi** %6, align 8
  %15 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %14, i32 0, i32 2
  %16 = load %struct.ice_pf*, %struct.ice_pf** %15, align 8
  store %struct.ice_pf* %16, %struct.ice_pf** %10, align 8
  %17 = load %struct.ice_pf*, %struct.ice_pf** %10, align 8
  %18 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %17, i32 0, i32 1
  store %struct.ice_hw* %18, %struct.ice_hw** %11, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %46

21:                                               ; preds = %4
  %22 = load i32*, i32** %7, align 8
  %23 = bitcast i32* %22 to %struct.ice_aqc_get_set_rss_keys*
  store %struct.ice_aqc_get_set_rss_keys* %23, %struct.ice_aqc_get_set_rss_keys** %13, align 8
  %24 = load %struct.ice_hw*, %struct.ice_hw** %11, align 8
  %25 = load %struct.ice_vsi*, %struct.ice_vsi** %6, align 8
  %26 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.ice_aqc_get_set_rss_keys*, %struct.ice_aqc_get_set_rss_keys** %13, align 8
  %29 = call i32 @ice_aq_set_rss_key(%struct.ice_hw* %24, i32 %27, %struct.ice_aqc_get_set_rss_keys* %28)
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %12, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %21
  %33 = load %struct.ice_pf*, %struct.ice_pf** %10, align 8
  %34 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %33, i32 0, i32 0
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %12, align 4
  %38 = load %struct.ice_hw*, %struct.ice_hw** %11, align 8
  %39 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @dev_err(i32* %36, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %41)
  %43 = load i32, i32* @EIO, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %5, align 4
  br label %77

45:                                               ; preds = %21
  br label %46

46:                                               ; preds = %45, %4
  %47 = load i32*, i32** %8, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %76

49:                                               ; preds = %46
  %50 = load %struct.ice_hw*, %struct.ice_hw** %11, align 8
  %51 = load %struct.ice_vsi*, %struct.ice_vsi** %6, align 8
  %52 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.ice_vsi*, %struct.ice_vsi** %6, align 8
  %55 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32*, i32** %8, align 8
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @ice_aq_set_rss_lut(%struct.ice_hw* %50, i32 %53, i32 %56, i32* %57, i32 %58)
  store i32 %59, i32* %12, align 4
  %60 = load i32, i32* %12, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %75

62:                                               ; preds = %49
  %63 = load %struct.ice_pf*, %struct.ice_pf** %10, align 8
  %64 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %63, i32 0, i32 0
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i32, i32* %12, align 4
  %68 = load %struct.ice_hw*, %struct.ice_hw** %11, align 8
  %69 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @dev_err(i32* %66, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %67, i32 %71)
  %73 = load i32, i32* @EIO, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %5, align 4
  br label %77

75:                                               ; preds = %49
  br label %76

76:                                               ; preds = %75, %46
  store i32 0, i32* %5, align 4
  br label %77

77:                                               ; preds = %76, %62, %32
  %78 = load i32, i32* %5, align 4
  ret i32 %78
}

declare dso_local i32 @ice_aq_set_rss_key(%struct.ice_hw*, i32, %struct.ice_aqc_get_set_rss_keys*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

declare dso_local i32 @ice_aq_set_rss_lut(%struct.ice_hw*, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
