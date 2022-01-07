; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/mantis/extr_mantis_uart.c_mantis_uart_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/mantis/extr_mantis_uart.c_mantis_uart_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mantis_pci = type { %struct.mantis_hwconfig* }
%struct.mantis_hwconfig = type { i32 }

@MANTIS_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"UART Reading ...\00", align 1
@MANTIS_UART_RXD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c" <%02x>\00", align 1
@MANTIS_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"UART framing error\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"UART parity error\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mantis_pci*)* @mantis_uart_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mantis_uart_read(%struct.mantis_pci* %0) #0 {
  %2 = alloca %struct.mantis_pci*, align 8
  %3 = alloca %struct.mantis_hwconfig*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mantis_pci* %0, %struct.mantis_pci** %2, align 8
  %8 = load %struct.mantis_pci*, %struct.mantis_pci** %2, align 8
  %9 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %8, i32 0, i32 0
  %10 = load %struct.mantis_hwconfig*, %struct.mantis_hwconfig** %9, align 8
  store %struct.mantis_hwconfig* %10, %struct.mantis_hwconfig** %3, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %11 = load i32, i32* @MANTIS_DEBUG, align 4
  %12 = call i32 (i32, i32, i8*, ...) @dprintk(i32 %11, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %13

13:                                               ; preds = %48, %1
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.mantis_hwconfig*, %struct.mantis_hwconfig** %3, align 8
  %16 = getelementptr inbounds %struct.mantis_hwconfig, %struct.mantis_hwconfig* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %17, 1
  %19 = icmp slt i32 %14, %18
  br i1 %19, label %20, label %51

20:                                               ; preds = %13
  %21 = load i32, i32* @MANTIS_UART_RXD, align 4
  %22 = call i32 @mmread(i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* @MANTIS_DEBUG, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i32 (i32, i32, i8*, ...) @dprintk(i32 %23, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* %5, align 4
  %27 = shl i32 %26, 8
  %28 = load i32, i32* %7, align 4
  %29 = and i32 %28, 63
  %30 = or i32 %27, %29
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %6, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %7, align 4
  %35 = and i32 %34, 128
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %20
  %38 = load i32, i32* @MANTIS_ERROR, align 4
  %39 = call i32 (i32, i32, i8*, ...) @dprintk(i32 %38, i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %40

40:                                               ; preds = %37, %20
  %41 = load i32, i32* %7, align 4
  %42 = and i32 %41, 64
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = load i32, i32* @MANTIS_ERROR, align 4
  %46 = call i32 (i32, i32, i8*, ...) @dprintk(i32 %45, i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  br label %47

47:                                               ; preds = %44, %40
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %4, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %4, align 4
  br label %13

51:                                               ; preds = %13
  %52 = load i32, i32* @MANTIS_DEBUG, align 4
  %53 = call i32 (i32, i32, i8*, ...) @dprintk(i32 %52, i32 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %54 = load i32, i32* %6, align 4
  %55 = and i32 %54, 192
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %51
  %58 = load %struct.mantis_pci*, %struct.mantis_pci** %2, align 8
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @mantis_input_process(%struct.mantis_pci* %58, i32 %59)
  br label %61

61:                                               ; preds = %57, %51
  ret void
}

declare dso_local i32 @dprintk(i32, i32, i8*, ...) #1

declare dso_local i32 @mmread(i32) #1

declare dso_local i32 @mantis_input_process(%struct.mantis_pci*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
