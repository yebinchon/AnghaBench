; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_flex_pipe.c_ice_ptg_remove_ptype.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_flex_pipe.c_ice_ptg_remove_ptype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_hw = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.ice_ptg_ptype*, %struct.TYPE_4__* }
%struct.ice_ptg_ptype = type { %struct.ice_ptg_ptype*, i32 }
%struct.TYPE_4__ = type { %struct.ice_ptg_ptype*, i32 }

@ICE_XLT1_CNT = common dso_local global i32 0, align 4
@ICE_ERR_PARAM = common dso_local global i32 0, align 4
@ICE_ERR_DOES_NOT_EXIST = common dso_local global i32 0, align 4
@ICE_ERR_CFG = common dso_local global i32 0, align 4
@ICE_DEFAULT_PTG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ice_hw*, i32, i32, i64)* @ice_ptg_remove_ptype to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ice_ptg_remove_ptype(%struct.ice_hw* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ice_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.ice_ptg_ptype**, align 8
  %11 = alloca %struct.ice_ptg_ptype*, align 8
  store %struct.ice_hw* %0, %struct.ice_hw** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* @ICE_XLT1_CNT, align 4
  %14 = sub nsw i32 %13, 1
  %15 = icmp sgt i32 %12, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %4
  %17 = load i32, i32* @ICE_ERR_PARAM, align 4
  store i32 %17, i32* %5, align 4
  br label %138

18:                                               ; preds = %4
  %19 = load %struct.ice_hw*, %struct.ice_hw** %6, align 8
  %20 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %19, i32 0, i32 0
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = load i32, i32* %7, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = load i64, i64* %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %18
  %34 = load i32, i32* @ICE_ERR_DOES_NOT_EXIST, align 4
  store i32 %34, i32* %5, align 4
  br label %138

35:                                               ; preds = %18
  %36 = load %struct.ice_hw*, %struct.ice_hw** %6, align 8
  %37 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %36, i32 0, i32 0
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = load i32, i32* %7, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = load i64, i64* %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load %struct.ice_ptg_ptype*, %struct.ice_ptg_ptype** %47, align 8
  %49 = icmp ne %struct.ice_ptg_ptype* %48, null
  br i1 %49, label %52, label %50

50:                                               ; preds = %35
  %51 = load i32, i32* @ICE_ERR_CFG, align 4
  store i32 %51, i32* %5, align 4
  br label %138

52:                                               ; preds = %35
  %53 = load %struct.ice_hw*, %struct.ice_hw** %6, align 8
  %54 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %53, i32 0, i32 0
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = load i32, i32* %7, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = load i64, i64* %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load %struct.ice_ptg_ptype*, %struct.ice_ptg_ptype** %64, align 8
  store %struct.ice_ptg_ptype* %65, %struct.ice_ptg_ptype** %11, align 8
  %66 = load %struct.ice_hw*, %struct.ice_hw** %6, align 8
  %67 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %66, i32 0, i32 0
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %67, align 8
  %69 = load i32, i32* %7, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = load i64, i64* %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  store %struct.ice_ptg_ptype** %77, %struct.ice_ptg_ptype*** %10, align 8
  br label %78

78:                                               ; preds = %104, %52
  %79 = load %struct.ice_ptg_ptype*, %struct.ice_ptg_ptype** %11, align 8
  %80 = icmp ne %struct.ice_ptg_ptype* %79, null
  br i1 %80, label %81, label %110

81:                                               ; preds = %78
  %82 = load i32, i32* %8, align 4
  %83 = sext i32 %82 to i64
  %84 = load %struct.ice_ptg_ptype*, %struct.ice_ptg_ptype** %11, align 8
  %85 = load %struct.ice_hw*, %struct.ice_hw** %6, align 8
  %86 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %85, i32 0, i32 0
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %86, align 8
  %88 = load i32, i32* %7, align 4
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  %93 = load %struct.ice_ptg_ptype*, %struct.ice_ptg_ptype** %92, align 8
  %94 = ptrtoint %struct.ice_ptg_ptype* %84 to i64
  %95 = ptrtoint %struct.ice_ptg_ptype* %93 to i64
  %96 = sub i64 %94, %95
  %97 = sdiv exact i64 %96, 16
  %98 = icmp eq i64 %83, %97
  br i1 %98, label %99, label %104

99:                                               ; preds = %81
  %100 = load %struct.ice_ptg_ptype*, %struct.ice_ptg_ptype** %11, align 8
  %101 = getelementptr inbounds %struct.ice_ptg_ptype, %struct.ice_ptg_ptype* %100, i32 0, i32 0
  %102 = load %struct.ice_ptg_ptype*, %struct.ice_ptg_ptype** %101, align 8
  %103 = load %struct.ice_ptg_ptype**, %struct.ice_ptg_ptype*** %10, align 8
  store %struct.ice_ptg_ptype* %102, %struct.ice_ptg_ptype** %103, align 8
  br label %110

104:                                              ; preds = %81
  %105 = load %struct.ice_ptg_ptype*, %struct.ice_ptg_ptype** %11, align 8
  %106 = getelementptr inbounds %struct.ice_ptg_ptype, %struct.ice_ptg_ptype* %105, i32 0, i32 0
  store %struct.ice_ptg_ptype** %106, %struct.ice_ptg_ptype*** %10, align 8
  %107 = load %struct.ice_ptg_ptype*, %struct.ice_ptg_ptype** %11, align 8
  %108 = getelementptr inbounds %struct.ice_ptg_ptype, %struct.ice_ptg_ptype* %107, i32 0, i32 0
  %109 = load %struct.ice_ptg_ptype*, %struct.ice_ptg_ptype** %108, align 8
  store %struct.ice_ptg_ptype* %109, %struct.ice_ptg_ptype** %11, align 8
  br label %78

110:                                              ; preds = %99, %78
  %111 = load i32, i32* @ICE_DEFAULT_PTG, align 4
  %112 = load %struct.ice_hw*, %struct.ice_hw** %6, align 8
  %113 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %112, i32 0, i32 0
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %113, align 8
  %115 = load i32, i32* %7, align 4
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 0
  %120 = load %struct.ice_ptg_ptype*, %struct.ice_ptg_ptype** %119, align 8
  %121 = load i32, i32* %8, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.ice_ptg_ptype, %struct.ice_ptg_ptype* %120, i64 %122
  %124 = getelementptr inbounds %struct.ice_ptg_ptype, %struct.ice_ptg_ptype* %123, i32 0, i32 1
  store i32 %111, i32* %124, align 8
  %125 = load %struct.ice_hw*, %struct.ice_hw** %6, align 8
  %126 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %125, i32 0, i32 0
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %126, align 8
  %128 = load i32, i32* %7, align 4
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 0
  %133 = load %struct.ice_ptg_ptype*, %struct.ice_ptg_ptype** %132, align 8
  %134 = load i32, i32* %8, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.ice_ptg_ptype, %struct.ice_ptg_ptype* %133, i64 %135
  %137 = getelementptr inbounds %struct.ice_ptg_ptype, %struct.ice_ptg_ptype* %136, i32 0, i32 0
  store %struct.ice_ptg_ptype* null, %struct.ice_ptg_ptype** %137, align 8
  store i32 0, i32* %5, align 4
  br label %138

138:                                              ; preds = %110, %50, %33, %16
  %139 = load i32, i32* %5, align 4
  ret i32 %139
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
