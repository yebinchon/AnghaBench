; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_82598.c_ixgbe_clear_vmdq_82598.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_82598.c_ixgbe_clear_vmdq_82598.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [31 x i8] c"RAR index %d is out of range.\0A\00", align 1
@IXGBE_ERR_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@IXGBE_RAH_VIND_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbe_hw*, i64, i64)* @ixgbe_clear_vmdq_82598 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_clear_vmdq_82598(%struct.ixgbe_hw* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ixgbe_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %11 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %9, align 8
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* %9, align 8
  %16 = icmp sge i64 %14, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %3
  %18 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %19 = load i64, i64* %6, align 8
  %20 = call i32 @hw_dbg(%struct.ixgbe_hw* %18, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %19)
  %21 = load i32, i32* @IXGBE_ERR_INVALID_ARGUMENT, align 4
  store i32 %21, i32* %4, align 4
  br label %42

22:                                               ; preds = %3
  %23 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %24 = load i64, i64* %6, align 8
  %25 = call i32 @IXGBE_RAH(i64 %24)
  %26 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %23, i32 %25)
  store i64 %26, i64* %8, align 8
  %27 = load i64, i64* %8, align 8
  %28 = load i64, i64* @IXGBE_RAH_VIND_MASK, align 8
  %29 = and i64 %27, %28
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %22
  %32 = load i64, i64* @IXGBE_RAH_VIND_MASK, align 8
  %33 = xor i64 %32, -1
  %34 = load i64, i64* %8, align 8
  %35 = and i64 %34, %33
  store i64 %35, i64* %8, align 8
  %36 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %37 = load i64, i64* %6, align 8
  %38 = call i32 @IXGBE_RAH(i64 %37)
  %39 = load i64, i64* %8, align 8
  %40 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %36, i32 %38, i64 %39)
  br label %41

41:                                               ; preds = %31, %22
  store i32 0, i32* %4, align 4
  br label %42

42:                                               ; preds = %41, %17
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i32 @hw_dbg(%struct.ixgbe_hw*, i8*, i64) #1

declare dso_local i64 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_RAH(i64) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
