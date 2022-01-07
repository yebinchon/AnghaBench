; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_dcb_82598.c_ixgbe_dcb_config_tc_stats_82598.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_dcb_82598.c_ixgbe_dcb_config_tc_stats_82598.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbe_hw*)* @ixgbe_dcb_config_tc_stats_82598 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_dcb_config_tc_stats_82598(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca %struct.ixgbe_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %43, %1
  %7 = load i32, i32* %4, align 4
  %8 = icmp slt i32 %7, 15
  br i1 %8, label %9, label %12

9:                                                ; preds = %6
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %10, 8
  br label %12

12:                                               ; preds = %9, %6
  %13 = phi i1 [ false, %6 ], [ %11, %9 ]
  br i1 %13, label %14, label %48

14:                                               ; preds = %12
  %15 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @IXGBE_RQSMR(i32 %16)
  %18 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %15, i32 %17)
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %5, align 4
  %20 = mul nsw i32 16843009, %19
  %21 = load i32, i32* %3, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %3, align 4
  %23 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @IXGBE_RQSMR(i32 %24)
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %23, i32 %25, i32 %26)
  %28 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %29 = load i32, i32* %4, align 4
  %30 = add nsw i32 %29, 1
  %31 = call i32 @IXGBE_RQSMR(i32 %30)
  %32 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %28, i32 %31)
  store i32 %32, i32* %3, align 4
  %33 = load i32, i32* %5, align 4
  %34 = mul nsw i32 16843009, %33
  %35 = load i32, i32* %3, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %3, align 4
  %37 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %38 = load i32, i32* %4, align 4
  %39 = add nsw i32 %38, 1
  %40 = call i32 @IXGBE_RQSMR(i32 %39)
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %37, i32 %40, i32 %41)
  br label %43

43:                                               ; preds = %14
  %44 = load i32, i32* %4, align 4
  %45 = add nsw i32 %44, 2
  store i32 %45, i32* %4, align 4
  %46 = load i32, i32* %5, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %5, align 4
  br label %6

48:                                               ; preds = %12
  store i32 0, i32* %4, align 4
  br label %49

49:                                               ; preds = %66, %48
  %50 = load i32, i32* %4, align 4
  %51 = icmp slt i32 %50, 8
  br i1 %51, label %52, label %69

52:                                               ; preds = %49
  %53 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @IXGBE_TQSMR(i32 %54)
  %56 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %53, i32 %55)
  store i32 %56, i32* %3, align 4
  %57 = load i32, i32* %4, align 4
  %58 = mul nsw i32 16843009, %57
  %59 = load i32, i32* %3, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %3, align 4
  %61 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %62 = load i32, i32* %4, align 4
  %63 = call i32 @IXGBE_TQSMR(i32 %62)
  %64 = load i32, i32* %3, align 4
  %65 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %61, i32 %63, i32 %64)
  br label %66

66:                                               ; preds = %52
  %67 = load i32, i32* %4, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %4, align 4
  br label %49

69:                                               ; preds = %49
  ret i32 0
}

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_RQSMR(i32) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @IXGBE_TQSMR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
