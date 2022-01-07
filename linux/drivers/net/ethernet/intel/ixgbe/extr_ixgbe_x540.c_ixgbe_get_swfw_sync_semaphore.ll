; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_x540.c_ixgbe_get_swfw_sync_semaphore.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_x540.c_ixgbe_get_swfw_sync_semaphore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { i32 }

@IXGBE_SWSM_SMBI = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [61 x i8] c"Software semaphore SMBI between device drivers not granted.\0A\00", align 1
@IXGBE_ERR_EEPROM = common dso_local global i32 0, align 4
@IXGBE_SWFW_REGSMP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [43 x i8] c"REGSMP Software NVM semaphore not granted\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbe_hw*)* @ixgbe_get_swfw_sync_semaphore to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_get_swfw_sync_semaphore(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ixgbe_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %3, align 8
  store i64 2000, i64* %4, align 8
  store i64 0, i64* %5, align 8
  br label %7

7:                                                ; preds = %23, %1
  %8 = load i64, i64* %5, align 8
  %9 = load i64, i64* %4, align 8
  %10 = icmp slt i64 %8, %9
  br i1 %10, label %11, label %26

11:                                               ; preds = %7
  %12 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %13 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %14 = call i32 @IXGBE_SWSM(%struct.ixgbe_hw* %13)
  %15 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %12, i32 %14)
  store i64 %15, i64* %6, align 8
  %16 = load i64, i64* %6, align 8
  %17 = load i64, i64* @IXGBE_SWSM_SMBI, align 8
  %18 = and i64 %16, %17
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %11
  br label %26

21:                                               ; preds = %11
  %22 = call i32 @usleep_range(i32 50, i32 100)
  br label %23

23:                                               ; preds = %21
  %24 = load i64, i64* %5, align 8
  %25 = add nsw i64 %24, 1
  store i64 %25, i64* %5, align 8
  br label %7

26:                                               ; preds = %20, %7
  %27 = load i64, i64* %5, align 8
  %28 = load i64, i64* %4, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %32 = call i32 @hw_dbg(%struct.ixgbe_hw* %31, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @IXGBE_ERR_EEPROM, align 4
  store i32 %33, i32* %2, align 4
  br label %60

34:                                               ; preds = %26
  store i64 0, i64* %5, align 8
  br label %35

35:                                               ; preds = %51, %34
  %36 = load i64, i64* %5, align 8
  %37 = load i64, i64* %4, align 8
  %38 = icmp slt i64 %36, %37
  br i1 %38, label %39, label %54

39:                                               ; preds = %35
  %40 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %41 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %42 = call i32 @IXGBE_SWFW_SYNC(%struct.ixgbe_hw* %41)
  %43 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %40, i32 %42)
  store i64 %43, i64* %6, align 8
  %44 = load i64, i64* %6, align 8
  %45 = load i64, i64* @IXGBE_SWFW_REGSMP, align 8
  %46 = and i64 %44, %45
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %39
  store i32 0, i32* %2, align 4
  br label %60

49:                                               ; preds = %39
  %50 = call i32 @usleep_range(i32 50, i32 100)
  br label %51

51:                                               ; preds = %49
  %52 = load i64, i64* %5, align 8
  %53 = add nsw i64 %52, 1
  store i64 %53, i64* %5, align 8
  br label %35

54:                                               ; preds = %35
  %55 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %56 = call i32 @hw_dbg(%struct.ixgbe_hw* %55, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %57 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %58 = call i32 @ixgbe_release_swfw_sync_semaphore(%struct.ixgbe_hw* %57)
  %59 = load i32, i32* @IXGBE_ERR_EEPROM, align 4
  store i32 %59, i32* %2, align 4
  br label %60

60:                                               ; preds = %54, %48, %30
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i64 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_SWSM(%struct.ixgbe_hw*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @hw_dbg(%struct.ixgbe_hw*, i8*) #1

declare dso_local i32 @IXGBE_SWFW_SYNC(%struct.ixgbe_hw*) #1

declare dso_local i32 @ixgbe_release_swfw_sync_semaphore(%struct.ixgbe_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
