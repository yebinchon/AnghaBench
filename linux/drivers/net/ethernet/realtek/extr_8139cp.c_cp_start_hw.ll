; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_8139cp.c_cp_start_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_8139cp.c_cp_start_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cp_private = type { i32, i32, i32 }

@CpCmd = common dso_local global i32 0, align 4
@HiTxRingAddr = common dso_local global i64 0, align 8
@RxRingAddr = common dso_local global i64 0, align 8
@CP_RX_RING_SIZE = common dso_local global i32 0, align 4
@TxRingAddr = common dso_local global i64 0, align 8
@Cmd = common dso_local global i32 0, align 4
@RxOn = common dso_local global i32 0, align 4
@TxOn = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cp_private*)* @cp_start_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cp_start_hw(%struct.cp_private* %0) #0 {
  %2 = alloca %struct.cp_private*, align 8
  %3 = alloca i32, align 4
  store %struct.cp_private* %0, %struct.cp_private** %2, align 8
  %4 = load i32, i32* @CpCmd, align 4
  %5 = load %struct.cp_private*, %struct.cp_private** %2, align 8
  %6 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @cpw16(i32 %4, i32 %7)
  %9 = load i64, i64* @HiTxRingAddr, align 8
  %10 = call i32 @cpw32_f(i64 %9, i32 0)
  %11 = load i64, i64* @HiTxRingAddr, align 8
  %12 = add nsw i64 %11, 4
  %13 = call i32 @cpw32_f(i64 %12, i32 0)
  %14 = load %struct.cp_private*, %struct.cp_private** %2, align 8
  %15 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %3, align 4
  %17 = load i64, i64* @RxRingAddr, align 8
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @cpw32_f(i64 %17, i32 %18)
  %20 = load i64, i64* @RxRingAddr, align 8
  %21 = add nsw i64 %20, 4
  %22 = load i32, i32* %3, align 4
  %23 = ashr i32 %22, 16
  %24 = ashr i32 %23, 16
  %25 = call i32 @cpw32_f(i64 %21, i32 %24)
  %26 = load i32, i32* @CP_RX_RING_SIZE, align 4
  %27 = sext i32 %26 to i64
  %28 = mul i64 4, %27
  %29 = load i32, i32* %3, align 4
  %30 = sext i32 %29 to i64
  %31 = add i64 %30, %28
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %3, align 4
  %33 = load i64, i64* @TxRingAddr, align 8
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @cpw32_f(i64 %33, i32 %34)
  %36 = load i64, i64* @TxRingAddr, align 8
  %37 = add nsw i64 %36, 4
  %38 = load i32, i32* %3, align 4
  %39 = ashr i32 %38, 16
  %40 = ashr i32 %39, 16
  %41 = call i32 @cpw32_f(i64 %37, i32 %40)
  %42 = load i32, i32* @Cmd, align 4
  %43 = load i32, i32* @RxOn, align 4
  %44 = load i32, i32* @TxOn, align 4
  %45 = or i32 %43, %44
  %46 = call i32 @cpw8(i32 %42, i32 %45)
  %47 = load %struct.cp_private*, %struct.cp_private** %2, align 8
  %48 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @netdev_reset_queue(i32 %49)
  ret void
}

declare dso_local i32 @cpw16(i32, i32) #1

declare dso_local i32 @cpw32_f(i64, i32) #1

declare dso_local i32 @cpw8(i32, i32) #1

declare dso_local i32 @netdev_reset_queue(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
