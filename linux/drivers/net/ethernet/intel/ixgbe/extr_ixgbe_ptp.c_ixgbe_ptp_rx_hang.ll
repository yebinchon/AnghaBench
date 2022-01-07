; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_ptp.c_ixgbe_ptp_rx_hang.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_ptp.c_ixgbe_ptp_rx_hang.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_adapter = type { i64, i32, i32, %struct.ixgbe_ring**, %struct.ixgbe_hw }
%struct.ixgbe_ring = type { i64 }
%struct.ixgbe_hw = type { i32 }

@IXGBE_TSYNCRXCTL = common dso_local global i32 0, align 4
@IXGBE_TSYNCRXCTL_VALID = common dso_local global i32 0, align 4
@jiffies = common dso_local global i8* null, align 8
@HZ = common dso_local global i32 0, align 4
@IXGBE_RXSTMPH = common dso_local global i32 0, align 4
@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"clearing RX Timestamp hang\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ixgbe_ptp_rx_hang(%struct.ixgbe_adapter* %0) #0 {
  %2 = alloca %struct.ixgbe_adapter*, align 8
  %3 = alloca %struct.ixgbe_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ixgbe_ring*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.ixgbe_adapter* %0, %struct.ixgbe_adapter** %2, align 8
  %8 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %9 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %8, i32 0, i32 4
  store %struct.ixgbe_hw* %9, %struct.ixgbe_hw** %3, align 8
  %10 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %11 = load i32, i32* @IXGBE_TSYNCRXCTL, align 4
  %12 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %10, i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @IXGBE_TSYNCRXCTL_VALID, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %1
  %18 = load i8*, i8** @jiffies, align 8
  %19 = ptrtoint i8* %18 to i64
  %20 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %21 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %20, i32 0, i32 0
  store i64 %19, i64* %21, align 8
  br label %76

22:                                               ; preds = %1
  %23 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %24 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %6, align 8
  store i32 0, i32* %7, align 4
  br label %26

26:                                               ; preds = %51, %22
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %29 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %54

32:                                               ; preds = %26
  %33 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %34 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %33, i32 0, i32 3
  %35 = load %struct.ixgbe_ring**, %struct.ixgbe_ring*** %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.ixgbe_ring*, %struct.ixgbe_ring** %35, i64 %37
  %39 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %38, align 8
  store %struct.ixgbe_ring* %39, %struct.ixgbe_ring** %5, align 8
  %40 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %5, align 8
  %41 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* %6, align 8
  %44 = call i64 @time_after(i64 %42, i64 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %32
  %47 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %5, align 8
  %48 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %6, align 8
  br label %50

50:                                               ; preds = %46, %32
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %7, align 4
  br label %26

54:                                               ; preds = %26
  %55 = load i64, i64* %6, align 8
  %56 = load i32, i32* @HZ, align 4
  %57 = mul nsw i32 5, %56
  %58 = sext i32 %57 to i64
  %59 = add i64 %55, %58
  %60 = call i64 @time_is_before_jiffies(i64 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %76

62:                                               ; preds = %54
  %63 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %64 = load i32, i32* @IXGBE_RXSTMPH, align 4
  %65 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %63, i32 %64)
  %66 = load i8*, i8** @jiffies, align 8
  %67 = ptrtoint i8* %66 to i64
  %68 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %69 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %68, i32 0, i32 0
  store i64 %67, i64* %69, align 8
  %70 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %71 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %71, align 4
  %74 = load i32, i32* @drv, align 4
  %75 = call i32 @e_warn(i32 %74, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %76

76:                                               ; preds = %17, %62, %54
  ret void
}

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i64 @time_is_before_jiffies(i64) #1

declare dso_local i32 @e_warn(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
