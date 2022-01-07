; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_lib.c_ice_vsi_release_msix.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_lib.c_ice_vsi_release_msix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_vsi = type { i32, i32*, i32*, %struct.ice_q_vector**, %struct.ice_pf* }
%struct.ice_q_vector = type { i32, i32, i32 }
%struct.ice_pf = type { %struct.ice_hw }
%struct.ice_hw = type { i32 }

@ICE_IDX_ITR0 = common dso_local global i32 0, align 4
@ICE_IDX_ITR1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ice_vsi*)* @ice_vsi_release_msix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ice_vsi_release_msix(%struct.ice_vsi* %0) #0 {
  %2 = alloca %struct.ice_vsi*, align 8
  %3 = alloca %struct.ice_pf*, align 8
  %4 = alloca %struct.ice_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ice_q_vector*, align 8
  %10 = alloca i32, align 4
  store %struct.ice_vsi* %0, %struct.ice_vsi** %2, align 8
  %11 = load %struct.ice_vsi*, %struct.ice_vsi** %2, align 8
  %12 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %11, i32 0, i32 4
  %13 = load %struct.ice_pf*, %struct.ice_pf** %12, align 8
  store %struct.ice_pf* %13, %struct.ice_pf** %3, align 8
  %14 = load %struct.ice_pf*, %struct.ice_pf** %3, align 8
  %15 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %14, i32 0, i32 0
  store %struct.ice_hw* %15, %struct.ice_hw** %4, align 8
  store i64 0, i64* %5, align 8
  store i64 0, i64* %6, align 8
  store i32 0, i32* %7, align 4
  br label %16

16:                                               ; preds = %87, %1
  %17 = load i32, i32* %7, align 4
  %18 = load %struct.ice_vsi*, %struct.ice_vsi** %2, align 8
  %19 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %90

22:                                               ; preds = %16
  %23 = load %struct.ice_vsi*, %struct.ice_vsi** %2, align 8
  %24 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %23, i32 0, i32 3
  %25 = load %struct.ice_q_vector**, %struct.ice_q_vector*** %24, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.ice_q_vector*, %struct.ice_q_vector** %25, i64 %27
  %29 = load %struct.ice_q_vector*, %struct.ice_q_vector** %28, align 8
  store %struct.ice_q_vector* %29, %struct.ice_q_vector** %9, align 8
  %30 = load %struct.ice_q_vector*, %struct.ice_q_vector** %9, align 8
  %31 = getelementptr inbounds %struct.ice_q_vector, %struct.ice_q_vector* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %10, align 4
  %33 = load %struct.ice_hw*, %struct.ice_hw** %4, align 8
  %34 = load i32, i32* @ICE_IDX_ITR0, align 4
  %35 = load i32, i32* %10, align 4
  %36 = call i32 @GLINT_ITR(i32 %34, i32 %35)
  %37 = call i32 @wr32(%struct.ice_hw* %33, i32 %36, i32 0)
  %38 = load %struct.ice_hw*, %struct.ice_hw** %4, align 8
  %39 = load i32, i32* @ICE_IDX_ITR1, align 4
  %40 = load i32, i32* %10, align 4
  %41 = call i32 @GLINT_ITR(i32 %39, i32 %40)
  %42 = call i32 @wr32(%struct.ice_hw* %38, i32 %41, i32 0)
  store i32 0, i32* %8, align 4
  br label %43

43:                                               ; preds = %61, %22
  %44 = load i32, i32* %8, align 4
  %45 = load %struct.ice_q_vector*, %struct.ice_q_vector** %9, align 8
  %46 = getelementptr inbounds %struct.ice_q_vector, %struct.ice_q_vector* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp slt i32 %44, %47
  br i1 %48, label %49, label %64

49:                                               ; preds = %43
  %50 = load %struct.ice_hw*, %struct.ice_hw** %4, align 8
  %51 = load %struct.ice_vsi*, %struct.ice_vsi** %2, align 8
  %52 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %51, i32 0, i32 2
  %53 = load i32*, i32** %52, align 8
  %54 = load i64, i64* %5, align 8
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @QINT_TQCTL(i32 %56)
  %58 = call i32 @wr32(%struct.ice_hw* %50, i32 %57, i32 0)
  %59 = load i64, i64* %5, align 8
  %60 = add i64 %59, 1
  store i64 %60, i64* %5, align 8
  br label %61

61:                                               ; preds = %49
  %62 = load i32, i32* %8, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %8, align 4
  br label %43

64:                                               ; preds = %43
  store i32 0, i32* %8, align 4
  br label %65

65:                                               ; preds = %83, %64
  %66 = load i32, i32* %8, align 4
  %67 = load %struct.ice_q_vector*, %struct.ice_q_vector** %9, align 8
  %68 = getelementptr inbounds %struct.ice_q_vector, %struct.ice_q_vector* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = icmp slt i32 %66, %69
  br i1 %70, label %71, label %86

71:                                               ; preds = %65
  %72 = load %struct.ice_hw*, %struct.ice_hw** %4, align 8
  %73 = load %struct.ice_vsi*, %struct.ice_vsi** %2, align 8
  %74 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = load i64, i64* %6, align 8
  %77 = getelementptr inbounds i32, i32* %75, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @QINT_RQCTL(i32 %78)
  %80 = call i32 @wr32(%struct.ice_hw* %72, i32 %79, i32 0)
  %81 = load i64, i64* %6, align 8
  %82 = add i64 %81, 1
  store i64 %82, i64* %6, align 8
  br label %83

83:                                               ; preds = %71
  %84 = load i32, i32* %8, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %8, align 4
  br label %65

86:                                               ; preds = %65
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %7, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %7, align 4
  br label %16

90:                                               ; preds = %16
  %91 = load %struct.ice_hw*, %struct.ice_hw** %4, align 8
  %92 = call i32 @ice_flush(%struct.ice_hw* %91)
  ret void
}

declare dso_local i32 @wr32(%struct.ice_hw*, i32, i32) #1

declare dso_local i32 @GLINT_ITR(i32, i32) #1

declare dso_local i32 @QINT_TQCTL(i32) #1

declare dso_local i32 @QINT_RQCTL(i32) #1

declare dso_local i32 @ice_flush(%struct.ice_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
