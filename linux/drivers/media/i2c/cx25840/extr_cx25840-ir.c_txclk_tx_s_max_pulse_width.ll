; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/cx25840/extr_cx25840-ir.c_txclk_tx_s_max_pulse_width.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/cx25840/extr_cx25840-ir.c_txclk_tx_s_max_pulse_width.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }

@IR_MAX_DURATION = common dso_local global i64 0, align 8
@CX25840_IR_TXCLK_REG = common dso_local global i32 0, align 4
@FIFO_RXTX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.i2c_client*, i64, i32*)* @txclk_tx_s_max_pulse_width to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @txclk_tx_s_max_pulse_width(%struct.i2c_client* %0, i64 %1, i32* %2) #0 {
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load i64, i64* %5, align 8
  %9 = load i64, i64* @IR_MAX_DURATION, align 8
  %10 = icmp sgt i64 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  %12 = load i64, i64* @IR_MAX_DURATION, align 8
  store i64 %12, i64* %5, align 8
  br label %13

13:                                               ; preds = %11, %3
  %14 = load i64, i64* %5, align 8
  %15 = call i32 @ns_to_pulse_clocks(i64 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @pulse_clocks_to_clock_divider(i32 %16)
  %18 = load i32*, i32** %6, align 8
  store i32 %17, i32* %18, align 4
  %19 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %20 = load i32, i32* @CX25840_IR_TXCLK_REG, align 4
  %21 = load i32*, i32** %6, align 8
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @cx25840_write4(%struct.i2c_client* %19, i32 %20, i32 %22)
  %24 = load i32, i32* @FIFO_RXTX, align 4
  %25 = load i32*, i32** %6, align 8
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @pulse_width_count_to_ns(i32 %24, i32 %26)
  %28 = sext i32 %27 to i64
  ret i64 %28
}

declare dso_local i32 @ns_to_pulse_clocks(i64) #1

declare dso_local i32 @pulse_clocks_to_clock_divider(i32) #1

declare dso_local i32 @cx25840_write4(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @pulse_width_count_to_ns(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
