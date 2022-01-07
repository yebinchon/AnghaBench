; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/mantis/extr_mantis_core.c_mantis_core_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/mantis/extr_mantis_core.c_mantis_core_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mantis_pci = type { i32 }

@verbose = common dso_local global i32 0, align 4
@MANTIS_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"DMA engine stopping\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"UART exit failed\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"DMA exit failed\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"DVB exit failed\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"I2C adapter delete.. failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mantis_core_exit(%struct.mantis_pci* %0) #0 {
  %2 = alloca %struct.mantis_pci*, align 8
  store %struct.mantis_pci* %0, %struct.mantis_pci** %2, align 8
  %3 = load %struct.mantis_pci*, %struct.mantis_pci** %2, align 8
  %4 = call i32 @mantis_dma_stop(%struct.mantis_pci* %3)
  %5 = load i32, i32* @verbose, align 4
  %6 = load i32, i32* @MANTIS_ERROR, align 4
  %7 = call i32 @dprintk(i32 %5, i32 %6, i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.mantis_pci*, %struct.mantis_pci** %2, align 8
  %9 = call i32 @mantis_uart_exit(%struct.mantis_pci* %8)
  %10 = load i32, i32* @verbose, align 4
  %11 = load i32, i32* @MANTIS_ERROR, align 4
  %12 = call i32 @dprintk(i32 %10, i32 %11, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %13 = load %struct.mantis_pci*, %struct.mantis_pci** %2, align 8
  %14 = call i64 @mantis_dma_exit(%struct.mantis_pci* %13)
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load i32, i32* @verbose, align 4
  %18 = load i32, i32* @MANTIS_ERROR, align 4
  %19 = call i32 @dprintk(i32 %17, i32 %18, i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %20

20:                                               ; preds = %16, %1
  %21 = load %struct.mantis_pci*, %struct.mantis_pci** %2, align 8
  %22 = call i64 @mantis_dvb_exit(%struct.mantis_pci* %21)
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = load i32, i32* @verbose, align 4
  %26 = load i32, i32* @MANTIS_ERROR, align 4
  %27 = call i32 @dprintk(i32 %25, i32 %26, i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  br label %28

28:                                               ; preds = %24, %20
  %29 = load %struct.mantis_pci*, %struct.mantis_pci** %2, align 8
  %30 = call i64 @mantis_i2c_exit(%struct.mantis_pci* %29)
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load i32, i32* @verbose, align 4
  %34 = load i32, i32* @MANTIS_ERROR, align 4
  %35 = call i32 @dprintk(i32 %33, i32 %34, i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  br label %36

36:                                               ; preds = %32, %28
  ret i32 0
}

declare dso_local i32 @mantis_dma_stop(%struct.mantis_pci*) #1

declare dso_local i32 @dprintk(i32, i32, i32, i8*) #1

declare dso_local i32 @mantis_uart_exit(%struct.mantis_pci*) #1

declare dso_local i64 @mantis_dma_exit(%struct.mantis_pci*) #1

declare dso_local i64 @mantis_dvb_exit(%struct.mantis_pci*) #1

declare dso_local i64 @mantis_i2c_exit(%struct.mantis_pci*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
