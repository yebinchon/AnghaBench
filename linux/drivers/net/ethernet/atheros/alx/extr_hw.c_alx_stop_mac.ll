; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/alx/extr_hw.c_alx_stop_mac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/alx/extr_hw.c_alx_stop_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alx_hw = type { i32 }

@ALX_RXQ0 = common dso_local global i32 0, align 4
@ALX_RXQ0_EN = common dso_local global i32 0, align 4
@ALX_TXQ0 = common dso_local global i32 0, align 4
@ALX_TXQ0_EN = common dso_local global i32 0, align 4
@ALX_MAC_CTRL_RX_EN = common dso_local global i32 0, align 4
@ALX_MAC_CTRL_TX_EN = common dso_local global i32 0, align 4
@ALX_MAC_CTRL = common dso_local global i32 0, align 4
@ALX_DMA_MAC_RST_TO = common dso_local global i64 0, align 8
@ALX_MAC_STS = common dso_local global i32 0, align 4
@ALX_MAC_STS_IDLE = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.alx_hw*)* @alx_stop_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alx_stop_mac(%struct.alx_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.alx_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.alx_hw* %0, %struct.alx_hw** %3, align 8
  %8 = load %struct.alx_hw*, %struct.alx_hw** %3, align 8
  %9 = load i32, i32* @ALX_RXQ0, align 4
  %10 = call i32 @alx_read_mem32(%struct.alx_hw* %8, i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load %struct.alx_hw*, %struct.alx_hw** %3, align 8
  %12 = load i32, i32* @ALX_RXQ0, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @ALX_RXQ0_EN, align 4
  %15 = xor i32 %14, -1
  %16 = and i32 %13, %15
  %17 = call i32 @alx_write_mem32(%struct.alx_hw* %11, i32 %12, i32 %16)
  %18 = load %struct.alx_hw*, %struct.alx_hw** %3, align 8
  %19 = load i32, i32* @ALX_TXQ0, align 4
  %20 = call i32 @alx_read_mem32(%struct.alx_hw* %18, i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load %struct.alx_hw*, %struct.alx_hw** %3, align 8
  %22 = load i32, i32* @ALX_TXQ0, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @ALX_TXQ0_EN, align 4
  %25 = xor i32 %24, -1
  %26 = and i32 %23, %25
  %27 = call i32 @alx_write_mem32(%struct.alx_hw* %21, i32 %22, i32 %26)
  %28 = call i32 @udelay(i32 40)
  %29 = load i32, i32* @ALX_MAC_CTRL_RX_EN, align 4
  %30 = load i32, i32* @ALX_MAC_CTRL_TX_EN, align 4
  %31 = or i32 %29, %30
  %32 = xor i32 %31, -1
  %33 = load %struct.alx_hw*, %struct.alx_hw** %3, align 8
  %34 = getelementptr inbounds %struct.alx_hw, %struct.alx_hw* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, %32
  store i32 %36, i32* %34, align 4
  %37 = load %struct.alx_hw*, %struct.alx_hw** %3, align 8
  %38 = load i32, i32* @ALX_MAC_CTRL, align 4
  %39 = load %struct.alx_hw*, %struct.alx_hw** %3, align 8
  %40 = getelementptr inbounds %struct.alx_hw, %struct.alx_hw* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @alx_write_mem32(%struct.alx_hw* %37, i32 %38, i32 %41)
  store i64 0, i64* %7, align 8
  br label %43

43:                                               ; preds = %58, %1
  %44 = load i64, i64* %7, align 8
  %45 = load i64, i64* @ALX_DMA_MAC_RST_TO, align 8
  %46 = icmp slt i64 %44, %45
  br i1 %46, label %47, label %61

47:                                               ; preds = %43
  %48 = load %struct.alx_hw*, %struct.alx_hw** %3, align 8
  %49 = load i32, i32* @ALX_MAC_STS, align 4
  %50 = call i32 @alx_read_mem32(%struct.alx_hw* %48, i32 %49)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @ALX_MAC_STS_IDLE, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %47
  store i32 0, i32* %2, align 4
  br label %64

56:                                               ; preds = %47
  %57 = call i32 @udelay(i32 10)
  br label %58

58:                                               ; preds = %56
  %59 = load i64, i64* %7, align 8
  %60 = add nsw i64 %59, 1
  store i64 %60, i64* %7, align 8
  br label %43

61:                                               ; preds = %43
  %62 = load i32, i32* @ETIMEDOUT, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %2, align 4
  br label %64

64:                                               ; preds = %61, %55
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i32 @alx_read_mem32(%struct.alx_hw*, i32) #1

declare dso_local i32 @alx_write_mem32(%struct.alx_hw*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
