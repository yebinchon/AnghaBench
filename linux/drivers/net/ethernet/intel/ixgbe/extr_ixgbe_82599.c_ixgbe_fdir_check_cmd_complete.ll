; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_82599.c_ixgbe_fdir_check_cmd_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_82599.c_ixgbe_fdir_check_cmd_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { i32 }

@IXGBE_FDIRCMD_CMD_POLL = common dso_local global i32 0, align 4
@IXGBE_FDIRCMD = common dso_local global i32 0, align 4
@IXGBE_FDIRCMD_CMD_MASK = common dso_local global i32 0, align 4
@IXGBE_ERR_FDIR_CMD_INCOMPLETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbe_hw*, i32*)* @ixgbe_fdir_check_cmd_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_fdir_check_cmd_complete(%struct.ixgbe_hw* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ixgbe_hw*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %24, %2
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* @IXGBE_FDIRCMD_CMD_POLL, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %27

11:                                               ; preds = %7
  %12 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %13 = load i32, i32* @IXGBE_FDIRCMD, align 4
  %14 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %12, i32 %13)
  %15 = load i32*, i32** %5, align 8
  store i32 %14, i32* %15, align 4
  %16 = load i32*, i32** %5, align 8
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @IXGBE_FDIRCMD_CMD_MASK, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %29

22:                                               ; preds = %11
  %23 = call i32 @udelay(i32 10)
  br label %24

24:                                               ; preds = %22
  %25 = load i32, i32* %6, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %6, align 4
  br label %7

27:                                               ; preds = %7
  %28 = load i32, i32* @IXGBE_ERR_FDIR_CMD_INCOMPLETE, align 4
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %27, %21
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
