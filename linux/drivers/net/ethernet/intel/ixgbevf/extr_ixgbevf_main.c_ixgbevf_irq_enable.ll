; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbevf/extr_ixgbevf_main.c_ixgbevf_irq_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbevf/extr_ixgbevf_main.c_ixgbevf_irq_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbevf_adapter = type { i32, %struct.ixgbe_hw }
%struct.ixgbe_hw = type { i32 }

@IXGBE_VTEIAM = common dso_local global i32 0, align 4
@IXGBE_VTEIAC = common dso_local global i32 0, align 4
@IXGBE_VTEIMS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixgbevf_adapter*)* @ixgbevf_irq_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbevf_irq_enable(%struct.ixgbevf_adapter* %0) #0 {
  %2 = alloca %struct.ixgbevf_adapter*, align 8
  %3 = alloca %struct.ixgbe_hw*, align 8
  store %struct.ixgbevf_adapter* %0, %struct.ixgbevf_adapter** %2, align 8
  %4 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %5 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %4, i32 0, i32 1
  store %struct.ixgbe_hw* %5, %struct.ixgbe_hw** %3, align 8
  %6 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %7 = load i32, i32* @IXGBE_VTEIAM, align 4
  %8 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %9 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %6, i32 %7, i32 %10)
  %12 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %13 = load i32, i32* @IXGBE_VTEIAC, align 4
  %14 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %15 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %12, i32 %13, i32 %16)
  %18 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %19 = load i32, i32* @IXGBE_VTEIMS, align 4
  %20 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %21 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %18, i32 %19, i32 %22)
  ret void
}

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
