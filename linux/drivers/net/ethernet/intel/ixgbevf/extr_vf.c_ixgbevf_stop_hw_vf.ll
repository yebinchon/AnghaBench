; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbevf/extr_vf.c_ixgbevf_stop_hw_vf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbevf/extr_vf.c_ixgbevf_stop_hw_vf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@IXGBE_RXDCTL_ENABLE = common dso_local global i64 0, align 8
@IXGBE_VTEIMC = common dso_local global i32 0, align 4
@IXGBE_VF_IRQ_CLEAR_MASK = common dso_local global i64 0, align 8
@IXGBE_VTEICR = common dso_local global i32 0, align 4
@IXGBE_TXDCTL_ENABLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbe_hw*)* @ixgbevf_stop_hw_vf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbevf_stop_hw_vf(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca %struct.ixgbe_hw*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %2, align 8
  %6 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %7 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %6, i32 0, i32 0
  store i32 1, i32* %7, align 8
  %8 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %9 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %3, align 8
  store i64 0, i64* %5, align 8
  br label %12

12:                                               ; preds = %36, %1
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* %3, align 8
  %15 = icmp slt i64 %13, %14
  br i1 %15, label %16, label %39

16:                                               ; preds = %12
  %17 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %18 = load i64, i64* %5, align 8
  %19 = call i32 @IXGBE_VFRXDCTL(i64 %18)
  %20 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %17, i32 %19)
  store i64 %20, i64* %4, align 8
  %21 = load i64, i64* %4, align 8
  %22 = load i64, i64* @IXGBE_RXDCTL_ENABLE, align 8
  %23 = and i64 %21, %22
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %16
  %26 = load i64, i64* @IXGBE_RXDCTL_ENABLE, align 8
  %27 = xor i64 %26, -1
  %28 = load i64, i64* %4, align 8
  %29 = and i64 %28, %27
  store i64 %29, i64* %4, align 8
  %30 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %31 = load i64, i64* %5, align 8
  %32 = call i32 @IXGBE_VFRXDCTL(i64 %31)
  %33 = load i64, i64* %4, align 8
  %34 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %30, i32 %32, i64 %33)
  br label %35

35:                                               ; preds = %25, %16
  br label %36

36:                                               ; preds = %35
  %37 = load i64, i64* %5, align 8
  %38 = add nsw i64 %37, 1
  store i64 %38, i64* %5, align 8
  br label %12

39:                                               ; preds = %12
  %40 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %41 = call i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw* %40)
  %42 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %43 = load i32, i32* @IXGBE_VTEIMC, align 4
  %44 = load i64, i64* @IXGBE_VF_IRQ_CLEAR_MASK, align 8
  %45 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %42, i32 %43, i64 %44)
  %46 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %47 = load i32, i32* @IXGBE_VTEICR, align 4
  %48 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %46, i32 %47)
  %49 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %50 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %3, align 8
  store i64 0, i64* %5, align 8
  br label %53

53:                                               ; preds = %77, %39
  %54 = load i64, i64* %5, align 8
  %55 = load i64, i64* %3, align 8
  %56 = icmp slt i64 %54, %55
  br i1 %56, label %57, label %80

57:                                               ; preds = %53
  %58 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %59 = load i64, i64* %5, align 8
  %60 = call i32 @IXGBE_VFTXDCTL(i64 %59)
  %61 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %58, i32 %60)
  store i64 %61, i64* %4, align 8
  %62 = load i64, i64* %4, align 8
  %63 = load i64, i64* @IXGBE_TXDCTL_ENABLE, align 8
  %64 = and i64 %62, %63
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %76

66:                                               ; preds = %57
  %67 = load i64, i64* @IXGBE_TXDCTL_ENABLE, align 8
  %68 = xor i64 %67, -1
  %69 = load i64, i64* %4, align 8
  %70 = and i64 %69, %68
  store i64 %70, i64* %4, align 8
  %71 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %72 = load i64, i64* %5, align 8
  %73 = call i32 @IXGBE_VFTXDCTL(i64 %72)
  %74 = load i64, i64* %4, align 8
  %75 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %71, i32 %73, i64 %74)
  br label %76

76:                                               ; preds = %66, %57
  br label %77

77:                                               ; preds = %76
  %78 = load i64, i64* %5, align 8
  %79 = add nsw i64 %78, 1
  store i64 %79, i64* %5, align 8
  br label %53

80:                                               ; preds = %53
  ret i32 0
}

declare dso_local i64 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_VFRXDCTL(i64) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i64) #1

declare dso_local i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw*) #1

declare dso_local i32 @IXGBE_VFTXDCTL(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
