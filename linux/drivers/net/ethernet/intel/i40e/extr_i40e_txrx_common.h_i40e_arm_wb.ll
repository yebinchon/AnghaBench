; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_txrx_common.h_i40e_arm_wb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_txrx_common.h_i40e_arm_wb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_ring = type { i32, i64, i32 }
%struct.i40e_vsi = type { i32 }

@I40E_TXR_FLAGS_WB_ON_ITR = common dso_local global i32 0, align 4
@WB_STRIDE = common dso_local global i32 0, align 4
@__I40E_VSI_DOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i40e_ring*, %struct.i40e_vsi*, i32)* @i40e_arm_wb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40e_arm_wb(%struct.i40e_ring* %0, %struct.i40e_vsi* %1, i32 %2) #0 {
  %4 = alloca %struct.i40e_ring*, align 8
  %5 = alloca %struct.i40e_vsi*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.i40e_ring* %0, %struct.i40e_ring** %4, align 8
  store %struct.i40e_vsi* %1, %struct.i40e_vsi** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.i40e_ring*, %struct.i40e_ring** %4, align 8
  %9 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @I40E_TXR_FLAGS_WB_ON_ITR, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %45

14:                                               ; preds = %3
  %15 = load %struct.i40e_ring*, %struct.i40e_ring** %4, align 8
  %16 = call i32 @i40e_get_tx_pending(%struct.i40e_ring* %15, i32 0)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %44

19:                                               ; preds = %14
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @WB_STRIDE, align 4
  %22 = udiv i32 %20, %21
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %44

24:                                               ; preds = %19
  %25 = load i32, i32* %7, align 4
  %26 = icmp ugt i32 %25, 0
  br i1 %26, label %27, label %44

27:                                               ; preds = %24
  %28 = load i32, i32* @__I40E_VSI_DOWN, align 4
  %29 = load %struct.i40e_vsi*, %struct.i40e_vsi** %5, align 8
  %30 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @test_bit(i32 %28, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %44, label %34

34:                                               ; preds = %27
  %35 = load %struct.i40e_ring*, %struct.i40e_ring** %4, align 8
  %36 = call i64 @I40E_DESC_UNUSED(%struct.i40e_ring* %35)
  %37 = load %struct.i40e_ring*, %struct.i40e_ring** %4, align 8
  %38 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %36, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %34
  %42 = load %struct.i40e_ring*, %struct.i40e_ring** %4, align 8
  %43 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %42, i32 0, i32 2
  store i32 1, i32* %43, align 8
  br label %44

44:                                               ; preds = %41, %34, %27, %24, %19, %14
  br label %45

45:                                               ; preds = %44, %3
  ret void
}

declare dso_local i32 @i40e_get_tx_pending(%struct.i40e_ring*, i32) #1

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local i64 @I40E_DESC_UNUSED(%struct.i40e_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
