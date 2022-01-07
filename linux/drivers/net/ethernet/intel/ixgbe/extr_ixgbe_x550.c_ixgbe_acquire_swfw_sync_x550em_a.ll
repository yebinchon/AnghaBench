; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_x550.c_ixgbe_acquire_swfw_sync_x550em_a.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_x550.c_ixgbe_acquire_swfw_sync_x550em_a.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { i32 }

@IXGBE_GSSR_TOKEN_SM = common dso_local global i32 0, align 4
@FW_PHY_TOKEN_RETRIES = common dso_local global i32 0, align 4
@IXGBE_ERR_TOKEN_RETRY = common dso_local global i64 0, align 8
@FW_PHY_TOKEN_DELAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ixgbe_hw*, i32)* @ixgbe_acquire_swfw_sync_x550em_a to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ixgbe_acquire_swfw_sync_x550em_a(%struct.ixgbe_hw* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.ixgbe_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @IXGBE_GSSR_TOKEN_SM, align 4
  %11 = xor i32 %10, -1
  %12 = and i32 %9, %11
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* @FW_PHY_TOKEN_RETRIES, align 4
  store i32 %13, i32* %7, align 4
  br label %14

14:                                               ; preds = %55, %2
  %15 = load i32, i32* %7, align 4
  %16 = add nsw i32 %15, -1
  store i32 %16, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %58

18:                                               ; preds = %14
  store i64 0, i64* %8, align 8
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i64 @ixgbe_acquire_swfw_sync_X540(%struct.ixgbe_hw* %22, i32 %23)
  store i64 %24, i64* %8, align 8
  br label %25

25:                                               ; preds = %21, %18
  %26 = load i64, i64* %8, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = load i64, i64* %8, align 8
  store i64 %29, i64* %3, align 8
  br label %60

30:                                               ; preds = %25
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @IXGBE_GSSR_TOKEN_SM, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %30
  store i64 0, i64* %3, align 8
  br label %60

36:                                               ; preds = %30
  %37 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %38 = call i64 @ixgbe_get_phy_token(%struct.ixgbe_hw* %37)
  store i64 %38, i64* %8, align 8
  %39 = load i64, i64* %8, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %36
  store i64 0, i64* %3, align 8
  br label %60

42:                                               ; preds = %36
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %42
  %46 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @ixgbe_release_swfw_sync_X540(%struct.ixgbe_hw* %46, i32 %47)
  br label %49

49:                                               ; preds = %45, %42
  %50 = load i64, i64* %8, align 8
  %51 = load i64, i64* @IXGBE_ERR_TOKEN_RETRY, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = load i64, i64* %8, align 8
  store i64 %54, i64* %3, align 8
  br label %60

55:                                               ; preds = %49
  %56 = load i32, i32* @FW_PHY_TOKEN_DELAY, align 4
  %57 = call i32 @msleep(i32 %56)
  br label %14

58:                                               ; preds = %14
  %59 = load i64, i64* %8, align 8
  store i64 %59, i64* %3, align 8
  br label %60

60:                                               ; preds = %58, %53, %41, %35, %28
  %61 = load i64, i64* %3, align 8
  ret i64 %61
}

declare dso_local i64 @ixgbe_acquire_swfw_sync_X540(%struct.ixgbe_hw*, i32) #1

declare dso_local i64 @ixgbe_get_phy_token(%struct.ixgbe_hw*) #1

declare dso_local i32 @ixgbe_release_swfw_sync_X540(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
