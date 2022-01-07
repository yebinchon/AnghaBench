; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_sir_ir.c_send_pulse.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_sir_ir.c_send_pulse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TIME_CONST = common dso_local global i64 0, align 8
@PULSE = common dso_local global i32 0, align 4
@io = common dso_local global i64 0, align 8
@UART_TX = common dso_local global i64 0, align 8
@UART_LSR = common dso_local global i64 0, align 8
@UART_LSR_THRE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @send_pulse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @send_pulse(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = load i64, i64* @TIME_CONST, align 8
  %6 = udiv i64 %4, %5
  store i64 %6, i64* %3, align 8
  %7 = load i64, i64* %3, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i64, i64* %3, align 8
  %11 = add nsw i64 %10, 1
  store i64 %11, i64* %3, align 8
  br label %12

12:                                               ; preds = %9, %1
  br label %13

13:                                               ; preds = %33, %12
  %14 = load i64, i64* %3, align 8
  %15 = add nsw i64 %14, -1
  store i64 %15, i64* %3, align 8
  %16 = icmp ne i64 %14, 0
  br i1 %16, label %17, label %34

17:                                               ; preds = %13
  %18 = load i32, i32* @PULSE, align 4
  %19 = load i64, i64* @io, align 8
  %20 = load i64, i64* @UART_TX, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @outb(i32 %18, i64 %21)
  br label %23

23:                                               ; preds = %32, %17
  %24 = load i64, i64* @io, align 8
  %25 = load i64, i64* @UART_LSR, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @inb(i64 %26)
  %28 = load i32, i32* @UART_LSR_THRE, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  br i1 %31, label %32, label %33

32:                                               ; preds = %23
  br label %23

33:                                               ; preds = %23
  br label %13

34:                                               ; preds = %13
  ret void
}

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @inb(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
