; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_core.c_ath10k_init_uart.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_core.c_ath10k_init_uart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }

@hi_serial_enable = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"could not disable UART prints (%d)\0A\00", align 1
@uart_print = common dso_local global i32 0, align 4
@hi_dbg_uart_txpin = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"failed to set UART TX pin: %d\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"could not enable UART prints (%d)\0A\00", align 1
@hi_desired_baud_rate = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"could not set the baud rate (%d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"UART prints enabled\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*)* @ath10k_init_uart to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_init_uart(%struct.ath10k* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath10k*, align 8
  %4 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %3, align 8
  %5 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %6 = load i32, i32* @hi_serial_enable, align 4
  %7 = call i32 @ath10k_bmi_write32(%struct.ath10k* %5, i32 %6, i32 0)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @ath10k_warn(%struct.ath10k* %11, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load i32, i32* %4, align 4
  store i32 %14, i32* %2, align 4
  br label %81

15:                                               ; preds = %1
  %16 = load i32, i32* @uart_print, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %41, label %18

18:                                               ; preds = %15
  %19 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %20 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %40

24:                                               ; preds = %18
  %25 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %26 = load i32, i32* @hi_dbg_uart_txpin, align 4
  %27 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %28 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @ath10k_bmi_write32(%struct.ath10k* %25, i32 %26, i32 %30)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %24
  %35 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @ath10k_warn(%struct.ath10k* %35, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* %4, align 4
  store i32 %38, i32* %2, align 4
  br label %81

39:                                               ; preds = %24
  br label %40

40:                                               ; preds = %39, %18
  store i32 0, i32* %2, align 4
  br label %81

41:                                               ; preds = %15
  %42 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %43 = load i32, i32* @hi_dbg_uart_txpin, align 4
  %44 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %45 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @ath10k_bmi_write32(%struct.ath10k* %42, i32 %43, i32 %47)
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* %4, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %41
  %52 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @ath10k_warn(%struct.ath10k* %52, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* %4, align 4
  store i32 %55, i32* %2, align 4
  br label %81

56:                                               ; preds = %41
  %57 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %58 = load i32, i32* @hi_serial_enable, align 4
  %59 = call i32 @ath10k_bmi_write32(%struct.ath10k* %57, i32 %58, i32 1)
  store i32 %59, i32* %4, align 4
  %60 = load i32, i32* %4, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %56
  %63 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %64 = load i32, i32* %4, align 4
  %65 = call i32 @ath10k_warn(%struct.ath10k* %63, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %64)
  %66 = load i32, i32* %4, align 4
  store i32 %66, i32* %2, align 4
  br label %81

67:                                               ; preds = %56
  %68 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %69 = load i32, i32* @hi_desired_baud_rate, align 4
  %70 = call i32 @ath10k_bmi_write32(%struct.ath10k* %68, i32 %69, i32 19200)
  store i32 %70, i32* %4, align 4
  %71 = load i32, i32* %4, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %67
  %74 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %75 = load i32, i32* %4, align 4
  %76 = call i32 @ath10k_warn(%struct.ath10k* %74, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %75)
  %77 = load i32, i32* %4, align 4
  store i32 %77, i32* %2, align 4
  br label %81

78:                                               ; preds = %67
  %79 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %80 = call i32 @ath10k_info(%struct.ath10k* %79, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %81

81:                                               ; preds = %78, %73, %62, %51, %40, %34, %10
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local i32 @ath10k_bmi_write32(%struct.ath10k*, i32, i32) #1

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, i32) #1

declare dso_local i32 @ath10k_info(%struct.ath10k*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
