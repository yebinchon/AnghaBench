; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_flex_pipe.c_ice_vsig_add_mv_vsi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_flex_pipe.c_ice_vsig_add_mv_vsi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_hw = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64*, %struct.ice_vsig_vsi*, %struct.TYPE_4__* }
%struct.ice_vsig_vsi = type { i64, i32, %struct.ice_vsig_vsi* }
%struct.TYPE_4__ = type { %struct.ice_vsig_vsi*, i32 }

@ICE_VSIG_IDX_M = common dso_local global i64 0, align 8
@ICE_MAX_VSI = common dso_local global i64 0, align 8
@ICE_MAX_VSIGS = common dso_local global i64 0, align 8
@ICE_ERR_PARAM = common dso_local global i32 0, align 4
@ICE_DEFAULT_VSIG = common dso_local global i64 0, align 8
@ICE_ERR_DOES_NOT_EXIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ice_hw*, i32, i64, i64)* @ice_vsig_add_mv_vsi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ice_vsig_add_mv_vsi(%struct.ice_hw* %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ice_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ice_vsig_vsi*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
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
  br label %168

26:                                               ; preds = %20
  %27 = load %struct.ice_hw*, %struct.ice_hw** %6, align 8
  %28 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %27, i32 0, i32 0
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = load i32, i32* %7, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 2
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = load i64, i64* %13, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %26
  %42 = load i64, i64* %9, align 8
  %43 = load i64, i64* @ICE_DEFAULT_VSIG, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = load i32, i32* @ICE_ERR_DOES_NOT_EXIST, align 4
  store i32 %46, i32* %5, align 4
  br label %168

47:                                               ; preds = %41, %26
  %48 = load %struct.ice_hw*, %struct.ice_hw** %6, align 8
  %49 = load i32, i32* %7, align 4
  %50 = load i64, i64* %8, align 8
  %51 = call i32 @ice_vsig_find_vsi(%struct.ice_hw* %48, i32 %49, i64 %50, i64* %12)
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* %11, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %47
  %55 = load i32, i32* %11, align 4
  store i32 %55, i32* %5, align 4
  br label %168

56:                                               ; preds = %47
  %57 = load i64, i64* %12, align 8
  %58 = load i64, i64* %9, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  store i32 0, i32* %5, align 4
  br label %168

61:                                               ; preds = %56
  %62 = load i64, i64* %12, align 8
  %63 = load i64, i64* @ICE_DEFAULT_VSIG, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %76

65:                                               ; preds = %61
  %66 = load %struct.ice_hw*, %struct.ice_hw** %6, align 8
  %67 = load i32, i32* %7, align 4
  %68 = load i64, i64* %8, align 8
  %69 = load i64, i64* %12, align 8
  %70 = call i32 @ice_vsig_remove_vsi(%struct.ice_hw* %66, i32 %67, i64 %68, i64 %69)
  store i32 %70, i32* %11, align 4
  %71 = load i32, i32* %11, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %65
  %74 = load i32, i32* %11, align 4
  store i32 %74, i32* %5, align 4
  br label %168

75:                                               ; preds = %65
  br label %76

76:                                               ; preds = %75, %61
  %77 = load i64, i64* %13, align 8
  %78 = load i64, i64* @ICE_DEFAULT_VSIG, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %76
  store i32 0, i32* %5, align 4
  br label %168

81:                                               ; preds = %76
  %82 = load i64, i64* %9, align 8
  %83 = load %struct.ice_hw*, %struct.ice_hw** %6, align 8
  %84 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %83, i32 0, i32 0
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %84, align 8
  %86 = load i32, i32* %7, align 4
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 1
  %91 = load %struct.ice_vsig_vsi*, %struct.ice_vsig_vsi** %90, align 8
  %92 = load i64, i64* %8, align 8
  %93 = getelementptr inbounds %struct.ice_vsig_vsi, %struct.ice_vsig_vsi* %91, i64 %92
  %94 = getelementptr inbounds %struct.ice_vsig_vsi, %struct.ice_vsig_vsi* %93, i32 0, i32 0
  store i64 %82, i64* %94, align 8
  %95 = load %struct.ice_hw*, %struct.ice_hw** %6, align 8
  %96 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %95, i32 0, i32 0
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %96, align 8
  %98 = load i32, i32* %7, align 4
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 1
  %103 = load %struct.ice_vsig_vsi*, %struct.ice_vsig_vsi** %102, align 8
  %104 = load i64, i64* %8, align 8
  %105 = getelementptr inbounds %struct.ice_vsig_vsi, %struct.ice_vsig_vsi* %103, i64 %104
  %106 = getelementptr inbounds %struct.ice_vsig_vsi, %struct.ice_vsig_vsi* %105, i32 0, i32 1
  store i32 1, i32* %106, align 8
  %107 = load %struct.ice_hw*, %struct.ice_hw** %6, align 8
  %108 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %107, i32 0, i32 0
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %108, align 8
  %110 = load i32, i32* %7, align 4
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 2
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %114, align 8
  %116 = load i64, i64* %13, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  %119 = load %struct.ice_vsig_vsi*, %struct.ice_vsig_vsi** %118, align 8
  store %struct.ice_vsig_vsi* %119, %struct.ice_vsig_vsi** %10, align 8
  %120 = load %struct.ice_hw*, %struct.ice_hw** %6, align 8
  %121 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %120, i32 0, i32 0
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %121, align 8
  %123 = load i32, i32* %7, align 4
  %124 = zext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 1
  %128 = load %struct.ice_vsig_vsi*, %struct.ice_vsig_vsi** %127, align 8
  %129 = load i64, i64* %8, align 8
  %130 = getelementptr inbounds %struct.ice_vsig_vsi, %struct.ice_vsig_vsi* %128, i64 %129
  %131 = load %struct.ice_hw*, %struct.ice_hw** %6, align 8
  %132 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %131, i32 0, i32 0
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %132, align 8
  %134 = load i32, i32* %7, align 4
  %135 = zext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 2
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** %138, align 8
  %140 = load i64, i64* %13, align 8
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 0
  store %struct.ice_vsig_vsi* %130, %struct.ice_vsig_vsi** %142, align 8
  %143 = load %struct.ice_vsig_vsi*, %struct.ice_vsig_vsi** %10, align 8
  %144 = load %struct.ice_hw*, %struct.ice_hw** %6, align 8
  %145 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %144, i32 0, i32 0
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %145, align 8
  %147 = load i32, i32* %7, align 4
  %148 = zext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 1
  %152 = load %struct.ice_vsig_vsi*, %struct.ice_vsig_vsi** %151, align 8
  %153 = load i64, i64* %8, align 8
  %154 = getelementptr inbounds %struct.ice_vsig_vsi, %struct.ice_vsig_vsi* %152, i64 %153
  %155 = getelementptr inbounds %struct.ice_vsig_vsi, %struct.ice_vsig_vsi* %154, i32 0, i32 2
  store %struct.ice_vsig_vsi* %143, %struct.ice_vsig_vsi** %155, align 8
  %156 = load i64, i64* %9, align 8
  %157 = load %struct.ice_hw*, %struct.ice_hw** %6, align 8
  %158 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %157, i32 0, i32 0
  %159 = load %struct.TYPE_6__*, %struct.TYPE_6__** %158, align 8
  %160 = load i32, i32* %7, align 4
  %161 = zext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %163, i32 0, i32 0
  %165 = load i64*, i64** %164, align 8
  %166 = load i64, i64* %8, align 8
  %167 = getelementptr inbounds i64, i64* %165, i64 %166
  store i64 %156, i64* %167, align 8
  store i32 0, i32* %5, align 4
  br label %168

168:                                              ; preds = %81, %80, %73, %60, %54, %45, %24
  %169 = load i32, i32* %5, align 4
  ret i32 %169
}

declare dso_local i32 @ice_vsig_find_vsi(%struct.ice_hw*, i32, i64, i64*) #1

declare dso_local i32 @ice_vsig_remove_vsi(%struct.ice_hw*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
