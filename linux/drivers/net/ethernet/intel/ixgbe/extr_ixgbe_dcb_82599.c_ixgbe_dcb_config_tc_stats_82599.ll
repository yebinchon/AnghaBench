; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_dcb_82599.c_ixgbe_dcb_config_tc_stats_82599.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_dcb_82599.c_ixgbe_dcb_config_tc_stats_82599.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbe_hw*)* @ixgbe_dcb_config_tc_stats_82599 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_dcb_config_tc_stats_82599(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca %struct.ixgbe_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %17, %1
  %6 = load i32, i32* %4, align 4
  %7 = icmp slt i32 %6, 32
  br i1 %7, label %8, label %20

8:                                                ; preds = %5
  %9 = load i32, i32* %4, align 4
  %10 = sdiv i32 %9, 4
  %11 = mul nsw i32 16843009, %10
  store i32 %11, i32* %3, align 4
  %12 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @IXGBE_RQSMR(i32 %13)
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %12, i32 %14, i32 %15)
  br label %17

17:                                               ; preds = %8
  %18 = load i32, i32* %4, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %4, align 4
  br label %5

20:                                               ; preds = %5
  store i32 0, i32* %4, align 4
  br label %21

21:                                               ; preds = %65, %20
  %22 = load i32, i32* %4, align 4
  %23 = icmp slt i32 %22, 32
  br i1 %23, label %24, label %68

24:                                               ; preds = %21
  %25 = load i32, i32* %4, align 4
  %26 = icmp slt i32 %25, 8
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %59

28:                                               ; preds = %24
  %29 = load i32, i32* %4, align 4
  %30 = icmp slt i32 %29, 16
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  store i32 16843009, i32* %3, align 4
  br label %58

32:                                               ; preds = %28
  %33 = load i32, i32* %4, align 4
  %34 = icmp slt i32 %33, 20
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  store i32 33686018, i32* %3, align 4
  br label %57

36:                                               ; preds = %32
  %37 = load i32, i32* %4, align 4
  %38 = icmp slt i32 %37, 24
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  store i32 50529027, i32* %3, align 4
  br label %56

40:                                               ; preds = %36
  %41 = load i32, i32* %4, align 4
  %42 = icmp slt i32 %41, 26
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  store i32 67372036, i32* %3, align 4
  br label %55

44:                                               ; preds = %40
  %45 = load i32, i32* %4, align 4
  %46 = icmp slt i32 %45, 28
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  store i32 84215045, i32* %3, align 4
  br label %54

48:                                               ; preds = %44
  %49 = load i32, i32* %4, align 4
  %50 = icmp slt i32 %49, 30
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  store i32 101058054, i32* %3, align 4
  br label %53

52:                                               ; preds = %48
  store i32 117901063, i32* %3, align 4
  br label %53

53:                                               ; preds = %52, %51
  br label %54

54:                                               ; preds = %53, %47
  br label %55

55:                                               ; preds = %54, %43
  br label %56

56:                                               ; preds = %55, %39
  br label %57

57:                                               ; preds = %56, %35
  br label %58

58:                                               ; preds = %57, %31
  br label %59

59:                                               ; preds = %58, %27
  %60 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %61 = load i32, i32* %4, align 4
  %62 = call i32 @IXGBE_TQSM(i32 %61)
  %63 = load i32, i32* %3, align 4
  %64 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %60, i32 %62, i32 %63)
  br label %65

65:                                               ; preds = %59
  %66 = load i32, i32* %4, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %4, align 4
  br label %21

68:                                               ; preds = %21
  ret i32 0
}

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @IXGBE_RQSMR(i32) #1

declare dso_local i32 @IXGBE_TQSM(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
