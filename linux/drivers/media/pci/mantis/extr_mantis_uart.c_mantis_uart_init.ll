; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/mantis/extr_mantis_uart.c_mantis_uart_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/mantis/extr_mantis_uart.c_mantis_uart_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.mantis_pci = type { i32, %struct.mantis_hwconfig* }
%struct.mantis_hwconfig = type { i64, i64, i32 }
%struct.mantis_uart_params = type { i64, i64 }

@MANTIS_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Initializing UART @ %sbps parity:%s\00", align 1
@rates = common dso_local global %struct.TYPE_3__* null, align 8
@parity = common dso_local global %struct.TYPE_4__* null, align 8
@mantis_uart_work = common dso_local global i32 0, align 4
@MANTIS_UART_CTL = common dso_local global i32 0, align 4
@MANTIS_UART_BAUD = common dso_local global i32 0, align 4
@MANTIS_UART_RXFLUSH = common dso_local global i32 0, align 4
@MANTIS_UART_RXINT = common dso_local global i32 0, align 4
@MANTIS_INT_IRQ1 = common dso_local global i32 0, align 4
@MANTIS_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"UART successfully initialized\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mantis_uart_init(%struct.mantis_pci* %0) #0 {
  %2 = alloca %struct.mantis_pci*, align 8
  %3 = alloca %struct.mantis_hwconfig*, align 8
  %4 = alloca %struct.mantis_uart_params, align 8
  store %struct.mantis_pci* %0, %struct.mantis_pci** %2, align 8
  %5 = load %struct.mantis_pci*, %struct.mantis_pci** %2, align 8
  %6 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %5, i32 0, i32 1
  %7 = load %struct.mantis_hwconfig*, %struct.mantis_hwconfig** %6, align 8
  store %struct.mantis_hwconfig* %7, %struct.mantis_hwconfig** %3, align 8
  %8 = load %struct.mantis_hwconfig*, %struct.mantis_hwconfig** %3, align 8
  %9 = getelementptr inbounds %struct.mantis_hwconfig, %struct.mantis_hwconfig* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = getelementptr inbounds %struct.mantis_uart_params, %struct.mantis_uart_params* %4, i32 0, i32 0
  store i64 %10, i64* %11, align 8
  %12 = load %struct.mantis_hwconfig*, %struct.mantis_hwconfig** %3, align 8
  %13 = getelementptr inbounds %struct.mantis_hwconfig, %struct.mantis_hwconfig* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds %struct.mantis_uart_params, %struct.mantis_uart_params* %4, i32 0, i32 1
  store i64 %14, i64* %15, align 8
  %16 = load i32, i32* @MANTIS_INFO, align 4
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rates, align 8
  %18 = getelementptr inbounds %struct.mantis_uart_params, %struct.mantis_uart_params* %4, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** @parity, align 8
  %24 = getelementptr inbounds %struct.mantis_uart_params, %struct.mantis_uart_params* %4, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 (i32, i32, i8*, ...) @dprintk(i32 %16, i32 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %28)
  %30 = load %struct.mantis_pci*, %struct.mantis_pci** %2, align 8
  %31 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %30, i32 0, i32 0
  %32 = load i32, i32* @mantis_uart_work, align 4
  %33 = call i32 @INIT_WORK(i32* %31, i32 %32)
  %34 = load i32, i32* @MANTIS_UART_CTL, align 4
  %35 = call i32 @mmread(i32 %34)
  %36 = and i32 %35, 65519
  %37 = load i32, i32* @MANTIS_UART_CTL, align 4
  %38 = call i32 @mmwrite(i32 %36, i32 %37)
  %39 = load %struct.mantis_pci*, %struct.mantis_pci** %2, align 8
  %40 = call i32 @mantis_uart_setup(%struct.mantis_pci* %39, %struct.mantis_uart_params* %4)
  %41 = load i32, i32* @MANTIS_UART_BAUD, align 4
  %42 = call i32 @mmread(i32 %41)
  %43 = load %struct.mantis_hwconfig*, %struct.mantis_hwconfig** %3, align 8
  %44 = getelementptr inbounds %struct.mantis_hwconfig, %struct.mantis_hwconfig* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = shl i32 %45, 8
  %47 = or i32 %42, %46
  %48 = load i32, i32* @MANTIS_UART_BAUD, align 4
  %49 = call i32 @mmwrite(i32 %47, i32 %48)
  %50 = load i32, i32* @MANTIS_UART_CTL, align 4
  %51 = call i32 @mmread(i32 %50)
  %52 = load i32, i32* @MANTIS_UART_RXFLUSH, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @MANTIS_UART_CTL, align 4
  %55 = call i32 @mmwrite(i32 %53, i32 %54)
  %56 = load i32, i32* @MANTIS_UART_CTL, align 4
  %57 = call i32 @mmread(i32 %56)
  %58 = load i32, i32* @MANTIS_UART_RXINT, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @MANTIS_UART_CTL, align 4
  %61 = call i32 @mmwrite(i32 %59, i32 %60)
  %62 = load %struct.mantis_pci*, %struct.mantis_pci** %2, align 8
  %63 = load i32, i32* @MANTIS_INT_IRQ1, align 4
  %64 = call i32 @mantis_unmask_ints(%struct.mantis_pci* %62, i32 %63)
  %65 = load %struct.mantis_pci*, %struct.mantis_pci** %2, align 8
  %66 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %65, i32 0, i32 0
  %67 = call i32 @schedule_work(i32* %66)
  %68 = load i32, i32* @MANTIS_DEBUG, align 4
  %69 = call i32 (i32, i32, i8*, ...) @dprintk(i32 %68, i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @dprintk(i32, i32, i8*, ...) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @mmwrite(i32, i32) #1

declare dso_local i32 @mmread(i32) #1

declare dso_local i32 @mantis_uart_setup(%struct.mantis_pci*, %struct.mantis_uart_params*) #1

declare dso_local i32 @mantis_unmask_ints(%struct.mantis_pci*, i32) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
