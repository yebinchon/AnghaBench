; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_lib.c_ice_vsi_cfg_msix.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_lib.c_ice_vsi_cfg_msix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_vsi = type { i32, %struct.ice_q_vector**, %struct.ice_pf* }
%struct.ice_q_vector = type { i32, i32, %struct.TYPE_4__, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.ice_pf = type { %struct.ice_hw }
%struct.ice_hw = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ice_vsi_cfg_msix(%struct.ice_vsi* %0) #0 {
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
  %12 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %11, i32 0, i32 2
  %13 = load %struct.ice_pf*, %struct.ice_pf** %12, align 8
  store %struct.ice_pf* %13, %struct.ice_pf** %3, align 8
  %14 = load %struct.ice_pf*, %struct.ice_pf** %3, align 8
  %15 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %14, i32 0, i32 0
  store %struct.ice_hw* %15, %struct.ice_hw** %4, align 8
  store i64 0, i64* %5, align 8
  store i64 0, i64* %6, align 8
  store i32 0, i32* %7, align 4
  br label %16

16:                                               ; preds = %89, %1
  %17 = load i32, i32* %7, align 4
  %18 = load %struct.ice_vsi*, %struct.ice_vsi** %2, align 8
  %19 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %92

22:                                               ; preds = %16
  %23 = load %struct.ice_vsi*, %struct.ice_vsi** %2, align 8
  %24 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %23, i32 0, i32 1
  %25 = load %struct.ice_q_vector**, %struct.ice_q_vector*** %24, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.ice_q_vector*, %struct.ice_q_vector** %25, i64 %27
  %29 = load %struct.ice_q_vector*, %struct.ice_q_vector** %28, align 8
  store %struct.ice_q_vector* %29, %struct.ice_q_vector** %9, align 8
  %30 = load %struct.ice_q_vector*, %struct.ice_q_vector** %9, align 8
  %31 = getelementptr inbounds %struct.ice_q_vector, %struct.ice_q_vector* %30, i32 0, i32 5
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %10, align 4
  %33 = load %struct.ice_hw*, %struct.ice_hw** %4, align 8
  %34 = load %struct.ice_q_vector*, %struct.ice_q_vector** %9, align 8
  %35 = call i32 @ice_cfg_itr(%struct.ice_hw* %33, %struct.ice_q_vector* %34)
  %36 = load %struct.ice_hw*, %struct.ice_hw** %4, align 8
  %37 = load i32, i32* %10, align 4
  %38 = call i32 @GLINT_RATE(i32 %37)
  %39 = load %struct.ice_q_vector*, %struct.ice_q_vector** %9, align 8
  %40 = getelementptr inbounds %struct.ice_q_vector, %struct.ice_q_vector* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.ice_hw*, %struct.ice_hw** %4, align 8
  %43 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @ice_intrl_usec_to_reg(i32 %41, i32 %44)
  %46 = call i32 @wr32(%struct.ice_hw* %36, i32 %38, i32 %45)
  store i32 0, i32* %8, align 4
  br label %47

47:                                               ; preds = %64, %22
  %48 = load i32, i32* %8, align 4
  %49 = load %struct.ice_q_vector*, %struct.ice_q_vector** %9, align 8
  %50 = getelementptr inbounds %struct.ice_q_vector, %struct.ice_q_vector* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp slt i32 %48, %51
  br i1 %52, label %53, label %67

53:                                               ; preds = %47
  %54 = load %struct.ice_vsi*, %struct.ice_vsi** %2, align 8
  %55 = load i64, i64* %5, align 8
  %56 = load i32, i32* %10, align 4
  %57 = load %struct.ice_q_vector*, %struct.ice_q_vector** %9, align 8
  %58 = getelementptr inbounds %struct.ice_q_vector, %struct.ice_q_vector* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @ice_cfg_txq_interrupt(%struct.ice_vsi* %54, i64 %55, i32 %56, i32 %60)
  %62 = load i64, i64* %5, align 8
  %63 = add nsw i64 %62, 1
  store i64 %63, i64* %5, align 8
  br label %64

64:                                               ; preds = %53
  %65 = load i32, i32* %8, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %8, align 4
  br label %47

67:                                               ; preds = %47
  store i32 0, i32* %8, align 4
  br label %68

68:                                               ; preds = %85, %67
  %69 = load i32, i32* %8, align 4
  %70 = load %struct.ice_q_vector*, %struct.ice_q_vector** %9, align 8
  %71 = getelementptr inbounds %struct.ice_q_vector, %struct.ice_q_vector* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = icmp slt i32 %69, %72
  br i1 %73, label %74, label %88

74:                                               ; preds = %68
  %75 = load %struct.ice_vsi*, %struct.ice_vsi** %2, align 8
  %76 = load i64, i64* %6, align 8
  %77 = load i32, i32* %10, align 4
  %78 = load %struct.ice_q_vector*, %struct.ice_q_vector** %9, align 8
  %79 = getelementptr inbounds %struct.ice_q_vector, %struct.ice_q_vector* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @ice_cfg_rxq_interrupt(%struct.ice_vsi* %75, i64 %76, i32 %77, i32 %81)
  %83 = load i64, i64* %6, align 8
  %84 = add nsw i64 %83, 1
  store i64 %84, i64* %6, align 8
  br label %85

85:                                               ; preds = %74
  %86 = load i32, i32* %8, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %8, align 4
  br label %68

88:                                               ; preds = %68
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %7, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %7, align 4
  br label %16

92:                                               ; preds = %16
  ret void
}

declare dso_local i32 @ice_cfg_itr(%struct.ice_hw*, %struct.ice_q_vector*) #1

declare dso_local i32 @wr32(%struct.ice_hw*, i32, i32) #1

declare dso_local i32 @GLINT_RATE(i32) #1

declare dso_local i32 @ice_intrl_usec_to_reg(i32, i32) #1

declare dso_local i32 @ice_cfg_txq_interrupt(%struct.ice_vsi*, i64, i32, i32) #1

declare dso_local i32 @ice_cfg_rxq_interrupt(%struct.ice_vsi*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
