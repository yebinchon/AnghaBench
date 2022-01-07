; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbevf/extr_ixgbevf_main.c_ixgbevf_get_tx_pending.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbevf/extr_ixgbevf_main.c_ixgbevf_get_tx_pending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbevf_ring = type { i64, i32, i32 }
%struct.ixgbevf_adapter = type { %struct.ixgbe_hw }
%struct.ixgbe_hw = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ixgbevf_ring*)* @ixgbevf_get_tx_pending to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ixgbevf_get_tx_pending(%struct.ixgbevf_ring* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.ixgbevf_ring*, align 8
  %4 = alloca %struct.ixgbevf_adapter*, align 8
  %5 = alloca %struct.ixgbe_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.ixgbevf_ring* %0, %struct.ixgbevf_ring** %3, align 8
  %8 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %3, align 8
  %9 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.ixgbevf_adapter* @netdev_priv(i32 %10)
  store %struct.ixgbevf_adapter* %11, %struct.ixgbevf_adapter** %4, align 8
  %12 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %4, align 8
  %13 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %12, i32 0, i32 0
  store %struct.ixgbe_hw* %13, %struct.ixgbe_hw** %5, align 8
  %14 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %15 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %3, align 8
  %16 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @IXGBE_VFTDH(i32 %17)
  %19 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %14, i32 %18)
  store i64 %19, i64* %6, align 8
  %20 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %21 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %3, align 8
  %22 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @IXGBE_VFTDT(i32 %23)
  %25 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %20, i32 %24)
  store i64 %25, i64* %7, align 8
  %26 = load i64, i64* %6, align 8
  %27 = load i64, i64* %7, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %47

29:                                               ; preds = %1
  %30 = load i64, i64* %6, align 8
  %31 = load i64, i64* %7, align 8
  %32 = icmp slt i64 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = load i64, i64* %7, align 8
  %35 = load i64, i64* %6, align 8
  %36 = sub nsw i64 %34, %35
  br label %45

37:                                               ; preds = %29
  %38 = load i64, i64* %7, align 8
  %39 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %3, align 8
  %40 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %38, %41
  %43 = load i64, i64* %6, align 8
  %44 = sub nsw i64 %42, %43
  br label %45

45:                                               ; preds = %37, %33
  %46 = phi i64 [ %36, %33 ], [ %44, %37 ]
  store i64 %46, i64* %2, align 8
  br label %48

47:                                               ; preds = %1
  store i64 0, i64* %2, align 8
  br label %48

48:                                               ; preds = %47, %45
  %49 = load i64, i64* %2, align 8
  ret i64 %49
}

declare dso_local %struct.ixgbevf_adapter* @netdev_priv(i32) #1

declare dso_local i64 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_VFTDH(i32) #1

declare dso_local i32 @IXGBE_VFTDT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
