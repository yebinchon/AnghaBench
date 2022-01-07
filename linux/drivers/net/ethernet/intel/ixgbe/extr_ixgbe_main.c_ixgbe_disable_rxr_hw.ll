; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_disable_rxr_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_disable_rxr_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_adapter = type { %struct.ixgbe_hw }
%struct.ixgbe_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.ixgbe_ring = type { i32 }

@IXGBE_RXDCTL_ENABLE = common dso_local global i32 0, align 4
@IXGBE_RXDCTL_SWFLSH = common dso_local global i32 0, align 4
@ixgbe_mac_82598EB = common dso_local global i64 0, align 8
@IXGBE_LINKS = common dso_local global i32 0, align 4
@IXGBE_LINKS_UP = common dso_local global i32 0, align 4
@IXGBE_MAX_RX_DESC_POLL = common dso_local global i32 0, align 4
@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"RXDCTL.ENABLE not cleared within the polling period\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixgbe_adapter*, %struct.ixgbe_ring*)* @ixgbe_disable_rxr_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbe_disable_rxr_hw(%struct.ixgbe_adapter* %0, %struct.ixgbe_ring* %1) #0 {
  %3 = alloca %struct.ixgbe_adapter*, align 8
  %4 = alloca %struct.ixgbe_ring*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ixgbe_hw*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ixgbe_adapter* %0, %struct.ixgbe_adapter** %3, align 8
  store %struct.ixgbe_ring* %1, %struct.ixgbe_ring** %4, align 8
  %11 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %12 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %11, i32 0, i32 0
  store %struct.ixgbe_hw* %12, %struct.ixgbe_hw** %7, align 8
  %13 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %4, align 8
  %14 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %8, align 4
  %16 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @IXGBE_RXDCTL(i32 %17)
  %19 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %16, i32 %18)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* @IXGBE_RXDCTL_ENABLE, align 4
  %21 = xor i32 %20, -1
  %22 = load i32, i32* %10, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* @IXGBE_RXDCTL_SWFLSH, align 4
  %25 = load i32, i32* %10, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %10, align 4
  %27 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @IXGBE_RXDCTL(i32 %28)
  %30 = load i32, i32* %10, align 4
  %31 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %27, i32 %29, i32 %30)
  %32 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %33 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @ixgbe_mac_82598EB, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %46

38:                                               ; preds = %2
  %39 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %40 = load i32, i32* @IXGBE_LINKS, align 4
  %41 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %39, i32 %40)
  %42 = load i32, i32* @IXGBE_LINKS_UP, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %38
  br label %79

46:                                               ; preds = %38, %2
  %47 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %48 = call i32 @ixgbe_get_completion_timeout(%struct.ixgbe_adapter* %47)
  %49 = sdiv i32 %48, 100
  %50 = sext i32 %49 to i64
  store i64 %50, i64* %6, align 8
  %51 = load i32, i32* @IXGBE_MAX_RX_DESC_POLL, align 4
  store i32 %51, i32* %9, align 4
  %52 = load i64, i64* %6, align 8
  store i64 %52, i64* %5, align 8
  br label %53

53:                                               ; preds = %75, %46
  %54 = load i32, i32* %9, align 4
  %55 = add nsw i32 %54, -1
  store i32 %55, i32* %9, align 4
  %56 = icmp ne i32 %54, 0
  br i1 %56, label %57, label %76

57:                                               ; preds = %53
  %58 = load i64, i64* %5, align 8
  %59 = load i64, i64* %5, align 8
  %60 = add i64 %59, 10
  %61 = call i32 @usleep_range(i64 %58, i64 %60)
  %62 = load i64, i64* %6, align 8
  %63 = mul i64 %62, 2
  %64 = load i64, i64* %5, align 8
  %65 = add i64 %64, %63
  store i64 %65, i64* %5, align 8
  %66 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @IXGBE_RXDCTL(i32 %67)
  %69 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %66, i32 %68)
  store i32 %69, i32* %10, align 4
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* @IXGBE_RXDCTL_ENABLE, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %57
  br label %79

75:                                               ; preds = %57
  br label %53

76:                                               ; preds = %53
  %77 = load i32, i32* @drv, align 4
  %78 = call i32 @e_err(i32 %77, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  br label %79

79:                                               ; preds = %76, %74, %45
  ret void
}

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_RXDCTL(i32) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @ixgbe_get_completion_timeout(%struct.ixgbe_adapter*) #1

declare dso_local i32 @usleep_range(i64, i64) #1

declare dso_local i32 @e_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
