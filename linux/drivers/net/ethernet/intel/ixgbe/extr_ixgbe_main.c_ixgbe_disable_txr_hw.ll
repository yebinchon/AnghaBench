; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_disable_txr_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_disable_txr_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_adapter = type { %struct.ixgbe_hw }
%struct.ixgbe_hw = type { i32 }
%struct.ixgbe_ring = type { i32 }

@IXGBE_TXDCTL_SWFLSH = common dso_local global i32 0, align 4
@IXGBE_MAX_RX_DESC_POLL = common dso_local global i32 0, align 4
@IXGBE_TXDCTL_ENABLE = common dso_local global i32 0, align 4
@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"TXDCTL.ENABLE not cleared within the polling period\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixgbe_adapter*, %struct.ixgbe_ring*)* @ixgbe_disable_txr_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbe_disable_txr_hw(%struct.ixgbe_adapter* %0, %struct.ixgbe_ring* %1) #0 {
  %3 = alloca %struct.ixgbe_adapter*, align 8
  %4 = alloca %struct.ixgbe_ring*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ixgbe_hw*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ixgbe_adapter* %0, %struct.ixgbe_adapter** %3, align 8
  store %struct.ixgbe_ring* %1, %struct.ixgbe_ring** %4, align 8
  %11 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %12 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %11, i32 0, i32 0
  store %struct.ixgbe_hw* %12, %struct.ixgbe_hw** %7, align 8
  %13 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %4, align 8
  %14 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %8, align 4
  %16 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @IXGBE_TXDCTL(i32 %17)
  %19 = load i32, i32* @IXGBE_TXDCTL_SWFLSH, align 4
  %20 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %16, i32 %18, i32 %19)
  %21 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %22 = call i32 @ixgbe_get_completion_timeout(%struct.ixgbe_adapter* %21)
  %23 = sdiv i32 %22, 100
  %24 = sext i32 %23 to i64
  store i64 %24, i64* %6, align 8
  %25 = load i32, i32* @IXGBE_MAX_RX_DESC_POLL, align 4
  store i32 %25, i32* %9, align 4
  %26 = load i64, i64* %6, align 8
  store i64 %26, i64* %5, align 8
  br label %27

27:                                               ; preds = %49, %2
  %28 = load i32, i32* %9, align 4
  %29 = add nsw i32 %28, -1
  store i32 %29, i32* %9, align 4
  %30 = icmp ne i32 %28, 0
  br i1 %30, label %31, label %50

31:                                               ; preds = %27
  %32 = load i64, i64* %5, align 8
  %33 = load i64, i64* %5, align 8
  %34 = add i64 %33, 10
  %35 = call i32 @usleep_range(i64 %32, i64 %34)
  %36 = load i64, i64* %6, align 8
  %37 = mul i64 %36, 2
  %38 = load i64, i64* %5, align 8
  %39 = add i64 %38, %37
  store i64 %39, i64* %5, align 8
  %40 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @IXGBE_TXDCTL(i32 %41)
  %43 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %40, i32 %42)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* @IXGBE_TXDCTL_ENABLE, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %31
  br label %53

49:                                               ; preds = %31
  br label %27

50:                                               ; preds = %27
  %51 = load i32, i32* @drv, align 4
  %52 = call i32 @e_err(i32 %51, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  br label %53

53:                                               ; preds = %50, %48
  ret void
}

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @IXGBE_TXDCTL(i32) #1

declare dso_local i32 @ixgbe_get_completion_timeout(%struct.ixgbe_adapter*) #1

declare dso_local i32 @usleep_range(i64, i64) #1

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @e_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
