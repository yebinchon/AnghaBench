; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_common.c_ixgbe_poll_eerd_eewr_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_common.c_ixgbe_poll_eerd_eewr_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { i32 }

@IXGBE_EERD_EEWR_ATTEMPTS = common dso_local global i64 0, align 8
@IXGBE_NVM_POLL_READ = common dso_local global i64 0, align 8
@IXGBE_EERD = common dso_local global i32 0, align 4
@IXGBE_EEWR = common dso_local global i32 0, align 4
@IXGBE_EEPROM_RW_REG_DONE = common dso_local global i64 0, align 8
@IXGBE_ERR_EEPROM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbe_hw*, i64)* @ixgbe_poll_eerd_eewr_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_poll_eerd_eewr_done(%struct.ixgbe_hw* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ixgbe_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 0, i64* %6, align 8
  br label %8

8:                                                ; preds = %32, %2
  %9 = load i64, i64* %6, align 8
  %10 = load i64, i64* @IXGBE_EERD_EEWR_ATTEMPTS, align 8
  %11 = icmp slt i64 %9, %10
  br i1 %11, label %12, label %35

12:                                               ; preds = %8
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* @IXGBE_NVM_POLL_READ, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %12
  %17 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %18 = load i32, i32* @IXGBE_EERD, align 4
  %19 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %17, i32 %18)
  store i64 %19, i64* %7, align 8
  br label %24

20:                                               ; preds = %12
  %21 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %22 = load i32, i32* @IXGBE_EEWR, align 4
  %23 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %21, i32 %22)
  store i64 %23, i64* %7, align 8
  br label %24

24:                                               ; preds = %20, %16
  %25 = load i64, i64* %7, align 8
  %26 = load i64, i64* @IXGBE_EEPROM_RW_REG_DONE, align 8
  %27 = and i64 %25, %26
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %37

30:                                               ; preds = %24
  %31 = call i32 @udelay(i32 5)
  br label %32

32:                                               ; preds = %30
  %33 = load i64, i64* %6, align 8
  %34 = add nsw i64 %33, 1
  store i64 %34, i64* %6, align 8
  br label %8

35:                                               ; preds = %8
  %36 = load i32, i32* @IXGBE_ERR_EEPROM, align 4
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %35, %29
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i64 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
