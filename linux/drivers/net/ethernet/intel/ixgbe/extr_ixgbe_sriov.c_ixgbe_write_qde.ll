; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_sriov.c_ixgbe_write_qde.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_sriov.c_ixgbe_write_qde.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_adapter = type { %struct.ixgbe_ring_feature*, %struct.ixgbe_hw }
%struct.ixgbe_ring_feature = type { i32 }
%struct.ixgbe_hw = type { i32 }

@RING_F_VMDQ = common dso_local global i64 0, align 8
@IXGBE_QDE_WRITE = common dso_local global i32 0, align 4
@IXGBE_QDE_IDX_SHIFT = common dso_local global i32 0, align 4
@IXGBE_QDE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixgbe_adapter*, i32, i32)* @ixgbe_write_qde to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbe_write_qde(%struct.ixgbe_adapter* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ixgbe_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ixgbe_hw*, align 8
  %8 = alloca %struct.ixgbe_ring_feature*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ixgbe_adapter* %0, %struct.ixgbe_adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %13 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %12, i32 0, i32 1
  store %struct.ixgbe_hw* %13, %struct.ixgbe_hw** %7, align 8
  %14 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %15 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %14, i32 0, i32 0
  %16 = load %struct.ixgbe_ring_feature*, %struct.ixgbe_ring_feature** %15, align 8
  %17 = load i64, i64* @RING_F_VMDQ, align 8
  %18 = getelementptr inbounds %struct.ixgbe_ring_feature, %struct.ixgbe_ring_feature* %16, i64 %17
  store %struct.ixgbe_ring_feature* %18, %struct.ixgbe_ring_feature** %8, align 8
  %19 = load %struct.ixgbe_ring_feature*, %struct.ixgbe_ring_feature** %8, align 8
  %20 = getelementptr inbounds %struct.ixgbe_ring_feature, %struct.ixgbe_ring_feature* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = xor i32 %21, -1
  %23 = call i32 @__ALIGN_MASK(i32 1, i32 %22)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* %9, align 4
  %26 = mul nsw i32 %24, %25
  store i32 %26, i32* %10, align 4
  br label %27

27:                                               ; preds = %49, %3
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* %5, align 4
  %30 = add nsw i32 %29, 1
  %31 = load i32, i32* %9, align 4
  %32 = mul nsw i32 %30, %31
  %33 = icmp slt i32 %28, %32
  br i1 %33, label %34, label %52

34:                                               ; preds = %27
  %35 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %36 = call i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw* %35)
  %37 = load i32, i32* @IXGBE_QDE_WRITE, align 4
  %38 = load i32, i32* %6, align 4
  %39 = or i32 %37, %38
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* @IXGBE_QDE_IDX_SHIFT, align 4
  %42 = shl i32 %40, %41
  %43 = load i32, i32* %11, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %11, align 4
  %45 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %46 = load i32, i32* @IXGBE_QDE, align 4
  %47 = load i32, i32* %11, align 4
  %48 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %45, i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %34
  %50 = load i32, i32* %10, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %10, align 4
  br label %27

52:                                               ; preds = %27
  ret void
}

declare dso_local i32 @__ALIGN_MASK(i32, i32) #1

declare dso_local i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw*) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
