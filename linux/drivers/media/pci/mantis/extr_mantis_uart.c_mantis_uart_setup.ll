; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/mantis/extr_mantis_uart.c_mantis_uart_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/mantis/extr_mantis_uart.c_mantis_uart_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mantis_pci = type { i32 }
%struct.mantis_uart_params = type { i32, i32 }

@MANTIS_UART_CTL = common dso_local global i32 0, align 4
@MANTIS_UART_BAUD = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mantis_pci*, %struct.mantis_uart_params*)* @mantis_uart_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mantis_uart_setup(%struct.mantis_pci* %0, %struct.mantis_uart_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mantis_pci*, align 8
  %5 = alloca %struct.mantis_uart_params*, align 8
  %6 = alloca i32, align 4
  store %struct.mantis_pci* %0, %struct.mantis_pci** %4, align 8
  store %struct.mantis_uart_params* %1, %struct.mantis_uart_params** %5, align 8
  %7 = load i32, i32* @MANTIS_UART_CTL, align 4
  %8 = call i32 @mmread(i32 %7)
  %9 = load %struct.mantis_uart_params*, %struct.mantis_uart_params** %5, align 8
  %10 = getelementptr inbounds %struct.mantis_uart_params, %struct.mantis_uart_params* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = and i32 %11, 3
  %13 = or i32 %8, %12
  %14 = load i32, i32* @MANTIS_UART_CTL, align 4
  %15 = call i32 @mmwrite(i32 %13, i32 %14)
  %16 = load i32, i32* @MANTIS_UART_BAUD, align 4
  %17 = call i32 @mmread(i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load %struct.mantis_uart_params*, %struct.mantis_uart_params** %5, align 8
  %19 = getelementptr inbounds %struct.mantis_uart_params, %struct.mantis_uart_params* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %36 [
    i32 128, label %21
    i32 131, label %24
    i32 130, label %27
    i32 129, label %30
    i32 132, label %33
  ]

21:                                               ; preds = %2
  %22 = load i32, i32* %6, align 4
  %23 = or i32 %22, 216
  store i32 %23, i32* %6, align 4
  br label %39

24:                                               ; preds = %2
  %25 = load i32, i32* %6, align 4
  %26 = or i32 %25, 108
  store i32 %26, i32* %6, align 4
  br label %39

27:                                               ; preds = %2
  %28 = load i32, i32* %6, align 4
  %29 = or i32 %28, 54
  store i32 %29, i32* %6, align 4
  br label %39

30:                                               ; preds = %2
  %31 = load i32, i32* %6, align 4
  %32 = or i32 %31, 35
  store i32 %32, i32* %6, align 4
  br label %39

33:                                               ; preds = %2
  %34 = load i32, i32* %6, align 4
  %35 = or i32 %34, 17
  store i32 %35, i32* %6, align 4
  br label %39

36:                                               ; preds = %2
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %43

39:                                               ; preds = %33, %30, %27, %24, %21
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @MANTIS_UART_BAUD, align 4
  %42 = call i32 @mmwrite(i32 %40, i32 %41)
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %39, %36
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @mmwrite(i32, i32) #1

declare dso_local i32 @mmread(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
