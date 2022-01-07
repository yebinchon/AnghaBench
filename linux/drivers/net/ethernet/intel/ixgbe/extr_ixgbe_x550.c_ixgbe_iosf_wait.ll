; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_x550.c_ixgbe_iosf_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_x550.c_ixgbe_iosf_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { i32 }

@IXGBE_MDIO_COMMAND_TIMEOUT = common dso_local global i64 0, align 8
@IXGBE_SB_IOSF_INDIRECT_CTRL = common dso_local global i32 0, align 4
@IXGBE_SB_IOSF_CTRL_BUSY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"IOSF wait timed out\0A\00", align 1
@IXGBE_ERR_PHY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbe_hw*, i64*)* @ixgbe_iosf_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_iosf_wait(%struct.ixgbe_hw* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ixgbe_hw*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64 0, i64* %6, align 8
  br label %8

8:                                                ; preds = %23, %2
  %9 = load i64, i64* %6, align 8
  %10 = load i64, i64* @IXGBE_MDIO_COMMAND_TIMEOUT, align 8
  %11 = icmp slt i64 %9, %10
  br i1 %11, label %12, label %26

12:                                               ; preds = %8
  %13 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %14 = load i32, i32* @IXGBE_SB_IOSF_INDIRECT_CTRL, align 4
  %15 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %13, i32 %14)
  store i64 %15, i64* %7, align 8
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* @IXGBE_SB_IOSF_CTRL_BUSY, align 8
  %18 = and i64 %16, %17
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %12
  br label %26

21:                                               ; preds = %12
  %22 = call i32 @udelay(i32 10)
  br label %23

23:                                               ; preds = %21
  %24 = load i64, i64* %6, align 8
  %25 = add nsw i64 %24, 1
  store i64 %25, i64* %6, align 8
  br label %8

26:                                               ; preds = %20, %8
  %27 = load i64*, i64** %5, align 8
  %28 = icmp ne i64* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load i64, i64* %7, align 8
  %31 = load i64*, i64** %5, align 8
  store i64 %30, i64* %31, align 8
  br label %32

32:                                               ; preds = %29, %26
  %33 = load i64, i64* %6, align 8
  %34 = load i64, i64* @IXGBE_MDIO_COMMAND_TIMEOUT, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %38 = call i32 @hw_dbg(%struct.ixgbe_hw* %37, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* @IXGBE_ERR_PHY, align 4
  store i32 %39, i32* %3, align 4
  br label %41

40:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %40, %36
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i64 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @hw_dbg(%struct.ixgbe_hw*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
