; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbevf/extr_ixgbevf_main.c_ixgbevf_disable_rx_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbevf/extr_ixgbevf_main.c_ixgbevf_disable_rx_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbevf_adapter = type { %struct.ixgbe_hw }
%struct.ixgbe_hw = type { i32 }
%struct.ixgbevf_ring = type { i32 }

@IXGBEVF_MAX_RX_DESC_POLL = common dso_local global i32 0, align 4
@IXGBE_RXDCTL_ENABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"RXDCTL.ENABLE queue %d not cleared while polling\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixgbevf_adapter*, %struct.ixgbevf_ring*)* @ixgbevf_disable_rx_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbevf_disable_rx_queue(%struct.ixgbevf_adapter* %0, %struct.ixgbevf_ring* %1) #0 {
  %3 = alloca %struct.ixgbevf_adapter*, align 8
  %4 = alloca %struct.ixgbevf_ring*, align 8
  %5 = alloca %struct.ixgbe_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ixgbevf_adapter* %0, %struct.ixgbevf_adapter** %3, align 8
  store %struct.ixgbevf_ring* %1, %struct.ixgbevf_ring** %4, align 8
  %9 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %10 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %9, i32 0, i32 0
  store %struct.ixgbe_hw* %10, %struct.ixgbe_hw** %5, align 8
  %11 = load i32, i32* @IXGBEVF_MAX_RX_DESC_POLL, align 4
  store i32 %11, i32* %6, align 4
  %12 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %4, align 8
  %13 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %8, align 4
  %15 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %16 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @IXGBE_REMOVED(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  br label %58

21:                                               ; preds = %2
  %22 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @IXGBE_VFRXDCTL(i32 %23)
  %25 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %22, i32 %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* @IXGBE_RXDCTL_ENABLE, align 4
  %27 = xor i32 %26, -1
  %28 = load i32, i32* %7, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %7, align 4
  %30 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @IXGBE_VFRXDCTL(i32 %31)
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %30, i32 %32, i32 %33)
  br label %35

35:                                               ; preds = %50, %21
  %36 = call i32 @udelay(i32 10)
  %37 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @IXGBE_VFRXDCTL(i32 %38)
  %40 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %37, i32 %39)
  store i32 %40, i32* %7, align 4
  br label %41

41:                                               ; preds = %35
  %42 = load i32, i32* %6, align 4
  %43 = add nsw i32 %42, -1
  store i32 %43, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %41
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @IXGBE_RXDCTL_ENABLE, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br label %50

50:                                               ; preds = %45, %41
  %51 = phi i1 [ false, %41 ], [ %49, %45 ]
  br i1 %51, label %35, label %52

52:                                               ; preds = %50
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %52
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @pr_err(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %56)
  br label %58

58:                                               ; preds = %20, %55, %52
  ret void
}

declare dso_local i64 @IXGBE_REMOVED(i32) #1

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_VFRXDCTL(i32) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
