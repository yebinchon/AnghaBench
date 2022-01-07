; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_get_completion_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_get_completion_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_adapter = type { i32 }

@PCI_EXP_DEVCTL2 = common dso_local global i32 0, align 4
@IXGBE_PCIDEVCTRL2_TIMEO_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ixgbe_adapter*)* @ixgbe_get_completion_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ixgbe_get_completion_timeout(%struct.ixgbe_adapter* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.ixgbe_adapter*, align 8
  %4 = alloca i32, align 4
  store %struct.ixgbe_adapter* %0, %struct.ixgbe_adapter** %3, align 8
  %5 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %6 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @PCI_EXP_DEVCTL2, align 4
  %9 = call i32 @pcie_capability_read_word(i32 %7, i32 %8, i32* %4)
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @IXGBE_PCIDEVCTRL2_TIMEO_MASK, align 4
  %12 = and i32 %10, %11
  switch i32 %12, label %20 [
    i32 134, label %13
    i32 130, label %13
    i32 132, label %13
    i32 131, label %14
    i32 128, label %15
    i32 136, label %16
    i32 133, label %17
    i32 129, label %18
    i32 135, label %19
  ]

13:                                               ; preds = %1, %1, %1
  store i64 2000000, i64* %2, align 8
  br label %22

14:                                               ; preds = %1
  store i64 520000, i64* %2, align 8
  br label %22

15:                                               ; preds = %1
  store i64 130000, i64* %2, align 8
  br label %22

16:                                               ; preds = %1
  store i64 32000, i64* %2, align 8
  br label %22

17:                                               ; preds = %1
  store i64 2000, i64* %2, align 8
  br label %22

18:                                               ; preds = %1
  store i64 100, i64* %2, align 8
  br label %22

19:                                               ; preds = %1
  store i64 32000, i64* %2, align 8
  br label %22

20:                                               ; preds = %1
  br label %21

21:                                               ; preds = %20
  store i64 32000, i64* %2, align 8
  br label %22

22:                                               ; preds = %21, %19, %18, %17, %16, %15, %14, %13
  %23 = load i64, i64* %2, align 8
  ret i64 %23
}

declare dso_local i32 @pcie_capability_read_word(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
