; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_flex_pipe.c_ice_vsig_remove_vsi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_flex_pipe.c_ice_vsig_remove_vsi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_hw = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.ice_vsig_vsi*, %struct.TYPE_4__* }
%struct.ice_vsig_vsi = type { i64, i32, %struct.ice_vsig_vsi* }
%struct.TYPE_4__ = type { %struct.ice_vsig_vsi*, i32 }

@ICE_VSIG_IDX_M = common dso_local global i64 0, align 8
@ICE_MAX_VSI = common dso_local global i64 0, align 8
@ICE_MAX_VSIGS = common dso_local global i64 0, align 8
@ICE_ERR_PARAM = common dso_local global i32 0, align 4
@ICE_ERR_DOES_NOT_EXIST = common dso_local global i32 0, align 4
@ICE_DEFAULT_VSIG = common dso_local global i64 0, align 8
@ICE_ERR_CFG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ice_hw*, i32, i64, i64)* @ice_vsig_remove_vsi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ice_vsig_remove_vsi(%struct.ice_hw* %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ice_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ice_vsig_vsi**, align 8
  %11 = alloca %struct.ice_vsig_vsi*, align 8
  %12 = alloca %struct.ice_vsig_vsi*, align 8
  %13 = alloca i64, align 8
  store %struct.ice_hw* %0, %struct.ice_hw** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load i64, i64* %9, align 8
  %15 = load i64, i64* @ICE_VSIG_IDX_M, align 8
  %16 = and i64 %14, %15
  store i64 %16, i64* %13, align 8
  %17 = load i64, i64* %8, align 8
  %18 = load i64, i64* @ICE_MAX_VSI, align 8
  %19 = icmp uge i64 %17, %18
  br i1 %19, label %24, label %20

20:                                               ; preds = %4
  %21 = load i64, i64* %13, align 8
  %22 = load i64, i64* @ICE_MAX_VSIGS, align 8
  %23 = icmp uge i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %20, %4
  %25 = load i32, i32* @ICE_ERR_PARAM, align 4
  store i32 %25, i32* %5, align 4
  br label %111

26:                                               ; preds = %20
  %27 = load %struct.ice_hw*, %struct.ice_hw** %6, align 8
  %28 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %27, i32 0, i32 0
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = load i32, i32* %7, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = load i64, i64* %13, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %26
  %42 = load i32, i32* @ICE_ERR_DOES_NOT_EXIST, align 4
  store i32 %42, i32* %5, align 4
  br label %111

43:                                               ; preds = %26
  %44 = load i64, i64* %13, align 8
  %45 = load i64, i64* @ICE_DEFAULT_VSIG, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  store i32 0, i32* %5, align 4
  br label %111

48:                                               ; preds = %43
  %49 = load %struct.ice_hw*, %struct.ice_hw** %6, align 8
  %50 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %49, i32 0, i32 0
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = load i32, i32* %7, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = load i64, i64* %13, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  store %struct.ice_vsig_vsi** %60, %struct.ice_vsig_vsi*** %10, align 8
  %61 = load %struct.ice_vsig_vsi**, %struct.ice_vsig_vsi*** %10, align 8
  %62 = load %struct.ice_vsig_vsi*, %struct.ice_vsig_vsi** %61, align 8
  %63 = icmp ne %struct.ice_vsig_vsi* %62, null
  br i1 %63, label %66, label %64

64:                                               ; preds = %48
  %65 = load i32, i32* @ICE_ERR_CFG, align 4
  store i32 %65, i32* %5, align 4
  br label %111

66:                                               ; preds = %48
  %67 = load %struct.ice_hw*, %struct.ice_hw** %6, align 8
  %68 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %67, i32 0, i32 0
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = load i32, i32* %7, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load %struct.ice_vsig_vsi*, %struct.ice_vsig_vsi** %74, align 8
  %76 = load i64, i64* %8, align 8
  %77 = getelementptr inbounds %struct.ice_vsig_vsi, %struct.ice_vsig_vsi* %75, i64 %76
  store %struct.ice_vsig_vsi* %77, %struct.ice_vsig_vsi** %12, align 8
  %78 = load %struct.ice_vsig_vsi**, %struct.ice_vsig_vsi*** %10, align 8
  %79 = load %struct.ice_vsig_vsi*, %struct.ice_vsig_vsi** %78, align 8
  store %struct.ice_vsig_vsi* %79, %struct.ice_vsig_vsi** %11, align 8
  br label %80

80:                                               ; preds = %92, %66
  %81 = load %struct.ice_vsig_vsi*, %struct.ice_vsig_vsi** %11, align 8
  %82 = icmp ne %struct.ice_vsig_vsi* %81, null
  br i1 %82, label %83, label %98

83:                                               ; preds = %80
  %84 = load %struct.ice_vsig_vsi*, %struct.ice_vsig_vsi** %12, align 8
  %85 = load %struct.ice_vsig_vsi*, %struct.ice_vsig_vsi** %11, align 8
  %86 = icmp eq %struct.ice_vsig_vsi* %84, %85
  br i1 %86, label %87, label %92

87:                                               ; preds = %83
  %88 = load %struct.ice_vsig_vsi*, %struct.ice_vsig_vsi** %11, align 8
  %89 = getelementptr inbounds %struct.ice_vsig_vsi, %struct.ice_vsig_vsi* %88, i32 0, i32 2
  %90 = load %struct.ice_vsig_vsi*, %struct.ice_vsig_vsi** %89, align 8
  %91 = load %struct.ice_vsig_vsi**, %struct.ice_vsig_vsi*** %10, align 8
  store %struct.ice_vsig_vsi* %90, %struct.ice_vsig_vsi** %91, align 8
  br label %98

92:                                               ; preds = %83
  %93 = load %struct.ice_vsig_vsi*, %struct.ice_vsig_vsi** %11, align 8
  %94 = getelementptr inbounds %struct.ice_vsig_vsi, %struct.ice_vsig_vsi* %93, i32 0, i32 2
  store %struct.ice_vsig_vsi** %94, %struct.ice_vsig_vsi*** %10, align 8
  %95 = load %struct.ice_vsig_vsi*, %struct.ice_vsig_vsi** %11, align 8
  %96 = getelementptr inbounds %struct.ice_vsig_vsi, %struct.ice_vsig_vsi* %95, i32 0, i32 2
  %97 = load %struct.ice_vsig_vsi*, %struct.ice_vsig_vsi** %96, align 8
  store %struct.ice_vsig_vsi* %97, %struct.ice_vsig_vsi** %11, align 8
  br label %80

98:                                               ; preds = %87, %80
  %99 = load %struct.ice_vsig_vsi*, %struct.ice_vsig_vsi** %11, align 8
  %100 = icmp ne %struct.ice_vsig_vsi* %99, null
  br i1 %100, label %103, label %101

101:                                              ; preds = %98
  %102 = load i32, i32* @ICE_ERR_DOES_NOT_EXIST, align 4
  store i32 %102, i32* %5, align 4
  br label %111

103:                                              ; preds = %98
  %104 = load i64, i64* @ICE_DEFAULT_VSIG, align 8
  %105 = load %struct.ice_vsig_vsi*, %struct.ice_vsig_vsi** %11, align 8
  %106 = getelementptr inbounds %struct.ice_vsig_vsi, %struct.ice_vsig_vsi* %105, i32 0, i32 0
  store i64 %104, i64* %106, align 8
  %107 = load %struct.ice_vsig_vsi*, %struct.ice_vsig_vsi** %11, align 8
  %108 = getelementptr inbounds %struct.ice_vsig_vsi, %struct.ice_vsig_vsi* %107, i32 0, i32 1
  store i32 1, i32* %108, align 8
  %109 = load %struct.ice_vsig_vsi*, %struct.ice_vsig_vsi** %11, align 8
  %110 = getelementptr inbounds %struct.ice_vsig_vsi, %struct.ice_vsig_vsi* %109, i32 0, i32 2
  store %struct.ice_vsig_vsi* null, %struct.ice_vsig_vsi** %110, align 8
  store i32 0, i32* %5, align 4
  br label %111

111:                                              ; preds = %103, %101, %64, %47, %41, %24
  %112 = load i32, i32* %5, align 4
  ret i32 %112
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
