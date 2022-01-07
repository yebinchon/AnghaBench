; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_virtchnl_pf.c_ice_dis_vf_mappings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_virtchnl_pf.c_ice_dis_vf_mappings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_vf = type { i64, i32, i32, %struct.ice_pf* }
%struct.ice_pf = type { i32, %struct.TYPE_2__*, %struct.ice_vsi**, %struct.ice_hw }
%struct.TYPE_2__ = type { i32 }
%struct.ice_vsi = type { i64, i64 }
%struct.ice_hw = type { i32 }

@GLINT_VECT2FUNC_IS_PF_S = common dso_local global i32 0, align 4
@GLINT_VECT2FUNC_IS_PF_M = common dso_local global i32 0, align 4
@GLINT_VECT2FUNC_PF_NUM_S = common dso_local global i32 0, align 4
@GLINT_VECT2FUNC_PF_NUM_M = common dso_local global i32 0, align 4
@ICE_VSI_MAP_CONTIG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [56 x i8] c"Scattered mode for VF Tx queues is not yet implemented\0A\00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"Scattered mode for VF Rx queues is not yet implemented\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ice_vf*)* @ice_dis_vf_mappings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ice_dis_vf_mappings(%struct.ice_vf* %0) #0 {
  %2 = alloca %struct.ice_vf*, align 8
  %3 = alloca %struct.ice_pf*, align 8
  %4 = alloca %struct.ice_vsi*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ice_hw*, align 8
  %9 = alloca i32, align 4
  store %struct.ice_vf* %0, %struct.ice_vf** %2, align 8
  %10 = load %struct.ice_vf*, %struct.ice_vf** %2, align 8
  %11 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %10, i32 0, i32 3
  %12 = load %struct.ice_pf*, %struct.ice_pf** %11, align 8
  store %struct.ice_pf* %12, %struct.ice_pf** %3, align 8
  %13 = load %struct.ice_pf*, %struct.ice_pf** %3, align 8
  %14 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %13, i32 0, i32 3
  store %struct.ice_hw* %14, %struct.ice_hw** %8, align 8
  %15 = load %struct.ice_pf*, %struct.ice_pf** %3, align 8
  %16 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %15, i32 0, i32 2
  %17 = load %struct.ice_vsi**, %struct.ice_vsi*** %16, align 8
  %18 = load %struct.ice_vf*, %struct.ice_vf** %2, align 8
  %19 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.ice_vsi*, %struct.ice_vsi** %17, i64 %20
  %22 = load %struct.ice_vsi*, %struct.ice_vsi** %21, align 8
  store %struct.ice_vsi* %22, %struct.ice_vsi** %4, align 8
  %23 = load %struct.ice_hw*, %struct.ice_hw** %8, align 8
  %24 = load %struct.ice_vf*, %struct.ice_vf** %2, align 8
  %25 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @VPINT_ALLOC(i32 %26)
  %28 = call i32 @wr32(%struct.ice_hw* %23, i32 %27, i32 0)
  %29 = load %struct.ice_hw*, %struct.ice_hw** %8, align 8
  %30 = load %struct.ice_vf*, %struct.ice_vf** %2, align 8
  %31 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @VPINT_ALLOC_PCI(i32 %32)
  %34 = call i32 @wr32(%struct.ice_hw* %29, i32 %33, i32 0)
  %35 = load %struct.ice_vf*, %struct.ice_vf** %2, align 8
  %36 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = load %struct.ice_pf*, %struct.ice_pf** %3, align 8
  %40 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = add nsw i32 %38, %41
  %43 = sub nsw i32 %42, 1
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %5, align 4
  store i32 %44, i32* %7, align 4
  br label %45

45:                                               ; preds = %67, %1
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp sle i32 %46, %47
  br i1 %48, label %49, label %70

49:                                               ; preds = %45
  %50 = load i32, i32* @GLINT_VECT2FUNC_IS_PF_S, align 4
  %51 = shl i32 1, %50
  %52 = load i32, i32* @GLINT_VECT2FUNC_IS_PF_M, align 4
  %53 = and i32 %51, %52
  %54 = load %struct.ice_hw*, %struct.ice_hw** %8, align 8
  %55 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @GLINT_VECT2FUNC_PF_NUM_S, align 4
  %58 = shl i32 %56, %57
  %59 = load i32, i32* @GLINT_VECT2FUNC_PF_NUM_M, align 4
  %60 = and i32 %58, %59
  %61 = or i32 %53, %60
  store i32 %61, i32* %9, align 4
  %62 = load %struct.ice_hw*, %struct.ice_hw** %8, align 8
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @GLINT_VECT2FUNC(i32 %63)
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @wr32(%struct.ice_hw* %62, i32 %64, i32 %65)
  br label %67

67:                                               ; preds = %49
  %68 = load i32, i32* %7, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %7, align 4
  br label %45

70:                                               ; preds = %45
  %71 = load %struct.ice_vsi*, %struct.ice_vsi** %4, align 8
  %72 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @ICE_VSI_MAP_CONTIG, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %83

76:                                               ; preds = %70
  %77 = load %struct.ice_hw*, %struct.ice_hw** %8, align 8
  %78 = load %struct.ice_vf*, %struct.ice_vf** %2, align 8
  %79 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @VPLAN_TX_QBASE(i32 %80)
  %82 = call i32 @wr32(%struct.ice_hw* %77, i32 %81, i32 0)
  br label %89

83:                                               ; preds = %70
  %84 = load %struct.ice_pf*, %struct.ice_pf** %3, align 8
  %85 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %84, i32 0, i32 1
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = call i32 @dev_err(i32* %87, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  br label %89

89:                                               ; preds = %83, %76
  %90 = load %struct.ice_vsi*, %struct.ice_vsi** %4, align 8
  %91 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @ICE_VSI_MAP_CONTIG, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %102

95:                                               ; preds = %89
  %96 = load %struct.ice_hw*, %struct.ice_hw** %8, align 8
  %97 = load %struct.ice_vf*, %struct.ice_vf** %2, align 8
  %98 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @VPLAN_RX_QBASE(i32 %99)
  %101 = call i32 @wr32(%struct.ice_hw* %96, i32 %100, i32 0)
  br label %108

102:                                              ; preds = %89
  %103 = load %struct.ice_pf*, %struct.ice_pf** %3, align 8
  %104 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %103, i32 0, i32 1
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  %107 = call i32 @dev_err(i32* %106, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0))
  br label %108

108:                                              ; preds = %102, %95
  ret void
}

declare dso_local i32 @wr32(%struct.ice_hw*, i32, i32) #1

declare dso_local i32 @VPINT_ALLOC(i32) #1

declare dso_local i32 @VPINT_ALLOC_PCI(i32) #1

declare dso_local i32 @GLINT_VECT2FUNC(i32) #1

declare dso_local i32 @VPLAN_TX_QBASE(i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @VPLAN_RX_QBASE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
