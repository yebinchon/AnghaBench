; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_lib.c_ice_vsi_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_lib.c_ice_vsi_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_vsi = type { i32, i64, i32, i32, %struct.ice_pf* }
%struct.ice_pf = type { i64, i32, %struct.TYPE_2__*, i32, %struct.ice_vsi** }
%struct.TYPE_2__ = type { i32 }

@ICE_NO_VSI = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"out of VSI slots!\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@__ICE_DOWN = common dso_local global i32 0, align 4
@ICE_INVAL_VFID = common dso_local global i32 0, align 4
@ice_msix_clean_rings = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Unknown VSI type %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ice_vsi* (%struct.ice_pf*, i32, i32)* @ice_vsi_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ice_vsi* @ice_vsi_alloc(%struct.ice_pf* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ice_pf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ice_vsi*, align 8
  store %struct.ice_pf* %0, %struct.ice_pf** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store %struct.ice_vsi* null, %struct.ice_vsi** %7, align 8
  %8 = load %struct.ice_pf*, %struct.ice_pf** %4, align 8
  %9 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %8, i32 0, i32 1
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load %struct.ice_pf*, %struct.ice_pf** %4, align 8
  %12 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @ICE_NO_VSI, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %3
  %17 = load %struct.ice_pf*, %struct.ice_pf** %4, align 8
  %18 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %17, i32 0, i32 2
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = call i32 @dev_dbg(i32* %20, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %121

22:                                               ; preds = %3
  %23 = load %struct.ice_pf*, %struct.ice_pf** %4, align 8
  %24 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %23, i32 0, i32 2
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call %struct.ice_vsi* @devm_kzalloc(i32* %26, i32 32, i32 %27)
  store %struct.ice_vsi* %28, %struct.ice_vsi** %7, align 8
  %29 = load %struct.ice_vsi*, %struct.ice_vsi** %7, align 8
  %30 = icmp ne %struct.ice_vsi* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %22
  br label %121

32:                                               ; preds = %22
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.ice_vsi*, %struct.ice_vsi** %7, align 8
  %35 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load %struct.ice_pf*, %struct.ice_pf** %4, align 8
  %37 = load %struct.ice_vsi*, %struct.ice_vsi** %7, align 8
  %38 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %37, i32 0, i32 4
  store %struct.ice_pf* %36, %struct.ice_pf** %38, align 8
  %39 = load i32, i32* @__ICE_DOWN, align 4
  %40 = load %struct.ice_vsi*, %struct.ice_vsi** %7, align 8
  %41 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @set_bit(i32 %39, i32 %42)
  %44 = load %struct.ice_pf*, %struct.ice_pf** %4, align 8
  %45 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.ice_vsi*, %struct.ice_vsi** %7, align 8
  %48 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %47, i32 0, i32 1
  store i64 %46, i64* %48, align 8
  %49 = load i32, i32* %5, align 4
  %50 = icmp eq i32 %49, 128
  br i1 %50, label %51, label %55

51:                                               ; preds = %32
  %52 = load %struct.ice_vsi*, %struct.ice_vsi** %7, align 8
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @ice_vsi_set_num_qs(%struct.ice_vsi* %52, i32 %53)
  br label %59

55:                                               ; preds = %32
  %56 = load %struct.ice_vsi*, %struct.ice_vsi** %7, align 8
  %57 = load i32, i32* @ICE_INVAL_VFID, align 4
  %58 = call i32 @ice_vsi_set_num_qs(%struct.ice_vsi* %56, i32 %57)
  br label %59

59:                                               ; preds = %55, %51
  %60 = load %struct.ice_vsi*, %struct.ice_vsi** %7, align 8
  %61 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  switch i32 %62, label %84 [
    i32 129, label %63
    i32 128, label %72
    i32 130, label %78
  ]

63:                                               ; preds = %59
  %64 = load %struct.ice_vsi*, %struct.ice_vsi** %7, align 8
  %65 = call i32 @ice_vsi_alloc_arrays(%struct.ice_vsi* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %63
  br label %114

68:                                               ; preds = %63
  %69 = load i32, i32* @ice_msix_clean_rings, align 4
  %70 = load %struct.ice_vsi*, %struct.ice_vsi** %7, align 8
  %71 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 8
  br label %93

72:                                               ; preds = %59
  %73 = load %struct.ice_vsi*, %struct.ice_vsi** %7, align 8
  %74 = call i32 @ice_vsi_alloc_arrays(%struct.ice_vsi* %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %72
  br label %114

77:                                               ; preds = %72
  br label %93

78:                                               ; preds = %59
  %79 = load %struct.ice_vsi*, %struct.ice_vsi** %7, align 8
  %80 = call i32 @ice_vsi_alloc_arrays(%struct.ice_vsi* %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %78
  br label %114

83:                                               ; preds = %78
  br label %93

84:                                               ; preds = %59
  %85 = load %struct.ice_pf*, %struct.ice_pf** %4, align 8
  %86 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %85, i32 0, i32 2
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load %struct.ice_vsi*, %struct.ice_vsi** %7, align 8
  %90 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @dev_warn(i32* %88, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %91)
  br label %121

93:                                               ; preds = %83, %77, %68
  %94 = load %struct.ice_vsi*, %struct.ice_vsi** %7, align 8
  %95 = load %struct.ice_pf*, %struct.ice_pf** %4, align 8
  %96 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %95, i32 0, i32 4
  %97 = load %struct.ice_vsi**, %struct.ice_vsi*** %96, align 8
  %98 = load %struct.ice_pf*, %struct.ice_pf** %4, align 8
  %99 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = getelementptr inbounds %struct.ice_vsi*, %struct.ice_vsi** %97, i64 %100
  store %struct.ice_vsi* %94, %struct.ice_vsi** %101, align 8
  %102 = load %struct.ice_pf*, %struct.ice_pf** %4, align 8
  %103 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %102, i32 0, i32 4
  %104 = load %struct.ice_vsi**, %struct.ice_vsi*** %103, align 8
  %105 = load %struct.ice_pf*, %struct.ice_pf** %4, align 8
  %106 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.ice_pf*, %struct.ice_pf** %4, align 8
  %109 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = call i64 @ice_get_free_slot(%struct.ice_vsi** %104, i32 %107, i64 %110)
  %112 = load %struct.ice_pf*, %struct.ice_pf** %4, align 8
  %113 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %112, i32 0, i32 0
  store i64 %111, i64* %113, align 8
  br label %121

114:                                              ; preds = %82, %76, %67
  %115 = load %struct.ice_pf*, %struct.ice_pf** %4, align 8
  %116 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %115, i32 0, i32 2
  %117 = load %struct.TYPE_2__*, %struct.TYPE_2__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 0
  %119 = load %struct.ice_vsi*, %struct.ice_vsi** %7, align 8
  %120 = call i32 @devm_kfree(i32* %118, %struct.ice_vsi* %119)
  store %struct.ice_vsi* null, %struct.ice_vsi** %7, align 8
  br label %121

121:                                              ; preds = %114, %93, %84, %31, %16
  %122 = load %struct.ice_pf*, %struct.ice_pf** %4, align 8
  %123 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %122, i32 0, i32 1
  %124 = call i32 @mutex_unlock(i32* %123)
  %125 = load %struct.ice_vsi*, %struct.ice_vsi** %7, align 8
  ret %struct.ice_vsi* %125
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local %struct.ice_vsi* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @ice_vsi_set_num_qs(%struct.ice_vsi*, i32) #1

declare dso_local i32 @ice_vsi_alloc_arrays(%struct.ice_vsi*) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i64 @ice_get_free_slot(%struct.ice_vsi**, i32, i64) #1

declare dso_local i32 @devm_kfree(i32*, %struct.ice_vsi*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
