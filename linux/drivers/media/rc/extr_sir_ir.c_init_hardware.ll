; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_sir_ir.c_init_hardware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_sir_ir.c_init_hardware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hardware_lock = common dso_local global i32 0, align 4
@UART_IER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"port existence test failed, cannot continue\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@io = common dso_local global i32 0, align 4
@UART_MCR = common dso_local global i32 0, align 4
@UART_LCR_DLAB = common dso_local global i32 0, align 4
@UART_LCR_WLEN7 = common dso_local global i32 0, align 4
@UART_LCR = common dso_local global i32 0, align 4
@UART_DLL = common dso_local global i32 0, align 4
@UART_DLM = common dso_local global i32 0, align 4
@UART_FCR_ENABLE_FIFO = common dso_local global i32 0, align 4
@UART_FCR = common dso_local global i32 0, align 4
@UART_IER_RDI = common dso_local global i32 0, align 4
@UART_MCR_DTR = common dso_local global i32 0, align 4
@UART_MCR_RTS = common dso_local global i32 0, align 4
@UART_MCR_OUT2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @init_hardware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_hardware() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = load i64, i64* %5, align 8
  %7 = call i32 @spin_lock_irqsave(i32* @hardware_lock, i64 %6)
  %8 = load i32, i32* @UART_IER, align 4
  %9 = call i32 @sinp(i32 %8)
  store i32 %9, i32* %2, align 4
  %10 = load i32, i32* @UART_IER, align 4
  %11 = call i32 @soutp(i32 %10, i32 0)
  %12 = load i32, i32* @UART_IER, align 4
  %13 = call i32 @sinp(i32 %12)
  %14 = and i32 %13, 15
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* @UART_IER, align 4
  %16 = call i32 @soutp(i32 %15, i32 15)
  %17 = load i32, i32* @UART_IER, align 4
  %18 = call i32 @sinp(i32 %17)
  %19 = and i32 %18, 15
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* @UART_IER, align 4
  %21 = load i32, i32* %2, align 4
  %22 = call i32 @soutp(i32 %20, i32 %21)
  %23 = load i32, i32* %3, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %0
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 15
  br i1 %27, label %28, label %34

28:                                               ; preds = %25, %0
  %29 = load i64, i64* %5, align 8
  %30 = call i32 @spin_unlock_irqrestore(i32* @hardware_lock, i64 %29)
  %31 = call i32 @pr_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @ENODEV, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %1, align 4
  br label %84

34:                                               ; preds = %25
  %35 = load i32, i32* @io, align 4
  %36 = load i32, i32* @UART_MCR, align 4
  %37 = add nsw i32 %35, %36
  %38 = call i32 @outb(i32 0, i32 %37)
  %39 = load i32, i32* @io, align 4
  %40 = load i32, i32* @UART_IER, align 4
  %41 = add nsw i32 %39, %40
  %42 = call i32 @outb(i32 0, i32 %41)
  %43 = load i32, i32* @UART_LCR_DLAB, align 4
  %44 = load i32, i32* @UART_LCR_WLEN7, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @io, align 4
  %47 = load i32, i32* @UART_LCR, align 4
  %48 = add nsw i32 %46, %47
  %49 = call i32 @outb(i32 %45, i32 %48)
  %50 = load i32, i32* @io, align 4
  %51 = load i32, i32* @UART_DLL, align 4
  %52 = add nsw i32 %50, %51
  %53 = call i32 @outb(i32 1, i32 %52)
  %54 = load i32, i32* @io, align 4
  %55 = load i32, i32* @UART_DLM, align 4
  %56 = add nsw i32 %54, %55
  %57 = call i32 @outb(i32 0, i32 %56)
  %58 = load i32, i32* @UART_LCR_WLEN7, align 4
  %59 = load i32, i32* @io, align 4
  %60 = load i32, i32* @UART_LCR, align 4
  %61 = add nsw i32 %59, %60
  %62 = call i32 @outb(i32 %58, i32 %61)
  %63 = load i32, i32* @UART_FCR_ENABLE_FIFO, align 4
  %64 = load i32, i32* @io, align 4
  %65 = load i32, i32* @UART_FCR, align 4
  %66 = add nsw i32 %64, %65
  %67 = call i32 @outb(i32 %63, i32 %66)
  %68 = load i32, i32* @UART_IER_RDI, align 4
  %69 = load i32, i32* @io, align 4
  %70 = load i32, i32* @UART_IER, align 4
  %71 = add nsw i32 %69, %70
  %72 = call i32 @outb(i32 %68, i32 %71)
  %73 = load i32, i32* @UART_MCR_DTR, align 4
  %74 = load i32, i32* @UART_MCR_RTS, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* @UART_MCR_OUT2, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* @io, align 4
  %79 = load i32, i32* @UART_MCR, align 4
  %80 = add nsw i32 %78, %79
  %81 = call i32 @outb(i32 %77, i32 %80)
  %82 = load i64, i64* %5, align 8
  %83 = call i32 @spin_unlock_irqrestore(i32* @hardware_lock, i64 %82)
  store i32 0, i32* %1, align 4
  br label %84

84:                                               ; preds = %34, %28
  %85 = load i32, i32* %1, align 4
  ret i32 %85
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @sinp(i32) #1

declare dso_local i32 @soutp(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @outb(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
