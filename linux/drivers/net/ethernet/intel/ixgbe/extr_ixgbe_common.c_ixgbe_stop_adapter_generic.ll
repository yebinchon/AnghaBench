; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_common.c_ixgbe_stop_adapter_generic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_common.c_ixgbe_stop_adapter_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (%struct.ixgbe_hw.0*)* }
%struct.ixgbe_hw.0 = type opaque

@IXGBE_EIMC = common dso_local global i32 0, align 4
@IXGBE_IRQ_CLEAR_MASK = common dso_local global i32 0, align 4
@IXGBE_EICR = common dso_local global i32 0, align 4
@IXGBE_TXDCTL_SWFLSH = common dso_local global i32 0, align 4
@IXGBE_RXDCTL_ENABLE = common dso_local global i32 0, align 4
@IXGBE_RXDCTL_SWFLSH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_stop_adapter_generic(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca %struct.ixgbe_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %2, align 8
  %5 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %6 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %5, i32 0, i32 0
  store i32 1, i32* %6, align 8
  %7 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %8 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32 (%struct.ixgbe_hw.0*)*, i32 (%struct.ixgbe_hw.0*)** %10, align 8
  %12 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %13 = bitcast %struct.ixgbe_hw* %12 to %struct.ixgbe_hw.0*
  %14 = call i32 %11(%struct.ixgbe_hw.0* %13)
  %15 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %16 = load i32, i32* @IXGBE_EIMC, align 4
  %17 = load i32, i32* @IXGBE_IRQ_CLEAR_MASK, align 4
  %18 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %15, i32 %16, i32 %17)
  %19 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %20 = load i32, i32* @IXGBE_EICR, align 4
  %21 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %19, i32 %20)
  store i64 0, i64* %4, align 8
  br label %22

22:                                               ; preds = %35, %1
  %23 = load i64, i64* %4, align 8
  %24 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %25 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp slt i64 %23, %27
  br i1 %28, label %29, label %38

29:                                               ; preds = %22
  %30 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %31 = load i64, i64* %4, align 8
  %32 = call i32 @IXGBE_TXDCTL(i64 %31)
  %33 = load i32, i32* @IXGBE_TXDCTL_SWFLSH, align 4
  %34 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %30, i32 %32, i32 %33)
  br label %35

35:                                               ; preds = %29
  %36 = load i64, i64* %4, align 8
  %37 = add nsw i64 %36, 1
  store i64 %37, i64* %4, align 8
  br label %22

38:                                               ; preds = %22
  store i64 0, i64* %4, align 8
  br label %39

39:                                               ; preds = %63, %38
  %40 = load i64, i64* %4, align 8
  %41 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %42 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp slt i64 %40, %44
  br i1 %45, label %46, label %66

46:                                               ; preds = %39
  %47 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %48 = load i64, i64* %4, align 8
  %49 = call i32 @IXGBE_RXDCTL(i64 %48)
  %50 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %47, i32 %49)
  store i32 %50, i32* %3, align 4
  %51 = load i32, i32* @IXGBE_RXDCTL_ENABLE, align 4
  %52 = xor i32 %51, -1
  %53 = load i32, i32* %3, align 4
  %54 = and i32 %53, %52
  store i32 %54, i32* %3, align 4
  %55 = load i32, i32* @IXGBE_RXDCTL_SWFLSH, align 4
  %56 = load i32, i32* %3, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %3, align 4
  %58 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %59 = load i64, i64* %4, align 8
  %60 = call i32 @IXGBE_RXDCTL(i64 %59)
  %61 = load i32, i32* %3, align 4
  %62 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %58, i32 %60, i32 %61)
  br label %63

63:                                               ; preds = %46
  %64 = load i64, i64* %4, align 8
  %65 = add nsw i64 %64, 1
  store i64 %65, i64* %4, align 8
  br label %39

66:                                               ; preds = %39
  %67 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %68 = call i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw* %67)
  %69 = call i32 @usleep_range(i32 1000, i32 2000)
  %70 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %71 = call i32 @ixgbe_disable_pcie_master(%struct.ixgbe_hw* %70)
  ret i32 %71
}

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_TXDCTL(i64) #1

declare dso_local i32 @IXGBE_RXDCTL(i64) #1

declare dso_local i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @ixgbe_disable_pcie_master(%struct.ixgbe_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
