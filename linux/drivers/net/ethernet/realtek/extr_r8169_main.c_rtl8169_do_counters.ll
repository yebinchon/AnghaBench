; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_rtl8169_do_counters.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_rtl8169_do_counters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8169_private = type { i64 }

@CounterAddrHigh = common dso_local global i32 0, align 4
@CounterAddrLow = common dso_local global i32 0, align 4
@rtl_counters_cond = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtl8169_private*, i32)* @rtl8169_do_counters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8169_do_counters(%struct.rtl8169_private* %0, i32 %1) #0 {
  %3 = alloca %struct.rtl8169_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.rtl8169_private* %0, %struct.rtl8169_private** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %8 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %5, align 8
  %10 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %11 = load i32, i32* @CounterAddrHigh, align 4
  %12 = load i64, i64* %5, align 8
  %13 = trunc i64 %12 to i32
  %14 = ashr i32 %13, 32
  %15 = call i32 @RTL_W32(%struct.rtl8169_private* %10, i32 %11, i32 %14)
  %16 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %17 = load i32, i32* @CounterAddrHigh, align 4
  %18 = call i32 @RTL_R32(%struct.rtl8169_private* %16, i32 %17)
  %19 = load i64, i64* %5, align 8
  %20 = trunc i64 %19 to i32
  %21 = call i32 @DMA_BIT_MASK(i32 32)
  %22 = and i32 %20, %21
  store i32 %22, i32* %6, align 4
  %23 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %24 = load i32, i32* @CounterAddrLow, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @RTL_W32(%struct.rtl8169_private* %23, i32 %24, i32 %25)
  %27 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %28 = load i32, i32* @CounterAddrLow, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %4, align 4
  %31 = or i32 %29, %30
  %32 = call i32 @RTL_W32(%struct.rtl8169_private* %27, i32 %28, i32 %31)
  %33 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %34 = call i32 @rtl_udelay_loop_wait_low(%struct.rtl8169_private* %33, i32* @rtl_counters_cond, i32 10, i32 1000)
  ret i32 %34
}

declare dso_local i32 @RTL_W32(%struct.rtl8169_private*, i32, i32) #1

declare dso_local i32 @RTL_R32(%struct.rtl8169_private*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @rtl_udelay_loop_wait_low(%struct.rtl8169_private*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
