; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbevf/extr_ixgbevf_main.c_ixgbevf_rx_desc_queue_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbevf/extr_ixgbevf_main.c_ixgbevf_rx_desc_queue_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbevf_adapter = type { %struct.ixgbe_hw }
%struct.ixgbe_hw = type { i32 }
%struct.ixgbevf_ring = type { i32 }

@IXGBEVF_MAX_RX_DESC_POLL = common dso_local global i32 0, align 4
@IXGBE_RXDCTL_ENABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"RXDCTL.ENABLE queue %d not set while polling\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixgbevf_adapter*, %struct.ixgbevf_ring*)* @ixgbevf_rx_desc_queue_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbevf_rx_desc_queue_enable(%struct.ixgbevf_adapter* %0, %struct.ixgbevf_ring* %1) #0 {
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
  br label %46

21:                                               ; preds = %2
  br label %22

22:                                               ; preds = %38, %21
  %23 = call i32 @usleep_range(i32 1000, i32 2000)
  %24 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @IXGBE_VFRXDCTL(i32 %25)
  %27 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %24, i32 %26)
  store i32 %27, i32* %7, align 4
  br label %28

28:                                               ; preds = %22
  %29 = load i32, i32* %6, align 4
  %30 = add nsw i32 %29, -1
  store i32 %30, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %28
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @IXGBE_RXDCTL_ENABLE, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  br label %38

38:                                               ; preds = %32, %28
  %39 = phi i1 [ false, %28 ], [ %37, %32 ]
  br i1 %39, label %22, label %40

40:                                               ; preds = %38
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %40
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @pr_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %44)
  br label %46

46:                                               ; preds = %20, %43, %40
  ret void
}

declare dso_local i64 @IXGBE_REMOVED(i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_VFRXDCTL(i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
