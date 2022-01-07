; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice.h_ice_irq_dynamic_ena.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice.h_ice_irq_dynamic_ena.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_hw = type { i64 }
%struct.ice_vsi = type { i32 }
%struct.ice_q_vector = type { i32 }
%struct.ice_pf = type { i32 }

@ICE_ITR_NONE = common dso_local global i32 0, align 4
@GLINT_DYN_CTL_INTENA_M = common dso_local global i32 0, align 4
@GLINT_DYN_CTL_CLEARPBA_M = common dso_local global i32 0, align 4
@GLINT_DYN_CTL_ITR_INDX_S = common dso_local global i32 0, align 4
@__ICE_DOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ice_hw*, %struct.ice_vsi*, %struct.ice_q_vector*)* @ice_irq_dynamic_ena to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ice_irq_dynamic_ena(%struct.ice_hw* %0, %struct.ice_vsi* %1, %struct.ice_q_vector* %2) #0 {
  %4 = alloca %struct.ice_hw*, align 8
  %5 = alloca %struct.ice_vsi*, align 8
  %6 = alloca %struct.ice_q_vector*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ice_hw* %0, %struct.ice_hw** %4, align 8
  store %struct.ice_vsi* %1, %struct.ice_vsi** %5, align 8
  store %struct.ice_q_vector* %2, %struct.ice_q_vector** %6, align 8
  %10 = load %struct.ice_vsi*, %struct.ice_vsi** %5, align 8
  %11 = icmp ne %struct.ice_vsi* %10, null
  br i1 %11, label %12, label %19

12:                                               ; preds = %3
  %13 = load %struct.ice_q_vector*, %struct.ice_q_vector** %6, align 8
  %14 = icmp ne %struct.ice_q_vector* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %12
  %16 = load %struct.ice_q_vector*, %struct.ice_q_vector** %6, align 8
  %17 = getelementptr inbounds %struct.ice_q_vector, %struct.ice_q_vector* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  br label %26

19:                                               ; preds = %12, %3
  %20 = load %struct.ice_hw*, %struct.ice_hw** %4, align 8
  %21 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.ice_pf*
  %24 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  br label %26

26:                                               ; preds = %19, %15
  %27 = phi i32 [ %18, %15 ], [ %25, %19 ]
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* @ICE_ITR_NONE, align 4
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* @GLINT_DYN_CTL_INTENA_M, align 4
  %30 = load i32, i32* @GLINT_DYN_CTL_CLEARPBA_M, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @GLINT_DYN_CTL_ITR_INDX_S, align 4
  %34 = shl i32 %32, %33
  %35 = or i32 %31, %34
  store i32 %35, i32* %9, align 4
  %36 = load %struct.ice_vsi*, %struct.ice_vsi** %5, align 8
  %37 = icmp ne %struct.ice_vsi* %36, null
  br i1 %37, label %38, label %47

38:                                               ; preds = %26
  %39 = load i32, i32* @__ICE_DOWN, align 4
  %40 = load %struct.ice_vsi*, %struct.ice_vsi** %5, align 8
  %41 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @test_bit(i32 %39, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  br label %53

46:                                               ; preds = %38
  br label %47

47:                                               ; preds = %46, %26
  %48 = load %struct.ice_hw*, %struct.ice_hw** %4, align 8
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @GLINT_DYN_CTL(i32 %49)
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @wr32(%struct.ice_hw* %48, i32 %50, i32 %51)
  br label %53

53:                                               ; preds = %47, %45
  ret void
}

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @wr32(%struct.ice_hw*, i32, i32) #1

declare dso_local i32 @GLINT_DYN_CTL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
