; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_serial_ir.c_serial_ir_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_serial_ir.c_serial_ir_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.rc_dev = type { i32 }

@hardware = common dso_local global %struct.TYPE_2__* null, align 8
@type = common dso_local global i64 0, align 8
@UART_LCR = common dso_local global i32 0, align 4
@UART_LCR_DLAB = common dso_local global i32 0, align 4
@UART_IER = common dso_local global i32 0, align 4
@UART_IER_MSI = common dso_local global i32 0, align 4
@UART_IER_RLSI = common dso_local global i32 0, align 4
@UART_IER_THRI = common dso_local global i32 0, align 4
@UART_IER_RDI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rc_dev*)* @serial_ir_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @serial_ir_close(%struct.rc_dev* %0) #0 {
  %2 = alloca %struct.rc_dev*, align 8
  %3 = alloca i64, align 8
  store %struct.rc_dev* %0, %struct.rc_dev** %2, align 8
  %4 = load %struct.TYPE_2__*, %struct.TYPE_2__** @hardware, align 8
  %5 = load i64, i64* @type, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i64 %5
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i64, i64* %3, align 8
  %9 = call i32 @spin_lock_irqsave(i32* %7, i64 %8)
  %10 = load i32, i32* @UART_LCR, align 4
  %11 = load i32, i32* @UART_LCR, align 4
  %12 = call i32 @sinp(i32 %11)
  %13 = load i32, i32* @UART_LCR_DLAB, align 4
  %14 = xor i32 %13, -1
  %15 = and i32 %12, %14
  %16 = call i32 @soutp(i32 %10, i32 %15)
  %17 = load i32, i32* @UART_IER, align 4
  %18 = load i32, i32* @UART_IER, align 4
  %19 = call i32 @sinp(i32 %18)
  %20 = load i32, i32* @UART_IER_MSI, align 4
  %21 = load i32, i32* @UART_IER_RLSI, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @UART_IER_THRI, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @UART_IER_RDI, align 4
  %26 = or i32 %24, %25
  %27 = xor i32 %26, -1
  %28 = and i32 %19, %27
  %29 = call i32 @soutp(i32 %17, i32 %28)
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @hardware, align 8
  %31 = load i64, i64* @type, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %3, align 8
  %35 = call i32 @spin_unlock_irqrestore(i32* %33, i64 %34)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @soutp(i32, i32) #1

declare dso_local i32 @sinp(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
