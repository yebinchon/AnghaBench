; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_8139cp.c_cp_init_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_8139cp.c_cp_init_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cp_private = type { i64, %struct.net_device* }
%struct.net_device = type { i64 }

@Cfg9346 = common dso_local global i32 0, align 4
@Cfg9346_Unlock = common dso_local global i32 0, align 4
@MAC0 = common dso_local global i64 0, align 8
@TxThresh = common dso_local global i32 0, align 4
@TxConfig = common dso_local global i64 0, align 8
@IFG = common dso_local global i32 0, align 4
@TX_DMA_BURST = common dso_local global i32 0, align 4
@TxDMAShift = common dso_local global i32 0, align 4
@Config1 = common dso_local global i32 0, align 4
@DriverLoaded = common dso_local global i32 0, align 4
@PMEnable = common dso_local global i32 0, align 4
@Config3 = common dso_local global i32 0, align 4
@PARMEnable = common dso_local global i32 0, align 4
@Config5 = common dso_local global i32 0, align 4
@PMEStatus = common dso_local global i32 0, align 4
@MultiIntr = common dso_local global i32 0, align 4
@Cfg9346_Lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cp_private*)* @cp_init_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cp_init_hw(%struct.cp_private* %0) #0 {
  %2 = alloca %struct.cp_private*, align 8
  %3 = alloca %struct.net_device*, align 8
  store %struct.cp_private* %0, %struct.cp_private** %2, align 8
  %4 = load %struct.cp_private*, %struct.cp_private** %2, align 8
  %5 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %4, i32 0, i32 1
  %6 = load %struct.net_device*, %struct.net_device** %5, align 8
  store %struct.net_device* %6, %struct.net_device** %3, align 8
  %7 = load %struct.cp_private*, %struct.cp_private** %2, align 8
  %8 = call i32 @cp_reset_hw(%struct.cp_private* %7)
  %9 = load i32, i32* @Cfg9346, align 4
  %10 = load i32, i32* @Cfg9346_Unlock, align 4
  %11 = call i32 @cpw8_f(i32 %9, i32 %10)
  %12 = load i64, i64* @MAC0, align 8
  %13 = add nsw i64 %12, 0
  %14 = load %struct.net_device*, %struct.net_device** %3, align 8
  %15 = getelementptr inbounds %struct.net_device, %struct.net_device* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = add nsw i64 %16, 0
  %18 = inttoptr i64 %17 to i32*
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @le32_to_cpu(i32 %19)
  %21 = call i32 @cpw32_f(i64 %13, i32 %20)
  %22 = load i64, i64* @MAC0, align 8
  %23 = add nsw i64 %22, 4
  %24 = load %struct.net_device*, %struct.net_device** %3, align 8
  %25 = getelementptr inbounds %struct.net_device, %struct.net_device* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %26, 4
  %28 = inttoptr i64 %27 to i32*
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @le32_to_cpu(i32 %29)
  %31 = call i32 @cpw32_f(i64 %23, i32 %30)
  %32 = load %struct.cp_private*, %struct.cp_private** %2, align 8
  %33 = call i32 @cp_start_hw(%struct.cp_private* %32)
  %34 = load i32, i32* @TxThresh, align 4
  %35 = call i32 @cpw8(i32 %34, i32 6)
  %36 = load %struct.net_device*, %struct.net_device** %3, align 8
  %37 = call i32 @__cp_set_rx_mode(%struct.net_device* %36)
  %38 = load i64, i64* @TxConfig, align 8
  %39 = load i32, i32* @IFG, align 4
  %40 = load i32, i32* @TX_DMA_BURST, align 4
  %41 = load i32, i32* @TxDMAShift, align 4
  %42 = shl i32 %40, %41
  %43 = or i32 %39, %42
  %44 = call i32 @cpw32_f(i64 %38, i32 %43)
  %45 = load i32, i32* @Config1, align 4
  %46 = load i32, i32* @Config1, align 4
  %47 = call i32 @cpr8(i32 %46)
  %48 = load i32, i32* @DriverLoaded, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @PMEnable, align 4
  %51 = or i32 %49, %50
  %52 = call i32 @cpw8(i32 %45, i32 %51)
  %53 = load i32, i32* @Config3, align 4
  %54 = load i32, i32* @PARMEnable, align 4
  %55 = call i32 @cpw8(i32 %53, i32 %54)
  %56 = load %struct.cp_private*, %struct.cp_private** %2, align 8
  %57 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %56, i32 0, i32 0
  store i64 0, i64* %57, align 8
  %58 = load i32, i32* @Config5, align 4
  %59 = load i32, i32* @Config5, align 4
  %60 = call i32 @cpr8(i32 %59)
  %61 = load i32, i32* @PMEStatus, align 4
  %62 = and i32 %60, %61
  %63 = call i32 @cpw8(i32 %58, i32 %62)
  %64 = load i32, i32* @MultiIntr, align 4
  %65 = call i32 @cpw16(i32 %64, i32 0)
  %66 = load i32, i32* @Cfg9346, align 4
  %67 = load i32, i32* @Cfg9346_Lock, align 4
  %68 = call i32 @cpw8_f(i32 %66, i32 %67)
  ret void
}

declare dso_local i32 @cp_reset_hw(%struct.cp_private*) #1

declare dso_local i32 @cpw8_f(i32, i32) #1

declare dso_local i32 @cpw32_f(i64, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @cp_start_hw(%struct.cp_private*) #1

declare dso_local i32 @cpw8(i32, i32) #1

declare dso_local i32 @__cp_set_rx_mode(%struct.net_device*) #1

declare dso_local i32 @cpr8(i32) #1

declare dso_local i32 @cpw16(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
